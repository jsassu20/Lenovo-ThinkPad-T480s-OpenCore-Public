//
// MAPS POWER BUTTON FROM T480S IN IOREG.
//
DefinitionBlock ("", "SSDT", 2, "APPLE", "_PWRB", 0x00001000)
{
    External (OSDW, MethodObj)    // 0 Arguments

    Scope (_SB)
    {
        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSDW ())
                {
                    Return (0x0B)
                }

                Return (Zero)
            }
        }
    }
}

