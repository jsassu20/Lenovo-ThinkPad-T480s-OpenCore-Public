/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT4.aml, Sun May  2 11:05:07 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001CA3 (7331)
 *     Revision         0x02
 *     Checksum         0xEF
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "RVP7Rtd3"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "RVP7Rtd3", 0x00001000)
{
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.GPC0, MethodObj)    // 1 Arguments
    External (_SB_.OSCO, UnknownObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GEXP, DeviceObj)
    External (_SB_.PCI0.GEXP.GEPS, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.GEXP.SGEP, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.GLAN, DeviceObj)
    External (_SB_.PCI0.I2C0, DeviceObj)
    External (_SB_.PCI0.I2C0.TPD0, DeviceObj)
    External (_SB_.PCI0.I2C1, DeviceObj)
    External (_SB_.PCI0.I2C1.TPL1, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.ECAV, IntObj)
    External (_SB_.PCI0.LPCB.H_EC.SPT2, UnknownObj)
    External (_SB_.PCI0.RP01, DeviceObj)
    External (_SB_.PCI0.RP01.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP01.DPGE, UnknownObj)
    External (_SB_.PCI0.RP01.L23E, UnknownObj)
    External (_SB_.PCI0.RP01.L23R, UnknownObj)
    External (_SB_.PCI0.RP01.LASX, UnknownObj)
    External (_SB_.PCI0.RP01.LDIS, UnknownObj)
    External (_SB_.PCI0.RP01.LEDM, UnknownObj)
    External (_SB_.PCI0.RP01.VDID, UnknownObj)
    External (_SB_.PCI0.RP02, DeviceObj)
    External (_SB_.PCI0.RP02.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP02.DPGE, UnknownObj)
    External (_SB_.PCI0.RP02.L23E, UnknownObj)
    External (_SB_.PCI0.RP02.L23R, UnknownObj)
    External (_SB_.PCI0.RP02.LASX, UnknownObj)
    External (_SB_.PCI0.RP02.LDIS, UnknownObj)
    External (_SB_.PCI0.RP02.LEDM, UnknownObj)
    External (_SB_.PCI0.RP02.VDID, UnknownObj)
    External (_SB_.PCI0.RP03, DeviceObj)
    External (_SB_.PCI0.RP03.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP03.DPGE, UnknownObj)
    External (_SB_.PCI0.RP03.L23E, UnknownObj)
    External (_SB_.PCI0.RP03.L23R, UnknownObj)
    External (_SB_.PCI0.RP03.LASX, UnknownObj)
    External (_SB_.PCI0.RP03.LDIS, UnknownObj)
    External (_SB_.PCI0.RP03.LEDM, UnknownObj)
    External (_SB_.PCI0.RP03.VDID, UnknownObj)
    External (_SB_.PCI0.RP04, DeviceObj)
    External (_SB_.PCI0.RP04.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP04.DPGE, UnknownObj)
    External (_SB_.PCI0.RP04.L23E, UnknownObj)
    External (_SB_.PCI0.RP04.L23R, UnknownObj)
    External (_SB_.PCI0.RP04.LASX, UnknownObj)
    External (_SB_.PCI0.RP04.LDIS, UnknownObj)
    External (_SB_.PCI0.RP04.LEDM, UnknownObj)
    External (_SB_.PCI0.RP04.VDID, UnknownObj)
    External (_SB_.PCI0.RP05, DeviceObj)
    External (_SB_.PCI0.RP05.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP05.DPGE, UnknownObj)
    External (_SB_.PCI0.RP05.L23E, UnknownObj)
    External (_SB_.PCI0.RP05.L23R, UnknownObj)
    External (_SB_.PCI0.RP05.LASX, UnknownObj)
    External (_SB_.PCI0.RP05.LDIS, UnknownObj)
    External (_SB_.PCI0.RP05.LEDM, UnknownObj)
    External (_SB_.PCI0.RP05.PCRA, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP05.PCRO, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.RP05.VDID, UnknownObj)
    External (_SB_.PCI0.RP06, DeviceObj)
    External (_SB_.PCI0.RP06.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP06.DPGE, UnknownObj)
    External (_SB_.PCI0.RP06.L23E, UnknownObj)
    External (_SB_.PCI0.RP06.L23R, UnknownObj)
    External (_SB_.PCI0.RP06.LASX, UnknownObj)
    External (_SB_.PCI0.RP06.LDIS, UnknownObj)
    External (_SB_.PCI0.RP06.LEDM, UnknownObj)
    External (_SB_.PCI0.RP06.VDID, UnknownObj)
    External (_SB_.PCI0.RP07, DeviceObj)
    External (_SB_.PCI0.RP07.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP07.DPGE, UnknownObj)
    External (_SB_.PCI0.RP07.L23E, UnknownObj)
    External (_SB_.PCI0.RP07.L23R, UnknownObj)
    External (_SB_.PCI0.RP07.LASX, UnknownObj)
    External (_SB_.PCI0.RP07.LDIS, UnknownObj)
    External (_SB_.PCI0.RP07.LEDM, UnknownObj)
    External (_SB_.PCI0.RP07.VDID, UnknownObj)
    External (_SB_.PCI0.RP08, DeviceObj)
    External (_SB_.PCI0.RP08.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP08.DPGE, UnknownObj)
    External (_SB_.PCI0.RP08.L23E, UnknownObj)
    External (_SB_.PCI0.RP08.L23R, UnknownObj)
    External (_SB_.PCI0.RP08.LASX, UnknownObj)
    External (_SB_.PCI0.RP08.LDIS, UnknownObj)
    External (_SB_.PCI0.RP08.LEDM, UnknownObj)
    External (_SB_.PCI0.RP08.VDID, UnknownObj)
    External (_SB_.PCI0.RP09, DeviceObj)
    External (_SB_.PCI0.RP09.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP09.DPGE, UnknownObj)
    External (_SB_.PCI0.RP09.L23E, UnknownObj)
    External (_SB_.PCI0.RP09.L23R, UnknownObj)
    External (_SB_.PCI0.RP09.LASX, UnknownObj)
    External (_SB_.PCI0.RP09.LDIS, UnknownObj)
    External (_SB_.PCI0.RP09.LEDM, UnknownObj)
    External (_SB_.PCI0.RP09.VDID, UnknownObj)
    External (_SB_.PCI0.RP10, DeviceObj)
    External (_SB_.PCI0.RP10.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP10.DPGE, UnknownObj)
    External (_SB_.PCI0.RP10.L23E, UnknownObj)
    External (_SB_.PCI0.RP10.L23R, UnknownObj)
    External (_SB_.PCI0.RP10.LASX, UnknownObj)
    External (_SB_.PCI0.RP10.LDIS, UnknownObj)
    External (_SB_.PCI0.RP10.LEDM, UnknownObj)
    External (_SB_.PCI0.RP10.VDID, UnknownObj)
    External (_SB_.PCI0.RP11, DeviceObj)
    External (_SB_.PCI0.RP11.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP11.DPGE, UnknownObj)
    External (_SB_.PCI0.RP11.L23E, UnknownObj)
    External (_SB_.PCI0.RP11.L23R, UnknownObj)
    External (_SB_.PCI0.RP11.LASX, UnknownObj)
    External (_SB_.PCI0.RP11.LDIS, UnknownObj)
    External (_SB_.PCI0.RP11.LEDM, UnknownObj)
    External (_SB_.PCI0.RP11.VDID, UnknownObj)
    External (_SB_.PCI0.RP12, DeviceObj)
    External (_SB_.PCI0.RP12.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP12.DPGE, UnknownObj)
    External (_SB_.PCI0.RP12.L23E, UnknownObj)
    External (_SB_.PCI0.RP12.L23R, UnknownObj)
    External (_SB_.PCI0.RP12.LASX, UnknownObj)
    External (_SB_.PCI0.RP12.LDIS, UnknownObj)
    External (_SB_.PCI0.RP12.LEDM, UnknownObj)
    External (_SB_.PCI0.RP12.VDID, UnknownObj)
    External (_SB_.PCI0.RP13, DeviceObj)
    External (_SB_.PCI0.RP13.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP13.DPGE, UnknownObj)
    External (_SB_.PCI0.RP13.L23E, UnknownObj)
    External (_SB_.PCI0.RP13.L23R, UnknownObj)
    External (_SB_.PCI0.RP13.LASX, UnknownObj)
    External (_SB_.PCI0.RP13.LDIS, UnknownObj)
    External (_SB_.PCI0.RP13.LEDM, UnknownObj)
    External (_SB_.PCI0.RP13.VDID, UnknownObj)
    External (_SB_.PCI0.RP14, DeviceObj)
    External (_SB_.PCI0.RP14.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP14.DPGE, UnknownObj)
    External (_SB_.PCI0.RP14.L23E, UnknownObj)
    External (_SB_.PCI0.RP14.L23R, UnknownObj)
    External (_SB_.PCI0.RP14.LASX, UnknownObj)
    External (_SB_.PCI0.RP14.LDIS, UnknownObj)
    External (_SB_.PCI0.RP14.LEDM, UnknownObj)
    External (_SB_.PCI0.RP14.VDID, UnknownObj)
    External (_SB_.PCI0.RP15, DeviceObj)
    External (_SB_.PCI0.RP15.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP15.DPGE, UnknownObj)
    External (_SB_.PCI0.RP15.L23E, UnknownObj)
    External (_SB_.PCI0.RP15.L23R, UnknownObj)
    External (_SB_.PCI0.RP15.LASX, UnknownObj)
    External (_SB_.PCI0.RP15.LDIS, UnknownObj)
    External (_SB_.PCI0.RP15.LEDM, UnknownObj)
    External (_SB_.PCI0.RP15.VDID, UnknownObj)
    External (_SB_.PCI0.RP16, DeviceObj)
    External (_SB_.PCI0.RP16.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP16.DPGE, UnknownObj)
    External (_SB_.PCI0.RP16.L23E, UnknownObj)
    External (_SB_.PCI0.RP16.L23R, UnknownObj)
    External (_SB_.PCI0.RP16.LASX, UnknownObj)
    External (_SB_.PCI0.RP16.LDIS, UnknownObj)
    External (_SB_.PCI0.RP16.LEDM, UnknownObj)
    External (_SB_.PCI0.RP16.VDID, UnknownObj)
    External (_SB_.PCI0.RP17, DeviceObj)
    External (_SB_.PCI0.RP17.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP17.DPGE, UnknownObj)
    External (_SB_.PCI0.RP17.L23E, UnknownObj)
    External (_SB_.PCI0.RP17.L23R, UnknownObj)
    External (_SB_.PCI0.RP17.LASX, UnknownObj)
    External (_SB_.PCI0.RP17.LDIS, UnknownObj)
    External (_SB_.PCI0.RP17.LEDM, UnknownObj)
    External (_SB_.PCI0.RP17.VDID, UnknownObj)
    External (_SB_.PCI0.RP18, DeviceObj)
    External (_SB_.PCI0.RP18.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP18.DPGE, UnknownObj)
    External (_SB_.PCI0.RP18.L23E, UnknownObj)
    External (_SB_.PCI0.RP18.L23R, UnknownObj)
    External (_SB_.PCI0.RP18.LASX, UnknownObj)
    External (_SB_.PCI0.RP18.LDIS, UnknownObj)
    External (_SB_.PCI0.RP18.LEDM, UnknownObj)
    External (_SB_.PCI0.RP18.VDID, UnknownObj)
    External (_SB_.PCI0.RP19, DeviceObj)
    External (_SB_.PCI0.RP19.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP19.DPGE, UnknownObj)
    External (_SB_.PCI0.RP19.L23E, UnknownObj)
    External (_SB_.PCI0.RP19.L23R, UnknownObj)
    External (_SB_.PCI0.RP19.LASX, UnknownObj)
    External (_SB_.PCI0.RP19.LDIS, UnknownObj)
    External (_SB_.PCI0.RP19.LEDM, UnknownObj)
    External (_SB_.PCI0.RP19.VDID, UnknownObj)
    External (_SB_.PCI0.RP20, DeviceObj)
    External (_SB_.PCI0.RP20.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP20.DPGE, UnknownObj)
    External (_SB_.PCI0.RP20.L23E, UnknownObj)
    External (_SB_.PCI0.RP20.L23R, UnknownObj)
    External (_SB_.PCI0.RP20.LASX, UnknownObj)
    External (_SB_.PCI0.RP20.LDIS, UnknownObj)
    External (_SB_.PCI0.RP20.LEDM, UnknownObj)
    External (_SB_.PCI0.RP20.VDID, UnknownObj)
    External (_SB_.PCI0.SAT0, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT0, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT1, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT2, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT3, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT4, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT5, DeviceObj)
    External (_SB_.PCI0.XDCI, DeviceObj)
    External (_SB_.PCI0.XDCI.D0I3, UnknownObj)
    External (_SB_.PCI0.XDCI.XDCB, UnknownObj)
    External (_SB_.PCI0.XHC_, DeviceObj)
    External (_SB_.PCI0.XHC_.MEMB, UnknownObj)
    External (_SB_.PCI0.XHC_.PMEE, UnknownObj)
    External (_SB_.PCI0.XHC_.PMES, UnknownObj)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS02, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS02, DeviceObj)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (_SB_.SHPO, MethodObj)    // 2 Arguments
    External (_SB_.SPC0, MethodObj)    // 2 Arguments
    External (ADBG, MethodObj)    // 1 Arguments
    External (AUDD, FieldUnitObj)
    External (DVID, UnknownObj)
    External (ECON, IntObj)
    External (GBEP, UnknownObj)
    External (I20D, FieldUnitObj)
    External (I21D, FieldUnitObj)
    External (IC0D, FieldUnitObj)
    External (IC1D, FieldUnitObj)
    External (IC1S, FieldUnitObj)
    External (MMRP, MethodObj)    // 1 Arguments
    External (MMTB, MethodObj)    // 1 Arguments
    External (OSYS, UnknownObj)
    External (PCHG, UnknownObj)
    External (PCHS, UnknownObj)
    External (PEP0, UnknownObj)
    External (PEP3, UnknownObj)
    External (PWRM, UnknownObj)
    External (RCG0, IntObj)
    External (RCG1, IntObj)
    External (RIC0, FieldUnitObj)
    External (RTBC, IntObj)
    External (RTBT, IntObj)
    External (RTD3, IntObj)
    External (S0ID, UnknownObj)
    External (SDS0, FieldUnitObj)
    External (SDS1, FieldUnitObj)
    External (SGMD, UnknownObj)
    External (SHSB, FieldUnitObj)
    External (SPST, IntObj)
    External (TBCD, IntObj)
    External (TBHR, IntObj)
    External (TBOD, IntObj)
    External (TBPE, IntObj)
    External (TBRP, IntObj)
    External (TBSE, IntObj)
    External (TBTS, IntObj)
    External (TOFF, IntObj)
    External (TRD3, IntObj)
    External (TRDO, IntObj)
    External (UAMS, UnknownObj)
    External (VRRD, FieldUnitObj)
    External (VRSD, FieldUnitObj)
    External (XDST, IntObj)
    External (XHPR, UnknownObj)

    If (((\RTBT == 0x01) && (\TBTS == 0x01)))
    {
        Scope (\_SB.PCI0.RP05)
        {
            Name (SLOT, 0x05)
            ADBG ("Rvp7Rtd3:Slot:")
            ADBG (SLOT)
            Name (RSTG, Package (0x04)
            {
                0x01, 
                0x00, 
                0x02060006, 
                0x01
            })
            Name (PWRG, Package (0x04)
            {
                0x01, 
                0x00, 
                0x02060004, 
                0x01
            })
            Name (WAKG, Package (0x04)
            {
                0x01, 
                0x00, 
                0x02060007, 
                0x00
            })
            Name (SCLK, Package (0x03)
            {
                0x01, 
                0x10, 
                0x00
            })
            Name (G2SD, 0x00)
            Name (WKEN, 0x00)
            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                Return (0x04)
            }

            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
            {
                ADBG ("Tbt:_DSD")
                Return (Package (0x02)
                {
                    ToUUID ("6211e2c0-58a3-4af3-90e1-927a4e0c55a4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "HotPlugSupportInD3", 
                            0x01
                        }
                    }
                })
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                ADBG ("Tbt:_DSW")
                ADBG (Arg0)
                ADBG (Arg1)
                ADBG (Arg2)
                If ((Arg1 >= 0x01))
                {
                    WKEN = 0x00
                    TOFF = 0x02
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = 0x01
                    TOFF = 0x01
                }
                Else
                {
                    WKEN = 0x00
                    TOFF = 0x00
                }
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                ADBG ("TBT:PXP")
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    ADBG ("PSTA")
                    Return (PSTA ())
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    ADBG ("S_ON")
                    TRDO = 0x01
                    PON ()
                    TRDO = 0x00
                    ADBG ("E_ON")
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    ADBG ("S_OFF")
                    TRD3 = 0x01
                    POFF ()
                    TRD3 = 0x00
                    ADBG ("E_OFF")
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((DerefOf (PWRG [0x00]) != 0x00))
                {
                    If ((DerefOf (PWRG [0x00]) == 0x01))
                    {
                        If ((\_SB.GGOV (DerefOf (PWRG [0x02])) == DerefOf (PWRG [0x03]
                            )))
                        {
                            Return (0x01)
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }

                    If ((DerefOf (PWRG [0x00]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (PWRG [0x01]), DerefOf (PWRG [0x02]
                            )) == DerefOf (PWRG [0x03])))
                        {
                            Return (0x01)
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }
                }

                If ((DerefOf (RSTG [0x00]) != 0x00))
                {
                    If ((DerefOf (RSTG [0x00]) == 0x01))
                    {
                        If ((\_SB.GGOV (DerefOf (RSTG [0x02])) == DerefOf (RSTG [0x03]
                            )))
                        {
                            Return (0x01)
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }

                    If ((DerefOf (RSTG [0x00]) == 0x02))
                    {
                        If ((\_SB.PCI0.GEXP.GEPS (DerefOf (RSTG [0x01]), DerefOf (RSTG [0x02]
                            )) == DerefOf (RSTG [0x03])))
                        {
                            Return (0x01)
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }
                }

                Return (0x00)
            }

            Method (SXEX, 0, Serialized)
            {
                Local7 = \MMTB (TBSE)
                OperationRegion (TBDI, SystemMemory, Local7, 0x0550)
                Field (TBDI, DWordAcc, NoLock, Preserve)
                {
                    DIVI,   32, 
                    CMDR,   32, 
                    Offset (0x548), 
                    TB2P,   32, 
                    P2TB,   32
                }

                Local1 = 0x64
                P2TB = 0x09
                While ((Local1 > 0x00))
                {
                    Local1 = (Local1 - 0x01)
                    Local2 = TB2P /* \_SB_.PCI0.RP05.SXEX.TB2P */
                    If ((Local2 == 0xFFFFFFFF))
                    {
                        Return (Zero)
                    }

                    If ((Local2 & 0x01))
                    {
                        Break
                    }

                    Sleep (0x05)
                }

                P2TB = 0x00
                Local1 = 0x01F4
                While ((Local1 > 0x00))
                {
                    Local1 = (Local1 - 0x01)
                    Local2 = TB2P /* \_SB_.PCI0.RP05.SXEX.TB2P */
                    If ((Local2 == 0xFFFFFFFF))
                    {
                        Return (Zero)
                    }

                    If ((DIVI != 0xFFFFFFFF))
                    {
                        Break
                    }

                    Sleep (0x0A)
                }
            }

            Method (PON, 0, NotSerialized)
            {
                Local7 = \MMRP (\TBSE)
                OperationRegion (L23P, SystemMemory, Local7, 0xE4)
                Field (L23P, WordAcc, NoLock, Preserve)
                {
                    Offset (0xA4), 
                    PSD0,   2, 
                    Offset (0xE2), 
                        ,   2, 
                    L2TE,   1, 
                    L2TR,   1
                }

                Local6 = \MMTB (\TBSE)
                OperationRegion (TBDI, SystemMemory, Local6, 0x0550)
                Field (TBDI, DWordAcc, NoLock, Preserve)
                {
                    DIVI,   32, 
                    CMDR,   32, 
                    Offset (0xA4), 
                    TBPS,   2, 
                    Offset (0x548), 
                    TB2P,   32, 
                    P2TB,   32
                }

                If (TBPE)
                {
                    Return (Zero)
                }

                TOFF = 0x00
                G2SD = 0x00
                If (\RTBC)
                {
                    If ((DerefOf (SCLK [0x00]) != 0x00))
                    {
                        PCRA (0xDC, 0x100C, ~DerefOf (SCLK [0x01]))
                    }

                    Sleep (\TBCD)
                }

                If ((DerefOf (PWRG [0x00]) != 0x00))
                {
                    If ((DerefOf (PWRG [0x00]) == 0x01))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), DerefOf (PWRG [0x03]))
                        TBPE = 0x01
                        Sleep (0x0A)
                    }

                    If ((DerefOf (PWRG [0x00]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [0x01]), DerefOf (PWRG [0x02]), DerefOf (
                            PWRG [0x03]))
                        TBPE = 0x01
                        Sleep (0x0A)
                    }
                }

                If ((DerefOf (RSTG [0x00]) != 0x00))
                {
                    If ((DerefOf (RSTG [0x00]) == 0x01))
                    {
                        \_SB.SPC0 (DerefOf (RSTG [0x02]), (\_SB.GPC0 (DerefOf (RSTG [0x02]
                            )) | 0x0100))
                    }

                    If ((DerefOf (RSTG [0x00]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [0x01]), DerefOf (RSTG [0x02]), DerefOf (
                            RSTG [0x03]))
                    }
                }

                DPGE = 0x00
                L2TR = 0x01
                Sleep (0x10)
                Local0 = 0x00
                While (L2TR)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                DPGE = 0x01
                Local0 = 0x00
                While ((LASX == 0x00))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                LEDM = 0x00
                Local1 = PSD0 /* \_SB_.PCI0.RP05.PON_.PSD0 */
                PSD0 = 0x00
                Local2 = 0x14
                While ((Local2 > 0x00))
                {
                    Local2 = (Local2 - 0x01)
                    Local3 = TB2P /* \_SB_.PCI0.RP05.PON_.TB2P */
                    If ((Local3 != 0xFFFFFFFF))
                    {
                        Break
                    }

                    Sleep (0x0A)
                }

                If ((Local2 <= 0x00)){}
                SXEX ()
                PSD0 = Local1
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((TOFF == 0x00))
                {
                    Return (Zero)
                }

                Local7 = \MMRP (\TBSE)
                OperationRegion (L23P, SystemMemory, Local7, 0xE4)
                Field (L23P, WordAcc, NoLock, Preserve)
                {
                    Offset (0xA4), 
                    PSD0,   2, 
                    Offset (0xE2), 
                        ,   2, 
                    L2TE,   1, 
                    L2TR,   1
                }

                Local6 = \MMTB (TBSE)
                OperationRegion (TBDI, SystemMemory, Local6, 0x0550)
                Field (TBDI, DWordAcc, NoLock, Preserve)
                {
                    DIVI,   32, 
                    CMDR,   32, 
                    Offset (0xA4), 
                    TBPS,   2, 
                    Offset (0x548), 
                    TB2P,   32, 
                    P2TB,   32
                }

                Local1 = PSD0 /* \_SB_.PCI0.RP05.POFF.PSD0 */
                PSD0 = 0x00
                Local3 = P2TB /* \_SB_.PCI0.RP05.POFF.P2TB */
                If ((TOFF > 0x01))
                {
                    Sleep (0x0A)
                    PSD0 = Local1
                    Return (Zero)
                }

                TOFF = 0x00
                PSD0 = Local1
                L2TE = 0x01
                Sleep (0x10)
                Local0 = 0x00
                While (L2TE)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                LEDM = 0x01
                If ((DerefOf (RSTG [0x00]) != 0x00))
                {
                    If ((DerefOf (RSTG [0x00]) == 0x01))
                    {
                        \_SB.SPC0 (DerefOf (RSTG [0x02]), Local4 = (\_SB.GPC0 (DerefOf (RSTG [
                            0x02])) & 0xFFFFFEFF))
                        Sleep (0x0A)
                    }

                    If ((DerefOf (RSTG [0x00]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (RSTG [0x01]), DerefOf (RSTG [0x02]), (
                            DerefOf (RSTG [0x03]) ^ 0x01))
                        Sleep (0x0A)
                    }
                }

                If (\RTBC)
                {
                    If ((DerefOf (SCLK [0x00]) != 0x00))
                    {
                        PCRO (0xDC, 0x100C, DerefOf (SCLK [0x01]))
                        Sleep (0x10)
                    }
                }

                If ((DerefOf (PWRG [0x00]) != 0x00))
                {
                    If ((DerefOf (PWRG [0x00]) == 0x01))
                    {
                        \_SB.SGOV (DerefOf (PWRG [0x02]), (DerefOf (PWRG [0x03]) ^ 
                            0x01))
                    }

                    If ((DerefOf (PWRG [0x00]) == 0x02))
                    {
                        \_SB.PCI0.GEXP.SGEP (DerefOf (PWRG [0x01]), DerefOf (PWRG [0x02]), (
                            DerefOf (PWRG [0x03]) ^ 0x01))
                    }
                }

                TBPE = 0x00
                LDIS = 0x01
                LDIS = 0x00
                If (WKEN)
                {
                    If ((DerefOf (WAKG [0x00]) != 0x00))
                    {
                        If ((DerefOf (WAKG [0x00]) == 0x01))
                        {
                            \_SB.SGOV (DerefOf (WAKG [0x02]), DerefOf (WAKG [0x03]))
                            \_SB.SHPO (DerefOf (WAKG [0x02]), 0x00)
                        }

                        If ((DerefOf (WAKG [0x00]) == 0x02))
                        {
                            \_SB.PCI0.GEXP.SGEP (DerefOf (WAKG [0x01]), DerefOf (WAKG [0x02]), DerefOf (
                                WAKG [0x03]))
                        }
                    }
                }

                Sleep (\TBOD)
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                PXP
            })
        }
    }
}

