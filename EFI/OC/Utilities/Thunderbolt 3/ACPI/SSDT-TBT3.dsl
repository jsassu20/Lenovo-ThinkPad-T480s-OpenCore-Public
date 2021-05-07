DefinitionBlock ("", "SSDT", 1, "APPLE", "T480STB3", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.RP05, DeviceObj)
    External (_SB_.PCI0.RP05.PXSX, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments
    External (PXSX, DeviceObj)

    If (_OSI ("Darwin"))
    {
        Scope (_SB.PCI0.RP05)
        {
            Scope (PXSX)
            {
                Name (_STA, Zero)  // _STA: Status
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Device (UPSB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                Field (A1E0, ByteAcc, NoLock, Preserve)
                {
                    AVND,   32, 
                    BMIE,   3, 
                    Offset (0x18), 
                    PRIB,   8, 
                    SECB,   8, 
                    SUBB,   8, 
                    Offset (0x1E), 
                        ,   13, 
                    MABT,   1
                }

                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                {
                    Return (SECB) /* \_SB_.PCI0.RP05.UPSB.SECB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (!Arg2)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x06)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x09)
                        {
                            "Built In"
                        }, 

                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "PCI-Thunderbolt", 
                        One
                    })
                }

                Device (DSB0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                    Field (A1E0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   32, 
                        BMIE,   3, 
                        Offset (0x18), 
                        PRIB,   8, 
                        SECB,   8, 
                        SUBB,   8, 
                        Offset (0x1E), 
                            ,   13, 
                        MABT,   1
                    }

                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                    {
                        Return (SECB) /* \_SB_.PCI0.RP05.UPSB.DSB0.SECB */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }

                    Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                    {
                        If (!Arg2)
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }

                        Return (Package (0x06)
                        {
                            "AAPL,slot-name", 
                            Buffer (0x09)
                            {
                                "Built In"
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }, 

                            "PCIHotplugCapable", 
                            One
                        })
                    }

                    Device (NHI0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Name (_STR, Unicode ("Thunderbolt"))  // _STR: Description String
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg2 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }

                            Local0 = Package (0x13)
                                {
                                    "AAPL,slot-name", 
                                    Buffer ()
                                    {
                                        "Built In"
                                    }, 

                                    "built-in", 
                                    Buffer (One)
                                    {
                                         0x00                                             // .
                                    }, 

                                    "device_type", 
                                    Buffer (0x19)
                                    {
                                        "Thunderbolt 3 Controller"
                                    }, 

                                    "model", 
                                    Buffer ()
                                    {
                                        "Intel JHL6540 Alpine Ridge Thunderbolt 3 NHI"
                                    }, 

                                    "name", 
                                    Buffer ()
                                    {
                                        "Intel JHL6540 Alpine Ridge Thunderbolt 3 Controller"
                                    }, 

                                    "ThunderboltDROM", 
                                    Buffer (0x6F)
                                    {
                                        /* 0000 */  0xB4, 0x00, 0xB8, 0xD1, 0xA7, 0x47, 0xA8, 0xF6,  // .....G..
                                        /* 0008 */  0x00, 0x7F, 0x02, 0x11, 0xC8, 0x01, 0x62, 0x00,  // ......b.
                                        /* 0010 */  0x09, 0x01, 0x06, 0x17, 0x01, 0x2B, 0x08, 0x81,  // .....+..
                                        /* 0018 */  0x80, 0x02, 0x80, 0x00, 0x00, 0x00, 0x08, 0x82,  // ........
                                        /* 0020 */  0x90, 0x01, 0x80, 0x00, 0x00, 0x00, 0x08, 0x83,  // ........
                                        /* 0028 */  0x80, 0x04, 0x80, 0x01, 0x00, 0x00, 0x08, 0x84,  // ........
                                        /* 0030 */  0x90, 0x03, 0x80, 0x01, 0x00, 0x00, 0x02, 0x85,  // ........
                                        /* 0038 */  0x0B, 0x86, 0x20, 0x01, 0x00, 0x64, 0x00, 0x00,  // .. ..d..
                                        /* 0040 */  0x00, 0x00, 0x00, 0x02, 0x87, 0x05, 0x88, 0x50,  // .......P
                                        /* 0048 */  0x40, 0x00, 0x05, 0x89, 0x50, 0x00, 0x00, 0x05,  // @...P...
                                        /* 0050 */  0x8A, 0x50, 0x00, 0x00, 0x05, 0x8B, 0x50, 0x40,  // .P....P@
                                        /* 0058 */  0x00, 0x08, 0x01, 0x41, 0x70, 0x70, 0x6C, 0x65,  // ...Apple
                                        /* 0060 */  0x00, 0x0E, 0x02, 0x4D, 0x61, 0x63, 0x42, 0x6F,  // ...MacBo
                                        /* 0068 */  0x6F, 0x6B, 0x20, 0x50, 0x72, 0x6F, 0x00         // ok Pro.
                                    }, 

                                    "ThunderboltConfig", 
                                    Buffer (0x20)
                                    {
                                        /* 0000 */  0x00, 0x02, 0x1C, 0x00, 0x02, 0x00, 0x05, 0x03,  // ........
                                        /* 0008 */  0x01, 0x00, 0x04, 0x00, 0x05, 0x03, 0x02, 0x00,  // ........
                                        /* 0010 */  0x03, 0x00, 0x05, 0x03, 0x01, 0x00, 0x00, 0x00,  // ........
                                        /* 0018 */  0x03, 0x03, 0x02, 0x00, 0x01, 0x00, 0x02, 0x00   // ........
                                    }, 

                                    "linkDetails", 
                                    Buffer (0x08)
                                    {
                                         0x08, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00   // ........
                                    }, 

                                    "power-save", 
                                    One, 
                                    Buffer (One)
                                    {
                                         0x00                                             // .
                                    }
                                }
                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }

                        Return (Zero)
                    }
                }

                Device (DSB1)
                {
                    Name (_ADR, 0x00010000)  // _ADR: Address
                    Name (_SUN, 0x04)  // _SUN: Slot User Number
                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                    Field (A1E0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   32, 
                        BMIE,   3, 
                        Offset (0x18), 
                        PRIB,   8, 
                        SECB,   8, 
                        SUBB,   8, 
                        Offset (0x1E), 
                            ,   13, 
                        MABT,   1
                    }

                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                    {
                        Return (SECB) /* \_SB_.PCI0.RP05.UPSB.DSB1.SECB */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (Package (0x02)
                        {
                            0x69, 
                            0x03
                        })
                    }

                    Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                    {
                        If (!Arg2)
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }

                        Return (Package (0x04)
                        {
                            "AAPL,slot-name", 
                            Buffer (0x07)
                            {
                                "Slot-4"
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        })
                    }

                    Device (UPS0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                        Field (ARE0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   16
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Device (DSB0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                            Field (A1E0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   32, 
                                BMIE,   3, 
                                Offset (0x18), 
                                PRIB,   8, 
                                SECB,   8, 
                                SUBB,   8, 
                                Offset (0x1E), 
                                    ,   13, 
                                MABT,   1, 
                                Offset (0x3E), 
                                    ,   6, 
                                SBRS,   1
                            }

                            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                            {
                                Return (SECB) /* \_SB_.PCI0.RP05.UPSB.DSB1.UPS0.DSB0.SECB */
                            }

                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (Zero)
                            }

                            Device (DEV0)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (Zero)
                                }
                            }
                        }

                        Device (DSB3)
                        {
                            Name (_ADR, 0x00030000)  // _ADR: Address
                            OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                            Field (A1E0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   32, 
                                BMIE,   3, 
                                Offset (0x18), 
                                PRIB,   8, 
                                SECB,   8, 
                                SUBB,   8, 
                                Offset (0x1E), 
                                    ,   13, 
                                MABT,   1
                            }

                            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                            {
                                Return (SECB) /* \_SB_.PCI0.RP05.UPSB.DSB1.UPS0.DSB3.SECB */
                            }

                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (Zero)
                            }

                            Device (UPS0)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                                Field (ARE0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   16
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (Zero)
                                }

                                Device (DSB0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1, 
                                        Offset (0x3E), 
                                            ,   6, 
                                        SBRS,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.RP05.UPSB.DSB1.UPS0.DSB3.UPS0.DSB0.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, Zero)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }
                                    }
                                }

                                Device (DSB3)
                                {
                                    Name (_ADR, 0x00030000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.RP05.UPSB.DSB1.UPS0.DSB3.UPS0.DSB3.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        Return (Zero)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, Zero)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }

                                Device (DSB4)
                                {
                                    Name (_ADR, 0x00040000)  // _ADR: Address
                                    Name (_SUN, 0x04)  // _SUN: Slot User Number
                                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.RP05.UPSB.DSB1.UPS0.DSB3.UPS0.DSB4.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        Return (Zero)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, Zero)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }

                                Device (DSB5)
                                {
                                    Name (_ADR, 0x00050000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.RP05.UPSB.DSB1.UPS0.DSB3.UPS0.DSB5.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        Return (Zero)
                                    }
                                }

                                Device (DSB6)
                                {
                                    Name (_ADR, 0x00060000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.RP05.UPSB.DSB1.UPS0.DSB3.UPS0.DSB6.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        Return (Zero)
                                    }
                                }
                            }
                        }

                        Device (DSB4)
                        {
                            Name (_ADR, 0x00040000)  // _ADR: Address
                            OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                            Field (A1E0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   32, 
                                BMIE,   3, 
                                Offset (0x18), 
                                PRIB,   8, 
                                SECB,   8, 
                                SUBB,   8, 
                                Offset (0x1E), 
                                    ,   13, 
                                MABT,   1
                            }

                            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                            {
                                Return (SECB) /* \_SB_.PCI0.RP05.UPSB.DSB1.UPS0.DSB4.SECB */
                            }

                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (Zero)
                            }

                            Device (UPS0)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                                Field (ARE0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   16
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (Zero)
                                }

                                Device (DSB0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1, 
                                        Offset (0x3E), 
                                            ,   6, 
                                        SBRS,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.RP05.UPSB.DSB1.UPS0.DSB4.UPS0.DSB0.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, Zero)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }

                                Device (DSB3)
                                {
                                    Name (_ADR, 0x00030000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.RP05.UPSB.DSB1.UPS0.DSB4.UPS0.DSB3.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        Return (Zero)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, Zero)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }

                                Device (DSB4)
                                {
                                    Name (_ADR, 0x00040000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.RP05.UPSB.DSB1.UPS0.DSB4.UPS0.DSB4.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        Return (Zero)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, Zero)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }

                                Device (DSB5)
                                {
                                    Name (_ADR, 0x00050000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.RP05.UPSB.DSB1.UPS0.DSB4.UPS0.DSB5.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        Return (Zero)
                                    }
                                }

                                Device (DSB6)
                                {
                                    Name (_ADR, 0x00060000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.RP05.UPSB.DSB1.UPS0.DSB4.UPS0.DSB6.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        Return (Zero)
                                    }
                                }
                            }
                        }

                        Device (DSB5)
                        {
                            Name (_ADR, 0x00050000)  // _ADR: Address
                            OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                            Field (A1E0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   32, 
                                BMIE,   3, 
                                Offset (0x18), 
                                PRIB,   8, 
                                SECB,   8, 
                                SUBB,   8, 
                                Offset (0x1E), 
                                    ,   13, 
                                MABT,   1
                            }

                            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                            {
                                Return (SECB) /* \_SB_.PCI0.RP05.UPSB.DSB1.UPS0.DSB5.SECB */
                            }

                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (Zero)
                            }
                        }

                        Device (DSB6)
                        {
                            Name (_ADR, 0x00060000)  // _ADR: Address
                            OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                            Field (A1E0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   32, 
                                BMIE,   3, 
                                Offset (0x18), 
                                PRIB,   8, 
                                SECB,   8, 
                                SUBB,   8, 
                                Offset (0x1E), 
                                    ,   13, 
                                MABT,   1
                            }

                            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                            {
                                Return (SECB) /* \_SB_.PCI0.RP05.UPSB.DSB1.UPS0.DSB6.SECB */
                            }

                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                Device (DSB2)
                {
                    Name (_ADR, 0x00020000)  // _ADR: Address
                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                    Field (A1E0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   32, 
                        BMIE,   3, 
                        Offset (0x18), 
                        PRIB,   8, 
                        SECB,   8, 
                        SUBB,   8, 
                        Offset (0x1E), 
                            ,   13, 
                        MABT,   1
                    }

                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                    {
                        Return (SECB) /* \_SB_.PCI0.RP05.UPSB.DSB2.SECB */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }

                    Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                    {
                        If (!Arg2)
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }

                        Return (Package (0x04)
                        {
                            "PCIHotplugCapable", 
                            One, 
                            "IOPCIHPType", 
                            0x02
                        })
                    }

                    Device (XHC2)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg2 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }

                            Local0 = Package (0x14)
                                {
                                    "AAPL,slot-name", 
                                    Buffer ()
                                    {
                                        "Built In"
                                    }, 

                                    "built-in", 
                                    Buffer (One)
                                    {
                                         0x00                                             // .
                                    }, 

                                    "model", 
                                    Buffer ()
                                    {
                                        "Intel JHL6540 Alpine Ridge USB 3.1 Gen 2 Type-C Controller"
                                    }, 

                                    "name", 
                                    Buffer ()
                                    {
                                        "Intel JHL6540 Alpine Ridge USB 3.1 Gen 2 Type-C Controller"
                                    }, 

                                    "device_type", 
                                    Buffer ()
                                    {
                                        "USB eXtensible Host Controller"
                                    }, 

                                    "USBBusNumber", 
                                    Zero, 
                                    "UsbCompanionControllerPresent", 
                                    One, 
                                    "AAPL,XHCI-clock-id", 
                                    One, 
                                    "IOPCIExpressCapabilites", 
                                    0x02, 
                                    "IOPCIHPType", 
                                    0x02
                                }
                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }

                        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                        {
                            Return (Package (0x02)
                            {
                                0x69, 
                                0x03
                            })
                        }

                        Device (RHUB)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (Zero)
                            }

                            Device (SSP1)
                            {
                                Name (_ADR, One)  // _ADR: Address
                                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                                {
                                    0xFF, 
                                    0x09, 
                                    Zero, 
                                    Zero
                                })
                                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                                {
                                    ToPLD (
                                        PLD_Revision           = 0x1,
                                        PLD_IgnoreColor        = 0x1,
                                        PLD_Red                = 0x0,
                                        PLD_Green              = 0x0,
                                        PLD_Blue               = 0x0,
                                        PLD_Width              = 0x0,
                                        PLD_Height             = 0x0,
                                        PLD_UserVisible        = 0x1,
                                        PLD_Dock               = 0x0,
                                        PLD_Lid                = 0x0,
                                        PLD_Panel              = "UNKNOWN",
                                        PLD_VerticalPosition   = "UPPER",
                                        PLD_HorizontalPosition = "LEFT",
                                        PLD_Shape              = "UNKNOWN",
                                        PLD_GroupOrientation   = 0x0,
                                        PLD_GroupToken         = 0x0,
                                        PLD_GroupPosition      = 0x0,
                                        PLD_Bay                = 0x0,
                                        PLD_Ejectable          = 0x0,
                                        PLD_EjectRequired      = 0x0,
                                        PLD_CabinetNumber      = 0x0,
                                        PLD_CardCageNumber     = 0x0,
                                        PLD_Reference          = 0x0,
                                        PLD_Rotation           = 0x0,
                                        PLD_Order              = 0x0,
                                        PLD_VerticalOffset     = 0x0,
                                        PLD_HorizontalOffset   = 0x0)

                                })
                                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                                {
                                    If ((Arg2 == Zero))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x03                                             // .
                                        })
                                    }

                                    Return (Package (0x02)
                                    {
                                        "UsbCPortNumber", 
                                        One
                                    })
                                }
                            }

                            Device (HS01)
                            {
                                Name (_ADR, 0x03)  // _ADR: Address
                                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                                {
                                    0xFF, 
                                    0x09, 
                                    Zero, 
                                    Zero
                                })
                                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                                {
                                    ToPLD (
                                        PLD_Revision           = 0x1,
                                        PLD_IgnoreColor        = 0x1,
                                        PLD_Red                = 0x0,
                                        PLD_Green              = 0x0,
                                        PLD_Blue               = 0x0,
                                        PLD_Width              = 0x0,
                                        PLD_Height             = 0x0,
                                        PLD_UserVisible        = 0x1,
                                        PLD_Dock               = 0x0,
                                        PLD_Lid                = 0x0,
                                        PLD_Panel              = "UNKNOWN",
                                        PLD_VerticalPosition   = "UPPER",
                                        PLD_HorizontalPosition = "LEFT",
                                        PLD_Shape              = "UNKNOWN",
                                        PLD_GroupOrientation   = 0x0,
                                        PLD_GroupToken         = 0x0,
                                        PLD_GroupPosition      = 0x0,
                                        PLD_Bay                = 0x0,
                                        PLD_Ejectable          = 0x0,
                                        PLD_EjectRequired      = 0x0,
                                        PLD_CabinetNumber      = 0x0,
                                        PLD_CardCageNumber     = 0x0,
                                        PLD_Reference          = 0x0,
                                        PLD_Rotation           = 0x0,
                                        PLD_Order              = 0x0,
                                        PLD_VerticalOffset     = 0x0,
                                        PLD_HorizontalOffset   = 0x0)

                                })
                            }
                        }
                    }
                }
            }
        }
    }
}

