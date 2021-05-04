/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT8.aml, Sun May  2 11:05:07 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000678 (1656)
 *     Revision         0x02
 *     Checksum         0x17
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "UsbCTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "UsbCTabl", 0x00001000)
{
    External (_SB_.PCI0.LPCB.EC__.HKEY.MHPF, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.RP05.PXSX.TBDU.XHC_.RHUB.TPLD, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)
    External (OSYS, UnknownObj)
    External (TBTS, UnknownObj)
    External (UBCB, UnknownObj)
    External (USTC, UnknownObj)
    External (UTCM, UnknownObj)
    External (XDCE, UnknownObj)

    Scope (\_SB)
    {
        Device (UBTC)
        {
            Name (_HID, EisaId ("USBC000"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0CA0"))  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_DDN, "USB Type C")  // _DDN: DOS Device Name
            Name (_ADR, Zero)  // _ADR: Address
            Name (CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y48)
            })
            Device (CR01)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    If ((USTC == One))
                    {
                        Return (\_SB.PCI0.RP05.PXSX.TBDU.XHC.RHUB.TPLD (One, One))
                    }
                }
            }

            Device (CR02)
            {
                Name (_ADR, One)  // _ADR: Address
                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    If ((USTC == One))
                    {
                        Return (\_SB.PCI0.RP05.PXSX.TBDU.XHC.RHUB.TPLD (Zero, 0x02))
                    }
                }
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (CRS, \_SB.UBTC._Y48._BAS, CBAS)  // _BAS: Base Address
                CBAS = UBCB /* External reference */
                Return (CRS) /* \_SB_.UBTC.CRS_ */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((OSYS >= 0x07DF) && (TBTS == One)))
                {
                    If ((USTC == One))
                    {
                        Return (0x0F)
                    }
                }

                Return (Zero)
            }

            OperationRegion (USBC, SystemMemory, UBCB, 0x38)
            Field (USBC, ByteAcc, Lock, Preserve)
            {
                VER1,   8, 
                VER2,   8, 
                RSV1,   8, 
                RSV2,   8, 
                CCI0,   8, 
                CCI1,   8, 
                CCI2,   8, 
                CCI3,   8, 
                CTL0,   8, 
                CTL1,   8, 
                CTL2,   8, 
                CTL3,   8, 
                CTL4,   8, 
                CTL5,   8, 
                CTL6,   8, 
                CTL7,   8, 
                MGI0,   8, 
                MGI1,   8, 
                MGI2,   8, 
                MGI3,   8, 
                MGI4,   8, 
                MGI5,   8, 
                MGI6,   8, 
                MGI7,   8, 
                MGI8,   8, 
                MGI9,   8, 
                MGIA,   8, 
                MGIB,   8, 
                MGIC,   8, 
                MGID,   8, 
                MGIE,   8, 
                MGIF,   8, 
                MGO0,   8, 
                MGO1,   8, 
                MGO2,   8, 
                MGO3,   8, 
                MGO4,   8, 
                MGO5,   8, 
                MGO6,   8, 
                MGO7,   8, 
                MGO8,   8, 
                MGO9,   8, 
                MGOA,   8, 
                MGOB,   8, 
                MGOC,   8, 
                MGOD,   8, 
                MGOE,   8, 
                MGOF,   8
            }

            Mutex (UBSY, 0x00)
            Method (ECWR, 0, Serialized)
            {
                Acquire (UBSY, 0xFFFF)
                Local0 = Buffer (0x25){}
                Local0 [Zero] = 0x0A
                Local0 [One] = Zero
                Local0 [0x02] = 0x02
                Local0 [0x03] = 0x06
                Local0 [0x04] = MGO0 /* \_SB_.UBTC.MGO0 */
                Local0 [0x05] = MGO1 /* \_SB_.UBTC.MGO1 */
                Local0 [0x06] = MGO2 /* \_SB_.UBTC.MGO2 */
                Local0 [0x07] = MGO3 /* \_SB_.UBTC.MGO3 */
                Local0 [0x08] = MGO4 /* \_SB_.UBTC.MGO4 */
                Local0 [0x09] = MGO5 /* \_SB_.UBTC.MGO5 */
                Local0 [0x0A] = MGO6 /* \_SB_.UBTC.MGO6 */
                Local0 [0x0B] = MGO7 /* \_SB_.UBTC.MGO7 */
                Local0 [0x0C] = MGO8 /* \_SB_.UBTC.MGO8 */
                Local0 [0x0D] = MGO9 /* \_SB_.UBTC.MGO9 */
                Local0 [0x0E] = MGOA /* \_SB_.UBTC.MGOA */
                Local0 [0x0F] = MGOB /* \_SB_.UBTC.MGOB */
                Local0 [0x10] = MGOC /* \_SB_.UBTC.MGOC */
                Local0 [0x11] = MGOD /* \_SB_.UBTC.MGOD */
                Local0 [0x12] = MGOE /* \_SB_.UBTC.MGOE */
                Local0 [0x13] = MGOF /* \_SB_.UBTC.MGOF */
                Local0 [0x24] = 0x10
                \_SB.PCI0.LPCB.EC.HKEY.MHPF (Local0)
                Local0 [Zero] = 0x0A
                Local0 [One] = Zero
                Local0 [0x02] = 0x02
                Local0 [0x03] = 0x04
                Local0 [0x04] = CTL0 /* \_SB_.UBTC.CTL0 */
                Local0 [0x05] = CTL1 /* \_SB_.UBTC.CTL1 */
                Local0 [0x06] = CTL2 /* \_SB_.UBTC.CTL2 */
                Local0 [0x07] = CTL3 /* \_SB_.UBTC.CTL3 */
                Local0 [0x08] = CTL4 /* \_SB_.UBTC.CTL4 */
                Local0 [0x09] = CTL5 /* \_SB_.UBTC.CTL5 */
                Local0 [0x0A] = CTL6 /* \_SB_.UBTC.CTL6 */
                Local0 [0x0B] = CTL7 /* \_SB_.UBTC.CTL7 */
                Local0 [0x24] = 0x08
                \_SB.PCI0.LPCB.EC.HKEY.MHPF (Local0)
                Release (UBSY)
            }

            Method (ECRD, 0, Serialized)
            {
                Acquire (UBSY, 0xFFFF)
                Local0 = Buffer (0x25){}
                Local0 [Zero] = 0x0B
                Local0 [One] = Zero
                Local0 [0x02] = 0x02
                Local0 [0x03] = 0x05
                Local0 [0x24] = 0x10
                Local1 = \_SB.PCI0.LPCB.EC.HKEY.MHPF (Local0)
                MGI0 = DerefOf (Local1 [0x04])
                MGI1 = DerefOf (Local1 [0x05])
                MGI2 = DerefOf (Local1 [0x06])
                MGI3 = DerefOf (Local1 [0x07])
                MGI4 = DerefOf (Local1 [0x08])
                MGI5 = DerefOf (Local1 [0x09])
                MGI6 = DerefOf (Local1 [0x0A])
                MGI7 = DerefOf (Local1 [0x0B])
                MGI8 = DerefOf (Local1 [0x0C])
                MGI9 = DerefOf (Local1 [0x0D])
                MGIA = DerefOf (Local1 [0x0E])
                MGIB = DerefOf (Local1 [0x0F])
                MGIC = DerefOf (Local1 [0x10])
                MGID = DerefOf (Local1 [0x11])
                MGIE = DerefOf (Local1 [0x12])
                MGIF = DerefOf (Local1 [0x13])
                Local0 [Zero] = 0x0B
                Local0 [One] = Zero
                Local0 [0x02] = 0x02
                Local0 [0x03] = 0x03
                Local0 [0x24] = 0x04
                Local1 = \_SB.PCI0.LPCB.EC.HKEY.MHPF (Local0)
                CCI0 = DerefOf (Local1 [0x04])
                CCI1 = DerefOf (Local1 [0x05])
                CCI2 = DerefOf (Local1 [0x06])
                CCI3 = DerefOf (Local1 [0x07])
                Release (UBSY)
            }

            Method (NTFY, 0, Serialized)
            {
                ECRD ()
                Sleep (One)
                Notify (\_SB.UBTC, 0x80) // Status Change
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("6f8398c2-7ca4-11e4-ad36-631042b5008f") /* Unknown UUID */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0x0F                                             // .
                            })
                        }
                        Case (One)
                        {
                            ECWR ()
                        }
                        Case (0x02)
                        {
                            ECRD ()
                        }
                        Case (0x03)
                        {
                            Return (XDCE) /* External reference */
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }
}

