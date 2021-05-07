//
// DEFINE USB PORTS WITHOUT THE NEED FOR USBINJECTALL OR USBPORTS KEXT.
//
DefinitionBlock ("", "SSDT", 2, "APPLE", "_XHC1", 0x00001000)
{
    External (_SB_.PCI0.RP09.PXSX.DSB2.XHC2, DeviceObj)
    External (_SB_.PCI0.RP09.PXSX.DSB2.XHC2.MODU, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP09.UPN1, IntObj)
    External (_SB_.PCI0.RP09.UPN2, IntObj)
    External (_SB_.PCI0.XHC_, DeviceObj)
    External (_SB_.PCI0.XHC_.MEMB, FieldUnitObj)
    External (_SB_.PCI0.XHC_.PDBM, FieldUnitObj)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS01.XUPC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.XHC_.RHUB.HS02, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS02.XUPC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.XHC_.RHUB.HS03, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS03.XUPC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.XHC_.RHUB.HS04, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS04.XUPC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.XHC_.RHUB.HS05, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS05.XUPC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.XHC_.RHUB.HS06, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS06.XUPC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.XHC_.RHUB.HS07, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS07.XUPC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.XHC_.RHUB.HS08, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS08.XUPC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.XHC_.RHUB.HS09, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS09.XUPC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.XHC_.RHUB.HS10, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS10.XUPC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.XHC_.RHUB.SS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS01.XUPC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.XHC_.RHUB.SS02, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS02.XUPC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.XHC_.RHUB.SS03, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS03.XUPC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.XHC_.RHUB.SS04, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS04.XUPC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.XHC_.RHUB.SS05, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS05.XUPC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.XHC_.RHUB.SS06, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS06.XUPC, MethodObj)    // 0 Arguments
    External (DTGP, MethodObj)    // 5 Arguments
    External (MPMC, FieldUnitObj)
    External (OSDW, MethodObj)    // 0 Arguments
    External (PMFS, FieldUnitObj)
    External (TBAS, IntObj)
    External (UWAB, FieldUnitObj)
    External (XLTP, FieldUnitObj)

    Scope (\_SB)
    {
        Device (USBX)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x08)
                    {
                        "kUSBSleepPortCurrentLimit", 
                        0x0834, 
                        "kUSBWakePortCurrentLimit", 
                        0x0834, 
                        "kUSBSleepPowerSupply", 
                        0x13EC, 
                        "kUSBWakePowerSupply", 
                        0x13EC
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSDW ())
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Scope (PCI0.XHC)
        {
            Name (_GPE, 0x6D)  // _GPE: General Purpose Events
            Method (RTPC, 1, Serialized)
            {
                Debug = Concatenate ("XHC:RTPC called with args: ", Arg0)
                Return (Zero)
            }

            Method (MODU, 0, Serialized)
            {
                Local0 = One
                If (CondRefOf (\_SB.PCI0.RP09.PXSX.DSB2.XHC2.MODU))
                {
                    Local0 = \_SB.PCI0.RP09.PXSX.DSB2.XHC2.MODU ()
                }

                Debug = Concatenate ("XHC:MODU - Result: ", Local0)
                Return (Local0)
            }

            Scope (RHUB)
            {
                Scope (HS01)
                {
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        If (OSDW ())
                        {
                            Return (Package (0x04)
                            {
                                0xFF, 
                                0x03, 
                                Zero, 
                                Zero
                            })
                        }
                        Else
                        {
                            Return (^XUPC ())
                        }
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x01){}
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }

                Scope (HS02)
                {
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        If (OSDW ())
                        {
                            Return (Package (0x04)
                            {
                                0xFF, 
                                0x03, 
                                Zero, 
                                Zero
                            })
                        }
                        Else
                        {
                            Return (^XUPC ())
                        }
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x01){}
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }

                Scope (HS03)
                {
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        If (OSDW ())
                        {
                            If (CondRefOf (\_SB.PCI0.RP09.PXSX.DSB2.XHC2))
                            {
                                Debug = "XHC:U2OP - companion ports enabled"
                            }

                            Return (Package (0x04)
                            {
                                0xFF, 
                                0x08, 
                                Zero, 
                                Zero
                            })
                        }
                        Else
                        {
                            Return (^XUPC ())
                        }
                    }

                    If (CondRefOf (\_SB.PCI0.RP09.PXSX.DSB2.XHC2))
                    {
                        Name (SSP, Package (0x02)
                        {
                            "XHC2", 
                            0x03
                        })
                        Name (SS, Package (0x02)
                        {
                            "XHC2", 
                            0x03
                        })
                        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                        {
                            Local0 = Package (0x01){}
                            If (CondRefOf (\_SB.PCI0.RP09.UPN2))
                            {
                                Local0 = Package (0x02)
                                    {
                                        "UsbCPortNumber", 
                                        \_SB.PCI0.RP09.UPN1
                                    }
                            }

                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }
                    }
                }

                Scope (HS04)
                {
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        If (OSDW ())
                        {
                            Return (Package (0x04)
                            {
                                0xFF, 
                                0x08, 
                                Zero, 
                                Zero
                            })
                        }
                        Else
                        {
                            Return (^XUPC ())
                        }
                    }

                    If (CondRefOf (\_SB.PCI0.RP09.PXSX.DSB2.XHC2))
                    {
                        Name (SSP, Package (0x02)
                        {
                            "XHC2", 
                            0x04
                        })
                        Name (SS, Package (0x02)
                        {
                            "XHC2", 
                            0x04
                        })
                        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                        {
                            Local0 = Package (0x01){}
                            If (CondRefOf (\_SB.PCI0.RP09.UPN2))
                            {
                                Local0 = Package (0x02)
                                    {
                                        "UsbCPortNumber", 
                                        \_SB.PCI0.RP09.UPN2
                                    }
                            }

                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }
                    }
                }

                Scope (HS05)
                {
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        If (OSDW ())
                        {
                            Return (Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }
                        Else
                        {
                            Return (^XUPC ())
                        }
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (OSDW ())
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x01){}
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }

                Scope (HS06)
                {
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        If (OSDW ())
                        {
                            Return (Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }
                        Else
                        {
                            Return (^XUPC ())
                        }
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x01){}
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }

                Scope (HS07)
                {
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        If (OSDW ())
                        {
                            Return (Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }
                        Else
                        {
                            Return (^XUPC ())
                        }
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x01){}
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }

                Scope (HS08)
                {
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        If (OSDW ())
                        {
                            Return (Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }
                        Else
                        {
                            Return (^XUPC ())
                        }
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x01){}
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }

                Scope (HS09)
                {
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        If (OSDW ())
                        {
                            Return (Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }
                        Else
                        {
                            Return (^XUPC ())
                        }
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (OSDW ())
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x01){}
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }

                Scope (HS10)
                {
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        If (OSDW ())
                        {
                            Return (Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }
                        Else
                        {
                            Return (^XUPC ())
                        }
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x01){}
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }

                Scope (SS01)
                {
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        If (OSDW ())
                        {
                            Return (Package (0x04)
                            {
                                0xFF, 
                                0x03, 
                                Zero, 
                                Zero
                            })
                        }
                        Else
                        {
                            Return (^XUPC ())
                        }
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x01){}
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }

                Scope (SS02)
                {
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        If (OSDW ())
                        {
                            Return (Package (0x04)
                            {
                                0xFF, 
                                0x03, 
                                Zero, 
                                Zero
                            })
                        }
                        Else
                        {
                            Return (^XUPC ())
                        }
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x01){}
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }

                Scope (SS03)
                {
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        If (OSDW ())
                        {
                            Return (Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }
                        Else
                        {
                            Return (^XUPC ())
                        }
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }

                    Name (IGNR, Zero)
                    Method (SBHV, 1, Serialized)
                    {
                        If (Arg0)
                        {
                            IGNR = One
                        }
                        Else
                        {
                            IGNR = Zero
                        }
                    }

                    Method (GBHV, 0, Serialized)
                    {
                        Return (IGNR) /* \_SB_.PCI0.XHC_.RHUB.SS03.IGNR */
                    }

                    Name (U3SD, 0x0FBE)
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x02){}
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }

                Scope (SS04)
                {
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        If (OSDW ())
                        {
                            Return (Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }
                        Else
                        {
                            Return (^XUPC ())
                        }
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x01){}
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }

                Scope (SS05)
                {
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        If (OSDW ())
                        {
                            Return (Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }
                        Else
                        {
                            Return (^XUPC ())
                        }
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x01){}
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }

                Scope (SS06)
                {
                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        If (OSDW ())
                        {
                            Return (Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }
                        Else
                        {
                            Return (^XUPC ())
                        }
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x01){}
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }
            }

            Method (MBSD, 0, NotSerialized)
            {
                Return (One)
            }

            If (CondRefOf (\_SB.PCI0.RP09.PXSX.DSB2.XHC2))
            {
                Name (SSP, Package (0x01)
                {
                    "XHC2"
                })
                Name (SS, Package (0x01)
                {
                    "XHC2"
                })
            }
        }
    }
}

