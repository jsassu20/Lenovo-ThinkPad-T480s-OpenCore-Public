//
// POWER MANAGEMENT CPU.
//
DefinitionBlock ("", "SSDT", 2, "APPLE", "_PRPM", 0x00001000)
{
    External (_PR_.PR00, ProcessorObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_PR.PR00)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Debug = "Writing plugin-type to Registry!"
            Local0 = Package (0x02)
                {
                    "plugin-type", 
                    One
                }
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }
}

