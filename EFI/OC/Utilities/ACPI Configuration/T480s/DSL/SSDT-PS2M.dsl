//
// CUSTOM MOUSE CONFIGURATION FOR VOODOOPS2 KEXT..
//
DefinitionBlock ("", "SSDT", 2, "APPLE", "_PS2M", 0x00000000)
{
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.XQ13, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.XQ14, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.XQ15, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.XQ16, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.XQ60, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.XQ61, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.XQ62, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.XQ64, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.XQ65, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.XQ66, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.XQ6A, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.KBD_, DeviceObj)
    External (_SB_.PCI9.FNOK, IntObj)

    Scope (_SB.PCI0.LPCB.KBD)
    {
        Name (RMCF, Package (0x02)
        {
            "Keyboard", 
            Package (0x02)
            {
                "Custom PS2 Map", 
                Package (0x07)
                {
                    Package (0x00){}, 
                    "e037=64", 
                    "46=80", 
                    "e045=80", 
                    "38=e05b", 
                    "e038=e05c", 
                    "e05b=38"
                }
            }
        })
    }
}

