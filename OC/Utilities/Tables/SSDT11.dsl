/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT11.aml, Sun May  2 11:05:07 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000002D1 (721)
 *     Revision         0x02
 *     Checksum         0x1D
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "Wwan"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "Wwan", 0x00000001)
{
    External (_SB_.GPC0, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP04, DeviceObj)
    External (_SB_.PCI0.RP04._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP04.PXSX, DeviceObj)
    External (_SB_.PCI0.RP04.PXSX._ADR, IntObj)
    External (_SB_.SPC0, MethodObj)    // 2 Arguments
    External (NEXP, IntObj)
    External (WDC2, IntObj)
    External (WDCT, IntObj)
    External (WGUR, IntObj)
    External (WLCT, IntObj)
    External (WMNS, IntObj)
    External (WMXS, IntObj)

    Name (RSTP, Package (0x04)
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    Scope (\_SB.PCI0.RP04)
    {
        Method (M2PC, 1, Serialized)
        {
            Local0 = \_SB.PCI0.GPCB ()
            Local0 += ((Arg0 & 0x001F0000) >> One)
            Local0 += ((Arg0 & 0x07) << 0x0C)
            Return (Local0)
        }

        Method (GMIO, 1, Serialized)
        {
            OperationRegion (PXCS, SystemMemory, M2PC (\_SB.PCI0.RP04._ADR ()), 0x20)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x18), 
                PBUS,   8, 
                SBUS,   8
            }

            Local0 = \_SB.PCI0.GPCB ()
            Local0 += ((Arg0 & 0x001F0000) >> One)
            Local0 += ((Arg0 & 0x07) << 0x0C)
            Local0 += (SBUS << 0x14)
            Return (Local0)
        }

        Scope (PXSX)
        {
            Method (_RST, 0, Serialized)  // _RST: Device Reset
            {
                OperationRegion (PXCS, SystemMemory, GMIO (\_SB.PCI0.RP04.PXSX._ADR), 0x0480)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   16, 
                    DVID,   16, 
                    Offset (0x78), 
                    DCTL,   16, 
                    DSTS,   16, 
                    Offset (0x80), 
                    LCTL,   16, 
                    LSTS,   16, 
                    Offset (0x98), 
                    DCT2,   16, 
                    Offset (0x148), 
                    Offset (0x14C), 
                    MXSL,   16, 
                    MNSL,   16
                }

                Local0 = \_SB.GPC0 (\WGUR)
                Local0 &= 0xFFFFFFFFFFFFFEFF
                \_SB.SPC0 (\WGUR, Local0)
                Sleep (0xC8)
                Notify (\_SB.PCI0.RP04.PXSX, One) // Device Check
                Local0 |= 0x0100
                \_SB.SPC0 (\WGUR, Local0)
                Sleep (0xC8)
                If ((NEXP == Zero))
                {
                    DCTL = \WDCT /* External reference */
                    LCTL = \WLCT /* External reference */
                    DCT2 = \WDC2 /* External reference */
                    MXSL = \WMXS /* External reference */
                    MNSL = \WMNS /* External reference */
                }

                Notify (\_SB.PCI0.RP04.PXSX, One) // Device Check
            }
        }
    }
}
