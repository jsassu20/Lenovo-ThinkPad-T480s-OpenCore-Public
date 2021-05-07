//
// FIXES SLEEP FUNCTIONALITY T480S.
//
DefinitionBlock ("", "SSDT", 2, "APPLE", "_PTWK", 0x00000000)
{
    External (EXT1, MethodObj)    // 1 Arguments
    External (EXT2, MethodObj)    // 1 Arguments
    External (EXT3, MethodObj)    // 1 Arguments
    External (EXT4, MethodObj)    // 1 Arguments
    External (ZPTS, MethodObj)    // 1 Arguments
    External (ZWAK, MethodObj)    // 1 Arguments

    Scope (_SB)
    {
        Device (PCI9)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (FNOK, Zero)
            Name (MODE, Zero)
            Name (TPTS, Zero)
            Name (TWAK, Zero)
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

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (_OSI ("Darwin"))
        {
            \_SB.PCI9.TPTS = Arg0
            If ((\_SB.PCI9.FNOK == One))
            {
                Arg0 = 0x03
            }

            If (CondRefOf (EXT1))
            {
                EXT1 (Arg0)
            }

            If (CondRefOf (EXT2))
            {
                EXT2 (Arg0)
            }
        }

        ZPTS (Arg0)
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        If (_OSI ("Darwin"))
        {
            \_SB.PCI9.TWAK = Arg0
            If ((\_SB.PCI9.FNOK == One))
            {
                \_SB.PCI9.FNOK = Zero
                Arg0 = 0x03
            }

            If (CondRefOf (EXT3))
            {
                EXT3 (Arg0)
            }

            If (CondRefOf (EXT4))
            {
                EXT4 (Arg0)
            }
        }

        Local0 = ZWAK (Arg0)
        Return (Local0)
    }
}

