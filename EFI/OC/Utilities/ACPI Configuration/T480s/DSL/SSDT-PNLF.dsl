//
// PROPER BACKLIGHT FUNCTIONALITY FOR THINKPAD T480S.
//
DefinitionBlock ("", "SSDT", 2, "APPLE", "_PNLFS", 0x00001000)
{
    External (_SB_.PCI0.GFX0, DeviceObj)

    Scope (_SB.PCI0.GFX0)
    {
        OperationRegion (RMP1, PCI_Config, 0x02, 0x02)
    }

    Device (_SB.PCI0.GFX0.PNLF)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
        Name (_CID, "backlight")  // _CID: Compatible ID
        Name (_UID, Zero)  // _UID: Unique ID
        Name (_STA, 0x0B)  // _STA: Status
        Field (RMP1, AnyAcc, NoLock, Preserve)
        {
            GDID,   16
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Local0 = ^GDID /* \_SB_.PCI0.GFX0.PNLF.GDID */
            If ((Ones != Match (Package (0x15)
                            {
                                0x42, 
                                0x46, 
                                0x4A, 
                                0x0102, 
                                0x0106, 
                                0x010A, 
                                0x010B, 
                                0x010E, 
                                0x0112, 
                                0x0116, 
                                0x0122, 
                                0x0126, 
                                0x0152, 
                                0x0156, 
                                0x015A, 
                                0x015E, 
                                0x0162, 
                                0x0166, 
                                0x016A, 
                                0x0172, 
                                0x0176
                            }, MEQ, Local0, MTR, Zero, Zero)))
            {
                _UID = 0x0E
            }
            ElseIf ((Ones != Match (Package (0x1D)
                            {
                                0x0402, 
                                0x0406, 
                                0x040A, 
                                0x0412, 
                                0x0416, 
                                0x041A, 
                                0x041E, 
                                0x0A06, 
                                0x0A16, 
                                0x0A1E, 
                                0x0A22, 
                                0x0A26, 
                                0x0A2A, 
                                0x0A2B, 
                                0x0A2E, 
                                0x0D12, 
                                0x0D16, 
                                0x0D22, 
                                0x0D26, 
                                0x0D2A, 
                                0x0D36, 
                                0x1612, 
                                0x1616, 
                                0x161E, 
                                0x1622, 
                                0x1626, 
                                0x162A, 
                                0x162B, 
                                0x162D
                            }, MEQ, Local0, MTR, Zero, Zero)))
            {
                _UID = 0x0F
            }
            ElseIf ((Ones != Match (Package (0x1D)
                            {
                                0x1902, 
                                0x1906, 
                                0x190B, 
                                0x1912, 
                                0x1916, 
                                0x191B, 
                                0x191D, 
                                0x191E, 
                                0x1921, 
                                0x1923, 
                                0x1926, 
                                0x1927, 
                                0x192B, 
                                0x192D, 
                                0x1932, 
                                0x193A, 
                                0x193B, 
                                0x5902, 
                                0x5912, 
                                0x5916, 
                                0x5917, 
                                0x591B, 
                                0x591C, 
                                0x591D, 
                                0x591E, 
                                0x5923, 
                                0x5926, 
                                0x5927, 
                                0x87C0
                            }, MEQ, Local0, MTR, Zero, Zero)))
            {
                _UID = 0x10
            }
            Else
            {
                _UID = 0x13
            }
        }
    }
}

