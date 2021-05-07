DefinitionBlock ("", "SSDT", 2, "APPLE", "_INIT", 0x00001000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.RP09.INIT, MethodObj)    // 0 Arguments
    External (DPTF, FieldUnitObj)
    External (HPTE, FieldUnitObj)
    External (OSDW, MethodObj)    // 0 Arguments
    External (OSYS, FieldUnitObj)
    External (WNTF, FieldUnitObj)
    External (ZINI, MethodObj)    // 0 Arguments

    Scope (\_SB.PCI0)
    {
        Method (OINI, 0, NotSerialized)
        {
            If (OSDW ())
            {
                Debug = "INIT: Set Variables..."
                HPTE = Zero
                WNTF = One
                DPTF = Zero
                OSYS = 0x07DF
            }

            ZINI ()
            If ((OSDW () && CondRefOf (\_SB.PCI0.RP09.INIT)))
            {
                \_SB.PCI0.RP09.INIT ()
            }
        }
    }
}

