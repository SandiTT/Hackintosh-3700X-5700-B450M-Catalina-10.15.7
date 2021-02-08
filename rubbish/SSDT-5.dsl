/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-5.aml, Mon Feb  8 17:15:46 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000BF (191)
 *     Revision         0x01
 *     Checksum         0x06
 *     OEM ID           "AMD"
 *     OEM Table ID     "AMD PT"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 1, "AMD", "AMD PT", 0x00001000)
{
    Name (PTOS, Zero)
    If (CondRefOf (\_OSI))
    {
        If (\_OSI ("Windows 2015"))
        {
            Store (0x70, PTOS)
        }
    }

    Scope (\_SB)
    {
        Device (PTIO)
        {
            Name (_HID, "AMDIF030")  // _HID: Hardware ID
            Name (_CID, "AMDIF030")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFEC30000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LGreaterEqual (PTOS, 0x70))
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
}

