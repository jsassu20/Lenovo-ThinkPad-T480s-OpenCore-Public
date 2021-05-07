//
// FIXES NVME DRIVE IDLE ISSUES ON THINKPAD T480S.
//
DefinitionBlock ("", "SSDT", 2, "APPLE", "_NVME", 0x00000000)
{
    External (_SB_.PCI0.RP09.PXSX, DeviceObj)

    Method (_SB.PCI0.RP09.PXSX._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x02)
        {
            "deep-idle", 
            One
        })
    }
}

