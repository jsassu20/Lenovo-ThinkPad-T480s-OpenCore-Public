//
// PROPER BATTERY CONFIGURATION.
//
DefinitionBlock ("", "SSDT", 2, "APPLE", "_BATT", 0x00000000)
{
    External (_GPE._X17, MethodObj)    // 0 Arguments
    External (_SB_.LID_, DeviceObj)
    External (_SB_.LID_._LID, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.CLID, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.AC__._PSR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.ATMC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.B0I0, IntObj)
    External (_SB_.PCI0.LPCB.EC__.B0I1, IntObj)
    External (_SB_.PCI0.LPCB.EC__.B0I2, IntObj)
    External (_SB_.PCI0.LPCB.EC__.B0I3, IntObj)
    External (_SB_.PCI0.LPCB.EC__.B1I0, IntObj)
    External (_SB_.PCI0.LPCB.EC__.B1I1, IntObj)
    External (_SB_.PCI0.LPCB.EC__.B1I2, IntObj)
    External (_SB_.PCI0.LPCB.EC__.B1I3, IntObj)
    External (_SB_.PCI0.LPCB.EC__.BATM, MutexObj)
    External (_SB_.PCI0.LPCB.EC__.BATW, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.BRNS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.BSWA, IntObj)
    External (_SB_.PCI0.LPCB.EC__.BSWR, IntObj)
    External (_SB_.PCI0.LPCB.EC__.DCWL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.ELNK, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.EVNT, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.FNST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.HB0S, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.HB1S, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.HCMU, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.HFNI, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.HFSP, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.HIID, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.HKEY.ANDN, IntObj)
    External (_SB_.PCI0.LPCB.EC__.HKEY.ANGN, IntObj)
    External (_SB_.PCI0.LPCB.EC__.HKEY.DHKC, IntObj)
    External (_SB_.PCI0.LPCB.EC__.HKEY.DYTC, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.HKEY.MHKE, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.HKEY.MHKQ, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.HKEY.WGWK, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.HSPA, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.TSL1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.TSL2, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.XBIF, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.LPCB.EC__.XBIX, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.LPCB.EC__.XBST, MethodObj)    // 4 Arguments
    External (_SB_.PCI0.LPCB.EC__.XJTP, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.LPCB.EC__.BAT0._BIF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.BAT0._BST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.BAT0._HID, IntObj)
    External (_SB_.PCI0.LPCB.EC__.BAT0._STA, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.BAT1, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.BAT1._BIF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.BAT1._BST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.BAT1._HID, IntObj)
    External (_SB_.PCI0.LPCB.EC__.BAT1._STA, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.BAT0.B0ST, IntObj)
    External (_SB_.PCI0.LPCB.EC__.BAT1.B1ST, IntObj)
    External (_SB_.PCI0.LPCB.EC__.BAT1.SBLI, IntObj)
    External (_SB_.PCI0.LPCB.EC__.BAT1.XB1S, IntObj)
    External (_SB_.PCI0.LPCB.EC__.BATC, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.CLPM, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.HB0A, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.HB1A, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.SLUL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.XATW, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.XFCC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.XQ22, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.XQ24, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.XQ25, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.XQ4A, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.XQ4B, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.XQ4D, MethodObj)    // 0 Arguments
    External (BT2T, FieldUnitObj)
    External (HB0A, IntObj)
    External (HB1A, IntObj)
    External (_SB_.SLPB, DeviceObj)
    External (_TZ_.THM0, ThermalZoneObj)
    External (ACST, IntObj)
    External (ADBG, MethodObj)    // 1 Arguments
    External (AWON, MethodObj)    // 1 Arguments
    External (B0I0, IntObj)
    External (B0I1, IntObj)
    External (B0I2, IntObj)
    External (B0I3, IntObj)
    External (B1I0, IntObj)
    External (B1I1, IntObj)
    External (B1I2, IntObj)
    External (B1I3, IntObj)
    External (BRLV, FieldUnitObj)
    External (CHKC, FieldUnitObj)
    External (CHKE, FieldUnitObj)
    External (CMPR, FieldUnitObj)
    External (CSUM, MethodObj)    // 1 Arguments
    External (FNID, IntObj)
    External (H8DR, IntObj)
    External (HB0S, IntObj)
    External (HB1S, IntObj)
    External (IOEN, FieldUnitObj)
    External (IOST, FieldUnitObj)
    External (ISWK, FieldUnitObj)
    External (LIDB, FieldUnitObj)
    External (NBCF, IntObj)
    External (NVSS, MethodObj)    // 1 Arguments
    External (OSC4, FieldUnitObj)
    External (PNTF, MethodObj)    // 1 Arguments
    External (PWRS, FieldUnitObj)
    External (RBEC, MethodObj)    // 1 Arguments
    External (RRBF, FieldUnitObj)
    External (SCRM, FieldUnitObj)
    External (SPS_, IntObj)
    External (UCMS, MethodObj)    // 1 Arguments
    External (VBRC, MethodObj)    // 1 Arguments
    External (VBTD, MethodObj)    // 0 Arguments
    External (VCMS, MethodObj)    // 2 Arguments
    External (VIGD, FieldUnitObj)
    External (VSLD, MethodObj)    // 1 Arguments
    External (WAKI, PkgObj)
    External (WLAC, FieldUnitObj)
    External (WVIS, IntObj)
    External (XWAK, MethodObj)    // 1 Arguments

    Method (B1B2, 2, NotSerialized)
    {
        Local0 = (Arg1 << 0x08)
        Local0 |= Arg0
        Return (Local0)
    }

    Method (B1B4, 4, NotSerialized)
    {
        Local0 = Arg3
        Local0 = (Arg2 | (Local0 << 0x08))
        Local0 = (Arg1 | (Local0 << 0x08))
        Local0 = (Arg0 | (Local0 << 0x08))
        Return (Local0)
    }

    Scope (\_SB.PCI0.LPCB.EC)
    {   
        Method (_Q22, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                CLPM ()
                If (HB0A)
                {
                    Notify (BATC, 0x80) // Status Change
                }

                If (HB1A)
                {
                    Notify (BATC, 0x80) // Status Change
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.EC.XQ22 ()
            }
        }

        Method (_Q4A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                CLPM ()
                Notify (BATC, 0x81) // Information Change
            }
            Else
            {
                \_SB.PCI0.LPCB.EC.XQ4A ()
            }
        }

        Method (_Q4B, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                CLPM ()
                Notify (BATC, 0x80) // Status Change
            }
            Else
            {
                \_SB.PCI0.LPCB.EC.XQ4B ()
            }
        }

        Method (_Q4D, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                CLPM ()
                If (\BT2T)
                {
                    If ((^BAT1.SBLI == One))
                    {
                        Sleep (0x0A)
                        If ((HB1A && (SLUL == Zero)))
                        {
                            ^BAT1.XB1S = One
                            Notify (\_SB.PCI0.LPCB.EC.BATC, One) // Device Check
                        }
                    }
                    ElseIf ((SLUL == One))
                    {
                        ^BAT1.XB1S = Zero
                        Notify (\_SB.PCI0.LPCB.EC.BATC, 0x03) // Eject Request
                    }
                }

                If ((^BAT1.B1ST & ^BAT1.XB1S))
                {
                    Notify (BATC, 0x80) // Status Change
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.EC.XQ4D ()
            }
        }

        Method (_Q24, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                CLPM ()
                Notify (BATC, 0x80) // Status Change
            }
            Else
            {
                \_SB.PCI0.LPCB.EC.XQ24 ()
            }
        }

        Method (_Q25, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                If ((^BAT1.B1ST & ^BAT1.XB1S))
                {
                    CLPM ()
                    Notify (BATC, 0x80) // Status Change
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.EC.XQ25 ()
            }
        }

        Method (BFCC, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                If (\_SB.PCI0.LPCB.EC.BAT0.B0ST)
                {
                    Notify (BATC, 0x81) // Information Change
                }

                If (\_SB.PCI0.LPCB.EC.BAT1.B1ST)
                {
                    Notify (BATC, 0x81) // Information Change
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.EC.XFCC ()
            }
        }

        Method (BATW, 1, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                If (\BT2T)
                {
                    Local0 = \_SB.PCI0.LPCB.EC.BAT1.XB1S /* External reference */
                    If ((HB1A && !SLUL))
                    {
                        Local1 = One
                    }
                    Else
                    {
                        Local1 = Zero
                    }

                    If ((Local0 ^ Local1))
                    {
                        \_SB.PCI0.LPCB.EC.BAT1.XB1S = Local1
                        Notify (\_SB.PCI0.LPCB.EC.BATC, One) // Device Check
                    }
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.EC.XATW (Arg0)
            }
        }
        
        Method (RE1B, 1, NotSerialized)
        {
            OperationRegion (ECOR, EmbeddedControl, Arg0, One)
            Field (ECOR, ByteAcc, NoLock, Preserve)
            {
                BYTE,   8
            }

            Return (BYTE) /* \_SB_.PCI0.LPCB.EC__.RE1B.BYTE */
        }

        Method (RECB, 2, Serialized)
        {
            Arg1 >>= 0x03
            Name (TEMP, Buffer (Arg1){})
            Arg1 += Arg0
            Local0 = Zero
            While ((Arg0 < Arg1))
            {
                TEMP [Local0] = RE1B (Arg0)
                Arg0++
                Local0++
            }

            Return (TEMP) /* \_SB_.PCI0.LPCB.EC__.RECB.TEMP */
        }

        OperationRegion (BRAM, EmbeddedControl, Zero, 0x0100)
        Field (BRAM, ByteAcc, NoLock, Preserve)
        {
            Offset (0x36), 
            AC10,   8, 
            AC11,   8
        }

        Field (BRAM, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            RC00,   8, 
            RC01,   8, 
            FC00,   8, 
            FC01,   8, 
            Offset (0xA6), 
            Offset (0xA8), 
            AC00,   8, 
            AC01,   8, 
            BV00,   8, 
            BV01,   8, 
            Offset (0xAE), 
            Offset (0xB0)
        }

        Field (BRAM, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            SB00,   8, 
            SB01,   8, 
            Offset (0xA4), 
            CC00,   8, 
            CC01,   8
        }

        Field (BRAM, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            DC00,   8, 
            DC01,   8, 
            DV00,   8, 
            DV01,   8, 
            Offset (0xA6), 
            Offset (0xA8), 
            Offset (0xAA), 
            SN00,   8, 
            SN01,   8
        }

        Field (BRAM, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            CH00,   8, 
            CH01,   8, 
            CH02,   8, 
            CH03,   8
        }

        Method (GBIF, 3, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Acquire (BATM, 0xFFFF)
                If (Arg2)
                {
                    HIID = (Arg0 | One)
                    Local7 = B1B2 (SB00, SB01)
                    Local7 >>= 0x0F
                    Arg1 [Zero] = (Local7 ^ One)
                    HIID = Arg0
                    If (Local7)
                    {
                        Local1 = (B1B2 (FC00, FC01) * 0x0A)
                    }
                    Else
                    {
                        Local1 = B1B2 (FC00, FC01)
                    }

                    Arg1 [0x02] = Local1
                    HIID = (Arg0 | 0x02)
                    If (Local7)
                    {
                        Local0 = (B1B2 (DC00, DC01) * 0x0A)
                    }
                    Else
                    {
                        Local0 = B1B2 (DC00, DC01)
                    }

                    Arg1 [One] = Local0
                    Divide (Local1, 0x14, Local2, Arg1 [0x05])
                    If (Local7)
                    {
                        Arg1 [0x06] = 0xC8
                    }
                    ElseIf (B1B2 (DV00, DV01))
                    {
                        Divide (0x00030D40, B1B2 (DV00, DV01), Local2, Arg1 [0x06])
                    }
                    Else
                    {
                        Arg1 [0x06] = Zero
                    }

                    Arg1 [0x04] = B1B2 (DV00, DV01)
                    Local0 = B1B2 (SN00, SN01)
                    Name (SERN, Buffer (0x06)
                    {
                        "     "
                    })
                    Local2 = 0x04
                    While (Local0)
                    {
                        Divide (Local0, 0x0A, Local1, Local0)
                        SERN [Local2] = (Local1 + 0x30)
                        Local2--
                    }

                    Arg1 [0x0A] = SERN /* \_SB_.PCI0.LPCB.EC__.GBIF.SERN */
                    HIID = (Arg0 | 0x06)
                    Arg1 [0x09] = RECB (0xA0, 0x80)
                    HIID = (Arg0 | 0x04)
                    Name (BTYP, Buffer (0x05)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00                     // .....
                    })
                    BTYP = B1B4 (CH00, CH01, CH02, CH03)
                    Arg1 [0x0B] = BTYP /* \_SB_.PCI0.LPCB.EC__.GBIF.BTYP */
                    HIID = (Arg0 | 0x05)
                    Arg1 [0x0C] = RECB (0xA0, 0x80)
                }
                Else
                {
                    Arg1 [One] = 0xFFFFFFFF
                    Arg1 [0x05] = Zero
                    Arg1 [0x06] = Zero
                    Arg1 [0x02] = 0xFFFFFFFF
                }

                Release (BATM)
                Return (Arg1)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC.XBIF (Arg0, Arg1, Arg2))
            }
        }

        Method (GBIX, 3, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Acquire (BATM, 0xFFFF)
                If (Arg2)
                {
                    HIID = (Arg0 | One)
                    Local7 = B1B2 (CC00, CC01)
                    Arg1 [0x08] = Local7
                    Local7 = B1B2 (SB00, SB01)
                    Local7 >>= 0x0F
                    Arg1 [One] = (Local7 ^ One)
                    HIID = Arg0
                    If (Local7)
                    {
                        Local1 = (B1B2 (FC00, FC01) * 0x0A)
                    }
                    Else
                    {
                        Local1 = B1B2 (FC00, FC01)
                    }

                    Arg1 [0x03] = Local1
                    HIID = (Arg0 | 0x02)
                    If (Local7)
                    {
                        Local0 = (B1B2 (DC00, DC01) * 0x0A)
                    }
                    Else
                    {
                        Local0 = B1B2 (DC00, DC01)
                    }

                    Arg1 [0x02] = Local0
                    Divide (Local1, 0x14, Local2, Arg1 [0x06])
                    If (Local7)
                    {
                        Arg1 [0x07] = 0xC8
                    }
                    ElseIf (B1B2 (DV00, DV01))
                    {
                        Divide (0x00030D40, B1B2 (DV00, DV01), Local2, Arg1 [0x07])
                    }
                    Else
                    {
                        Arg1 [0x07] = Zero
                    }

                    Arg1 [0x05] = B1B2 (DV00, DV01)
                    Local0 = B1B2 (SN00, SN01)
                    Name (SERN, Buffer (0x06)
                    {
                        "     "
                    })
                    Local2 = 0x04
                    While (Local0)
                    {
                        Divide (Local0, 0x0A, Local1, Local0)
                        SERN [Local2] = (Local1 + 0x30)
                        Local2--
                    }

                    Arg1 [0x11] = SERN /* \_SB_.PCI0.LPCB.EC__.GBIX.SERN */
                    HIID = (Arg0 | 0x06)
                    Arg1 [0x10] = RECB (0xA0, 0x80)
                    HIID = (Arg0 | 0x04)
                    Name (BTYP, Buffer (0x05)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00                     // .....
                    })
                    BTYP = B1B4 (CH00, CH01, CH02, CH03)
                    Arg1 [0x12] = BTYP /* \_SB_.PCI0.LPCB.EC__.GBIX.BTYP */
                    HIID = (Arg0 | 0x05)
                    Arg1 [0x13] = RECB (0xA0, 0x80)
                }
                Else
                {
                    Arg1 [0x02] = 0xFFFFFFFF
                    Arg1 [0x06] = Zero
                    Arg1 [0x07] = Zero
                    Arg1 [0x03] = 0xFFFFFFFF
                }

                Release (BATM)
                Return (Arg1)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC.XBIX (Arg0, Arg1, Arg2))
            }
        }

        Method (GBST, 4, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Acquire (BATM, 0xFFFF)
                If ((Arg1 & 0x20))
                {
                    Local0 = 0x02
                }
                ElseIf ((Arg1 & 0x40))
                {
                    Local0 = One
                }
                Else
                {
                    Local0 = Zero
                }

                If ((Arg1 & 0x07)){}
                Else
                {
                    Local0 |= 0x04
                }

                If (((Arg1 & 0x07) == 0x07))
                {
                    Local0 = 0x04
                    Local1 = Zero
                    Local2 = Zero
                    Local3 = Zero
                }
                Else
                {
                    HIID = Arg0
                    Local3 = B1B2 (BV00, BV01)
                    If (Arg2)
                    {
                        Local2 = (B1B2 (RC00, RC01) * 0x0A)
                    }
                    Else
                    {
                        Local2 = B1B2 (RC00, RC01)
                    }

                    Local1 = B1B2 (AC00, AC01)
                    If ((Local1 >= 0x8000))
                    {
                        If ((Local0 & One))
                        {
                            Local1 = (0x00010000 - Local1)
                        }
                        Else
                        {
                            Local1 = Zero
                        }
                    }
                    ElseIf (!(Local0 & 0x02))
                    {
                        Local1 = Zero
                    }

                    If (Arg2)
                    {
                        Local1 *= Local3
                        Divide (Local1, 0x03E8, Local7, Local1)
                    }
                }

                Local5 = (One << (Arg0 >> 0x04))
                BSWA |= BSWR /* External reference */
                If (((BSWA & Local5) == Zero))
                {
                    Arg3 [Zero] = Local0
                    Arg3 [One] = Local1
                    Arg3 [0x02] = Local2
                    Arg3 [0x03] = Local3
                    If ((Arg0 == Zero))
                    {
                        B0I0 = Local0
                        B0I1 = Local1
                        B0I2 = Local2
                        B0I3 = Local3
                    }
                    Else
                    {
                        B1I0 = Local0
                        B1I1 = Local1
                        B1I2 = Local2
                        B1I3 = Local3
                    }
                }
                Else
                {
                    If (\_SB.PCI0.LPCB.EC.AC._PSR ())
                    {
                        If ((Arg0 == Zero))
                        {
                            Arg3 [Zero] = B0I0 /* External reference */
                            Arg3 [One] = B0I1 /* External reference */
                            Arg3 [0x02] = B0I2 /* External reference */
                            Arg3 [0x03] = B0I3 /* External reference */
                        }
                        Else
                        {
                            Arg3 [Zero] = B1I0 /* External reference */
                            Arg3 [One] = B1I1 /* External reference */
                            Arg3 [0x02] = B1I2 /* External reference */
                            Arg3 [0x03] = B1I3 /* External reference */
                        }
                    }
                    Else
                    {
                        Arg3 [Zero] = Local0
                        Arg3 [One] = Local1
                        Arg3 [0x02] = Local2
                        Arg3 [0x03] = Local3
                    }

                    If ((((Local0 & 0x04) == Zero) && ((Local2 > Zero) && 
                        (Local3 > Zero))))
                    {
                        BSWA &= ~Local5
                        Arg3 [Zero] = Local0
                        Arg3 [One] = Local1
                        Arg3 [0x02] = Local2
                        Arg3 [0x03] = Local3
                    }
                }

                Release (BATM)
                Return (Arg3)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC.XBST (Arg0, Arg1, Arg2, Arg3))
            }
        }

        Method (AJTP, 3, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Local0 = Arg1
                Acquire (BATM, 0xFFFF)
                HIID = Arg0
                Local1 = B1B2 (RC00, RC01)
                Release (BATM)
                If ((Arg0 == Zero))
                {
                    Local2 = HB0S /* External reference */
                }
                Else
                {
                    Local2 = HB1S /* External reference */
                }

                If ((Local2 & 0x20))
                {
                    If ((Arg2 > Zero))
                    {
                        Local0 += One
                    }

                    If ((Local0 <= Local1))
                    {
                        Local0 = (Local1 + One)
                    }
                }
                ElseIf ((Local2 & 0x40))
                {
                    If ((Local0 >= Local1))
                    {
                        Local0 = (Local1 - One)
                    }
                }

                Return (Local0)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC.XJTP (Arg0, Arg1, Arg2))
            }
        }
        
        Device (BATC)
        {
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                ^^BAT0._HID = Zero
                ^^BAT1._HID = Zero
            }

            Method (CVWA, 3, NotSerialized)
            {
                If (Arg2)
                {
                    Arg0 = ((Arg0 * 0x03E8) / Arg1)
                }

                Return (Arg0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return ((^^BAT0._STA () | ^^BAT1._STA ()))
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (B0CO, Zero)
            Name (B1CO, Zero)
            Name (B0DV, Zero)
            Name (B1DV, Zero)
            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                Local0 = ^^BAT0._BST ()
                Local2 = ^^BAT0._STA ()
                If ((0x1F == Local2))
                {
                    Local4 = DerefOf (Local0 [0x02])
                    If ((!Local4 || (Ones == Local4)))
                    {
                        Local2 = Zero
                    }
                }

                Local1 = ^^BAT1._BST ()
                Local3 = ^^BAT1._STA ()
                If ((0x1F == Local3))
                {
                    Local4 = DerefOf (Local1 [0x02])
                    If ((!Local4 || (Ones == Local4)))
                    {
                        Local3 = Zero
                    }
                }

                If (((0x1F != Local2) && (0x1F == Local3)))
                {
                    Local0 = Local1
                    Local2 = Local3
                    Local3 = Zero
                }

                If (((0x1F == Local2) && (0x1F == Local3)))
                {
                    Local4 = DerefOf (Local0 [Zero])
                    Local5 = DerefOf (Local1 [Zero])
                    If (((Local4 == 0x02) || (Local5 == 0x02)))
                    {
                        Local0 [Zero] = 0x02
                    }
                    ElseIf (((Local4 == One) || (Local5 == One)))
                    {
                        Local0 [Zero] = One
                    }
                    ElseIf (((Local4 == 0x05) || (Local5 == 0x05)))
                    {
                        Local0 [Zero] = 0x05
                    }
                    ElseIf (((Local4 == 0x04) || (Local5 == 0x04)))
                    {
                        Local0 [Zero] = 0x04
                    }

                    Local0 [One] = (CVWA (DerefOf (Local0 [One]), B0DV, 
                        B0CO) + CVWA (DerefOf (Local1 [One]), B1DV, B1CO))
                    Local0 [0x02] = (CVWA (DerefOf (Local0 [0x02]), B0DV, 
                        B0CO) + CVWA (DerefOf (Local1 [0x02]), B1DV, B1CO))
                    Local0 [0x03] = ((DerefOf (Local0 [0x03]) + DerefOf (
                        Local1 [0x03])) / 0x02)
                }

                Return (Local0)
            }

            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                Local0 = ^^BAT0._BIF ()
                Local2 = ^^BAT0._STA ()
                If ((0x1F == Local2))
                {
                    Local4 = DerefOf (Local0 [One])
                    If ((!Local4 || (Ones == Local4)))
                    {
                        Local2 = Zero
                    }

                    Local4 = DerefOf (Local0 [0x02])
                    If ((!Local4 || (Ones == Local4)))
                    {
                        Local2 = Zero
                    }

                    Local4 = DerefOf (Local0 [0x04])
                    If ((!Local4 || (Ones == Local4)))
                    {
                        Local2 = Zero
                    }
                }

                Local1 = ^^BAT1._BIF ()
                Local3 = ^^BAT1._STA ()
                If ((0x1F == Local3))
                {
                    Local4 = DerefOf (Local1 [One])
                    If ((!Local4 || (Ones == Local4)))
                    {
                        Local3 = Zero
                    }

                    Local4 = DerefOf (Local1 [0x02])
                    If ((!Local4 || (Ones == Local4)))
                    {
                        Local3 = Zero
                    }

                    Local4 = DerefOf (Local1 [0x04])
                    If ((!Local4 || (Ones == Local4)))
                    {
                        Local3 = Zero
                    }
                }

                If (((0x1F != Local2) && (0x1F == Local3)))
                {
                    Local0 = Local1
                    Local2 = Local3
                    Local3 = Zero
                }

                If (((0x1F == Local2) && (0x1F == Local3)))
                {
                    B0CO = !DerefOf (Local0 [Zero])
                    B1CO = !DerefOf (Local1 [Zero])
                    Local0 [Zero] = One
                    B0DV = DerefOf (Local0 [0x04])
                    B1DV = DerefOf (Local1 [0x04])
                    Local0 [One] = (CVWA (DerefOf (Local0 [One]), B0DV, 
                        B0CO) + CVWA (DerefOf (Local1 [One]), B1DV, B1CO))
                    Local0 [0x02] = (CVWA (DerefOf (Local0 [0x02]), B0DV, 
                        B0CO) + CVWA (DerefOf (Local1 [0x02]), B1DV, B1CO))
                    Local0 [0x04] = ((B0DV + B1DV) / 0x02)
                    Local0 [0x05] = (CVWA (DerefOf (Local0 [0x05]), B0DV, 
                        B0CO) + CVWA (DerefOf (Local1 [0x05]), B1DV, B1CO))
                    Local0 [0x06] = (CVWA (DerefOf (Local0 [0x06]), B0DV, 
                        B0CO) + CVWA (DerefOf (Local1 [0x06]), B1DV, B1CO))
                }

                Return (Local0)
            }
        }
    }
    
    Scope (\_GPE)
    {
        Method (_L17, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                Local0 = B1B2 (\_SB.PCI0.LPCB.EC.AC10, \_SB.PCI0.LPCB.EC.AC11)
                \RRBF = Local0
                Sleep (0x0A)
                If ((Local0 & 0x02)){}
                If ((Local0 & 0x04))
                {
                    Notify (\_SB.LID, 0x02) // Device Wake
                }

                If ((Local0 & 0x08))
                {
                    Notify (\_SB.SLPB, 0x02) // Device Wake
                }

                If ((Local0 & 0x10))
                {
                    Notify (\_SB.SLPB, 0x02) // Device Wake
                }

                If ((Local0 & 0x40)){}
                If ((Local0 & 0x80))
                {
                    Notify (\_SB.SLPB, 0x02) // Device Wake
                }
            }
            Else
            {
                \_GPE._X17 ()
            }
        }
    }

    Method (OWAK, 1, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            ADBG ("OWAK")
            If (((Arg0 == Zero) || (Arg0 >= 0x05)))
            {
                Return (WAKI) /* External reference */
            }

            \SPS = Zero
            \_SB.PCI0.LPCB.EC.HCMU = Zero
            \_SB.PCI0.LPCB.EC.EVNT (One)
            \_SB.PCI0.LPCB.EC.HKEY.MHKE (One)
            \_SB.PCI0.LPCB.EC.FNST ()
            \UCMS (0x0D)
            \LIDB = Zero
            If ((Arg0 == One))
            {
                \FNID = \_SB.PCI0.LPCB.EC.HFNI /* External reference */
            }

            If ((Arg0 == 0x03))
            {
                \NVSS (Zero)
                \PWRS = \_SB.PCI0.LPCB.EC.AC._PSR ()
                If (\OSC4)
                {
                    \PNTF (0x81)
                }

                If ((\ACST != \_SB.PCI0.LPCB.EC.AC._PSR ()))
                {
                    \_SB.PCI0.LPCB.EC.ATMC ()
                }

                If (\SCRM)
                {
                    \_SB.PCI0.LPCB.EC.HFSP = 0x07
                }

                \IOEN = Zero
                \IOST = Zero
                If ((\ISWK == One))
                {
                    If (\_SB.PCI0.LPCB.EC.HKEY.DHKC)
                    {
                        \_SB.PCI0.LPCB.EC.HKEY.MHKQ (0x6070)
                    }
                }

                If (\VIGD)
                {
                    \_SB.PCI0.GFX0.CLID = \_SB.LID._LID ()
                    If (\WVIS)
                    {
                        \VBTD ()
                    }
                }
                ElseIf (\WVIS)
                {
                    \_SB.PCI0.GFX0.CLID = \_SB.LID._LID ()
                    \VBTD ()
                }

                \VCMS (One, \_SB.LID._LID ())
                \AWON (Zero)
                If (\CMPR)
                {
                    Notify (\_SB.SLPB, 0x02) // Device Wake
                    \CMPR = Zero
                }

                If ((\WLAC == 0x02)){}
                ElseIf ((\_SB.PCI0.LPCB.EC.ELNK && (\WLAC == One)))
                {
                    \_SB.PCI0.LPCB.EC.DCWL = Zero
                }
                Else
                {
                    \_SB.PCI0.LPCB.EC.DCWL = One
                }
            }

            If ((Arg0 == 0x04))
            {
                \NVSS (Zero)
                \_SB.PCI0.LPCB.EC.HSPA = Zero
                \PWRS = \_SB.PCI0.LPCB.EC.AC._PSR ()
                If (\OSC4)
                {
                    \PNTF (0x81)
                }

                \_SB.PCI0.LPCB.EC.ATMC ()
                If (\SCRM)
                {
                    \_SB.PCI0.LPCB.EC.HFSP = 0x07
                }

                If (!\NBCF)
                {
                    If (\VIGD)
                    {
                        \_SB.PCI0.LPCB.EC.BRNS ()
                    }
                    Else
                    {
                        \VBRC (\BRLV)
                    }
                }

                \IOEN = Zero
                \IOST = Zero
                If ((\ISWK == 0x02))
                {
                    If (\_SB.PCI0.LPCB.EC.HKEY.DHKC)
                    {
                        \_SB.PCI0.LPCB.EC.HKEY.MHKQ (0x6080)
                    }
                }

                If ((\WLAC == 0x02)){}
                ElseIf ((\_SB.PCI0.LPCB.EC.ELNK && (\WLAC == One)))
                {
                    \_SB.PCI0.LPCB.EC.DCWL = Zero
                }
                Else
                {
                    \_SB.PCI0.LPCB.EC.DCWL = One
                }
            }

            \_SB.PCI0.LPCB.EC.BATW (Arg0)
            \_SB.PCI0.LPCB.EC.HKEY.WGWK (Arg0)
            Notify (\_TZ.THM0, 0x80) // Status Change
            \VSLD (\_SB.LID._LID ())
            If (\VIGD)
            {
                \_SB.PCI0.GFX0.CLID = \_SB.LID._LID ()
            }
            ElseIf (\WVIS)
            {
                \_SB.PCI0.GFX0.CLID = \_SB.LID._LID ()
            }

            If ((Arg0 < 0x04))
            {
                If (((\RRBF & 0x02) || (B1B2 (\_SB.PCI0.LPCB.EC.AC10, \_SB.PCI0.LPCB.EC.AC11) & 0x02)))
                {
                    Local0 = (Arg0 << 0x08)
                    Local0 |= 0x2013
                    \_SB.PCI0.LPCB.EC.HKEY.MHKQ (Local0)
                }
            }

            If ((Arg0 == 0x04))
            {
                Local0 = Zero
                Local1 = \CSUM (Zero)
                If ((Local1 != \CHKC))
                {
                    Local0 = One
                    \CHKC = Local1
                }

                Local1 = \CSUM (One)
                If ((Local1 != \CHKE))
                {
                    Local0 = One
                    \CHKE = Local1
                }

                If (Local0)
                {
                    Notify (\_SB, Zero) // Bus Check
                }
            }

            If (((Arg0 == 0x03) || (Arg0 == 0x04)))
            {
                ADBG ("_WAK0")
                \_SB.PCI0.LPCB.EC.HKEY.ANDN = Zero
                \_SB.PCI0.LPCB.EC.HKEY.ANGN = Zero
                If (\H8DR)
                {
                    Local1 = \_SB.PCI0.LPCB.EC.TSL2 /* External reference */
                    Local2 = \_SB.PCI0.LPCB.EC.TSL1 /* External reference */
                }
                Else
                {
                    Local1 = (\RBEC (0x8A) & 0x7F)
                    Local2 = (\RBEC (0x89) & 0x7F)
                }

                If ((Local2 & 0x76))
                {
                    \_SB.PCI0.LPCB.EC.HKEY.DYTC (0x001F4001)
                }
                Else
                {
                    \_SB.PCI0.LPCB.EC.HKEY.DYTC (0x000F4001)
                }

                \_SB.PCI0.LPCB.EC.HKEY.DYTC (0x000F0001)
                ADBG ("_WAK1")
            }

            \RRBF = Zero
            ADBG ("OWAK END")
            Return (WAKI) /* External reference */
        }
        Else
        {
            Return (\XWAK (Arg0))
        }
    }
}

