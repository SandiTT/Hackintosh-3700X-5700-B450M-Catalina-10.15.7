/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-4.aml, Mon Feb  8 17:15:46 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001D4A (7498)
 *     Revision         0x01
 *     Checksum         0x77
 *     OEM ID           "AMD"
 *     OEM Table ID     "AmdTable"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 1, "AMD", "AmdTable", 0x00000001)
{
    /*
     * iASL Warning: There were 11 external control methods found during
     * disassembly, but only 0 were resolved (11 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    /*
     * External declarations were imported from
     * a reference file -- DSDT.aml
     */

    External (_SB_.ALIB, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (_SB_.IPTS, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.IWAK, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.M263, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.M264, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.M284, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.GP18.SATA.TPTS, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.GP18.SATA.TWAK, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.SATA.TPTS, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.SATA.TWAK, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (M038, IntObj)    // Warning: Unknown object
    External (M039, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (MOEM, IntObj)    // Warning: Unknown object

    OperationRegion (CPNV, SystemMemory, 0xDA6EF018, 0x000100CD)
    Field (CPNV, AnyAcc, Lock, Preserve)
    {
        M082,   32, 
        M083,   32, 
        M084,   32, 
        M085,   8, 
        M221,   8, 
        M086,   16, 
        M229,   8, 
        M231,   16, 
        M235,   8, 
        M233,   32, 
            ,   1, 
            ,   2, 
            ,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
        Offset (0x19), 
        M087,   1, 
            ,   1, 
        Offset (0x1C), 
        M088,   16, 
        M089,   16, 
        M090,   3, 
        M091,   5, 
        M092,   8, 
        M093,   3, 
        M094,   5, 
        M095,   8, 
        M096,   8, 
        M097,   8, 
        M098,   32, 
        M099,   32, 
        M100,   32, 
        M101,   32, 
        M102,   32, 
        M103,   32, 
        M104,   224, 
        M105,   32, 
        M106,   32768, 
        M378,   32768, 
        M379,   32768, 
        M380,   32768, 
        M381,   32768, 
        M382,   32768, 
        M383,   32768, 
        M384,   32768, 
        M385,   32768, 
        M386,   32768, 
        M387,   32768, 
        M388,   32768, 
        M389,   32768, 
        M390,   32768, 
        M391,   32768, 
        M392,   32768, 
        M107,   64, 
        M320,   32, 
        M321,   32, 
        M322,   32, 
        M323,   32, 
        M324,   32, 
        M325,   32, 
        M326,   32, 
        M327,   16, 
        M328,   8, 
        M128,   32, 
        M108,   32, 
        M109,   32, 
        M110,   32, 
        M122,   32, 
        M131,   32, 
        M132,   32, 
        M133,   32, 
        M134,   32, 
        M135,   32, 
        M136,   32, 
        M220,   32, 
        M226,   32, 
        M251,   32, 
        M310,   32, 
        M280,   32, 
        M290,   32, 
        M331,   32
    }

    Method (M000, 1, Serialized)
    {
        Name (M285, Buffer (0x04)
        {
             0x01, 0x03, 0x80, 0x00                         
        })
        CreateByteField (M285, Zero, M286)
        CreateByteField (M285, One, M287)
        CreateWordField (M285, 0x02, M288)
        If (LEqual (ToInteger (M286), One))
        {
            Store (Add (Arg0, 0xB0000C00), Local0)
            Store (ToInteger (M288), Local1)
            If (LEqual (ToInteger (M287), 0x03))
            {
                OperationRegion (VARM, SystemIO, Local1, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Store (Local0, VARR)
            }
            ElseIf (LEqual (ToInteger (M287), 0x02))
            {
                OperationRegion (VARN, SystemIO, Local1, 0x02)
                Field (VARN, WordAcc, NoLock, Preserve)
                {
                    VARS,   16
                }

                Store (And (Local0, 0xFFFF), VARS)
            }
            ElseIf (LEqual (ToInteger (M287), One))
            {
                OperationRegion (VARO, SystemIO, Local1, One)
                Field (VARO, ByteAcc, NoLock, Preserve)
                {
                    VART,   8
                }

                Store (And (Local0, 0xFF), VART)
            }
        }
    }

    Method (M019, 4, Serialized)
    {
        Return (M017 (Arg0, Arg1, Arg2, Arg3, Zero, 0x20))
    }

    Method (M020, 5, Serialized)
    {
        M018 (Arg0, Arg1, Arg2, Arg3, Zero, 0x20, Arg4)
    }

    Mutex (M253, 0x00)
    Method (M249, 4, Serialized)
    {
        If (LEqual (Add (Add (Arg0, Arg1), Arg2), Zero))
        {
            Store (Zero, Local0)
        }
        Else
        {
            Store (M252 (Arg0, Arg1, Arg2), Local0)
        }

        If (LEqual (Local0, Ones))
        {
            Return (Ones)
        }

        Add (M083, ShiftLeft (Local0, 0x14), Local0)
        Add (0xB8, Local0, Local0)
        Acquire (M253, 0xFFFF)
        OperationRegion (VARM, SystemMemory, Local0, 0x08)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VAR1,   32
        }

        BankField (VARM, VAR1, Arg3, DWordAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            VAR2,   32
        }

        Store (VAR1, Local1)
        Store (VAR2, Local2)
        Store (Local1, VAR1)
        Release (M253)
        Return (Local2)
    }

    Method (M250, 5, Serialized)
    {
        If (LEqual (Add (Add (Arg0, Arg1), Arg2), Zero))
        {
            Store (Zero, Local0)
        }
        Else
        {
            Store (M252 (Arg0, Arg1, Arg2), Local0)
        }

        If (LNotEqual (Local0, Ones))
        {
            Add (M083, ShiftLeft (Local0, 0x14), Local0)
            Add (0xB8, Local0, Local0)
            Acquire (M253, 0xFFFF)
            OperationRegion (VARM, SystemMemory, Local0, 0x08)
            Field (VARM, DWordAcc, NoLock, Preserve)
            {
                VAR1,   32
            }

            BankField (VARM, VAR1, Arg3, DWordAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                VAR2,   32
            }

            Store (VAR1, Local1)
            Store (Arg4, VAR2)
            Store (Local1, VAR1)
            Release (M253)
        }
    }

    Method (M021, 4, Serialized)
    {
        Add (M083, ShiftLeft (Arg0, 0x14), Local0)
        Add (Local0, ShiftLeft (Arg1, 0x0F), Local0)
        Add (Local0, ShiftLeft (Arg2, 0x0C), Local0)
        Add (0xE0, Local0, Local0)
        OperationRegion (VARM, SystemMemory, Local0, 0x08)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VAR1,   32
        }

        BankField (VARM, VAR1, Arg3, DWordAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            VAR2,   32
        }

        Store (VAR2, Local0)
        Return (Local0)
    }

    Method (M022, 5, Serialized)
    {
        Add (M083, ShiftLeft (Arg0, 0x14), Local0)
        Add (Local0, ShiftLeft (Arg1, 0x0F), Local0)
        Add (Local0, ShiftLeft (Arg2, 0x0C), Local0)
        Add (0xE0, Local0, Local0)
        OperationRegion (VARM, SystemMemory, Local0, 0x08)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VAR1,   32
        }

        BankField (VARM, VAR1, Arg3, DWordAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            VAR2,   32
        }

        Store (Arg4, VAR2)
    }

    Method (M023, 3, Serialized)
    {
        M018 (Arg0, Arg1, Arg2, 0x70, 0x03, One, Zero)
        M018 (Arg0, Arg1, Arg2, 0x70, 0x13, One, One)
    }

    Method (M024, 3, Serialized)
    {
        Store (M019 (Arg0, Arg1, Arg2, 0x0128), Local0)
        If (And (Local0, 0x00020000))
        {
            Return (Ones)
        }
        Else
        {
            Return (Zero)
        }
    }

    Method (M026, 3, Serialized)
    {
        Store (M021 (Arg0, Arg1, Arg2, 0xA2), Local0)
        And (Local0, 0xFFFFFFF8, Local0)
        ShiftRight (Local0, 0x04, Local1)
        And (Local1, 0x07, Local1)
        Or (Local0, Local1, Local0)
        Or (Local0, 0x0100, Local0)
        M022 (Arg0, Arg1, Arg2, 0xA2, Local0)
    }

    Method (M025, 3, Serialized)
    {
        Store (M019 (Arg0, Arg1, Arg2, 0x68), Local0)
        And (Local0, 0xFFFFFFDF, Local0)
        M020 (Arg0, Arg1, Arg2, 0x68, Local0)
        Or (Local0, 0x20, Local0)
        M020 (Arg0, Arg1, Arg2, 0x68, Local0)
        Store (0x64, Local1)
        Store (One, Local2)
        While (LAnd (Local1, Local2))
        {
            Sleep (One)
            Store (M019 (Arg0, Arg1, Arg2, 0x68), Local3)
            If (And (Local3, 0x08000000))
            {
                Decrement (Local1)
            }
            Else
            {
                Store (Zero, Local2)
            }
        }

        And (Local0, 0xFFFFFFDF, Local0)
        M020 (Arg0, Arg1, Arg2, 0x68, Local0)
        If (LNot (Local2))
        {
            Return (Ones)
        }
        Else
        {
            Return (Zero)
        }
    }

    Method (M009, 1, Serialized)
    {
        ShiftRight (Arg0, 0x08, Local0)
        And (Arg0, 0xFF, Local1)
        Store (Zero, Local2)
        If (LOr (LEqual (Local0, Zero), LEqual (Local0, One)))
        {
            If (LGreaterEqual (M085, 0x02))
            {
                If (LEqual (Local0, Zero))
                {
                    Store (M011 (Add (M084, 0x1502), Multiply (Local1, 0x04), Zero, One), Local2)
                }
                Else
                {
                    Store (M011 (Add (M084, 0x1202), Multiply (Local1, 0x04), Zero, One), Local2)
                }
            }
            Else
            {
                Store (M011 (Add (M084, 0x0100), Local1, 0x07, One), Local2)
            }
        }
        ElseIf (LEqual (Local0, 0x05))
        {
            Store (M038, Local1)
            Local2
        }
        ElseIf (LEqual (Local0, 0x02))
        {
            Store (M038, Add (Local1, 0x08))
            Local2
        }

        Return (Local2)
    }

    Method (M010, 2, Serialized)
    {
        ShiftRight (Arg0, 0x08, Local0)
        And (Arg0, 0xFF, Local1)
        If (LOr (LEqual (Local0, Zero), LEqual (Local0, One)))
        {
            If (LGreaterEqual (M085, 0x02))
            {
                If (LEqual (Local0, Zero))
                {
                    M012 (Add (M084, 0x1502), Multiply (Local1, 0x04), 0x06, 0x02, Or (0x02, Arg1))
                }
                Else
                {
                    M012 (Add (M084, 0x1202), Multiply (Local1, 0x04), 0x06, 0x02, Or (0x02, Arg1))
                }
            }
            Else
            {
                M012 (Add (M084, 0x0100), Local1, 0x06, One, Arg1)
                M012 (Add (M084, 0x0100), Local1, 0x05, One, Zero)
            }
        }
        ElseIf (LEqual (Local0, 0x05))
        {
            M039 (Local1, Arg1)
        }
        ElseIf (LEqual (Local0, 0x02))
        {
            M039 (Add (Local1, 0x08), Arg1)
        }
    }

    Name (M037, Buffer (0x17)
    {
        /* 0000 */  0x7E, 0x81, 0x03, 0x16, 0x04, 0x15, 0x0E, 0x05,
        /* 0008 */  0x02, 0x20, 0x06, 0x07, 0x10, 0x11, 0x12, 0x18,
        /* 0010 */  0x17, 0x19, 0x0B, 0x01, 0x0F, 0x0D, 0x09       
    })
    Name (M227, Buffer (0x18)
    {
        /* 0000 */  0x41, 0x42, 0x03, 0x16, 0x04, 0x15, 0x0E, 0x05,
        /* 0008 */  0x02, 0x44, 0x06, 0x07, 0x10, 0x11, 0x12, 0x18,
        /* 0010 */  0x17, 0x45, 0x0B, 0x01, 0x0F, 0x0D, 0x09, 0x08 
    })
    Name (M329, Buffer (0x18)
    {
        /* 0000 */  0x59, 0x5A, 0x03, 0x16, 0x04, 0x15, 0x5B, 0x05,
        /* 0008 */  0x02, 0x56, 0x06, 0x4C, 0x10, 0x11, 0x12, 0x18,
        /* 0010 */  0x17, 0x81, 0x54, 0x01, 0x28, 0x00, 0x09, 0x08 
    })
    Name (M32A, Buffer (0x18)
    {
        /* 0000 */  0x59, 0x5A, 0x03, 0x16, 0x04, 0x15, 0x5B, 0x05,
        /* 0008 */  0x02, 0x56, 0x06, 0x4C, 0x10, 0x11, 0x1D, 0x1E,
        /* 0010 */  0x17, 0x81, 0x54, 0x01, 0x28, 0x00, 0x09, 0x08 
    })
    Name (M330, Buffer (0x18)
    {
        /* 0000 */  0x59, 0x5A, 0x03, 0x16, 0x04, 0x15, 0x5B, 0x05,
        /* 0008 */  0x02, 0x56, 0x06, 0x07, 0x10, 0x11, 0x12, 0x18,
        /* 0010 */  0x17, 0x81, 0x54, 0x01, 0x28, 0x00, 0x09, 0x08 
    })
    Method (M029, 1, Serialized)
    {
        If (LEqual (M085, 0x02))
        {
            Return (M011 (Add (M084, 0x1502), Multiply (DerefOf (Index (M037, Arg0)), 0x04), Zero, One))
        }
        ElseIf (LGreaterEqual (M085, 0x09))
        {
            If (LGreaterEqual (M085, 0x0B))
            {
                Return (M011 (Add (M084, 0x1502), Multiply (DerefOf (Index (M32A, Arg0)), 0x04), Zero, One))
            }
            Else
            {
                Return (M011 (Add (M084, 0x1502), Multiply (DerefOf (Index (M330, Arg0)), 0x04), Zero, One))
            }
        }
        ElseIf (LEqual (M085, 0x08))
        {
            Return (M011 (Add (M084, 0x1502), Multiply (DerefOf (Index (M329, Arg0)), 0x04), Zero, One))
        }
        ElseIf (LGreaterEqual (M085, 0x03))
        {
            Return (M011 (Add (M084, 0x1502), Multiply (DerefOf (Index (M227, Arg0)), 0x04), Zero, One))
        }
        Else
        {
            Return (M011 (Add (M084, 0x0160), Arg0, 0x07, One))
        }
    }

    Method (M031, 1, Serialized)
    {
        Store (M011 (Add (M084, 0x0240), Arg0, Zero, 0x05), Local0)
        Return (M011 (Add (M084, 0x0208), Divide (Local0, 0x08, ), And (Local0, 0x07), One))
    }

    Method (M032, 2, Serialized)
    {
        Store (M011 (Add (M084, 0x0240), Arg0, Zero, 0x05), Local0)
        M012 (Add (M084, 0x0208), Divide (Local0, 0x08, ), And (Local0, 0x07), One, Arg1)
    }

    Method (M013, 4, Serialized)
    {
        Add (Arg0, Arg1, Local0)
        OperationRegion (VARM, SystemMemory, Local0, 0x04)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VARR,   32
        }

        Store (VARR, Local1)
        Store (0x7FFFFFFF, Local5)
        Or (Local5, 0x80000000, Local5)
        And (ShiftRight (Local1, Arg2), ShiftRight (Local5, Subtract (0x20, Arg3)), Local2)
        Return (Local2)
    }

    Method (M014, 5, Serialized)
    {
        Add (Arg0, Arg1, Local0)
        OperationRegion (VARM, SystemMemory, Local0, 0x04)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VARR,   32
        }

        Store (VARR, Local1)
        Store (0x7FFFFFFF, Local5)
        Or (Local5, 0x80000000, Local5)
        Add (Arg2, Arg3, Local2)
        Subtract (0x20, Local2, Local2)
        ShiftRight (And (ShiftLeft (Local5, Local2), Local5), Local2, Local2)
        ShiftLeft (ShiftRight (Local2, Arg2), Arg2, Local2)
        ShiftLeft (Arg4, Arg2, Local3)
        Or (And (Local1, XOr (Local5, Local2)), Local3, Local4)
        Store (Local4, VARR)
    }

    Method (M011, 4, Serialized)
    {
        Add (Arg0, Arg1, Local0)
        OperationRegion (VARM, SystemMemory, Local0, One)
        Field (VARM, ByteAcc, NoLock, Preserve)
        {
            VARR,   8
        }

        Store (VARR, Local1)
        And (ShiftRight (Local1, Arg2), ShiftRight (0xFF, Subtract (0x08, Arg3)), Local2)
        Return (Local2)
    }

    Method (M012, 5, Serialized)
    {
        Add (Arg0, Arg1, Local0)
        OperationRegion (VARM, SystemMemory, Local0, One)
        Field (VARM, ByteAcc, NoLock, Preserve)
        {
            VARR,   8
        }

        Store (VARR, Local1)
        Add (Arg2, Arg3, Local2)
        Subtract (0x08, Local2, Local2)
        ShiftRight (And (ShiftLeft (0xFF, Local2), 0xFF), Local2, Local2)
        ShiftLeft (ShiftRight (Local2, Arg2), Arg2, Local2)
        ShiftLeft (Arg4, Arg2, Local3)
        Or (And (Local1, XOr (0xFF, Local2)), Local3, Local4)
        Store (Local4, VARR)
    }

    Method (M017, 6, Serialized)
    {
        Store (M083, Local0)
        ShiftRight (M083, 0x14, Local1)
        And (Local1, 0x0F00, Local2)
        Add (Local2, 0x0100, Local2)
        If (LGreaterEqual (Add (Local1, Arg0), Local2))
        {
            Store (0x7FFFFFFF, Local3)
            Or (Local3, 0x80000000, Local3)
            And (ShiftRight (Local3, Arg4), ShiftRight (Local3, Subtract (0x20, Arg5)), Local4)
            Return (Local4)
        }

        Add (ShiftLeft (Arg0, 0x14), Local0, Local0)
        Add (ShiftLeft (Arg1, 0x0F), Local0, Local0)
        Add (ShiftLeft (Arg2, 0x0C), Local0, Local0)
        Return (M013 (Local0, Arg3, Arg4, Arg5))
    }

    Method (M018, 7, Serialized)
    {
        Store (M083, Local0)
        ShiftRight (M083, 0x14, Local1)
        And (Local1, 0x0F00, Local2)
        Add (Local2, 0x0100, Local2)
        If (LLess (Add (Local1, Arg0), Local2))
        {
            Add (ShiftLeft (Arg0, 0x14), Local0, Local0)
            Add (ShiftLeft (Arg1, 0x0F), Local0, Local0)
            Add (ShiftLeft (Arg2, 0x0C), Local0, Local0)
            If (LNotEqual (M013 (Local0, Zero, Zero, 0x20), Ones))
            {
                M014 (Local0, Arg3, Arg4, Arg5, Arg6)
            }
        }
    }

    Method (M265, 3, Serialized)
    {
        Store (Zero, Local0)
        Store (M017 (Arg0, Arg1, Arg2, 0x34, Zero, 0x08), Local1)
        While (LNotEqual (Local1, Zero))
        {
            Store (M017 (Arg0, Arg1, Arg2, Local1, Zero, 0x08), Local2)
            If (LOr (LEqual (Local2, Zero), LEqual (Local2, 0xFF)))
            {
                Break
            }

            If (LEqual (Local2, 0x10))
            {
                Store (M017 (Arg0, Arg1, Arg2, Add (Local1, 0x0C), 0x12, One), Local3)
                Store (M017 (Arg0, Arg1, Arg2, Add (Local1, 0x10), 0x08, One), Local4)
                If (LAnd (LEqual (Local3, One), LEqual (Local4, One)))
                {
                    Store (One, Local0)
                }

                Break
            }

            Store (M017 (Arg0, Arg1, Arg2, Add (Local1, One), Zero, 0x08), Local1)
        }

        Return (Local0)
    }

    Method (M033, 3, Serialized)
    {
        Store (Zero, Local0)
        Store (M017 (Arg0, Arg1, Arg2, 0x34, Zero, 0x08), Local1)
        While (LNotEqual (Local1, Zero))
        {
            Store (M017 (Arg0, Arg1, Arg2, Local1, Zero, 0x08), Local2)
            If (LOr (LEqual (Local2, Zero), LEqual (Local2, 0xFF)))
            {
                Break
            }

            If (LEqual (Local2, 0x10))
            {
                Store (M017 (Arg0, Arg1, Arg2, Add (Local1, 0x0C), 0x0A, 0x02), Local0)
                Break
            }

            Store (M017 (Arg0, Arg1, Arg2, Add (Local1, One), Zero, 0x08), Local1)
        }

        Return (Local0)
    }

    Method (M027, 3, Serialized)
    {
        Store (Zero, Local0)
        Store (M017 (Arg0, Arg1, Arg2, 0x34, Zero, 0x08), Local1)
        While (LNotEqual (Local1, Zero))
        {
            Store (M017 (Arg0, Arg1, Arg2, Local1, Zero, 0x08), Local2)
            If (LOr (LEqual (Local2, Zero), LEqual (Local2, 0xFF)))
            {
                Break
            }

            If (LEqual (Local2, 0x10))
            {
                Store (M017 (Arg0, Arg1, Arg2, Add (Local1, 0x10), Zero, 0x02), Local0)
                Break
            }

            Store (M017 (Arg0, Arg1, Arg2, Add (Local1, One), Zero, 0x08), Local1)
        }

        Return (Local0)
    }

    Method (M028, 4, Serialized)
    {
        Store (M017 (Arg0, Arg1, Arg2, 0x34, Zero, 0x08), Local1)
        While (LAnd (LNotEqual (Local1, Zero), LLess (Local1, 0xFF)))
        {
            Store (M017 (Arg0, Arg1, Arg2, Local1, Zero, 0x08), Local2)
            If (LOr (LEqual (Local2, Zero), LEqual (Local2, 0xFF)))
            {
                Break
            }

            If (LEqual (Local2, 0x10))
            {
                M018 (Arg0, Arg1, Arg2, Add (Local1, 0x10), Zero, 0x02, Arg3)
                Break
            }

            Store (M017 (Arg0, Arg1, Arg2, Add (Local1, One), Zero, 0x08), Local1)
        }
    }

    Method (M034, 1, Serialized)
    {
        Return (M011 (Add (M084, 0x0700), Arg0, Zero, 0x08))
    }

    Method (M015, 1, Serialized)
    {
        Return (M011 (Add (M084, 0x0400), Arg0, Zero, 0x08))
    }

    Method (M016, 2, Serialized)
    {
        M012 (Add (M084, 0x0400), Arg0, Zero, 0x08, Arg1)
    }

    Method (M035, 1, Serialized)
    {
        Return (M011 (M084, Arg0, Zero, 0x08))
    }

    Method (M036, 2, Serialized)
    {
        M012 (M084, Arg0, Zero, 0x08, Arg1)
    }

    Method (M001, 2, Serialized)
    {
        Store (Zero, Local0)
        If (LEqual (Arg0, 0x15))
        {
            Store (One, Local0)
        }

        Return (Local0)
    }

    Method (M003, 3, Serialized)
    {
        ShiftLeft (Arg0, 0x05, Local0)
        Add (Local0, Arg1, Local1)
        ShiftLeft (Local1, 0x18, Local2)
        Add (Local2, Arg2, Local3)
        Return (Local3)
    }

    Method (M004, 1, Serialized)
    {
        OperationRegion (VARM, SystemIO, 0x0CD8, 0x08)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VAR1,   32
        }

        BankField (VARM, VAR1, Arg0, DWordAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            VAR2,   32
        }

        Store (VAR2, Local0)
        Return (Local0)
    }

    Method (M005, 2, Serialized)
    {
        OperationRegion (VARM, SystemIO, 0x0CD8, 0x08)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VAR1,   32
        }

        BankField (VARM, VAR1, Arg0, DWordAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            VAR2,   32
        }

        Store (Arg1, VAR2)
    }

    Method (M006, 3, Serialized)
    {
        And (M004 (Arg0), Arg1, Local0)
        Or (Local0, Arg2, Local1)
        M005 (Arg0, Local1)
    }

    Method (M002, 2, Serialized)
    {
        If (LEqual (Arg0, Zero))
        {
            If (LEqual (Arg1, Zero))
            {
                M006 (M003 (0x06, Zero, 0xC0), 0xFFFFEFFF, Zero)
                M006 (M003 (One, Zero, 0x65), 0xFFFFFEFE, Zero)
            }

            If (LEqual (Arg1, One))
            {
                M006 (M003 (0x06, Zero, 0xC0), 0xFFFFDFFF, Zero)
                M006 (M003 (One, Zero, 0x65), 0xFFFFFDFD, Zero)
            }

            If (LEqual (Arg1, 0x02))
            {
                M006 (M003 (0x06, Zero, 0xC0), 0xFFFFBFFF, Zero)
                M006 (M003 (One, Zero, 0x65), 0xFFFFFBFB, Zero)
            }

            If (LEqual (Arg1, 0x03))
            {
                M006 (M003 (0x06, Zero, 0xC0), 0xFFFF7FFF, Zero)
                M006 (M003 (One, Zero, 0x65), 0xFFFFF7F7, Zero)
            }

            Sleep (One)
        }

        If (LEqual (Arg0, One))
        {
            If (LEqual (Arg1, Zero))
            {
                M006 (M003 (0x06, Zero, 0xC0), 0xFFFFEFFF, 0x1000)
                M006 (M003 (One, Zero, 0x65), 0xFFFFFEFE, 0x0101)
            }

            If (LEqual (Arg1, One))
            {
                M006 (M003 (0x06, Zero, 0xC0), 0xFFFFDFFF, 0x2000)
                M006 (M003 (One, Zero, 0x65), 0xFFFFFDFD, 0x0202)
            }

            If (LEqual (Arg1, 0x02))
            {
                M006 (M003 (0x06, Zero, 0xC0), 0xFFFFBFFF, 0x4000)
                M006 (M003 (One, Zero, 0x65), 0xFFFFFBFB, 0x0404)
            }

            If (LEqual (Arg1, 0x03))
            {
                M006 (M003 (0x06, Zero, 0xC0), 0xFFFF7FFF, 0x8000)
                M006 (M003 (One, Zero, 0x65), 0xFFFFF7F7, 0x0808)
            }

            Sleep (One)
        }

        If (LEqual (Arg0, Zero))
        {
            M008 (Arg1)
            Store (M004 (M003 (0x03, Arg1, 0xA5)), Local0)
            And (Local0, 0xFF, Local0)
            Store (0x01F4, Local1)
            While (LAnd (LGreater (Local1, Zero), LNotEqual (Local0, 0x10)))
            {
                Store (M004 (M003 (0x03, Arg1, 0xA5)), Local0)
                And (Local0, 0xFF, Local0)
                Decrement (Local1)
                Sleep (One)
            }

            If (LNotEqual (Local0, 0x10))
            {
                M007 (Arg1)
            }
        }
    }

    Method (M008, 1, Serialized)
    {
        Store (M019 (Zero, 0x15, Arg0, 0x88), Local0)
        Or (And (Local0, 0xFFFFFFF0), 0x02, Local1)
        M020 (Zero, 0x15, Arg0, 0x88, Local1)
        M006 (M003 (0x03, Arg0, 0xA4), 0xFFFFFFFE, One)
        M006 (M003 (0x03, Arg0, 0xA2), 0xFFFFDFFF, 0x2000)
        M006 (M003 (0x03, Arg0, 0xC0), 0xFFFF7FFF, 0x8000)
        M006 (M003 (0x03, Arg0, 0xA4), 0xDFFFFFFF, 0x20000000)
        Sleep (One)
    }

    Method (M007, 1, Serialized)
    {
        Store (M019 (Zero, 0x15, Arg0, 0x88), Local0)
        Or (And (Local0, 0xFFFFFFF0), One, Local1)
        M020 (Zero, 0x15, Arg0, 0x88, Local1)
        M006 (M003 (0x03, Arg0, 0xA4), 0xFFFFFFFE, Zero)
        M006 (M003 (0x03, Arg0, 0xA2), 0xFFFFDFFF, 0x2000)
        Sleep (One)
    }

    Method (M111, 2, Serialized)
    {
        If (LNotEqual (Arg0, Zero))
        {
            Store (M110, Local0)
            If (Local0)
            {
                Add (Local0, 0x10, Local0)
                Store (Zero, Local1)
                Store (M013 (Add (Local0, Local1), Zero, Zero, 0x08), Local2)
                While (LAnd (LNotEqual (Local2, 0xFF), LNotEqual (Local2, Zero)))
                {
                    Store (M013 (Add (Local0, Local1), One, Zero, 0x08), Local3)
                    If (LAnd (LEqual (Local2, Arg0), LEqual (Local3, Arg1)))
                    {
                        Store (M013 (Add (Local0, Local1), 0x07, Zero, 0x08), Local3)
                        If (LNotEqual (Local3, Zero))
                        {
                            Store (M013 (Add (Local0, Local1), 0x02, Zero, 0x08), Local4)
                            If (LEqual (Local4, Zero))
                            {
                                Store (M013 (Add (Local0, Local1), 0x03, Zero, 0x10), Local5)
                                Store (M013 (Add (Local0, Local1), 0x03, 0x10, 0x08), Local6)
                                M010 (Local5, Local6)
                            }

                            If (LEqual (Local4, One))
                            {
                                Store (M013 (Add (Local0, Local1), 0x03, Zero, 0x10), Local5)
                                Store (M013 (Add (Local0, Local1), 0x03, 0x10, 0x08), Local6)
                                While (LNotEqual (M009 (Local5), Local6)){}
                            }

                            If (LEqual (Local4, 0x02))
                            {
                                Store (M013 (Add (Local0, Local1), 0x03, Zero, 0x20), Local5)
                                Sleep (Divide (Add (Local5, 0x03E7), 0x03E8, ))
                            }
                        }
                    }

                    Add (Local1, 0x08, Local1)
                    Store (M013 (Add (Local0, Local1), Zero, Zero, 0x08), Local2)
                }
            }
        }
    }

    Method (M228, 1, Serialized)
    {
        If (LGreater (Arg0, 0x03))
        {
            Store (M110, Local0)
            If (Local0)
            {
                Add (Local0, 0x10, Local0)
                Store (Zero, Local1)
                Store (M013 (Add (Local0, Local1), Zero, Zero, 0x08), Local2)
                While (LAnd (LNotEqual (Local2, 0xFF), LNotEqual (Local2, Zero)))
                {
                    Store (M013 (Add (Local0, Local1), 0x07, Zero, 0x08), Local3)
                    If (LEqual (Local3, Arg0))
                    {
                        Store (M013 (Add (Local0, Local1), 0x02, Zero, 0x08), Local4)
                        If (LEqual (Local4, Zero))
                        {
                            Store (M013 (Add (Local0, Local1), 0x03, Zero, 0x10), Local5)
                            Store (M013 (Add (Local0, Local1), 0x03, 0x10, 0x08), Local6)
                            M010 (Local5, Local6)
                        }

                        If (LEqual (Local4, One))
                        {
                            Store (M013 (Add (Local0, Local1), 0x03, Zero, 0x10), Local5)
                            Store (M013 (Add (Local0, Local1), 0x03, 0x10, 0x08), Local6)
                            While (LNotEqual (M009 (Local5), Local6)){}
                        }

                        If (LEqual (Local4, 0x02))
                        {
                            Store (M013 (Add (Local0, Local1), 0x03, Zero, 0x20), Local5)
                            Sleep (Divide (Add (Local5, 0x03E7), 0x03E8, ))
                        }
                    }

                    Add (Local1, 0x08, Local1)
                    Store (M013 (Add (Local0, Local1), Zero, Zero, 0x08), Local2)
                }
            }
        }
    }

    Method (M219, 2, Serialized)
    {
        If (LNotEqual (Arg0, Zero))
        {
            Store (M221, Local0)
            If (And (Local0, 0x02))
            {
                Store (M220, Local0)
                If (Local0)
                {
                    Add (Local0, 0x10, Local0)
                    Store (Zero, Local1)
                    Store (One, Local2)
                    While (LNotEqual (Local2, 0xFF))
                    {
                        Store (M013 (Add (Local0, Local1), Zero, Zero, 0x08), Local2)
                        Store (M013 (Add (Local0, Local1), One, Zero, 0x08), Local3)
                        Store (M013 (Add (Local0, Local1), 0x04, Zero, 0x08), Local4)
                        Store (M013 (Add (Local0, Local1), 0x07, Zero, 0x08), Local5)
                        If (LEqual (Local4, Arg0))
                        {
                            If (LAnd (LLess (Local2, 0x0A), And (Local5, 0x80)))
                            {
                                If (LEqual (Arg1, Zero))
                                {
                                    If (LGreaterEqual (M085, 0x04))
                                    {
                                        M012 (Add (M084, 0x0E00), Zero, Multiply (Local2, 0x02), 0x02, Zero)
                                    }
                                    Else
                                    {
                                        M012 (Add (M084, 0x0E00), Divide (Local2, 0x02, ), Multiply (And (Local2, One), 0x04), 0x04, Zero)
                                    }
                                }
                                ElseIf (And (Local5, 0x04))
                                {
                                    If (LEqual (Arg1, One))
                                    {
                                        If (LGreaterEqual (M085, 0x04))
                                        {
                                            M012 (Add (M084, 0x0E00), Zero, Multiply (Local2, 0x02), 0x02, 0x03)
                                        }
                                        Else
                                        {
                                            M012 (Add (M084, 0x0E00), Divide (Local2, 0x02, ), Multiply (And (Local2, One), 0x04), 0x04, 0x0F)
                                        }
                                    }

                                    If (LEqual (Arg1, 0x02))
                                    {
                                        Store (M017 (Zero, M013 (Add (Local0, Local1), 0x05, Zero, 0x08), M013 (Add (Local0, Local1), 0x06, Zero, 0x08), 0x19, Zero, 0x08), Local6)
                                        If (LEqual (M265 (Local6, Zero, Zero), One))
                                        {
                                            If (LGreaterEqual (M085, 0x04))
                                            {
                                                M012 (Add (M084, 0x0E00), Zero, Multiply (Local2, 0x02), 0x02, One)
                                            }
                                            Else
                                            {
                                                M012 (Add (M084, 0x0E00), Divide (Local2, 0x02, ), Multiply (And (Local2, One), 0x04), 0x04, Local3)
                                            }
                                        }
                                    }
                                }
                                ElseIf (LGreaterEqual (M085, 0x04))
                                {
                                    M012 (Add (M084, 0x0E00), Zero, Multiply (Local2, 0x02), 0x02, 0x03)
                                }
                                Else
                                {
                                    M012 (Add (M084, 0x0E00), Divide (Local2, 0x02, ), Multiply (And (Local2, One), 0x04), 0x04, Local3)
                                }

                                Store (0xFF, Local2)
                            }
                        }

                        Add (Local1, 0x0C, Local1)
                    }
                }
            }
        }
    }

    Method (M112, 2, Serialized)
    {
        If (LNotEqual (Arg0, Zero))
        {
            Store (M109, Local0)
            If (Local0)
            {
                Add (Local0, 0x10, Local0)
                Store (Zero, Local1)
                Store (One, Local2)
                While (LAnd (LNotEqual (Local2, 0xFF), LNotEqual (Local2, Zero)))
                {
                    Store (M013 (Add (Local0, Local1), Zero, Zero, 0x08), Local2)
                    Store (M013 (Add (Local0, Local1), One, Zero, 0x08), Local3)
                    If (LAnd (LEqual (Local2, Arg0), LEqual (Local3, Arg1)))
                    {
                        If (LLess (Local3, 0x02))
                        {
                            Store (M013 (Add (Local0, Local1), 0x02, Zero, 0x08), Local4)
                            If (LEqual (Local4, Zero))
                            {
                                Store (M013 (Add (Local0, Local1), 0x03, Zero, 0x10), Local5)
                                Store (M013 (Add (Local0, Local1), 0x03, 0x10, 0x08), Local6)
                                M010 (Local5, Local6)
                            }
                        }

                        If (LEqual (Local3, 0x02))
                        {
                            Store (M013 (Add (Local0, Local1), 0x03, Zero, 0x20), Local5)
                            Sleep (Divide (Add (Local5, 0x03E7), 0x03E8, ))
                        }
                    }

                    Add (Local1, 0x08, Local1)
                }
            }
        }
    }

    Method (M275, 2, Serialized)
    {
        Store (Zero, Local7)
        If (LNotEqual (Arg0, Zero))
        {
            Store (M109, Local0)
            If (Local0)
            {
                Add (Local0, 0x10, Local0)
                Store (Zero, Local1)
                Store (One, Local2)
                While (LAnd (LNotEqual (Local2, 0xFF), LNotEqual (Local2, Zero)))
                {
                    Store (M013 (Add (Local0, Local1), Zero, Zero, 0x08), Local2)
                    Store (M013 (Add (Local0, Local1), One, Zero, 0x08), Local3)
                    If (LAnd (LEqual (Local2, Arg0), LEqual (Local3, Arg1)))
                    {
                        If (LLess (Local3, 0x02))
                        {
                            Store (M013 (Add (Local0, Local1), 0x02, Zero, 0x08), Local4)
                            If (LEqual (Local4, Zero))
                            {
                                Store (M013 (Add (Local0, Local1), 0x03, Zero, 0x10), Local5)
                                Store (M013 (Add (Local0, Local1), 0x03, 0x10, 0x08), Local6)
                                If (LEqual (M009 (Local5), Local6))
                                {
                                    Store (One, Local7)
                                }
                            }
                        }
                    }

                    Add (Local1, 0x08, Local1)
                }
            }
        }

        Return (Local7)
    }

    Method (M113, 1, Serialized)
    {
        If (LNotEqual (Arg0, Zero))
        {
            Store (M108, Local0)
            Store (One, Local7)
            If (Local0)
            {
                Add (Local0, 0x10, Local0)
                Store (Zero, Local1)
                Store (One, Local2)
                While (LAnd (LNotEqual (Local2, 0xFF), LNotEqual (Local2, Zero)))
                {
                    Store (M013 (Add (Local0, Local1), Zero, Zero, 0x08), Local2)
                    If (LEqual (Local2, Arg0))
                    {
                        Store (0xFF, Local2)
                        Store (M013 (Add (Local0, Local1), One, Zero, 0x08), Local3)
                        If (LEqual (Local3, Zero))
                        {
                            Store (M013 (Add (Local0, Local1), 0x02, Zero, 0x10), Local5)
                            Store (M013 (Add (Local0, Local1), 0x04, Zero, 0x08), Local6)
                            Store (LEqual (M009 (Local5), Local6), Local7)
                        }

                        If (LEqual (Local3, One))
                        {
                            Store (M013 (Add (Local0, Local1), 0x02, Zero, 0x10), Local5)
                            Store (M013 (Add (Local0, Local1), 0x04, Zero, 0x08), Local6)
                            Store (LEqual (M009 (Local5), Local6), Local7)
                            Store (M013 (Add (Local0, Local1), 0x05, Zero, 0x10), Local5)
                            Store (M013 (Add (Local0, Local1), 0x07, Zero, 0x08), Local6)
                            And (Local7, LEqual (M009 (Local5), Local6), Local7)
                        }

                        If (LEqual (Local3, 0x02))
                        {
                            Store (M013 (Add (Local0, Local1), 0x02, Zero, 0x10), Local5)
                            Store (M013 (Add (Local0, Local1), 0x04, Zero, 0x08), Local6)
                            Store (LEqual (M009 (Local5), Local6), Local7)
                            Store (M013 (Add (Local0, Local1), 0x05, Zero, 0x10), Local5)
                            Store (M013 (Add (Local0, Local1), 0x07, Zero, 0x08), Local6)
                            And (Local7, LEqual (M009 (Local5), Local6), Local7)
                            Store (M013 (Add (Local0, Local1), 0x08, Zero, 0x10), Local5)
                            Store (M013 (Add (Local0, Local1), 0x0A, Zero, 0x08), Local6)
                            And (Local7, LEqual (M009 (Local5), Local6), Local7)
                        }

                        If (LEqual (Local3, 0x03))
                        {
                            Store (M013 (Add (Local0, Local1), 0x02, Zero, 0x10), Local5)
                            Store (M013 (Add (Local0, Local1), 0x04, Zero, 0x08), Local6)
                            Store (LEqual (M009 (Local5), Local6), Local7)
                            Store (M013 (Add (Local0, Local1), 0x05, Zero, 0x10), Local5)
                            Store (M013 (Add (Local0, Local1), 0x07, Zero, 0x08), Local6)
                            Or (Local7, LEqual (M009 (Local5), Local6), Local7)
                        }

                        If (LEqual (Local3, 0x04))
                        {
                            Store (M013 (Add (Local0, Local1), 0x02, Zero, 0x10), Local5)
                            Store (M013 (Add (Local0, Local1), 0x04, Zero, 0x08), Local6)
                            Store (LEqual (M009 (Local5), Local6), Local7)
                            Store (M013 (Add (Local0, Local1), 0x05, Zero, 0x10), Local5)
                            Store (M013 (Add (Local0, Local1), 0x07, Zero, 0x08), Local6)
                            Or (Local7, LEqual (M009 (Local5), Local6), Local7)
                            Store (M013 (Add (Local0, Local1), 0x08, Zero, 0x10), Local5)
                            Store (M013 (Add (Local0, Local1), 0x0A, Zero, 0x08), Local6)
                            Or (Local7, LEqual (M009 (Local5), Local6), Local7)
                        }
                    }
                    Else
                    {
                        Add (Local1, 0x0B, Local1)
                    }
                }
            }
        }
        Else
        {
            Store (Zero, Local7)
        }

        If (Local7)
        {
            Store (One, Local7)
        }

        Return (Local7)
    }

    Method (M114, 4, Serialized)
    {
        Store (Zero, Local7)
        If (LNot (M001 (Arg0, Arg1)))
        {
            Name (M115, Buffer (0x05){})
            CreateWordField (M115, Zero, M116)
            CreateField (M115, 0x10, 0x03, M117)
            CreateField (M115, 0x13, 0x05, M118)
            CreateByteField (M115, 0x03, M119)
            CreateByteField (M115, 0x04, M120)
            Store (0x05, M116)
            Store (Zero, M119)
            Store (Arg0, M118)
            Store (Arg1, M117)
            If (LEqual (Arg2, Zero))
            {
                If (LNotEqual (Arg3, One))
                {
                    Store (Zero, M120)
                    \_SB.ALIB (0x06, M115)
                }
            }
            Else
            {
                If (LNotEqual (Arg3, One))
                {
                    Store (One, M120)
                    \_SB.ALIB (0x06, M115)
                }

                Store (M017 (Zero, Arg0, Arg1, 0x19, Zero, 0x08), Local0)
                If (LAnd (LNotEqual (Local0, Zero), LNotEqual (Local0, 0xFF)))
                {
                    Store (M019 (Local0, Zero, Zero, Zero), Local1)
                    Store (0x7FFFFFFF, Local2)
                    Or (Local2, 0x80000000, Local2)
                    If (LAnd (LNotEqual (Local1, Zero), LNotEqual (Local1, Local2)))
                    {
                        Store (One, Local7)
                    }
                }
            }
        }
        ElseIf (LEqual (Arg2, Zero))
        {
            M002 (One, Arg1)
        }
        Else
        {
            M002 (Zero, Arg1)
            Store (M017 (Zero, Arg0, Arg1, 0x19, Zero, 0x08), Local0)
            If (LAnd (LNotEqual (Local0, Zero), LNotEqual (Local0, 0xFF)))
            {
                Store (M019 (Local0, Zero, Zero, Zero), Local1)
                Store (0x7FFFFFFF, Local2)
                Or (Local2, 0x80000000, Local2)
                If (LAnd (LNotEqual (Local1, Zero), LNotEqual (Local1, Local2)))
                {
                    Store (One, Local7)
                }
            }
        }

        Return (Local7)
    }

    Method (M252, 3, Serialized)
    {
        If (LGreaterEqual (M085, 0x08))
        {
            Store (M251, Local0)
            If (Local0)
            {
                Add (Local0, 0x10, Local0)
                Store (Zero, Local1)
                Store (Zero, Local2)
                While (LNotEqual (Local2, 0xFF))
                {
                    Store (M011 (Add (Local0, Local1), Zero, Zero, 0x08), Local2)
                    Store (M011 (Add (Local0, Local1), One, Zero, 0x08), Local3)
                    Store (M011 (Add (Local0, Local1), 0x02, Zero, 0x08), Local4)
                    Store (M011 (Add (Local0, Local1), 0x03, Zero, 0x08), Local5)
                    If (LAnd (LEqual (Local2, Arg0), LEqual (Local3, Arg1)))
                    {
                        If (LEqual (Local4, Arg2))
                        {
                            Return (Local5)
                        }
                    }

                    Add (Local1, 0x04, Local1)
                }
            }
        }

        Return (Ones)
    }

    Name (M046, Zero)
    Name (M047, Ones)
    Method (M045, 0, Serialized)
    {
        Store (Zero, Local0)
        If (LEqual (M047, Ones))
        {
            Store (Zero, M047)
            Store (Zero, M046)
            If (CondRefOf (\_OSI))
            {
                If (\_OSI ("Windows 2012"))
                {
                    Store (One, M046)
                }

                If (\_OSI ("Windows 2013"))
                {
                    Store (One, M046)
                }

                If (\_OSI ("Windows 2015"))
                {
                    Store (One, M046)
                }

                If (\_OSI ("Windows 2016"))
                {
                    Store (One, M046)
                }

                If (\_OSI ("Windows 2017"))
                {
                    Store (One, M046)
                }
            }
        }

        If (LEqual (M046, One))
        {
            Store (One, Local0)
        }

        Return (Local0)
    }

    Method (M049, 2, Serialized)
    {
        Store (Zero, Local0)
        If (LNotEqual (Arg0, Zero))
        {
            Store (M011 (Arg0, Arg1, Zero, 0x08), Local0)
        }

        Return (Local0)
    }

    Mutex (M230, 0x00)
    Method (M232, 3, Serialized)
    {
        Store (Arg0, Local0)
        Store (Arg1, Local1)
        Store (Arg2, Local2)
        Acquire (M230, 0xFFFF)
        Store (Arg0, Local0)
        OperationRegion (VARM, SystemIO, M231, 0x02)
        Field (VARM, ByteAcc, NoLock, Preserve)
        {
            VAR1,   8, 
            VAR2,   8
        }

        Store (Local1, VAR2)
        Store (Local0, VAR1)
        Sleep (Local2)
        Release (M230)
    }

    Method (M043, 3, Serialized)
    {
        If (CondRefOf (MOEM))
        {
            Return (MOEM)
            Arg0
            Arg1
            Arg2
        }
        Else
        {
            Return (Zero)
        }
    }

    Method (MLIB, 2, Serialized)
    {
        Switch (ToInteger (Arg0))
        {
            Case (Zero)
            {
                Store (DerefOf (Index (Arg1, 0x02)), Local0)
                Switch (ToInteger (Local0))
                {
                    Case (0x03)
                    {
                        M228 (0x04)
                        M228 (0x05)
                    }
                    Case (0x04)
                    {
                        M228 (0x04)
                        M228 (0x06)
                    }
                    Case (0x03)
                    {
                        M228 (0x04)
                        M228 (0x07)
                    }

                }
            }

        }
    }

    Method (M248, 1, Serialized)
    {
        If (LEqual (M085, 0x08))
        {
            If (LEqual (Arg0, Zero))
            {
                Return (M017 (Zero, 0x07, One, 0x19, Zero, 0x08))
            }
            Else
            {
                Return (M017 (Zero, 0x08, One, 0x19, Zero, 0x08))
            }
        }
        ElseIf (LGreaterEqual (M085, 0x0B))
        {
            If (LEqual (Arg0, Zero))
            {
                Return (M017 (Zero, 0x07, One, 0x19, Zero, 0x08))
            }
            Else
            {
                Return (M017 (Zero, 0x08, Arg0, 0x19, Zero, 0x08))
            }
        }
        ElseIf (LGreaterEqual (M085, 0x09))
        {
            If (LEqual (Arg0, Zero))
            {
                Return (M017 (Zero, 0x08, One, 0x19, Zero, 0x08))
            }
            Else
            {
                Return (M017 (Zero, 0x08, 0x02, 0x19, Zero, 0x08))
            }
        }
        Else
        {
            Return (Zero)
        }
    }

    Method (MPTS, 1, NotSerialized)
    {
        Store (M049 (M128, 0x67), Local0)
        If (LEqual (And (Local0, 0x03), 0x03))
        {
            If (LGreaterEqual (M085, 0x08))
            {
                \_SB.PCI0.GP18.SATA.TPTS (Arg0)
            }
            Else
            {
                \_SB.PCI0.SATA.TPTS (Arg0)
            }
        }

        If (LNotEqual (M226, Zero))
        {
            \_SB.M263 (Arg0)
        }

        If (LNotEqual (M331, Zero))
        {
            If (LAnd (M049 (M331, 0x12), M049 (M331, 0x13)))
            {
                \_SB.IPTS (Arg0)
            }
        }
    }

    Method (MWAK, 1, NotSerialized)
    {
        Store (M049 (M128, 0x67), Local0)
        If (LEqual (And (Local0, 0x03), 0x03))
        {
            If (LGreaterEqual (M085, 0x08))
            {
                \_SB.PCI0.GP18.SATA.TWAK (Arg0)
            }
            Else
            {
                \_SB.PCI0.SATA.TWAK (Arg0)
            }
        }

        If (LNotEqual (M226, Zero))
        {
            \_SB.M264 (Arg0)
        }

        If (LNotEqual (M280, Zero))
        {
            \_SB.M284 (Arg0)
        }

        If (LNotEqual (M331, Zero))
        {
            If (LAnd (M049 (M331, 0x12), M049 (M331, 0x13)))
            {
                \_SB.IWAK (Arg0)
            }
        }
    }
}

