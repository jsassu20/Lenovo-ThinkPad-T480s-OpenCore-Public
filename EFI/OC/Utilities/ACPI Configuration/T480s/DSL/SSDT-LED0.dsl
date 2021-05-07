//
// LED RESET FOR LENOVO THINKPAD T480S BLINKING RED LIGHT ON THINKPAD LOGO (TOP LID).
//
DefinitionBlock ("", "SSDT", 2, "APPLE", "_LED0", 0x00000000)
{
    External (_SI_._SST, MethodObj)    // 1 Arguments

    Method (EXT3, 1, NotSerialized)
    {
        If ((0x03 == Arg0))
        {
            \_SI._SST (One)
        }
    }
}

