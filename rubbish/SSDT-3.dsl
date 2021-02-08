/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-3.aml, Mon Feb  8 17:15:46 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00003301 (13057)
 *     Revision         0x01
 *     Checksum         0x4B
 *     OEM ID           "AMD"
 *     OEM Table ID     "AMD AOD"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 1, "AMD", "AMD AOD", 0x00000001)
{
    Scope (\)
    {
        Device (AOD)
        {
            Name (DBG, Zero)
            Name (GDBG, Zero)
            Name (CDBG, Zero)
            Name (VDBG, Zero)
            Name (RDBG, Zero)
            OperationRegion (PMRG, SystemIO, 0x0CD6, 0x02)
            Field (PMRG, ByteAcc, NoLock, Preserve)
            {
                PMRI,   8, 
                PMRD,   8
            }

            OperationRegion (PSMI, SystemIO, 0xB2, 0x02)
            Field (PSMI, ByteAcc, NoLock, Preserve)
            {
                APMC,   8, 
                APMD,   8
            }

            Method (ASMI, 1, NotSerialized)
            {
                Store (Arg0, APMC)
                Sleep (0x0A)
            }

            Name (OBID, Package (0xC1)
            {
                0x40, 
                0x00010001, 
                0x00010002, 
                0x00020001, 
                0x00020002, 
                0x00020003, 
                0x00020004, 
                0x00020005, 
                0x00020006, 
                0x00020007, 
                0x00020008, 
                0x00020009, 
                0x0002000A, 
                0x0002000B, 
                0x0002000C, 
                0x0002000D, 
                0x0002000E, 
                0x0002000F, 
                0x00020010, 
                0x00020011, 
                0x00020012, 
                0x00020013, 
                0x00020014, 
                0x00020015, 
                0x00020016, 
                0x00020017, 
                0x00020018, 
                0x00020019, 
                0x0002001A, 
                0x0002001B, 
                0x0002001C, 
                0x0002001D, 
                0x0002001E, 
                0x0002001F, 
                0x00020020, 
                0x00020021, 
                0x00020022, 
                0x00020023, 
                0x00020024, 
                0x00020025, 
                0x00020026, 
                0x00020027, 
                0x00020028, 
                0x00020029, 
                0x0002002A, 
                0x0002002B, 
                0x0002002C, 
                0x0002002D, 
                0x0002002E, 
                0x0002002F, 
                0x00020030, 
                0x00020031, 
                0x00020032, 
                0x00020033, 
                0x00020034, 
                0x00020035, 
                0x00020036, 
                0x00020037, 
                0x00020038, 
                0x00020039, 
                0x0002003A, 
                0x00030001, 
                0x00030002, 
                0x00040001, 
                0x00040002, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                One, 
                "Get APCB Config", 
                "Get memory voltages", 
                "Set memory clock frequency", 
                "Set Tcl", 
                "Set Trcdrd", 
                "Set Trcdwr", 
                "Set Tras", 
                "Set Trp", 
                "Set ProcODT", 
                "Set Trcpage", 
                "Set Trc", 
                "Set Trfc", 
                "Set Trfc2", 
                "Set Trfc4", 
                "Set Tfaw", 
                "Set TrrdS", 
                "Set TrrdL", 
                "Set Twr", 
                "Set TwtrS", 
                "Set TwtrL", 
                "Set TCke", 
                "Set Tcwl", 
                "Set Trtp", 
                "Set TrdrdSc", 
                "Set TrdrdScL", 
                "Set TrdrdSd", 
                "Set TrdrdDd", 
                "Set TwrwrSc", 
                "Set TwrwrScL", 
                "Set TwrwrSd", 
                "Set TwrwrDd", 
                "Set Trdwr", 
                "Set Twrrd", 
                "Set GearDownEn", 
                "Set Cmd2t", 
                "Set RttNom", 
                "Set RttWR", 
                "Set RttPark", 
                "Set PowerDownEn", 
                "Set SMT EN", 
                "Software Downcore Config", 
                "Set EDC Throttler Control", 
                "Set AddrCmdSetup", 
                "Set CsOdtSetup", 
                "Set CkeSetup", 
                "Set CadBusClkDrvStren", 
                "Set CadBusAddrCmdDrvStren", 
                "Set CadBusCsOdtCmdDrvStren", 
                "Set CadBusCkeDrvStren", 
                "Set CLDO_VDDP", 
                "Set Interleave Mode", 
                "Set Interleave Size", 
                "Set FCLK OC Mode", 
                "Set SOC VID", 
                "Set FCLK Frequency", 
                "Set CCLK Fmax", 
                "Set GFXCLK Fmax", 
                "Set CLDO_VDDG", 
                "Get ECO Mode", 
                "Set ECO Mode", 
                "Command Buffer Start", 
                "Command Buffer End", 
                "Set VDDIO", 
                "Set VTT"
            })
            Name (OBIT, Package (0xE9)
            {
                0x00020001, 
                0x014D, 
                0x0898, 
                0x21, 
                0x00020002, 
                0x08, 
                0x21, 
                One, 
                0x00020003, 
                0x08, 
                0x1B, 
                One, 
                0x00020004, 
                0x08, 
                0x1B, 
                One, 
                0x00020005, 
                0x15, 
                0x3A, 
                One, 
                0x00020006, 
                0x08, 
                0x1B, 
                One, 
                0x00020007, 
                Zero, 
                0x3F, 
                One, 
                0x00020008, 
                Zero, 
                0x03FF, 
                One, 
                0x00020009, 
                0x1D, 
                0x87, 
                One, 
                0x0002000A, 
                0x3C, 
                0x03DE, 
                One, 
                0x0002000B, 
                0x3C, 
                0x03DE, 
                One, 
                0x0002000C, 
                0x3C, 
                0x03DE, 
                One, 
                0x0002000D, 
                0x06, 
                0x36, 
                One, 
                0x0002000E, 
                0x04, 
                0x0C, 
                One, 
                0x0002000F, 
                0x04, 
                0x0C, 
                One, 
                0x00020010, 
                0x0A, 
                0x51, 
                One, 
                0x00020011, 
                0x02, 
                0x0E, 
                One, 
                0x00020012, 
                0x02, 
                0x0E, 
                One, 
                0x00020013, 
                One, 
                0x1F, 
                One, 
                0x00020014, 
                0x09, 
                0x16, 
                One, 
                0x00020015, 
                0x05, 
                0x0E, 
                One, 
                0x00020016, 
                One, 
                0x0F, 
                One, 
                0x00020017, 
                One, 
                0x0F, 
                One, 
                0x00020018, 
                One, 
                0x0F, 
                One, 
                0x00020019, 
                One, 
                0x0F, 
                One, 
                0x0002001A, 
                One, 
                0x0F, 
                One, 
                0x0002001B, 
                One, 
                0x3F, 
                One, 
                0x0002001C, 
                One, 
                0x0F, 
                One, 
                0x0002001D, 
                One, 
                0x0F, 
                One, 
                0x0002001E, 
                One, 
                0x1F, 
                One, 
                0x0002001F, 
                Zero, 
                0x0F, 
                One, 
                0x00020020, 
                Zero, 
                One, 
                One, 
                0x00020021, 
                Zero, 
                One, 
                One, 
                0x00020022, 
                Zero, 
                0x07, 
                One, 
                0x00020023, 
                Zero, 
                0x04, 
                One, 
                0x00020024, 
                Zero, 
                0x07, 
                One, 
                0x00020025, 
                Zero, 
                One, 
                One, 
                0x00020026, 
                Zero, 
                One, 
                One, 
                0x00020027, 
                Zero, 
                Ones, 
                One, 
                0x00020028, 
                Zero, 
                0x0F, 
                One, 
                0x00020029, 
                Zero, 
                0x3F, 
                One, 
                0x0002002A, 
                Zero, 
                0x3F, 
                One, 
                0x0002002B, 
                Zero, 
                0x3F, 
                One, 
                0x0002002C, 
                Zero, 
                0x1F, 
                One, 
                0x0002002D, 
                Zero, 
                0x1F, 
                One, 
                0x0002002E, 
                Zero, 
                0x1F, 
                One, 
                0x0002002F, 
                Zero, 
                0x1F, 
                One, 
                0x00020030, 
                Zero, 
                0x05DC, 
                One, 
                0x00020031, 
                Zero, 
                Ones, 
                One, 
                0x00020032, 
                Zero, 
                0x07, 
                One, 
                0x00020033, 
                Zero, 
                One, 
                One, 
                0x00020034, 
                Zero, 
                0xFF, 
                One, 
                0x00020035, 
                0x014D, 
                0x09C4, 
                0x21, 
                0x00020036, 
                0x0640, 
                0x1F40, 
                One, 
                0x00020037, 
                0xC8, 
                0x07D0, 
                One, 
                0x00020038, 
                0x0258, 
                0x05DC, 
                One, 
                0x00030001, 
                0x0438, 
                0x0528, 
                0x04, 
                0x00030002, 
                0x021C, 
                0x0294, 
                0x04, 
                Zero
            })
            Name (OBD1, Package (0xFD)
            {
                0x00020001, 
                0x36, 
                0x014D, 
                0x0190, 
                0x0215, 
                0x029B, 
                0x0320, 
                0x03A5, 
                0x042B, 
                0x04B0, 
                0x0535, 
                0x0557, 
                0x0578, 
                0x0599, 
                0x05BB, 
                0x05DC, 
                0x05FD, 
                0x061F, 
                0x0640, 
                0x0661, 
                0x0683, 
                0x06A4, 
                0x06C5, 
                0x06E7, 
                0x0708, 
                0x0729, 
                0x074B, 
                0x076C, 
                0x078D, 
                0x07AF, 
                0x07D0, 
                0x07F1, 
                0x0813, 
                0x0834, 
                0x0855, 
                0x0877, 
                0x0898, 
                0x08B9, 
                0x08DB, 
                0x08FC, 
                0x091D, 
                0x093F, 
                0x0960, 
                0x0981, 
                0x09A3, 
                0x09C4, 
                0x09F6, 
                0x0A28, 
                0x0A5A, 
                0x0A8C, 
                0x0ABE, 
                0x0AF0, 
                0x0B22, 
                0x0B54, 
                0x0B86, 
                0x0BB8, 
                0x00020002, 
                0x1A, 
                0x08, 
                0x09, 
                0x0A, 
                0x0B, 
                0x0C, 
                0x0D, 
                0x0E, 
                0x0F, 
                0x10, 
                0x11, 
                0x12, 
                0x13, 
                0x14, 
                0x15, 
                0x16, 
                0x17, 
                0x18, 
                0x19, 
                0x1A, 
                0x1B, 
                0x1C, 
                0x1D, 
                0x1E, 
                0x1F, 
                0x20, 
                0x21, 
                0x00020003, 
                0x14, 
                0x08, 
                0x09, 
                0x0A, 
                0x0B, 
                0x0C, 
                0x0D, 
                0x0E, 
                0x0F, 
                0x10, 
                0x11, 
                0x12, 
                0x13, 
                0x14, 
                0x15, 
                0x16, 
                0x17, 
                0x18, 
                0x19, 
                0x1A, 
                0x1B, 
                0x00020004, 
                0x14, 
                0x08, 
                0x09, 
                0x0A, 
                0x0B, 
                0x0C, 
                0x0D, 
                0x0E, 
                0x0F, 
                0x10, 
                0x11, 
                0x12, 
                0x13, 
                0x14, 
                0x15, 
                0x16, 
                0x17, 
                0x18, 
                0x19, 
                0x1A, 
                0x1B, 
                0x00020005, 
                0x26, 
                0x15, 
                0x16, 
                0x17, 
                0x18, 
                0x19, 
                0x1A, 
                0x1B, 
                0x1C, 
                0x1D, 
                0x1E, 
                0x1F, 
                0x20, 
                0x21, 
                0x22, 
                0x23, 
                0x24, 
                0x25, 
                0x26, 
                0x27, 
                0x28, 
                0x29, 
                0x2A, 
                0x2B, 
                0x2C, 
                0x2D, 
                0x2E, 
                0x2F, 
                0x30, 
                0x31, 
                0x32, 
                0x33, 
                0x34, 
                0x35, 
                0x36, 
                0x37, 
                0x38, 
                0x39, 
                0x3A, 
                0x00020006, 
                0x14, 
                0x08, 
                0x09, 
                0x0A, 
                0x0B, 
                0x0C, 
                0x0D, 
                0x0E, 
                0x0F, 
                0x10, 
                0x11, 
                0x12, 
                0x13, 
                0x14, 
                0x15, 
                0x16, 
                0x17, 
                0x18, 
                0x19, 
                0x1A, 
                0x1B, 
                0x00020007, 
                0x12, 
                Zero, 
                One, 
                0x02, 
                0x03, 
                0x08, 
                0x09, 
                0x0A, 
                0x0B, 
                0x18, 
                0x19, 
                0x1A, 
                0x1B, 
                0x38, 
                0x39, 
                0x3A, 
                0x3B, 
                0x3E, 
                0x3F, 
                0x00020014, 
                0x08, 
                0x09, 
                0x0A, 
                0x0B, 
                0x0C, 
                0x0E, 
                0x10, 
                0x12, 
                0x14, 
                0x0002002C, 
                0x06, 
                Zero, 
                One, 
                0x03, 
                0x07, 
                0x0F, 
                0x1F, 
                0x0002002D, 
                0x06, 
                Zero, 
                One, 
                0x03, 
                0x07, 
                0x0F, 
                0x1F, 
                0x0002002E, 
                0x06, 
                Zero, 
                One, 
                0x03, 
                0x07, 
                0x0F, 
                0x1F, 
                0x0002002F, 
                0x06, 
                Zero, 
                One, 
                0x03, 
                0x07, 
                0x0F, 
                0x1F, 
                Zero
            })
            Name (OBD2, Package (0x98)
            {
                0x00020035, 
                0x2E, 
                0x029B, 
                0x0320, 
                0x03A5, 
                0x042B, 
                0x04B0, 
                0x0535, 
                0x0557, 
                0x0578, 
                0x0599, 
                0x05BB, 
                0x05DC, 
                0x05FD, 
                0x061F, 
                0x0640, 
                0x0661, 
                0x0683, 
                0x06A4, 
                0x06C5, 
                0x06E7, 
                0x0708, 
                0x0729, 
                0x074B, 
                0x076C, 
                0x078D, 
                0x07AF, 
                0x07D0, 
                0x07F1, 
                0x0813, 
                0x0834, 
                0x0855, 
                0x0877, 
                0x0898, 
                0x08B9, 
                0x08DB, 
                0x08FC, 
                0x091D, 
                0x093F, 
                0x0960, 
                0x0981, 
                0x09A3, 
                0x09C4, 
                0x014D, 
                0x0190, 
                0x0215, 
                0x041A, 
                0x042A, 
                0x00030001, 
                0x3F, 
                0x0434, 
                0x0438, 
                0x043C, 
                0x0440, 
                0x0444, 
                0x0448, 
                0x044C, 
                0x0450, 
                0x0454, 
                0x0458, 
                0x045C, 
                0x0460, 
                0x0464, 
                0x0468, 
                0x046C, 
                0x0470, 
                0x0474, 
                0x0478, 
                0x047C, 
                0x0480, 
                0x0484, 
                0x0488, 
                0x048C, 
                0x0490, 
                0x0494, 
                0x0498, 
                0x049C, 
                0x04A0, 
                0x04A4, 
                0x04A8, 
                0x04AC, 
                0x04B0, 
                0x04B4, 
                0x04B8, 
                0x04BC, 
                0x04C0, 
                0x04C4, 
                0x04C8, 
                0x04CC, 
                0x04D0, 
                0x04D4, 
                0x04D8, 
                0x04DC, 
                0x04E0, 
                0x04E4, 
                0x04E8, 
                0x04EC, 
                0x04F0, 
                0x04F4, 
                0x04F8, 
                0x04FC, 
                0x0500, 
                0x0504, 
                0x0508, 
                0x050C, 
                0x0510, 
                0x0514, 
                0x0518, 
                0x051C, 
                0x0520, 
                0x0524, 
                0x0528, 
                0x052C, 
                0x00030002, 
                0x1F, 
                0x021C, 
                0x0220, 
                0x0224, 
                0x0228, 
                0x022C, 
                0x0230, 
                0x0234, 
                0x0238, 
                0x023C, 
                0x0240, 
                0x0244, 
                0x0248, 
                0x024C, 
                0x0250, 
                0x0254, 
                0x0258, 
                0x025C, 
                0x0260, 
                0x0264, 
                0x0268, 
                0x026C, 
                0x0270, 
                0x0274, 
                0x0278, 
                0x027C, 
                0x0280, 
                0x0284, 
                0x0288, 
                0x028C, 
                0x0290, 
                0x0294, 
                0x0002003A, 
                0x03, 
                Zero, 
                One, 
                0x02, 
                Zero
            })
            Method (BM01, 0, NotSerialized)
            {
            }

            Method (XINI, 0, NotSerialized)
            {
            }

            Method (EM01, 0, NotSerialized)
            {
            }

            Method (BM05, 1, NotSerialized)
            {
            }

            Method (EM05, 1, NotSerialized)
            {
            }

            Method (HM06, 0, NotSerialized)
            {
            }

            Method (HM07, 1, NotSerialized)
            {
            }

            Method (SBSL, 1, NotSerialized)
            {
                IndexField (PMRI, PMRD, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x2E), 
                    SBSL,   8
                }

                Or (Arg0, One, Local0)
                Store (Local0, SBSL)
            }

            Method (SETV, 2, NotSerialized)
            {
            }

            Method (GETV, 1, NotSerialized)
            {
            }

            Method (CPTB, 2, NotSerialized)
            {
                Name (LOID, Zero)
                CreateDWordField (Arg1, Zero, BUF0)
                CreateDWordField (Arg1, 0x04, BUF1)
                CreateDWordField (Arg1, 0x08, BUF2)
                CreateDWordField (Arg1, 0x0C, BUF3)
                Store (Zero, Local0)
                Store (DerefOf (Index (OBIT, Local0)), LOID)
                While (LOID)
                {
                    If (LEqual (LOID, Arg0))
                    {
                        Store (DerefOf (Index (OBIT, Add (Local0, Zero))), BUF0)
                        Store (DerefOf (Index (OBIT, Add (Local0, One))), BUF1)
                        Store (DerefOf (Index (OBIT, Add (Local0, 0x02))), BUF2)
                        Store (DerefOf (Index (OBIT, Add (Local0, 0x03))), BUF3)
                        Break
                    }

                    Add (Local0, 0x04, Local0)
                    Store (DerefOf (Index (OBIT, Local0)), LOID)
                }

                If (LEqual (LOID, Zero))
                {
                    Return (0xFF)
                }

                Return (Zero)
            }

            Name (GF01, Zero)
            Name (GVBF, Buffer (0x05)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00                   
            })
            CreateDWordField (GVBF, Zero, GVB1)
            CreateByteField (GVBF, 0x04, GVB2)
            Method (AM01, 0, NotSerialized)
            {
                Return (CMDV)
            }

            Method (AM02, 0, NotSerialized)
            {
                If (LNot (GF01))
                {
                    BM01 ()
                    XINI ()
                    EM01 ()
                    Store (One, GF01)
                }

                Return (Zero)
            }

            Method (AM03, 0, NotSerialized)
            {
                Return (OBID)
            }

            Method (AM04, 1, NotSerialized)
            {
                Name (LODT, Package (0x66)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Store (Zero, Local0)
                While (One)
                {
                    If (LEqual (DerefOf (Index (OBD1, Local0)), Arg0))
                    {
                        Store (Zero, Local4)
                        Break
                    }

                    If (LEqual (DerefOf (Index (OBD1, Local0)), Zero))
                    {
                        Store (0x04, Local4)
                        Break
                    }

                    Add (Local0, DerefOf (Index (OBD1, Add (Local0, One))), Local0)
                    Add (Local0, 0x02, Local0)
                }

                If (LEqual (Local4, Zero))
                {
                    Store (DerefOf (Index (OBD1, Add (Local0, One))), Local1)
                    Add (Local1, 0x02, Local1)
                    Store (Zero, Local2)
                    While (Local1)
                    {
                        Store (DerefOf (Index (OBD1, Local0)), Index (LODT, Local2))
                        Decrement (Local1)
                        Increment (Local0)
                        Increment (Local2)
                    }

                    Return (LODT)
                }

                Store (Zero, Local0)
                While (One)
                {
                    If (LEqual (DerefOf (Index (OBD2, Local0)), Arg0))
                    {
                        Store (Zero, Local4)
                        Break
                    }

                    If (LEqual (DerefOf (Index (OBD2, Local0)), Zero))
                    {
                        Store (0x04, Local4)
                        Break
                    }

                    Add (Local0, DerefOf (Index (OBD2, Add (Local0, One))), Local0)
                    Add (Local0, 0x02, Local0)
                }

                If (LEqual (Local4, Zero))
                {
                    Store (DerefOf (Index (OBD2, Add (Local0, One))), Local1)
                    Add (Local1, 0x02, Local1)
                    Store (Zero, Local2)
                    While (Local1)
                    {
                        Store (DerefOf (Index (OBD2, Local0)), Index (LODT, Local2))
                        Decrement (Local1)
                        Increment (Local0)
                        Increment (Local2)
                    }

                    Return (LODT)
                }

                Return (LODT)
            }

            Method (AM05, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ACMD)
                CreateField (OBUF, Zero, Multiply (SizeOf (OBUF), 0x08), TEMP)
                Store (Zero, TEMP)
                CreateWordField (OBUF, Zero, BSCD)
                CreateDWordField (OBUF, 0x02, BSTS)
                CreateWordField (OBUF, 0x06, BSD1)
                CreateDWordField (OBUF, 0x08, BBSN)
                CreateDWordField (OBUF, 0x0C, BBVS)
                CreateDWordField (OBUF, 0x10, BBCB)
                CreateWordField (OBUF, 0x14, BBMC)
                CreateByteField (OBUF, 0x16, BTCL)
                CreateByteField (OBUF, 0x17, BTRR)
                CreateByteField (OBUF, 0x18, BTRW)
                CreateByteField (OBUF, 0x19, BRAS)
                CreateByteField (OBUF, 0x1A, BTRP)
                CreateWordField (OBUF, 0x1B, BVIO)
                CreateWordField (OBUF, 0x1D, BVTT)
                CreateWordField (OBUF, 0x1F, BVPP)
                CreateWordField (OBUF, 0x21, BODT)
                CreateWordField (OBUF, 0x23, BRPG)
                CreateByteField (OBUF, 0x25, BTRC)
                CreateWordField (OBUF, 0x26, BRFC)
                CreateWordField (OBUF, 0x28, BRF2)
                CreateWordField (OBUF, 0x2A, BRF4)
                CreateByteField (OBUF, 0x2C, BFAW)
                CreateByteField (OBUF, 0x2D, BRRS)
                CreateByteField (OBUF, 0x2E, BRRL)
                CreateByteField (OBUF, 0x2F, BTWR)
                CreateByteField (OBUF, 0x30, BWTS)
                CreateByteField (OBUF, 0x31, BWTL)
                CreateByteField (OBUF, 0x32, BCKE)
                CreateByteField (OBUF, 0x33, BCWL)
                CreateByteField (OBUF, 0x34, BRTP)
                CreateByteField (OBUF, 0x35, BRSC)
                CreateByteField (OBUF, 0x36, BRSL)
                CreateByteField (OBUF, 0x37, BRSD)
                CreateByteField (OBUF, 0x38, BRDD)
                CreateByteField (OBUF, 0x39, BWSC)
                CreateByteField (OBUF, 0x3A, BWSL)
                CreateByteField (OBUF, 0x3B, BWSD)
                CreateByteField (OBUF, 0x3C, BWDD)
                CreateByteField (OBUF, 0x3D, BRWR)
                CreateByteField (OBUF, 0x3E, BWRD)
                CreateByteField (OBUF, 0x3F, BRDN)
                CreateByteField (OBUF, 0x40, BM2T)
                CreateByteField (OBUF, 0x41, RBNM)
                CreateByteField (OBUF, 0x42, RBWR)
                CreateByteField (OBUF, 0x43, RBPK)
                CreateByteField (OBUF, 0x44, BPWD)
                CreateByteField (OBUF, 0x45, BOCD)
                CreateDWordField (OBUF, 0x46, BOCV)
                CreateDWordField (OBUF, 0x4A, BOCF)
                CreateByteField (OBUF, 0x4E, BSMT)
                CreateDWordField (OBUF, 0x4F, BTOF)
                CreateByteField (OBUF, 0x53, BEDC)
                CreateWordField (OBUF, 0x54, BCNT)
                CreateByteField (OBUF, 0x56, BACS)
                CreateByteField (OBUF, 0x57, BCOS)
                CreateByteField (OBUF, 0x58, BCES)
                CreateByteField (OBUF, 0x59, BCBC)
                CreateByteField (OBUF, 0x5A, BCBA)
                CreateByteField (OBUF, 0x5B, BCBO)
                CreateByteField (OBUF, 0x5C, BCBE)
                CreateDWordField (OBUF, 0x5D, BCVP)
                CreateByteField (OBUF, 0x5F, BEDO)
                CreateDWordField (OBUF, 0x60, BNLC)
                CreateDWordField (OBUF, 0x64, BNLM)
                CreateDWordField (OBUF, 0x68, BNLS)
                CreateDWordField (OBUF, 0x6C, BPPL)
                CreateDWordField (OBUF, 0x70, BTDL)
                CreateDWordField (OBUF, 0x74, BEDL)
                CreateByteField (OBUF, 0x78, BFOC)
                CreateByteField (OBUF, 0x79, BSVD)
                CreateWordField (OBUF, 0x7A, BFCK)
                CreateByteField (OBUF, 0x7C, BDPC)
                CreateByteField (OBUF, 0x7D, BCPS)
                CreateWordField (OBUF, 0x7E, BFMX)
                CreateWordField (OBUF, 0x80, BGMX)
                CreateWordField (OBUF, 0x82, BVDG)
                CreateDWordField (OBUF, 0x84, BEOG)
                CreateDWordField (OBUF, 0x88, BEOS)
                If (LEqual (ACMD, 0x00010001))
                {
                    R101 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00010002))
                {
                    R102 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020001))
                {
                    R201 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020002))
                {
                    R202 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020003))
                {
                    R203 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020004))
                {
                    R204 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020005))
                {
                    R205 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020006))
                {
                    R206 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020007))
                {
                    R207 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020008))
                {
                    R208 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020009))
                {
                    R209 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x0002000A))
                {
                    R20A (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x0002000B))
                {
                    R20B (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x0002000C))
                {
                    R20C (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x0002000D))
                {
                    R20D (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x0002000E))
                {
                    R20E (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x0002000F))
                {
                    R20F (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020010))
                {
                    R210 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020011))
                {
                    R211 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020012))
                {
                    R212 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020013))
                {
                    R213 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020014))
                {
                    R214 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020015))
                {
                    R215 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020016))
                {
                    R216 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020017))
                {
                    R217 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020018))
                {
                    R218 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020019))
                {
                    R219 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x0002001A))
                {
                    R21A (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x0002001B))
                {
                    R21B (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x0002001C))
                {
                    R21C (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x0002001D))
                {
                    R21D (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x0002001E))
                {
                    R21E (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x0002001F))
                {
                    R21F (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020020))
                {
                    R220 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020021))
                {
                    R221 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020022))
                {
                    R222 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020023))
                {
                    R223 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020024))
                {
                    R224 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020025))
                {
                    R225 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020026))
                {
                    R226 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020027))
                {
                    R227 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020028))
                {
                    R228 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020029))
                {
                    R229 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x0002002A))
                {
                    R22A (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x0002002B))
                {
                    R22B (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x0002002C))
                {
                    R22C (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x0002002D))
                {
                    R22D (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x0002002E))
                {
                    R22E (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x0002002F))
                {
                    R22F (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020030))
                {
                    R230 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020031))
                {
                    R231 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020032))
                {
                    R232 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020033))
                {
                    R233 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020034))
                {
                    R234 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020035))
                {
                    R235 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020036))
                {
                    R236 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020037))
                {
                    R237 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020038))
                {
                    R238 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00020039))
                {
                    R239 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x0002003A))
                {
                    R23A (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00030001))
                {
                    R301 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00030002))
                {
                    R302 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00030003))
                {
                    R303 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00040001))
                {
                    R401 (Arg0)
                }
                ElseIf (LEqual (ACMD, 0x00040002))
                {
                    R402 (Arg0)
                }
                Else
                {
                }

                Store (ASCD, BSCD)
                Store (ASTS, BSTS)
                Store (RSD1, BSD1)
                Store (MBSN, BBSN)
                Store (MBVS, BBVS)
                Store (MBCB, BBCB)
                Store (MBMC, BBMC)
                Store (TTCL, BTCL)
                Store (TRCR, BTRR)
                Store (TRCW, BTRW)
                Store (TRAS, BRAS)
                Store (TTRP, BTRP)
                Store (VDIO, BVIO)
                Store (VMTT, BVTT)
                Store (VMPP, BVPP)
                Store (PODT, BODT)
                Store (TRPG, BRPG)
                Store (TTRC, BTRC)
                Store (TRFC, BRFC)
                Store (TRF2, BRF2)
                Store (TRF4, BRF4)
                Store (TFAW, BFAW)
                Store (TRRS, BRRS)
                Store (TRRL, BRRL)
                Store (TTWR, BTWR)
                Store (TWTS, BWTS)
                Store (TWTL, BWTL)
                Store (TCKE, BCKE)
                Store (TCWL, BCWL)
                Store (TRTP, BRTP)
                Store (TRSC, BRSC)
                Store (TRSL, BRSL)
                Store (TRSD, BRSD)
                Store (TRDD, BRDD)
                Store (TWSC, BWSC)
                Store (TWSL, BWSL)
                Store (TWSD, BWSD)
                Store (TWDD, BWDD)
                Store (TRWR, BRWR)
                Store (TWRD, BWRD)
                Store (GRDN, BRDN)
                Store (CM2T, BM2T)
                Store (RTNM, RBNM)
                Store (RTWR, RBWR)
                Store (RTPK, RBPK)
                Store (PWDE, BPWD)
                Store (OCDS, BOCD)
                Store (OCVM, BOCV)
                Store (OCFM, BOCF)
                Store (SMTE, BSMT)
                Store (TOFF, BTOF)
                Store (EDCT, BEDC)
                Store (ACNT, BCNT)
                Store (ACSP, BACS)
                Store (COSP, BCOS)
                Store (CESP, BCES)
                Store (CBCK, BCBC)
                Store (CBAC, BCBA)
                Store (CBCO, BCBO)
                Store (CBCE, BCBE)
                Store (CDVP, BCVP)
                Store (EDCO, BEDO)
                Store (INLC, BNLC)
                Store (INLM, BNLM)
                Store (INLS, BNLS)
                Store (PPTL, BPPL)
                Store (TDCL, BTDL)
                Store (EDCL, BEDL)
                Store (FCOC, BFOC)
                Store (SVID, BSVD)
                Store (FCLK, BFCK)
                Store (MDPC, BDPC)
                Store (MCPS, BCPS)
                Store (FMAX, BFMX)
                Store (GMAX, BGMX)
                Store (CVDG, BVDG)
                Store (ECOG, BEOG)
                Store (ECOS, BEOS)
                Return (OBUF)
            }

            Method (AM06, 1, NotSerialized)
            {
                Name (INFO, Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                })
                CPTB (Arg0, INFO)
                Return (INFO)
            }

            Method (AM07, 1, NotSerialized)
            {
                Name (BSPD, Buffer (0x0214){})
                If (LGreater (Arg0, 0x0F))
                {
                    Return (BSPD)
                }

                If (LEqual (Arg0, Zero))
                {
                    Store (DSPD, BSPD)
                    Return (BSPD)
                }

                Store (Zero, Local0)
                Add (Local0, Multiply (Arg0, 0x0214), Local0)
                Store (0x0214, Local1)
                Store (Zero, Local2)
                While (Local1)
                {
                    Store (DerefOf (Index (DSPD, Local0)), Index (BSPD, Local2))
                    Decrement (Local1)
                    Increment (Local0)
                    Increment (Local2)
                }

                Return (BSPD)
            }

            Name (CMDV, 0x04)
            Name (OBUF, Buffer (0xC8){})
            OperationRegion (AODT, SystemMemory, 0xDA6E5018, 0x220C)
            Field (AODT, AnyAcc, NoLock, Preserve)
            {
                ASCD,   16, 
                ASTS,   32, 
                RSD1,   16, 
                MBSN,   32, 
                MBVS,   32, 
                MBCB,   32, 
                MBMC,   16, 
                TTCL,   8, 
                TRCR,   8, 
                TRCW,   8, 
                TRAS,   8, 
                TTRP,   8, 
                VDIO,   16, 
                VMTT,   16, 
                VMPP,   16, 
                PODT,   16, 
                TRPG,   16, 
                TTRC,   8, 
                TRFC,   16, 
                TRF2,   16, 
                TRF4,   16, 
                TFAW,   8, 
                TRRS,   8, 
                TRRL,   8, 
                TTWR,   8, 
                TWTS,   8, 
                TWTL,   8, 
                TCKE,   8, 
                TCWL,   8, 
                TRTP,   8, 
                TRSC,   8, 
                TRSL,   8, 
                TRSD,   8, 
                TRDD,   8, 
                TWSC,   8, 
                TWSL,   8, 
                TWSD,   8, 
                TWDD,   8, 
                TRWR,   8, 
                TWRD,   8, 
                GRDN,   8, 
                CM2T,   8, 
                RTNM,   8, 
                RTWR,   8, 
                RTPK,   8, 
                PWDE,   8, 
                OCDS,   8, 
                OCVM,   32, 
                OCFM,   32, 
                SMTE,   8, 
                TOFF,   32, 
                EDCT,   8, 
                ACNT,   16, 
                ACSP,   8, 
                COSP,   8, 
                CESP,   8, 
                CBCK,   8, 
                CBAC,   8, 
                CBCO,   8, 
                CBCE,   8, 
                CDVP,   16, 
                EDCO,   8, 
                INLC,   32, 
                INLM,   32, 
                INLS,   32, 
                PPTL,   32, 
                TDCL,   32, 
                EDCL,   32, 
                FCOC,   8, 
                SVID,   8, 
                FCLK,   16, 
                MDPC,   8, 
                MCPS,   8, 
                FMAX,   16, 
                GMAX,   16, 
                CVDG,   16, 
                ECOG,   32, 
                ECOS,   32, 
                MRSD,   416, 
                RSD2,   64, 
                NDPC,   8, 
                NCPS,   8, 
                RSD3,   16, 
                DSPD,   68096
            }

            Method (R101, 1, NotSerialized)
            {
                Store (0x04, MBVS)
                Store (0x80000000, MBCB)
                ASMI (0x9D)
            }

            Method (R102, 1, NotSerialized)
            {
                Store (0x04, MBVS)
                Store (0x40000000, Local0)
                Store (Local0, MBCB)
                ASMI (0x9E)
            }

            Method (R201, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x04, MCLK)
                Store (0x04, MBVS)
                Store (MCLK, MBMC)
                Store (One, MBCB)
                ASMI (0x9D)
            }

            Method (R202, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, MTCL)
                Store (0x04, MBVS)
                Store (MTCL, TTCL)
                Store (0x02, MBCB)
                ASMI (0x9D)
            }

            Method (R203, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, MRDD)
                Store (0x04, MBVS)
                Store (MRDD, TRCR)
                Store (0x04, MBCB)
                ASMI (0x9D)
            }

            Method (R204, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, MRDW)
                Store (0x04, MBVS)
                Store (MRDW, TRCW)
                Store (0x08, MBCB)
                ASMI (0x9D)
            }

            Method (R205, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, MTRS)
                Store (0x04, MBVS)
                Store (MTRS, TRAS)
                Store (0x20, MBCB)
                ASMI (0x9D)
            }

            Method (R206, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, MTRP)
                Store (0x04, MBVS)
                Store (MTRP, TTRP)
                Store (0x10, MBCB)
                ASMI (0x9D)
            }

            Method (R207, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x04, MPOT)
                Store (0x04, MBVS)
                Store (MPOT, PODT)
                Store (0x3000, MBCB)
                ASMI (0x9D)
            }

            Method (R208, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x04, MRPG)
                Store (0x04, MBVS)
                Store (MRPG, TRPG)
                Store (0x4000, MBCB)
                ASMI (0x9D)
            }

            Method (R209, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TTRC)
                Store (0x5000, MBCB)
                ASMI (0x9D)
            }

            Method (R20A, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TRFC)
                Store (0x6000, MBCB)
                ASMI (0x9D)
            }

            Method (R20B, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TRF2)
                Store (0x7000, MBCB)
                ASMI (0x9D)
            }

            Method (R20C, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TRF4)
                Store (0x8000, MBCB)
                ASMI (0x9D)
            }

            Method (R20D, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TFAW)
                Store (0x9000, MBCB)
                ASMI (0x9D)
            }

            Method (R20E, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TRRS)
                Store (0xA000, MBCB)
                ASMI (0x9D)
            }

            Method (R20F, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TRRL)
                Store (0xB000, MBCB)
                ASMI (0x9D)
            }

            Method (R210, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TTWR)
                Store (0xC000, MBCB)
                ASMI (0x9D)
            }

            Method (R211, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TWTS)
                Store (0xD000, MBCB)
                ASMI (0x9D)
            }

            Method (R212, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TWTL)
                Store (0xE000, MBCB)
                ASMI (0x9D)
            }

            Method (R213, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TCKE)
                Store (0xF000, MBCB)
                ASMI (0x9D)
            }

            Method (R214, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TCWL)
                Store (0x00010000, MBCB)
                ASMI (0x9D)
            }

            Method (R215, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TRTP)
                Store (0x00020000, MBCB)
                ASMI (0x9D)
            }

            Method (R216, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TRSC)
                Store (0x00030000, MBCB)
                ASMI (0x9D)
            }

            Method (R217, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TRSL)
                Store (0x00040000, MBCB)
                ASMI (0x9D)
            }

            Method (R218, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TRSD)
                Store (0x00050000, MBCB)
                ASMI (0x9D)
            }

            Method (R219, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TRDD)
                Store (0x00060000, MBCB)
                ASMI (0x9D)
            }

            Method (R21A, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TWSC)
                Store (0x00070000, MBCB)
                ASMI (0x9D)
            }

            Method (R21B, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TWSL)
                Store (0x00080000, MBCB)
                ASMI (0x9D)
            }

            Method (R21C, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TWSD)
                Store (0x00090000, MBCB)
                ASMI (0x9D)
            }

            Method (R21D, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TWDD)
                Store (0x000A0000, MBCB)
                ASMI (0x9D)
            }

            Method (R21E, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TRWR)
                Store (0x000B0000, MBCB)
                ASMI (0x9D)
            }

            Method (R21F, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, TWRD)
                Store (0x000C0000, MBCB)
                ASMI (0x9D)
            }

            Method (R220, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, GRDN)
                Store (0x000D0000, MBCB)
                ASMI (0x9D)
            }

            Method (R221, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, CM2T)
                Store (0x000E0000, MBCB)
                ASMI (0x9D)
            }

            Method (R222, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, RTNM)
                Store (0x000F0000, MBCB)
                ASMI (0x9D)
            }

            Method (R223, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, RTWR)
                Store (0x00100000, MBCB)
                ASMI (0x9D)
            }

            Method (R224, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, RTPK)
                Store (0x00200000, MBCB)
                ASMI (0x9D)
            }

            Method (R225, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, PWDE)
                Store (0x00300000, MBCB)
                ASMI (0x9D)
            }

            Method (R226, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, SMTE)
                Store (0x00400000, MBCB)
                ASMI (0x9D)
            }

            Method (R227, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, ACNT)
                Store (0x00500000, MBCB)
                ASMI (0x9D)
            }

            Method (R228, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, EDCT)
                Store (0x00600000, MBCB)
                ASMI (0x9D)
            }

            Method (R229, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, ACSP)
                Store (0x00800000, MBCB)
                ASMI (0x9D)
            }

            Method (R22A, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, COSP)
                Store (0x00900000, MBCB)
                ASMI (0x9D)
            }

            Method (R22B, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, CESP)
                Store (0x00A00000, MBCB)
                ASMI (0x9D)
            }

            Method (R22C, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, CBCK)
                Store (0x00B00000, MBCB)
                ASMI (0x9D)
            }

            Method (R22D, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, CBAC)
                Store (0x00C00000, MBCB)
                ASMI (0x9D)
            }

            Method (R22E, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, CBCO)
                Store (0x00D00000, MBCB)
                ASMI (0x9D)
            }

            Method (R22F, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, CBCE)
                Store (0x00E00000, MBCB)
                ASMI (0x9D)
            }

            Method (R230, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, CDVP)
                Store (0x00700000, MBCB)
                ASMI (0x9D)
            }

            Method (R231, 1, NotSerialized)
            {
                CreateDWordField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, INLM)
                Store (0x00100001, MBCB)
                ASMI (0x9D)
            }

            Method (R232, 1, NotSerialized)
            {
                CreateDWordField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, INLS)
                Store (0x00100002, MBCB)
                ASMI (0x9D)
            }

            Method (R233, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, FCOC)
                Store (0x00100003, MBCB)
                ASMI (0x9D)
            }

            Method (R234, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, SVID)
                Store (0x00100004, MBCB)
                ASMI (0x9D)
            }

            Method (R235, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, FCLK)
                Store (0x00100005, MBCB)
                ASMI (0x9D)
            }

            Method (R236, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, FMAX)
                Store (0x00100006, MBCB)
                ASMI (0x9D)
            }

            Method (R237, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, GMAX)
                Store (0x00100007, MBCB)
                ASMI (0x9D)
            }

            Method (R238, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, CVDG)
                Store (0x00100008, MBCB)
                ASMI (0x9D)
            }

            Method (R239, 1, NotSerialized)
            {
                Store (0x04, MBVS)
                Store (0x00100009, Local0)
                Store (Local0, MBCB)
                ASMI (0x9D)
            }

            Method (R23A, 1, NotSerialized)
            {
                CreateDWordField (Arg0, 0x04, SVAL)
                Store (0x04, MBVS)
                Store (SVAL, ECOS)
                Store (0x0010000A, MBCB)
                ASMI (0x9D)
            }

            Method (R301, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x04, MVIO)
                Store (0x04, MBVS)
                Store (MVIO, VDIO)
                Store (0x0100, MBCB)
                ASMI (0x9E)
            }

            Method (R302, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x04, MVTT)
                Store (0x04, MBVS)
                Store (MVTT, VMTT)
                Store (0x0200, MBCB)
                ASMI (0x9E)
            }

            Method (R303, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x04, MVPP)
                Store (0x04, MBVS)
                Store (MVPP, VMPP)
                Store (0x2000, MBCB)
                ASMI (0x9E)
            }

            Method (R401, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x04, MVPP)
                Store (0x04, MBVS)
                Store (0x01000000, MBCB)
                ASMI (0x9E)
            }

            Method (R402, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x04, MVPP)
                Store (0x04, MBVS)
                Store (0x02000000, MBCB)
                ASMI (0x9E)
            }

            Method (R505, 1, NotSerialized)
            {
                Store (0x04, MBVS)
            }

            Name (WQBA, Buffer (0x09D4)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                /* 0008 */  0xC4, 0x09, 0x00, 0x00, 0x5C, 0x34, 0x00, 0x00,
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                /* 0018 */  0x28, 0xC8, 0x99, 0x00, 0x01, 0x06, 0x18, 0x42,
                /* 0020 */  0x10, 0x0F, 0x10, 0x22, 0x21, 0x04, 0x12, 0x01,
                /* 0028 */  0xA1, 0xC8, 0x2C, 0x0C, 0x86, 0x10, 0x38, 0x2E,
                /* 0030 */  0x84, 0x1C, 0x40, 0x48, 0x1C, 0x14, 0x4A, 0x08,
                /* 0038 */  0x84, 0xFA, 0x13, 0xC8, 0xAF, 0x00, 0x84, 0x0E,
                /* 0040 */  0x05, 0xC8, 0x14, 0x60, 0x50, 0x80, 0x53, 0x04,
                /* 0048 */  0x11, 0xF4, 0x2A, 0xC0, 0xA6, 0x00, 0x93, 0x02,
                /* 0050 */  0x2C, 0x0A, 0xD0, 0x2E, 0xC0, 0xB2, 0x00, 0xDD,
                /* 0058 */  0x02, 0xA4, 0xC3, 0x12, 0x91, 0xE0, 0x28, 0x31,
                /* 0060 */  0xE0, 0x28, 0x9D, 0xD8, 0xC2, 0x0D, 0x1B, 0xBC,
                /* 0068 */  0x50, 0x14, 0xCD, 0x20, 0x4A, 0x82, 0xCA, 0x05,
                /* 0070 */  0xF8, 0x46, 0x10, 0x78, 0xB9, 0x02, 0x24, 0x4F,
                /* 0078 */  0x40, 0x9A, 0x05, 0x18, 0x16, 0x60, 0x5D, 0x80,
                /* 0080 */  0xEC, 0x21, 0x50, 0xA9, 0x43, 0x40, 0xC9, 0x19,
                /* 0088 */  0x02, 0x6A, 0x00, 0xAD, 0x4E, 0x40, 0xF8, 0x95,
                /* 0090 */  0x4E, 0x09, 0x49, 0x10, 0xCE, 0x58, 0xC5, 0xE3,
                /* 0098 */  0x6B, 0x16, 0x4D, 0xCF, 0x49, 0xCE, 0x31, 0xE4,
                /* 00A0 */  0x78, 0x5C, 0xE8, 0x41, 0xF0, 0x50, 0x1A, 0x40,
                /* 00A8 */  0x98, 0xFC, 0x21, 0x2B, 0x06, 0x0C, 0x4A, 0xC2,
                /* 00B0 */  0x58, 0xA8, 0x8B, 0x51, 0xA3, 0x46, 0xCA, 0x06,
                /* 00B8 */  0x64, 0x88, 0xD2, 0x46, 0x8D, 0x1E, 0xD0, 0xF9,
                /* 00C0 */  0x1D, 0xC9, 0xD9, 0x1D, 0xDD, 0x91, 0x24, 0x30,
                /* 00C8 */  0xEA, 0x31, 0x1D, 0x63, 0x61, 0x33, 0x12, 0x6A,
                /* 00D0 */  0x8C, 0xE6, 0xA0, 0x48, 0xB8, 0x41, 0xA3, 0x25,
                /* 00D8 */  0xC2, 0x6A, 0x5C, 0xB1, 0xCF, 0xCC, 0xC2, 0x87,
                /* 00E0 */  0x25, 0x8C, 0x23, 0x38, 0xB0, 0x83, 0xB5, 0x68,
                /* 00E8 */  0x18, 0xA1, 0x15, 0x04, 0xA7, 0x41, 0x1C, 0x45,
                /* 00F0 */  0x94, 0x30, 0x0C, 0xCF, 0x98, 0x81, 0x8E, 0x92,
                /* 00F8 */  0x21, 0x85, 0x09, 0x7A, 0x02, 0x41, 0x4E, 0x9E,
                /* 0100 */  0x61, 0x19, 0xE2, 0x0C, 0x38, 0x56, 0x8C, 0x50,
                /* 0108 */  0x21, 0x31, 0x03, 0x09, 0xFE, 0xFF, 0x3F, 0x81,
                /* 0110 */  0xAE, 0x31, 0xE4, 0x19, 0x88, 0xDC, 0x03, 0x4E,
                /* 0118 */  0x20, 0x48, 0xF4, 0x28, 0xC1, 0x8D, 0x6B, 0x54,
                /* 0120 */  0x36, 0xA6, 0xB3, 0xC1, 0x0D, 0xCC, 0x04, 0x71,
                /* 0128 */  0x0E, 0x0F, 0x23, 0x03, 0x42, 0x13, 0x88, 0x1F,
                /* 0130 */  0x3B, 0x7C, 0x02, 0xBB, 0x3F, 0x0E, 0x48, 0x21,
                /* 0138 */  0x82, 0x2E, 0x04, 0x67, 0x5A, 0xA3, 0x00, 0x6B,
                /* 0140 */  0x67, 0x07, 0xD9, 0x82, 0xD0, 0x59, 0x20, 0x56,
                /* 0148 */  0x63, 0x28, 0x82, 0x88, 0x10, 0x34, 0x8A, 0xF1,
                /* 0150 */  0x22, 0x84, 0x0A, 0x11, 0x25, 0xEA, 0x39, 0x07,
                /* 0158 */  0xA9, 0x4D, 0x80, 0x32, 0x10, 0xA1, 0x05, 0x33,
                /* 0160 */  0x02, 0xB3, 0x7F, 0x06, 0x60, 0x16, 0x20, 0xFE,
                /* 0168 */  0x08, 0x2C, 0xE1, 0x44, 0x20, 0x23, 0xA3, 0xA1,
                /* 0170 */  0x87, 0x05, 0x9F, 0x04, 0xD8, 0x01, 0xC1, 0xF3,
                /* 0178 */  0x39, 0x35, 0x13, 0x38, 0x30, 0x84, 0x78, 0x25,
                /* 0180 */  0x40, 0xD4, 0xD1, 0x82, 0x12, 0x58, 0xCA, 0xD1,
                /* 0188 */  0x80, 0xD8, 0x1E, 0x98, 0xEE, 0x01, 0x47, 0x78,
                /* 0190 */  0xEE, 0xBE, 0x1C, 0x9C, 0x9A, 0x7F, 0x1A, 0x9E,
                /* 0198 */  0xE6, 0x43, 0x02, 0x66, 0x88, 0x1E, 0xEB, 0x41,
                /* 01A0 */  0x04, 0x3C, 0x44, 0x76, 0x4A, 0x30, 0x20, 0xDE,
                /* 01A8 */  0xFB, 0xB5, 0x80, 0x8C, 0xE0, 0x25, 0xC1, 0x80,
                /* 01B0 */  0x9E, 0xC4, 0x03, 0x02, 0x58, 0x0E, 0x1A, 0x07,
                /* 01B8 */  0x7E, 0x42, 0x15, 0xDF, 0x01, 0xE8, 0x91, 0x80,
                /* 01C0 */  0xCD, 0x28, 0xBE, 0x09, 0xCA, 0x3A, 0x3E, 0xA0,
                /* 01C8 */  0xE7, 0x1C, 0xED, 0xD9, 0xE1, 0x65, 0xA1, 0xD9,
                /* 01D0 */  0x2B, 0x06, 0x21, 0x78, 0x0D, 0xF0, 0x4D, 0xC1,
                /* 01D8 */  0xA7, 0x11, 0x8B, 0x5A, 0x9D, 0x9C, 0xAC, 0xCA,
                /* 01E0 */  0x23, 0xA6, 0xE0, 0x1E, 0x02, 0x97, 0x01, 0xA7,
                /* 01E8 */  0xA1, 0x7B, 0xBC, 0xE0, 0x50, 0x30, 0x5E, 0xFA,
                /* 01F0 */  0xFF, 0x1F, 0x2F, 0xB8, 0xE7, 0x75, 0xBC, 0x60,
                /* 01F8 */  0x39, 0x26, 0x3C, 0x6C, 0x54, 0x05, 0xA1, 0x41,
                /* 0200 */  0x1C, 0x70, 0xF3, 0x03, 0x20, 0x57, 0x0B, 0x8F,
                /* 0208 */  0x98, 0xCD, 0xE5, 0xAC, 0xD8, 0x11, 0x85, 0x0F,
                /* 0210 */  0x8F, 0x0F, 0xC3, 0x23, 0x7E, 0x6F, 0x28, 0x16,
                /* 0218 */  0x44, 0x02, 0x21, 0x74, 0x66, 0x38, 0x72, 0xB0,
                /* 0220 */  0x7C, 0x71, 0x9E, 0x20, 0x12, 0x58, 0xDA, 0xD0,
                /* 0228 */  0xD1, 0x43, 0xF6, 0xA8, 0x5E, 0x62, 0x8C, 0xF1,
                /* 0230 */  0x44, 0x60, 0xD4, 0x53, 0x3A, 0x7A, 0xF0, 0x01,
                /* 0238 */  0x7A, 0xF4, 0x80, 0xCF, 0xFF, 0xFF, 0xE8, 0x71,
                /* 0240 */  0x92, 0xC6, 0x2C, 0x11, 0xA3, 0x47, 0x9F, 0x23,
                /* 0248 */  0x3C, 0x9D, 0xB7, 0x1F, 0x7E, 0x14, 0x49, 0xE0,
                /* 0250 */  0xF8, 0x10, 0x1A, 0x3D, 0x78, 0x4E, 0x3F, 0x1E,
                /* 0258 */  0x3D, 0xF8, 0xC7, 0xE8, 0xD1, 0x83, 0x67, 0x0C,
                /* 0260 */  0xE7, 0x86, 0xBB, 0xDA, 0x78, 0xE4, 0x60, 0x1F,
                /* 0268 */  0x2F, 0x5E, 0xDE, 0x71, 0x0B, 0x14, 0x3E, 0x67,
                /* 0270 */  0x4F, 0x06, 0xF0, 0x1E, 0x84, 0x3B, 0x6F, 0x01,
                /* 0278 */  0x97, 0x11, 0x70, 0xC1, 0x4F, 0x1D, 0x9F, 0xAB,
                /* 0280 */  0xA8, 0x44, 0x18, 0xD4, 0xD1, 0x0A, 0x5C, 0xFF,
                /* 0288 */  0xFF, 0xA3, 0x15, 0xC0, 0x84, 0xFB, 0xC3, 0xAB,
                /* 0290 */  0xD5, 0xA3, 0x15, 0xD8, 0x43, 0xBE, 0x24, 0xF4,
                /* 0298 */  0x23, 0x70, 0x6C, 0x08, 0x39, 0x39, 0x5A, 0xA1,
                /* 02A0 */  0x4E, 0x46, 0xB8, 0xA0, 0x07, 0x2B, 0xA0, 0x7B,
                /* 02A8 */  0xD0, 0xC0, 0x1D, 0x0F, 0xE0, 0xFC, 0xFF, 0x8F,
                /* 02B0 */  0x07, 0x7C, 0x60, 0xFC, 0xF4, 0x02, 0x3E, 0x11,
                /* 02B8 */  0x47, 0x21, 0x9F, 0xCA, 0xA0, 0x9F, 0x20, 0x3D,
                /* 02C0 */  0x5A, 0xF0, 0x1C, 0xAB, 0x80, 0xC3, 0xA9, 0x0C,
                /* 02C8 */  0x38, 0x0C, 0x19, 0x7C, 0xF2, 0x0E, 0x53, 0xE8,
                /* 02D0 */  0x03, 0x89, 0xA7, 0x50, 0xEB, 0x2D, 0x84, 0xC0,
                /* 02D8 */  0x1E, 0x90, 0x8F, 0x12, 0x41, 0x4E, 0x24, 0xC2,
                /* 02E0 */  0xB9, 0xF8, 0x38, 0x05, 0x98, 0xF8, 0xFF, 0x8F,
                /* 02E8 */  0x1A, 0x7F, 0xCB, 0x60, 0xD7, 0x29, 0x30, 0x9C,
                /* 02F0 */  0x82, 0xE0, 0x4D, 0xCA, 0xE3, 0x07, 0xDF, 0xB1,
                /* 02F8 */  0x07, 0x77, 0x0A, 0x82, 0xE7, 0x71, 0x48, 0x42,
                /* 0300 */  0x3E, 0x8F, 0x97, 0x00, 0xDC, 0x45, 0x08, 0x7F,
                /* 0308 */  0x10, 0x02, 0x3E, 0xB2, 0x16, 0x4A, 0x4F, 0x41,
                /* 0310 */  0x16, 0x02, 0x83, 0x3A, 0x08, 0x01, 0x2E, 0xFF,
                /* 0318 */  0xFF, 0x07, 0x21, 0x60, 0xE7, 0xED, 0xB6, 0xA1,
                /* 0320 */  0x6B, 0x90, 0x6F, 0x03, 0x4F, 0x03, 0xAF, 0x11,
                /* 0328 */  0x51, 0x1E, 0x84, 0x7C, 0x13, 0x7A, 0x21, 0x88,
                /* 0330 */  0x10, 0xE5, 0x78, 0x4F, 0x20, 0xC2, 0xD3, 0x90,
                /* 0338 */  0x27, 0x1C, 0x26, 0xDC, 0xC9, 0x46, 0x79, 0x69,
                /* 0340 */  0x08, 0x63, 0xE8, 0x58, 0x81, 0x22, 0xC7, 0x0F,
                /* 0348 */  0xE1, 0x4B, 0x85, 0x0F, 0x42, 0x2C, 0xCA, 0x79,
                /* 0350 */  0x40, 0x3F, 0x02, 0x9F, 0x3F, 0x6C, 0xE4, 0x2C,
                /* 0358 */  0x82, 0x3A, 0x09, 0xF8, 0xD0, 0xE1, 0x41, 0x3D,
                /* 0360 */  0x21, 0x60, 0x42, 0x9F, 0xEC, 0x40, 0x75, 0x14,
                /* 0368 */  0x02, 0xCE, 0x07, 0x10, 0x78, 0x21, 0x0F, 0xAD,
                /* 0370 */  0xA0, 0x3B, 0x92, 0x83, 0xE3, 0x50, 0x17, 0x39,
                /* 0378 */  0xEE, 0x03, 0x0D, 0xF6, 0xEC, 0xC1, 0xFF, 0xFF,
                /* 0380 */  0x67, 0x0F, 0xE0, 0x21, 0xED, 0xE0, 0x81, 0x12,
                /* 0388 */  0x73, 0xF6, 0x00, 0x48, 0x73, 0xD9, 0x78, 0xF7,
                /* 0390 */  0xF0, 0xA5, 0xE7, 0x4C, 0x9F, 0x3D, 0x3C, 0xD7,
                /* 0398 */  0x77, 0x0E, 0x1F, 0xEB, 0x8C, 0x62, 0x88, 0xF7,
                /* 03A0 */  0x0F, 0x1F, 0x0A, 0xA2, 0x44, 0x3C, 0xD7, 0x28,
                /* 03A8 */  0x87, 0x1C, 0x25, 0x6E, 0x84, 0x30, 0xCF, 0x77,
                /* 03B0 */  0xC6, 0x89, 0x11, 0x2A, 0x02, 0x03, 0x7D, 0xF6,
                /* 03B8 */  0x60, 0x71, 0xCE, 0x1E, 0x50, 0xB1, 0xCF, 0xE6,
                /* 03C0 */  0x8D, 0x23, 0xC2, 0x6B, 0xC0, 0x39, 0xFE, 0xFF,
                /* 03C8 */  0xCF, 0xC7, 0x67, 0x0F, 0xC0, 0x9B, 0x94, 0xB7,
                /* 03D0 */  0x9B, 0xCE, 0x1E, 0xE0, 0x3A, 0xC2, 0xE2, 0xCE,
                /* 03D8 */  0x1E, 0xF0, 0xC6, 0x8D, 0x3D, 0x7D, 0x00, 0x3B,
                /* 03E0 */  0x19, 0xAF, 0x01, 0x1F, 0x3D, 0x68, 0xF0, 0x03,
                /* 03E8 */  0x2A, 0xD0, 0xFE, 0xFF, 0x1F, 0x50, 0x01, 0x97,
                /* 03F0 */  0x87, 0x8F, 0x07, 0x54, 0xB0, 0x4B, 0x7F, 0x0E,
                /* 03F8 */  0xE8, 0x53, 0xE0, 0xE0, 0x07, 0x54, 0xF4, 0x70,
                /* 0400 */  0x7C, 0x9C, 0xC3, 0x9C, 0x50, 0x01, 0x9B, 0xFF,
                /* 0408 */  0x7F, 0x02, 0x1F, 0x6E, 0xE1, 0x00, 0x87, 0xF4,
                /* 0410 */  0x58, 0xC1, 0x76, 0x3E, 0x05, 0x0E, 0x63, 0x05,
                /* 0418 */  0xCF, 0xC0, 0xF8, 0x58, 0x81, 0xC5, 0xC4, 0x9E,
                /* 0420 */  0x3D, 0x8E, 0x15, 0x6C, 0xA7, 0x52, 0xE0, 0x30,
                /* 0428 */  0x56, 0x30, 0x0D, 0x8C, 0x8D, 0x15, 0x7C, 0x12,
                /* 0430 */  0xCE, 0xC5, 0xE8, 0x31, 0xFA, 0xDA, 0x72, 0x40,
                /* 0438 */  0x9E, 0x47, 0x84, 0xA7, 0x7C, 0xF6, 0xFF, 0x27,
                /* 0440 */  0x70, 0xDC, 0xE1, 0x82, 0xEA, 0x5C, 0xE3, 0xE1,
                /* 0448 */  0x82, 0x5F, 0xDE, 0x70, 0x41, 0x33, 0x36, 0x38,
                /* 0450 */  0x23, 0x06, 0xDF, 0xD1, 0xC9, 0xE7, 0x58, 0xB0,
                /* 0458 */  0x5C, 0x22, 0xD8, 0x59, 0x80, 0x4D, 0x07, 0x7F,
                /* 0460 */  0x95, 0xC5, 0x9F, 0x99, 0x80, 0x51, 0x18, 0x33,
                /* 0468 */  0x20, 0x2C, 0xC0, 0xE9, 0x40, 0xA2, 0x5E, 0x04,
                /* 0470 */  0x14, 0xC6, 0x87, 0x1A, 0x9F, 0x99, 0xE0, 0x4A,
                /* 0478 */  0x82, 0x43, 0x9D, 0xD3, 0xD8, 0xE9, 0xF8, 0xE4,
                /* 0480 */  0x4E, 0xE4, 0xF5, 0xC0, 0x93, 0x7B, 0x78, 0x82,
                /* 0488 */  0x71, 0x4C, 0xF0, 0xB4, 0x4E, 0xCA, 0xDA, 0x8F,
                /* 0490 */  0x40, 0xE4, 0xFF, 0x7F, 0xCD, 0x62, 0x67, 0x05,
                /* 0498 */  0x8E, 0xC6, 0x4F, 0x52, 0x60, 0xBD, 0x30, 0xF8,
                /* 04A0 */  0x98, 0x00, 0x8E, 0x59, 0xBF, 0x46, 0x61, 0xB0,
                /* 04A8 */  0x42, 0xC5, 0x68, 0xF4, 0x1A, 0x44, 0x40, 0x8F,
                /* 04B0 */  0xAF, 0xAF, 0x61, 0xE8, 0x4E, 0x60, 0xA8, 0x88,
                /* 04B8 */  0x21, 0xDE, 0x0C, 0xEC, 0xF2, 0x3C, 0x84, 0x3C,
                /* 04C0 */  0x34, 0x81, 0x0B, 0xFB, 0xA1, 0x09, 0xEC, 0xA1,
                /* 04C8 */  0xCE, 0x64, 0x34, 0xD2, 0x68, 0x50, 0xE7, 0x74,
                /* 04D0 */  0x7E, 0x20, 0x78, 0xE4, 0xF2, 0xB1, 0xC3, 0x20,
                /* 04D8 */  0x27, 0x7A, 0x5A, 0x8F, 0x0B, 0x4F, 0x03, 0x1E,
                /* 04E0 */  0x37, 0xBB, 0x26, 0xF8, 0x83, 0xE0, 0xE3, 0x01,
                /* 04E8 */  0xFE, 0x00, 0x11, 0xF0, 0x44, 0x9F, 0x3C, 0x60,
                /* 04F0 */  0x9D, 0x40, 0xF0, 0x47, 0x0D, 0xF8, 0xE3, 0xF1,
                /* 04F8 */  0x31, 0xC0, 0xC7, 0x0E, 0x2E, 0x7F, 0x10, 0xA8,
                /* 0500 */  0xA3, 0x22, 0x1F, 0xE9, 0x69, 0xBD, 0x0D, 0xF8,
                /* 0508 */  0x90, 0x70, 0x58, 0xEC, 0xCC, 0xE1, 0x93, 0x11,
                /* 0510 */  0xFE, 0xFF, 0x3F, 0x1E, 0x70, 0x1E, 0xDB, 0x1F,
                /* 0518 */  0x32, 0x7C, 0x65, 0xF0, 0x7C, 0x7D, 0xA2, 0x05,
                /* 0520 */  0xCB, 0xAD, 0xC3, 0x87, 0x86, 0x50, 0x4F, 0x1D,
                /* 0528 */  0x9E, 0xC1, 0xFB, 0x85, 0x4F, 0x20, 0xC0, 0x44,
                /* 0530 */  0xAE, 0x16, 0x88, 0x1E, 0x8E, 0x19, 0x5E, 0xA7,
                /* 0538 */  0x6C, 0x9C, 0x35, 0xE9, 0x79, 0xC0, 0x72, 0x0F,
                /* 0540 */  0x08, 0xBA, 0x46, 0x60, 0x6E, 0x10, 0x41, 0x3C,
                /* 0548 */  0xFC, 0x37, 0x0A, 0x7E, 0x68, 0x14, 0xA0, 0x0E,
                /* 0550 */  0x66, 0x86, 0xB0, 0x34, 0x0A, 0x09, 0x83, 0xD0,
                /* 0558 */  0x88, 0x7C, 0xF4, 0x20, 0x70, 0x14, 0xC4, 0xA3,
                /* 0560 */  0x77, 0xCC, 0xE3, 0x13, 0x7A, 0xA8, 0x3E, 0x06,
                /* 0568 */  0x78, 0x12, 0xB8, 0x50, 0x07, 0x1F, 0x7A, 0x5C,
                /* 0570 */  0xC0, 0xE3, 0x3D, 0x10, 0xFB, 0x1C, 0xC0, 0xC6,
                /* 0578 */  0x8E, 0x3B, 0x79, 0xC0, 0x1D, 0x07, 0xFE, 0xC4,
                /* 0580 */  0x89, 0x3F, 0xAB, 0xF1, 0x53, 0x0F, 0x38, 0x8F,
                /* 0588 */  0x9C, 0xB8, 0xFF, 0xFF, 0xE1, 0x00, 0x1E, 0x90,
                /* 0590 */  0xEF, 0x03, 0x56, 0x7A, 0x26, 0xA0, 0x73, 0x08,
                /* 0598 */  0x11, 0x26, 0x9A, 0xE1, 0x31, 0x81, 0x8F, 0x4F,
                /* 05A0 */  0xF4, 0x44, 0xEA, 0x71, 0xF1, 0x51, 0xFA, 0x0C,
                /* 05A8 */  0xC3, 0xB0, 0x1F, 0x51, 0x7C, 0x4C, 0x3C, 0xC0,
                /* 05B0 */  0x97, 0x83, 0x67, 0x3E, 0x0C, 0xAC, 0xC7, 0xCD,
                /* 05B8 */  0x61, 0x8D, 0x16, 0xF6, 0x70, 0x9F, 0x21, 0x7C,
                /* 05C0 */  0xFF, 0xF0, 0xCC, 0x7C, 0x6D, 0xF4, 0xC9, 0x03,
                /* 05C8 */  0x2C, 0x47, 0x29, 0xF8, 0x43, 0xC5, 0x9D, 0x05,
                /* 05D0 */  0xE0, 0x1E, 0x98, 0xD8, 0x1C, 0x9E, 0x06, 0xF0,
                /* 05D8 */  0x32, 0x0F, 0x11, 0xA8, 0x81, 0x58, 0xE4, 0x02,
                /* 05E0 */  0x75, 0x5C, 0xF1, 0x48, 0x4C, 0x60, 0x79, 0x07,
                /* 05E8 */  0x08, 0xD4, 0xF9, 0xC1, 0xB2, 0x0E, 0x10, 0x28,
                /* 05F0 */  0x21, 0x70, 0x14, 0xC4, 0x07, 0x08, 0x1F, 0xD3,
                /* 05F8 */  0x6D, 0xE4, 0x00, 0x81, 0x3E, 0xC0, 0x30, 0x88,
                /* 0600 */  0x87, 0x4E, 0x13, 0xF8, 0x28, 0xE3, 0x03, 0x04,
                /* 0608 */  0xF0, 0x18, 0x07, 0xFE, 0x00, 0x01, 0xEF, 0xFF,
                /* 0610 */  0x4F, 0xE0, 0x13, 0x30, 0xF0, 0x39, 0x3F, 0x80,
                /* 0618 */  0xE3, 0x24, 0xEA, 0xF3, 0x03, 0xB8, 0x4E, 0x00,
                /* 0620 */  0x3E, 0x3F, 0x00, 0xD7, 0x01, 0x3E, 0x0A, 0x80,
                /* 0628 */  0xE5, 0x4C, 0xC6, 0xE6, 0xF0, 0x52, 0x73, 0xE6,
                /* 0630 */  0xAF, 0x4C, 0x3E, 0xF1, 0x62, 0x4E, 0xBD, 0x5C,
                /* 0638 */  0xD7, 0x08, 0x48, 0xC4, 0x33, 0x04, 0x6A, 0x10,
                /* 0640 */  0x3E, 0x98, 0xFB, 0x38, 0xC1, 0x7C, 0x1E, 0x82,
                /* 0648 */  0xA4, 0x1A, 0x45, 0xF0, 0xBE, 0x15, 0xB0, 0x08,
                /* 0650 */  0xC7, 0x08, 0x94, 0x78, 0x0A, 0x49, 0x3F, 0x46,
                /* 0658 */  0xA0, 0xC4, 0xC2, 0x51, 0x10, 0x8F, 0xDA, 0x07,
                /* 0660 */  0x09, 0xDB, 0x38, 0xDB, 0xA2, 0x0F, 0xC3, 0xFC,
                /* 0668 */  0x28, 0xC0, 0x4F, 0x11, 0x70, 0xFF, 0xFF, 0xB3,
                /* 0670 */  0xF0, 0x29, 0x0C, 0x77, 0xF4, 0x00, 0xC7, 0x45,
                /* 0678 */  0xEC, 0xD0, 0xCE, 0xEE, 0x21, 0x21, 0x4A, 0xCC,
                /* 0680 */  0x33, 0x78, 0xF3, 0x33, 0x60, 0xD8, 0x68, 0x1E,
                /* 0688 */  0x23, 0x0E, 0xE7, 0x1C, 0x7D, 0x51, 0xF3, 0x9C,
                /* 0690 */  0x62, 0x3D, 0xBE, 0xF1, 0x23, 0x05, 0x5C, 0x14,
                /* 0698 */  0x1F, 0x29, 0xE0, 0xCE, 0xE4, 0x3C, 0x30, 0xEA,
                /* 06A0 */  0xC6, 0x22, 0x78, 0x5F, 0x0B, 0xF1, 0x07, 0x0B,
                /* 06A8 */  0xE0, 0x71, 0x5C, 0xF2, 0xC1, 0x02, 0x5C, 0x90,
                /* 06B0 */  0x3E, 0x58, 0x00, 0xD7, 0xF3, 0x81, 0x4F, 0x07,
                /* 06B8 */  0x60, 0xBD, 0x90, 0xF1, 0xFB, 0x01, 0xFB, 0xFF,
                /* 06C0 */  0xDF, 0x0F, 0x70, 0x27, 0x0C, 0x18, 0xE7, 0x03,
                /* 06C8 */  0xCC, 0x0D, 0xC3, 0xB1, 0x56, 0xAA, 0x13, 0x06,
                /* 06D0 */  0x2E, 0xD6, 0x83, 0x42, 0x03, 0x61, 0xC3, 0x7B,
                /* 06D8 */  0xFE, 0x79, 0x32, 0xE4, 0x87, 0x19, 0x16, 0x05,
                /* 06E0 */  0x4E, 0x47, 0x0B, 0x9F, 0x2C, 0x1C, 0x82, 0x42,
                /* 06E8 */  0x07, 0x31, 0x9F, 0x30, 0xB8, 0x98, 0x13, 0x06,
                /* 06F0 */  0x05, 0x31, 0xA0, 0x93, 0x9E, 0xC3, 0xD0, 0xA7,
                /* 06F8 */  0x4D, 0x1F, 0x1B, 0xD8, 0xED, 0xDE, 0xF7, 0x0B,
                /* 0700 */  0xCF, 0xC5, 0x73, 0xE6, 0x78, 0x3E, 0x2F, 0x33,
                /* 0708 */  0xD4, 0x37, 0x13, 0xF0, 0x5C, 0x29, 0xD8, 0x71,
                /* 0710 */  0x1E, 0x73, 0x9B, 0x64, 0x07, 0x4E, 0x76, 0x2C,
                /* 0718 */  0x30, 0xCA, 0xF1, 0xBE, 0x16, 0x5A, 0xCD, 0x5D,
                /* 0720 */  0x01, 0x35, 0x23, 0x0C, 0x81, 0x07, 0xEC, 0x93,
                /* 0728 */  0x18, 0x98, 0xF4, 0xDD, 0x28, 0x40, 0x8E, 0xCE,
                /* 0730 */  0x85, 0x8E, 0x1E, 0x75, 0x00, 0xF0, 0xD1, 0x8E,
                /* 0738 */  0x8F, 0xDE, 0x47, 0x6C, 0x1F, 0x57, 0xE0, 0x1E,
                /* 0740 */  0xEE, 0x7C, 0x86, 0x02, 0xC7, 0xFF, 0xFF, 0x0C,
                /* 0748 */  0x05, 0x5C, 0x06, 0xE6, 0x19, 0x3E, 0xA1, 0x80,
                /* 0750 */  0xEB, 0xFE, 0xC0, 0x2F, 0xAA, 0x98, 0x89, 0x3C,
                /* 0758 */  0x0B, 0xC3, 0x38, 0xA5, 0x00, 0x8F, 0xD1, 0xFB,
                /* 0760 */  0x94, 0x02, 0xAE, 0x03, 0x80, 0x4F, 0x29, 0xC0,
                /* 0768 */  0x75, 0x8E, 0x0F, 0x05, 0x60, 0x39, 0xA3, 0x44,
                /* 0770 */  0xF1, 0xFD, 0xD7, 0x13, 0xB1, 0xF1, 0xE1, 0xD3,
                /* 0778 */  0x0B, 0x8A, 0xC7, 0xF2, 0x6C, 0xCE, 0xCE, 0x94,
                /* 0780 */  0x3A, 0x9B, 0xA0, 0xA3, 0xBD, 0x1E, 0x34, 0xE8,
                /* 0788 */  0x07, 0x15, 0xCF, 0x3E, 0xFC, 0xF1, 0x45, 0x78,
                /* 0790 */  0x3E, 0x35, 0xF0, 0xFF, 0x3F, 0x81, 0xE3, 0x9C,
                /* 0798 */  0x4D, 0x50, 0x41, 0x28, 0x74, 0xEC, 0xF4, 0x71,
                /* 07A0 */  0x82, 0x4B, 0x3A, 0x4E, 0x50, 0x10, 0x03, 0x3A,
                /* 07A8 */  0xEF, 0x11, 0xCF, 0xC3, 0xA0, 0xC7, 0x09, 0x7E,
                /* 07B0 */  0xEA, 0xF3, 0x2D, 0xE1, 0x38, 0x9E, 0x40, 0x12,
                /* 07B8 */  0xCC, 0x77, 0x12, 0xA0, 0x97, 0x13, 0x78, 0xE7,
                /* 07C0 */  0x75, 0xF0, 0x8C, 0xC2, 0x3B, 0x39, 0x0B, 0x86,
                /* 07C8 */  0xF0, 0x66, 0xCD, 0x8E, 0x13, 0xF8, 0xCB, 0xC1,
                /* 07D0 */  0xB3, 0xC2, 0x83, 0x3A, 0xBF, 0x9E, 0xC0, 0xBC,
                /* 07D8 */  0xE7, 0x81, 0xEB, 0x78, 0x02, 0x2C, 0x64, 0x1E,
                /* 07E0 */  0x00, 0x50, 0xC7, 0x46, 0x1F, 0x1C, 0xF9, 0x01,
                /* 07E8 */  0xC0, 0xA1, 0x8F, 0x27, 0xE8, 0x99, 0xF8, 0x58,
                /* 07F0 */  0xF4, 0x54, 0xE2, 0x0B, 0x00, 0x3F, 0xBB, 0xE9,
                /* 07F8 */  0x7C, 0x02, 0x8A, 0x73, 0x26, 0x78, 0xC6, 0xC1,
                /* 0800 */  0xAE, 0x00, 0xF8, 0x33, 0x00, 0xE6, 0xFF, 0x7F,
                /* 0808 */  0x42, 0x81, 0x73, 0x24, 0x03, 0xDF, 0x44, 0x7C,
                /* 0810 */  0xAA, 0x38, 0x10, 0xEC, 0x49, 0x16, 0x78, 0xC3,
                /* 0818 */  0xF2, 0x93, 0x2C, 0xE0, 0xE3, 0x36, 0x82, 0x9D,
                /* 0820 */  0xC5, 0x33, 0x09, 0x23, 0x18, 0xF9, 0x68, 0x82,
                /* 0828 */  0x3A, 0x22, 0x3B, 0xE8, 0x29, 0x0C, 0x31, 0xCE,
                /* 0830 */  0xC7, 0x0A, 0x63, 0x44, 0x2E, 0x7E, 0xD4, 0x9A,
                /* 0838 */  0x8C, 0xCF, 0x66, 0xBE, 0xAC, 0xB3, 0xC3, 0x0F,
                /* 0840 */  0x8E, 0x60, 0xA0, 0x03, 0x0A, 0xEA, 0x38, 0xE6,
                /* 0848 */  0xB3, 0x18, 0xB8, 0xFE, 0xFF, 0x67, 0x31, 0x80,
                /* 0850 */  0x07, 0x67, 0x77, 0x8F, 0x9E, 0x1F, 0xDB, 0x39,
                /* 0858 */  0x88, 0x47, 0xEF, 0xF0, 0x67, 0x31, 0xE8, 0x61,
                /* 0860 */  0xCF, 0x62, 0x40, 0x5B, 0xF0, 0x59, 0x0C, 0x94,
                /* 0868 */  0xB7, 0x08, 0xFC, 0xFF, 0xFF, 0x16, 0x81, 0x3B,
                /* 0870 */  0x83, 0x02, 0xAF, 0xB5, 0xF9, 0x84, 0x02, 0xAE,
                /* 0878 */  0x3B, 0x83, 0x4F, 0x28, 0xC0, 0xF5, 0x08, 0x80,
                /* 0880 */  0x3B, 0x83, 0x82, 0xE3, 0x04, 0xC0, 0x7C, 0xDD,
                /* 0888 */  0x00, 0x28, 0xC8, 0x23, 0x00, 0xFE, 0x0A, 0xEF,
                /* 0890 */  0x83, 0x09, 0x2E, 0xDE, 0x49, 0x05, 0xC5, 0xE1,
                /* 0898 */  0x78, 0x27, 0x15, 0xC4, 0x54, 0x22, 0xBF, 0xB5,
                /* 08A0 */  0x78, 0x02, 0xE1, 0x0F, 0x2E, 0xCE, 0xFB, 0x19,
                /* 08A8 */  0x3F, 0x95, 0xC1, 0x10, 0x75, 0xB0, 0x40, 0xC9,
                /* 08B0 */  0x38, 0x58, 0x50, 0x10, 0x03, 0x3A, 0xE3, 0x29,
                /* 08B8 */  0x05, 0x7D, 0x2A, 0xE3, 0x97, 0x11, 0x0F, 0x2C,
                /* 08C0 */  0xC1, 0x4C, 0xD7, 0x14, 0xA8, 0xFF, 0x7F, 0x64,
                /* 08C8 */  0x5F, 0x40, 0x70, 0x03, 0x86, 0x0B, 0xF6, 0x20,
                /* 08D0 */  0x61, 0x84, 0xD7, 0x64, 0xCF, 0x03, 0x73, 0x44,
                /* 08D8 */  0x01, 0x6C, 0x48, 0x1E, 0x3A, 0x4A, 0xE4, 0xD0,
                /* 08E0 */  0x29, 0x88, 0x87, 0x6E, 0x1A, 0x1F, 0x51, 0x70,
                /* 08E8 */  0x63, 0x65, 0x17, 0x02, 0x58, 0x51, 0x4F, 0x29,
                /* 08F0 */  0xA0, 0x10, 0x39, 0x7C, 0xD0, 0x8C, 0xE3, 0xE8,
                /* 08F8 */  0x9E, 0x7A, 0x3C, 0x0F, 0x7E, 0x27, 0xF6, 0x31,
                /* 0900 */  0x0F, 0xEE, 0x49, 0x05, 0x77, 0x6A, 0xC4, 0x9D,
                /* 0908 */  0x54, 0xC0, 0x30, 0x47, 0xEC, 0xA9, 0x0C, 0x1C,
                /* 0910 */  0xFF, 0xFF, 0x23, 0x28, 0x70, 0xF4, 0x70, 0x04,
                /* 0918 */  0x05, 0xB4, 0x1C, 0x52, 0xF8, 0x31, 0x03, 0x73,
                /* 0920 */  0x35, 0xE0, 0x47, 0x50, 0x8C, 0x42, 0x9B, 0x3E,
                /* 0928 */  0x35, 0x1A, 0xB5, 0x6A, 0x50, 0xA6, 0x46, 0x99,
                /* 0930 */  0x06, 0xB5, 0xFA, 0x54, 0x6A, 0xCC, 0x98, 0x25,
                /* 0938 */  0x28, 0x45, 0x58, 0xAD, 0x86, 0xEB, 0x50, 0x0F,
                /* 0940 */  0x07, 0x81, 0x38, 0xEE, 0x9A, 0x35, 0x64, 0xB2,
                /* 0948 */  0x54, 0x81, 0x58, 0x88, 0x0A, 0x10, 0x26, 0x66,
                /* 0950 */  0x65, 0x02, 0xB1, 0xD4, 0x95, 0x09, 0xC4, 0x51,
                /* 0958 */  0x7C, 0x80, 0xB0, 0x80, 0x4A, 0x40, 0x58, 0x54,
                /* 0960 */  0x2B, 0x40, 0x54, 0x0B, 0x08, 0x8B, 0xE5, 0x05,
                /* 0968 */  0x84, 0x05, 0x5B, 0x9D, 0x40, 0x1C, 0xC6, 0x0D,
                /* 0970 */  0x08, 0x93, 0xF2, 0x70, 0xD0, 0x60, 0x88, 0x9D,
                /* 0978 */  0xF3, 0xA8, 0x0E, 0x8E, 0x06, 0x11, 0x90, 0x43,
                /* 0980 */  0xFB, 0x01, 0x62, 0x12, 0x16, 0x2D, 0x20, 0x0B,
                /* 0988 */  0x57, 0x04, 0xC4, 0x62, 0x80, 0x08, 0xC8, 0x3A,
                /* 0990 */  0xD6, 0x26, 0x20, 0x8B, 0x02, 0x11, 0x90, 0xA5,
                /* 0998 */  0x69, 0x02, 0x62, 0x42, 0x41, 0x04, 0xE4, 0x90,
                /* 09A0 */  0xA2, 0x20, 0xFE, 0xFF, 0x81, 0x9C, 0x18, 0x44,
                /* 09A8 */  0x40, 0x0E, 0x6F, 0x0A, 0x88, 0x49, 0x51, 0x05,
                /* 09B0 */  0xC4, 0xD4, 0xBF, 0x0E, 0x04, 0xE4, 0x28, 0x20,
                /* 09B8 */  0x02, 0x72, 0x20, 0x5B, 0x40, 0x2C, 0x1E, 0x88,
                /* 09C0 */  0x80, 0xAC, 0xF0, 0x71, 0x27, 0x20, 0xCB, 0x05,
                /* 09C8 */  0x11, 0x90, 0x23, 0x18, 0x03, 0x62, 0x81, 0x40,
                /* 09D0 */  0x04, 0xE4, 0xFF, 0x3F                         
            })
            Name (_HID, EisaId ("PNP0C14"))  // _HID: Hardware ID
            Name (_UID, "AOD")  // _UID: Unique ID
            Name (_WDG, Buffer (0x28)
            {
                /* 0000 */  0x6A, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11,
                /* 0008 */  0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,
                /* 0010 */  0x41, 0x41, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,
                /* 0018 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,
                /* 0020 */  0xC9, 0x06, 0x29, 0x10, 0x42, 0x41, 0x01, 0x00 
            })
            Method (WMAA, 3, NotSerialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    If (LOr (LOr (LNotEqual (Arg1, One), LNotEqual (Arg1, 0x02)), LNotEqual (Arg1, 0x06)))
                    {
                        CreateDWordField (Arg2, Zero, WIID)
                    }

                    If (LEqual (Arg1, One))
                    {
                        Return (AM01 ())
                    }
                    ElseIf (LEqual (Arg1, 0x02))
                    {
                        Return (AM02 ())
                    }
                    ElseIf (LEqual (Arg1, 0x03))
                    {
                        Return (AM03 ())
                    }
                    ElseIf (LEqual (Arg1, 0x04))
                    {
                        Return (AM04 (WIID))
                    }
                    ElseIf (LEqual (Arg1, 0x05))
                    {
                        Return (AM05 (Arg2))
                    }
                    ElseIf (LEqual (Arg1, 0x06))
                    {
                        Return (AM06 (WIID))
                    }
                    ElseIf (LEqual (Arg1, 0x07))
                    {
                        Return (AM07 (WIID))
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }
        }
    }
}

