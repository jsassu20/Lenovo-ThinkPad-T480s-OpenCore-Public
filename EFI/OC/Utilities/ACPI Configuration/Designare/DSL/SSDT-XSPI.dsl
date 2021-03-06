DefinitionBlock ("", "SSDT", 2, "APPLE", "XSPI", 0x001F0005)
{
    External (_SB_.PCI0.XSPI, DeviceObj)

    Device (_SB.PCI0.XSPI)
    {
        Name (_ADR, 0x001F0005)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x0A)
            {
                "AAPL,slot-name", 
                "Built In", 
                "model", 
                Buffer ()
                {
                    "Intel Cannon Lake 11 Series Chipset PCH SPI Serial Bus Chipset Controller"
                }, 

                "name", 
                Buffer ()
                {
                    "Intel Cannon Lake Serial Bus Chipset Controller"
                }, 

                "device_type", 
                Buffer (0x13)
                {
                    "Chipset Controller"
                }, 

                "pci-device-hidden", 
                Buffer (0x08)
                {
                     0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }
            })
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }
    }
}

