//
// NVRAM FIX THINKPAD T480S.
//
DefinitionBlock ("", "SSDT", 2, "APPLE", "_PMCR", 0x00000000)
{
    External (_PR_.PR00, ProcessorObj)
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments
    External (OSDW, MethodObj)    // 0 Arguments

    Scope (_SB.PCI0.LPCB)
    {
        Device (PMCR)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSDW ())
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }
    }
}

