/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of DSDT.aml, Mon Feb  8 17:15:46 2021
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000B6E7 (46823)
 *     Revision         0x02
 *     Checksum         0x4D
 *     OEM ID           "ALASKA"
 *     OEM Table ID     "A M I "
 *     OEM Revision     0x01072009 (17244169)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "DSDT", 2, "ALASKA", "A M I ", 0x01072009)
{
    /*
     * iASL Warning: There were 4 external control methods found during
     * disassembly, but only 0 were resolved (4 unresolved). Additional
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
    External (APTS, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (AWAK, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (MPTS, MethodObj)    // Warning: Unknown method, guessing 4 arguments
    External (MWAK, MethodObj)    // Warning: Unknown method, guessing 1 arguments

    Name (IO1B, 0x0300)
    Name (IO1L, 0x10)
    Name (IO2B, 0x0230)
    Name (IO2L, 0x10)
    Name (IO3B, 0x0290)
    Name (IO3L, 0x10)
    Name (SP1O, 0x2E)
    Name (IOES, Zero)
    Name (PEBL, 0x04000000)
    Name (ACPM, One)
    Name (NBTS, 0x5000)
    Name (CPVD, One)
    Name (SMBB, 0x0B20)
    Name (SMBL, 0x20)
    Name (SMB0, 0x0B00)
    Name (SMBM, 0x10)
    Name (PMBS, 0x0800)
    Name (PMLN, 0xA0)
    Name (SMIO, 0xB2)
    Name (GPBS, Zero)
    Name (GPLN, Zero)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (HPTB, 0xFED00000)
    Name (WDTB, Zero)
    Name (WDTL, Zero)
    Name (GIOB, 0xFED81500)
    Name (IOMB, 0xFED80D00)
    Name (SSMB, 0xFED80200)
    Name (SPMR, 0xFED80300)
    Name (CAFS, 0xBB)
    Name (UTDB, Zero)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, Zero)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (PEBS, 0xF8000000)
    Name (PELN, 0x04000000)
    Name (SRIO, Zero)
    Name (CSMI, 0x61)
    Name (DSSP, Zero)
    Name (FHPP, One)
    Name (SMIA, 0xB2)
    Name (SMIB, 0xB3)
    Name (OFST, 0x35)
    Name (TRST, 0x02)
    Name (TCMF, Zero)
    Name (TMF1, Zero)
    Name (TMF2, Zero)
    Name (TMF3, Zero)
    Name (TTPF, One)
    Name (DTPT, Zero)
    Name (TTDP, Zero)
    Name (TPMB, 0xFFFFFFFF)
    Name (TPMC, 0xFFFFFFFF)
    Name (TPMM, 0xFED40000)
    Name (FTPM, 0xFFFFFFFF)
    Name (PPIM, 0xFFFF0000)
    Name (PPIL, 0xF0)
    Name (AMDT, Zero)
    Name (TPMF, Zero)
    Name (PPIV, Zero)
    Name (AMWV, 0x09)
    Name (SMIM, 0x80000009)
    Name (HIDK, "MSFT0001")
    Name (HIDM, "MSFT0003")
    Name (CIDK, 0x0303D041)
    Name (CIDM, 0x030FD041)
    Name (ATIS, 0xB0)
    Name (MBEC, Zero)
    Name (THPN, Zero)
    Name (ALST, Zero)
    Name (NBTP, 0xFEC30000)
    Name (SMIP, 0xB2)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        If (Arg0)
        {
            \_SB.DSPI ()
            \_SB.PCI0.NAPE ()
        }

        PXXX (Arg0)
    }

    Name (PICM, Zero)
    Method (PXXX, 1, NotSerialized)
    {
        If (Arg0)
        {
            Store (0xAA, DBG8)
        }
        Else
        {
            Store (0xAC, DBG8)
        }

        Store (Arg0, PICM)
    }

    Name (OSVR, Ones)
    Method (OSFL, 0, NotSerialized)
    {
        If (LNotEqual (OSVR, Ones))
        {
            Return (OSVR)
        }

        If (LEqual (PICM, Zero))
        {
            Store (0xAC, DBG8)
        }

        Store (0x03, OSVR)
        If (CondRefOf (\_OSI, Local0))
        {
            If (_OSI ("Windows 2001"))
            {
                Store (0x04, OSVR)
            }

            If (_OSI ("Windows 2001.1"))
            {
                Store (0x05, OSVR)
            }

            If (_OSI ("FreeBSD"))
            {
                Store (0x06, OSVR)
            }

            If (_OSI ("HP-UX"))
            {
                Store (0x07, OSVR)
            }

            If (_OSI ("OpenVMS"))
            {
                Store (0x08, OSVR)
            }

            If (_OSI ("Windows 2001 SP1"))
            {
                Store (0x09, OSVR)
            }

            If (_OSI ("Windows 2001 SP2"))
            {
                Store (0x0A, OSVR)
            }

            If (_OSI ("Windows 2001 SP3"))
            {
                Store (0x0B, OSVR)
            }

            If (_OSI ("Windows 2006"))
            {
                Store (0x0C, OSVR)
            }

            If (_OSI ("Windows 2006 SP1"))
            {
                Store (0x0D, OSVR)
            }

            If (_OSI ("Windows 2009"))
            {
                Store (0x0E, OSVR)
            }

            If (_OSI ("Windows 2012"))
            {
                Store (0x0F, OSVR)
            }

            If (_OSI ("Windows 2013"))
            {
                Store (0x10, OSVR)
            }
        }
        Else
        {
            If (MCTH (_OS, "Microsoft Windows NT"))
            {
                Store (Zero, OSVR)
            }

            If (MCTH (_OS, "Microsoft Windows"))
            {
                Store (One, OSVR)
            }

            If (MCTH (_OS, "Microsoft WindowsME: Millennium Edition"))
            {
                Store (0x02, OSVR)
            }

            If (MCTH (_OS, "Linux"))
            {
                Store (0x03, OSVR)
            }

            If (MCTH (_OS, "FreeBSD"))
            {
                Store (0x06, OSVR)
            }

            If (MCTH (_OS, "HP-UX"))
            {
                Store (0x07, OSVR)
            }

            If (MCTH (_OS, "OpenVMS"))
            {
                Store (0x08, OSVR)
            }
        }

        Return (OSVR)
    }

    Method (MCTH, 2, NotSerialized)
    {
        If (LLess (SizeOf (Arg0), SizeOf (Arg1)))
        {
            Return (Zero)
        }

        Add (SizeOf (Arg0), One, Local0)
        Name (BUF0, Buffer (Local0){})
        Name (BUF1, Buffer (Local0){})
        Store (Arg0, BUF0)
        Store (Arg1, BUF1)
        While (Local0)
        {
            Decrement (Local0)
            If (LNotEqual (DerefOf (Index (BUF0, Local0)), DerefOf (Index (BUF1, Local0))))
            {
                Return (Zero)
            }
        }

        Return (One)
    }

    Name (PRWP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (GPRW, 2, NotSerialized)
    {
        Store (Arg0, Index (PRWP, Zero))
        Store (ShiftLeft (SS1, One), Local0)
        Or (Local0, ShiftLeft (SS2, 0x02), Local0)
        Or (Local0, ShiftLeft (SS3, 0x03), Local0)
        Or (Local0, ShiftLeft (SS4, 0x04), Local0)
        If (And (ShiftLeft (One, Arg1), Local0))
        {
            Store (Arg1, Index (PRWP, One))
        }
        Else
        {
            ShiftRight (Local0, One, Local0)
            If (LOr (LEqual (OSFL (), One), LEqual (OSFL (), 0x02)))
            {
                FindSetLeftBit (Local0, Index (PRWP, One))
            }
            Else
            {
                FindSetRightBit (Local0, Index (PRWP, One))
            }
        }

        Return (PRWP)
    }

    Name (WAKP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (UPWP, 1, NotSerialized)
    {
        If (DerefOf (Index (WAKP, Zero)))
        {
            Store (Zero, Index (WAKP, One))
        }
        Else
        {
            Store (Arg0, Index (WAKP, One))
        }
    }

    OperationRegion (DEB0, SystemIO, 0x80, One)
    Field (DEB0, ByteAcc, NoLock, Preserve)
    {
        DBG8,   8
    }

    OperationRegion (DEB1, SystemIO, 0x90, 0x02)
    Field (DEB1, WordAcc, NoLock, Preserve)
    {
        DBG9,   16
    }

    OperationRegion (COMR, SystemIO, 0x03F8, 0x08)
    Field (COMR, ByteAcc, NoLock, Preserve)
    {
        SOUT,   8, 
        Offset (0x05), 
        SSAT,   8
    }

    Method (THRE, 0, NotSerialized)
    {
        And (SSAT, 0x20, Local0)
        While (LEqual (Local0, Zero))
        {
            And (SSAT, 0x20, Local0)
        }
    }

    Method (OUTX, 1, NotSerialized)
    {
        THRE ()
        Store (Arg0, SOUT)
    }

    Method (OUTC, 1, NotSerialized)
    {
        If (LEqual (Arg0, 0x0A))
        {
            OUTX (0x0D)
        }

        OUTX (Arg0)
    }

    Method (DBGN, 1, NotSerialized)
    {
        And (Arg0, 0x0F, Local0)
        If (LLess (Local0, 0x0A))
        {
            Add (Local0, 0x30, Local0)
        }
        Else
        {
            Add (Local0, 0x37, Local0)
        }

        OUTC (Local0)
    }

    Method (DBBT, 1, NotSerialized)
    {
        ShiftRight (Arg0, 0x04, Local0)
        DBGN (Local0)
        DBGN (Arg0)
    }

    Method (DBWD, 1, NotSerialized)
    {
        ShiftRight (Arg0, 0x08, Local0)
        DBBT (Local0)
        DBBT (Arg0)
    }

    Method (DBDW, 1, NotSerialized)
    {
        ShiftRight (Arg0, 0x10, Local0)
        DBWD (Local0)
        DBWD (Arg0)
    }

    Method (DBGQ, 1, NotSerialized)
    {
        ShiftRight (Arg0, 0x30, Local0)
        DBWD (Local0)
        ShiftRight (Arg0, 0x20, Local0)
        DBWD (Local0)
        ShiftRight (Arg0, 0x10, Local0)
        DBWD (Local0)
        DBWD (Arg0)
    }

    Name (DBGZ, Buffer (0x50){})
    Method (GETC, 2, NotSerialized)
    {
        CreateByteField (Arg0, Arg1, DBGC)
        Return (DBGC)
    }

    Method (MNIO, 1, NotSerialized)
    {
        If (LEqual (ObjectType (Arg0), One))
        {
            If (LGreater (Arg0, 0xFFFFFFFF))
            {
                DBGQ (Arg0)
            }
            ElseIf (LGreater (Arg0, 0xFFFF))
            {
                DBDW (Arg0)
            }
            ElseIf (LGreater (Arg0, 0xFF))
            {
                DBWD (Arg0)
            }
            Else
            {
                DBBT (Arg0)
            }

            Return (Zero)
        }

        If (LEqual (ObjectType (Arg0), 0x02))
        {
            Store (Arg0, DBGZ)
            Store (Zero, Local1)
            While (One)
            {
                Store (GETC (DBGZ, Local1), Local0)
                If (LEqual (Local0, Zero))
                {
                    Return (Zero)
                }

                OUTC (Local0)
                Increment (Local1)
            }

            Return (Zero)
        }

        If (LEqual (ObjectType (Arg0), 0x03))
        {
            Store (Zero, Local0)
            While (LLess (Local0, SizeOf (Arg0)))
            {
                Store (GETC (Arg0, Local0), Local1)
                If (LGreater (Local0, Zero))
                {
                    OUTC (0x20)
                }

                DBBT (Local1)
                Increment (Local0)
            }

            Return (Zero)
        }

        If (LEqual (ObjectType (Arg0), 0x04))
        {
            Store (Zero, Local0)
            While (LLess (Local0, SizeOf (Arg0)))
            {
                OUTC (0x20)
                OUTC (0x20)
                MNIO (DerefOf (Index (Arg0, Local0)))
                OUTC (0x0A)
                Increment (Local0)
            }

            Return (Zero)
        }

        Return (One)
    }

    Name (SS1, Zero)
    Name (SS2, Zero)
    Name (SS3, One)
    Name (SS4, One)
    Name (IOST, 0x0000)
    Name (TOPM, 0x00000000)
    Name (ROMS, 0xFFE00000)
    Name (VGAF, One)
    Name (XHOF, One)
    OperationRegion (DEB2, SystemIO, 0x80, 0x02)
    Field (DEB2, WordAcc, NoLock, Preserve)
    {
        P80H,   16
    }

    Name (OSTY, Ones)
    OperationRegion (ACMS, SystemIO, 0x72, 0x02)
    Field (ACMS, ByteAcc, NoLock, Preserve)
    {
        ACMX,   8, 
        ACMA,   8
    }

    IndexField (ACMX, ACMA, ByteAcc, NoLock, Preserve)
    {
        Offset (0xB9), 
        IMEN,   8
    }

    OperationRegion (PSMI, SystemIO, SMIO, 0x02)
    Field (PSMI, ByteAcc, NoLock, Preserve)
    {
        APMC,   8, 
        APMD,   8
    }

    OperationRegion (PMRG, SystemIO, 0x0CD6, 0x02)
    Field (PMRG, ByteAcc, NoLock, Preserve)
    {
        PMRI,   8, 
        PMRD,   8
    }

    IndexField (PMRI, PMRD, ByteAcc, NoLock, Preserve)
    {
            ,   6, 
        HPEN,   1, 
        Offset (0x60), 
        P1EB,   16, 
        Offset (0xF0), 
            ,   3, 
        RSTU,   1
    }

    OperationRegion (GSMM, SystemMemory, 0xFED80000, 0x1000)
    Field (GSMM, AnyAcc, NoLock, Preserve)
    {
        Offset (0x288), 
            ,   1, 
        CLPS,   1, 
        Offset (0x296), 
            ,   7, 
        TMSE,   1, 
        Offset (0x2B0), 
            ,   2, 
        SLPS,   2, 
        Offset (0x3BB), 
            ,   6, 
        PWDE,   1, 
        Offset (0x3E4), 
        BLNK,   2
    }

    OperationRegion (P1E0, SystemIO, P1EB, 0x04)
    Field (P1E0, ByteAcc, NoLock, Preserve)
    {
        Offset (0x01), 
            ,   6, 
        PEWS,   1, 
        WSTA,   1, 
        Offset (0x03), 
            ,   6, 
        PEWD,   1
    }

    OperationRegion (IOCC, SystemIO, PMBS, 0x80)
    Field (IOCC, ByteAcc, NoLock, Preserve)
    {
        Offset (0x01), 
            ,   2, 
        RTCS,   1
    }

    Method (SPTS, 1, NotSerialized)
    {
        Store (Arg0, P80H)
        If (LEqual (Arg0, 0x03))
        {
            Store (One, BLNK)
        }

        If (LOr (LEqual (Arg0, 0x04), LEqual (Arg0, 0x05)))
        {
            Store (Zero, BLNK)
        }

        If (LEqual (Arg0, 0x03))
        {
            Store (Zero, RSTU)
        }

        Store (One, CLPS)
        Store (One, SLPS)
        Store (PEWS, PEWS)
        If (LEqual (Arg0, 0x03))
        {
            Store (One, SLPS)
        }

        If (LEqual (Arg0, 0x04))
        {
            Store (One, SLPS)
            Store (One, RSTU)
        }

        If (LEqual (Arg0, 0x05))
        {
            Store (One, PWDE)
        }
    }

    Method (SWAK, 1, NotSerialized)
    {
        Store (0x03, BLNK)
        If (LEqual (Arg0, 0x03))
        {
            Store (One, RSTU)
        }

        Store (PEWS, PEWS)
        Store (Zero, PEWD)
        If (PICM)
        {
            \_SB.DSPI ()
        }

        If (TMSE)
        {
            Store (Zero, TMSE)
        }

        If (LEqual (Arg0, 0x03))
        {
            Notify (\_SB.PWRB, 0x02)
        }

        If (LEqual (Arg0, 0x04))
        {
            Notify (\_SB.PWRB, 0x02)
        }
    }

    Scope (_GPE)
    {
    }

    Scope (_SB)
    {
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {4,5,7,10,11,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Name (PD01, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR01, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x18
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x19
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x1A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x1B
            }
        })
        Name (PD02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x1C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x1D
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x1E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x1F
            }
        })
        Name (PD04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x24
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x25
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x26
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x27
            }
        })
        Name (PD05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x28
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x29
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2B
            }
        })
        Name (PD06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x2C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2D
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2F
            }
        })
        Name (PD07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x30
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x31
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x32
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x33
            }
        })
        Name (PD08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x34
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x35
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x36
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x37
            }
        })
        Name (PD09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x36
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x37
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x34
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x35
            }
        })
        Name (PD0A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR0A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x32
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x33
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x30
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x31
            }
        })
        Name (PD0B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR0B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x2E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2F
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2D
            }
        })
        Name (PD0C, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR0C, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x2A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2B
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x28
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x29
            }
        })
        Name (PD0D, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR0D, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x26
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x27
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x24
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x25
            }
        })
        Name (PD0E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR0E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x23
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x20
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x21
            }
        })
        Name (PD0F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR0F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x1E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x1F
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x1C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x1D
            }
        })
        Name (PD10, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR10, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x1A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x1B
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x18
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x19
            }
        })
        Name (PD11, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR11, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x19
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x1A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x1B
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x18
            }
        })
        Name (PD13, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR13, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x21
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x23
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x20
            }
        })
        Name (PD14, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKE, 
                Zero
            }
        })
        Name (AR14, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x25
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x26
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x27
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x24
            }
        })
        Name (PD30, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR30, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x29
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2B
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x28
            }
        })
        Name (PD31, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKE, 
                Zero
            }
        })
        Name (AR31, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x2D
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2F
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2C
            }
        })
        Name (PD00, Package (0x13)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR00, Package (0x13)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x28
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x29
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x2A
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x2B
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x2B
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x24
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                Zero, 
                0x25
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                Zero, 
                0x26
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                Zero, 
                0x27
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                Zero, 
                0x27
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                Zero, 
                0x20
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                Zero, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                Zero, 
                Zero, 
                0x23
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                One, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                0x02, 
                Zero, 
                0x23
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PG33, Package (0x00){})
        Name (AG33, Package (0x00){})
        Name (PG34, Package (0x00){})
        Name (AG34, Package (0x00){})
        Name (PG35, Package (0x00){})
        Name (AG35, Package (0x00){})
        Name (PG38, Package (0x00){})
        Name (AG38, Package (0x00){})
        Name (PD03, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR03, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x20
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x21
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x23
            }
        })
    }

    Scope (_SB)
    {
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03"))  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00)
                }

                Return (PD00)
            }

            Device (AMDN)
            {
                Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
                Name (_UID, 0xC8)  // _UID: Unique ID
                Name (_STA, 0x0F)  // _STA: Status
                Name (NPTR, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000000,         // Address Length
                        _Y00)
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    CreateDWordField (NPTR, \_SB.PCI0.AMDN._Y00._LEN, PL)  // _LEN: Length
                    CreateDWordField (NPTR, \_SB.PCI0.AMDN._Y00._BAS, PB)  // _BAS: Base Address
                    Store (PEBS, PB)
                    Store (PEBL, PL)
                    Return (NPTR)
                }
            }

            Method (NPTS, 1, NotSerialized)
            {
                APTS (Arg0)
            }

            Method (NWAK, 1, NotSerialized)
            {
                AWAK (Arg0)
            }

            Name (CPRB, One)
            Name (LVGA, 0x01)
            Name (STAV, 0x0F)
            Name (BRB, 0x0000)
            Name (BRL, 0x0100)
            Name (IOB, 0x1000)
            Name (IOL, 0xF000)
            Name (MBB, 0xE0000000)
            Name (MBL, 0x20000000)
            Name (MAB, 0x0000000000000000)
            Name (MAL, 0x0000000000000000)
            Name (MAM, 0x0000000000000000)
            Name (CRS1, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x007F,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0080,             // Length
                    ,, _Y01)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x03AF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x03B0,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x03E0,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0918,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y03, TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0x0FFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0300,             // Length
                    ,, _Y02, TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x02000000,         // Range Minimum
                    0xFFDFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFDE00000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x02000000,         // Range Minimum
                    0xFFDFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFDE00000,         // Length
                    ,, _Y06, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y07, AddressRangeMemory, TypeStatic)
            })
            Name (CRS2, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0080,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0080,             // Length
                    ,, _Y08)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y0A, TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y09, TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xFFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x80000000,         // Length
                    ,, _Y0C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xFFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x80000000,         // Length
                    ,, _Y0D, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y0E, AddressRangeMemory, TypeStatic)
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (STAV)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                If (CPRB)
                {
                    CreateWordField (CRS1, \_SB.PCI0._Y01._MIN, MIN0)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y01._MAX, MAX0)  // _MAX: Maximum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y01._LEN, LEN0)  // _LEN: Length
                    Store (BRB, MIN0)
                    Store (BRL, LEN0)
                    Store (LEN0, Local0)
                    Add (MIN0, Decrement (Local0), MAX0)
                    CreateWordField (CRS1, \_SB.PCI0._Y02._MIN, MIN1)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y02._MAX, MAX1)  // _MAX: Maximum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y02._LEN, LEN1)  // _LEN: Length
                    If (LEqual (IOB, 0x1000))
                    {
                        Store (IOL, Local0)
                        Add (IOB, Decrement (Local0), MAX1)
                        Subtract (MAX1, MIN1, Local0)
                        Add (Local0, One, LEN1)
                    }
                    Else
                    {
                        Store (IOB, MIN1)
                        Store (IOL, LEN1)
                        Store (LEN1, Local0)
                        Add (MIN1, Decrement (Local0), MAX1)
                    }

                    If (LOr (LEqual (LVGA, One), LEqual (LVGA, 0x55)))
                    {
                        If (VGAF)
                        {
                            CreateWordField (CRS1, \_SB.PCI0._Y03._MIN, IMN1)  // _MIN: Minimum Base Address
                            CreateWordField (CRS1, \_SB.PCI0._Y03._MAX, IMX1)  // _MAX: Maximum Base Address
                            CreateWordField (CRS1, \_SB.PCI0._Y03._LEN, ILN1)  // _LEN: Length
                            Store (0x03B0, IMN1)
                            Store (0x03DF, IMX1)
                            Store (0x30, ILN1)
                            CreateDWordField (CRS1, \_SB.PCI0._Y04._MIN, VMN1)  // _MIN: Minimum Base Address
                            CreateDWordField (CRS1, \_SB.PCI0._Y04._MAX, VMX1)  // _MAX: Maximum Base Address
                            CreateDWordField (CRS1, \_SB.PCI0._Y04._LEN, VLN1)  // _LEN: Length
                            Store (0x000A0000, VMN1)
                            Store (0x000BFFFF, VMX1)
                            Store (0x00020000, VLN1)
                            Store (Zero, VGAF)
                        }
                    }

                    CreateDWordField (CRS1, \_SB.PCI0._Y05._MIN, MIN3)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y05._MAX, MAX3)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y05._LEN, LEN3)  // _LEN: Length
                    CreateDWordField (CRS1, \_SB.PCI0._Y06._MIN, MIN7)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y06._MAX, MAX7)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y06._LEN, LEN7)  // _LEN: Length
                    Add (MBB, MBL, Local0)
                    If (LLess (Local0, NBTP))
                    {
                        Store (MBB, MIN3)
                        Store (MBL, LEN3)
                        Store (LEN3, Local0)
                        Add (MIN3, Decrement (Local0), MAX3)
                        Store (Zero, MIN7)
                        Store (Zero, MAX7)
                        Store (Zero, LEN7)
                    }
                    Else
                    {
                        Store (MBB, MIN3)
                        Store (Subtract (NBTP, MBB), LEN3)
                        Store (LEN3, Local0)
                        Add (MIN3, Decrement (Local0), MAX3)
                        Store (0xFEE00000, MIN7)
                        Store (Subtract (0xFEE00000, NBTP), Local0)
                        Store (Subtract (MBL, Local0), LEN7)
                        Store (Subtract (LEN7, LEN3), LEN7)
                        Store (LEN7, Local0)
                        Add (MIN7, Decrement (Local0), MAX7)
                    }

                    If (MAL)
                    {
                        CreateQWordField (CRS1, \_SB.PCI0._Y07._MIN, MN8)  // _MIN: Minimum Base Address
                        CreateQWordField (CRS1, \_SB.PCI0._Y07._MAX, MX8)  // _MAX: Maximum Base Address
                        CreateQWordField (CRS1, \_SB.PCI0._Y07._LEN, LN8)  // _LEN: Length
                        Store (MAB, MN8)
                        Store (MAL, LN8)
                        Store (MAM, MX8)
                    }

                    Return (CRS1)
                }
                Else
                {
                    CreateWordField (CRS2, \_SB.PCI0._Y08._MIN, MIN2)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y08._MAX, MAX2)  // _MAX: Maximum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y08._LEN, LEN2)  // _LEN: Length
                    Store (BRB, MIN2)
                    Store (BRL, LEN2)
                    Store (LEN2, Local1)
                    Add (MIN2, Decrement (Local1), MAX2)
                    CreateWordField (CRS2, \_SB.PCI0._Y09._MIN, MIN4)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y09._MAX, MAX4)  // _MAX: Maximum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y09._LEN, LEN4)  // _LEN: Length
                    Store (IOB, MIN4)
                    Store (IOL, LEN4)
                    Store (LEN4, Local1)
                    Add (MIN4, Decrement (Local1), MAX4)
                    If (LVGA)
                    {
                        CreateWordField (CRS2, \_SB.PCI0._Y0A._MIN, IMN2)  // _MIN: Minimum Base Address
                        CreateWordField (CRS2, \_SB.PCI0._Y0A._MAX, IMX2)  // _MAX: Maximum Base Address
                        CreateWordField (CRS2, \_SB.PCI0._Y0A._LEN, ILN2)  // _LEN: Length
                        Store (0x03B0, IMN2)
                        Store (0x03DF, IMX2)
                        Store (0x30, ILN2)
                        CreateDWordField (CRS2, \_SB.PCI0._Y0B._MIN, VMN2)  // _MIN: Minimum Base Address
                        CreateDWordField (CRS2, \_SB.PCI0._Y0B._MAX, VMX2)  // _MAX: Maximum Base Address
                        CreateDWordField (CRS2, \_SB.PCI0._Y0B._LEN, VLN2)  // _LEN: Length
                        Store (0x000A0000, VMN2)
                        Store (0x000BFFFF, VMX2)
                        Store (0x00020000, VLN2)
                    }

                    CreateDWordField (CRS2, \_SB.PCI0._Y0C._MIN, MIN5)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0C._MAX, MAX5)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0C._LEN, LEN5)  // _LEN: Length
                    Store (MBB, MIN5)
                    Store (Subtract (NBTP, MBB), LEN5)
                    Store (LEN5, Local1)
                    Add (MIN5, Decrement (Local1), MAX5)
                    CreateDWordField (CRS2, \_SB.PCI0._Y0D._MIN, MIN6)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0D._MAX, MAX6)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0D._LEN, LEN6)  // _LEN: Length
                    Add (NBTP, NBTS, MIN6)
                    Store (Subtract (MBL, NBTS), LEN6)
                    Store (Subtract (LEN6, LEN5), LEN6)
                    Store (LEN6, Local0)
                    Add (MIN6, Decrement (Local0), MAX6)
                    If (MAL)
                    {
                        CreateQWordField (CRS2, \_SB.PCI0._Y0E._MIN, MN9)  // _MIN: Minimum Base Address
                        CreateQWordField (CRS2, \_SB.PCI0._Y0E._MAX, MX9)  // _MAX: Maximum Base Address
                        CreateQWordField (CRS2, \_SB.PCI0._Y0E._LEN, LN9)  // _LEN: Length
                        Store (MAB, MN9)
                        Store (MAL, LN9)
                        Store (MAM, MX9)
                    }

                    Return (CRS2)
                }
            }

            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Name (SUPP, Zero)
                Name (CTRL, Zero)
                CreateDWordField (Arg3, Zero, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                If (LEqual (Arg0, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                {
                    Store (CDW2, SUPP)
                    Store (CDW3, CTRL)
                    If (LNotEqual (And (SUPP, 0x16), 0x16))
                    {
                        And (CTRL, 0x1E, CTRL)
                    }

                    If (LNot (PEHP))
                    {
                        And (CTRL, 0x1E, CTRL)
                    }

                    If (LNot (SHPC))
                    {
                        And (CTRL, 0x1D, CTRL)
                    }

                    If (LNot (PEPM))
                    {
                        And (CTRL, 0x1B, CTRL)
                    }

                    If (LNot (PEER))
                    {
                        And (CTRL, 0x15, CTRL)
                    }

                    If (LNot (PECS))
                    {
                        And (CTRL, 0x0F, CTRL)
                    }

                    If (LNot (SRIO))
                    {
                        And (CTRL, 0x1A, CTRL)
                    }

                    If (LNotEqual (Arg1, One))
                    {
                        Or (CDW1, 0x08, CDW1)
                    }

                    If (LNotEqual (CDW3, CTRL))
                    {
                        Or (CDW1, 0x10, CDW1)
                    }

                    Store (CTRL, CDW3)
                    Return (Arg3)
                }
                Else
                {
                    Or (CDW1, 0x04, CDW1)
                    Return (Arg3)
                }
            }

            OperationRegion (NAPC, PCI_Config, 0xB8, 0x08)
            Field (NAPC, DWordAcc, NoLock, Preserve)
            {
                NAPX,   32, 
                NAPD,   32
            }

            Mutex (NAPM, 0x00)
            Method (NAPE, 0, NotSerialized)
            {
                Acquire (NAPM, 0xFFFF)
                Store (0x14600000, NAPX)
                Store (NAPD, Local0)
                And (Local0, 0xFFFFFFEF, Local0)
                Store (Local0, NAPD)
                Release (NAPM)
            }

            Method (GPTS, 1, NotSerialized)
            {
            }

            Method (GWAK, 1, NotSerialized)
            {
                If (PICM)
                {
                    NAPE ()
                }
            }

            Device (IOMA)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                Name (_UID, 0x15)  // _UID: Unique ID
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Memory32Fixed (ReadOnly,
                        0xFEB80000,         // Address Base
                        0x00080000,         // Address Length
                        )
                })
            }

            Device (D002)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }

            Device (GPP0)
            {
                Name (_ADR, 0x00010001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (MAL)
                    {
                        If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (One)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x02)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x03)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }

                                    }
                                }
                                Case (0x05)
                                {
                                    Return (One)
                                }
                                Default
                                {
                                    Return (Zero)
                                }

                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR01)
                    }

                    Return (PD01)
                }

                Device (D042)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }
            }

            Device (GPP1)
            {
                Name (_ADR, 0x00010002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (MAL)
                    {
                        If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (One)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x02)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x03)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }

                                    }
                                }
                                Case (0x05)
                                {
                                    Return (One)
                                }
                                Default
                                {
                                    Return (Zero)
                                }

                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR02)
                    }

                    Return (PD02)
                }

                Device (D005)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP3)
            {
                Name (_ADR, 0x00010004)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (MAL)
                    {
                        If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (One)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x02)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x03)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }

                                    }
                                }
                                Case (0x05)
                                {
                                    Return (One)
                                }
                                Default
                                {
                                    Return (Zero)
                                }

                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR04)
                    }

                    Return (PD04)
                }

                Device (D007)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP4)
            {
                Name (_ADR, 0x00010005)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (MAL)
                    {
                        If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (One)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x02)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x03)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }

                                    }
                                }
                                Case (0x05)
                                {
                                    Return (One)
                                }
                                Default
                                {
                                    Return (Zero)
                                }

                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR05)
                    }

                    Return (PD05)
                }

                Device (D009)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP5)
            {
                Name (_ADR, 0x00010006)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (MAL)
                    {
                        If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (One)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x02)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x03)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }

                                    }
                                }
                                Case (0x05)
                                {
                                    Return (One)
                                }
                                Default
                                {
                                    Return (Zero)
                                }

                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR06)
                    }

                    Return (PD06)
                }

                Device (D00B)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP6)
            {
                Name (_ADR, 0x00010007)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (MAL)
                    {
                        If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (One)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x02)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x03)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }

                                    }
                                }
                                Case (0x05)
                                {
                                    Return (One)
                                }
                                Default
                                {
                                    Return (Zero)
                                }

                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR07)
                    }

                    Return (PD07)
                }

                Device (D00D)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP7)
            {
                Name (_ADR, 0x00020001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (MAL)
                    {
                        If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (One)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x02)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x03)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }

                                    }
                                }
                                Case (0x05)
                                {
                                    Return (One)
                                }
                                Default
                                {
                                    Return (Zero)
                                }

                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR08)
                    }

                    Return (PD08)
                }

                Device (D00F)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP8)
            {
                Name (_ADR, 0x00030001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (MAL)
                    {
                        If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (One)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x02)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x03)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }

                                    }
                                }
                                Case (0x05)
                                {
                                    Return (One)
                                }
                                Default
                                {
                                    Return (Zero)
                                }

                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR09)
                    }

                    Return (PD09)
                }

                Device (X161)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                }
            }

            Device (GPP9)
            {
                Name (_ADR, 0x00030002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (MAL)
                    {
                        If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (One)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x02)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x03)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }

                                    }
                                }
                                Case (0x05)
                                {
                                    Return (One)
                                }
                                Default
                                {
                                    Return (Zero)
                                }

                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0A)
                    }

                    Return (PD0A)
                }

                Device (X162)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                }
            }

            Device (GPPA)
            {
                Name (_ADR, 0x00030003)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (MAL)
                    {
                        If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (One)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x02)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x03)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }

                                    }
                                }
                                Case (0x05)
                                {
                                    Return (One)
                                }
                                Default
                                {
                                    Return (Zero)
                                }

                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0B)
                    }

                    Return (PD0B)
                }

                Device (D013)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPPB)
            {
                Name (_ADR, 0x00030004)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (MAL)
                    {
                        If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (One)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x02)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x03)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }

                                    }
                                }
                                Case (0x05)
                                {
                                    Return (One)
                                }
                                Default
                                {
                                    Return (Zero)
                                }

                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0C)
                    }

                    Return (PD0C)
                }

                Device (D015)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPPC)
            {
                Name (_ADR, 0x00030005)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (MAL)
                    {
                        If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (One)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x02)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x03)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }

                                    }
                                }
                                Case (0x05)
                                {
                                    Return (One)
                                }
                                Default
                                {
                                    Return (Zero)
                                }

                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0D)
                    }

                    Return (PD0D)
                }

                Device (D017)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPPD)
            {
                Name (_ADR, 0x00030006)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (MAL)
                    {
                        If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (One)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x02)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x03)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }

                                    }
                                }
                                Case (0x05)
                                {
                                    Return (One)
                                }
                                Default
                                {
                                    Return (Zero)
                                }

                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0E)
                    }

                    Return (PD0E)
                }

                Device (D019)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPPE)
            {
                Name (_ADR, 0x00030007)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (MAL)
                    {
                        If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (One)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x02)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x03)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }

                                    }
                                }
                                Case (0x05)
                                {
                                    Return (One)
                                }
                                Default
                                {
                                    Return (Zero)
                                }

                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0F)
                    }

                    Return (PD0F)
                }

                Device (D01B)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPPF)
            {
                Name (_ADR, 0x00040001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (MAL)
                    {
                        If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (One)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x02)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x03)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }

                                    }
                                }
                                Case (0x05)
                                {
                                    Return (One)
                                }
                                Default
                                {
                                    Return (Zero)
                                }

                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR10)
                    }

                    Return (PD10)
                }

                Device (D01D)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GP10)
            {
                Name (_ADR, 0x00050001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (MAL)
                    {
                        If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (One)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x02)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x03)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }

                                    }
                                }
                                Case (0x05)
                                {
                                    Return (One)
                                }
                                Default
                                {
                                    Return (Zero)
                                }

                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR11)
                    }

                    Return (PD11)
                }

                Device (D01F)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GP11)
            {
                Name (_ADR, 0x00050002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (MAL)
                    {
                        If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (One)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x02)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x03)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }

                                    }
                                }
                                Case (0x05)
                                {
                                    Return (One)
                                }
                                Default
                                {
                                    Return (Zero)
                                }

                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }
            }

            Device (GP12)
            {
                Name (_ADR, 0x00070001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x19, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR13)
                    }

                    Return (PD13)
                }

                Device (D022)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }
            }

            Device (GP13)
            {
                Name (_ADR, 0x00080001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x19, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR14)
                    }

                    Return (PD14)
                }

                Device (AZAL)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                }

                Device (XHC0)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x19, 0x04))
                    }
                }

                Device (APSP)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (PSPB, 0xFD000000)
                    Name (_STA, 0x0F)  // _STA: Status
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y0F)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.PCI0.GP13.APSP._Y0F._BAS, PBAS)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.PCI0.GP13.APSP._Y0F._LEN, PLEN)  // _LEN: Length
                        Store (PSPB, PBAS)
                        Store (0x00100000, PLEN)
                        Return (CRS)
                    }
                }
            }

            Device (GP30)
            {
                Name (_ADR, 0x00080002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x19, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR30)
                    }

                    Return (PD30)
                }

                Device (SAT0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }
            }

            Device (GP31)
            {
                Name (_ADR, 0x00080003)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x19, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR31)
                    }

                    Return (PD31)
                }

                Device (SAT1)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }
            }

            Device (D02A)
            {
                Name (_ADR, 0x00140000)  // _ADR: Address
            }

            Device (SBRG)
            {
                Name (_ADR, 0x00140003)  // _ADR: Address
                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (DMAD)
                {
                    Name (_HID, EisaId ("PNP0200"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        DMA (Compatibility, BusMaster, Transfer8, )
                            {4}
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0087,             // Range Minimum
                            0x0087,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0089,             // Range Minimum
                            0x0089,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x008F,             // Range Minimum
                            0x008F,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x00,               // Alignment
                            0x20,               // Length
                            )
                    })
                }

                Device (TMR)
                {
                    Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x00,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (RTC0)
                {
                    Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (LEqual (HPEN, One))
                        {
                            Return (BUF0)
                        }

                        Return (BUF1)
                    }
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                OperationRegion (SMI0, SystemIO, SMIO, One)
                Field (SMI0, ByteAcc, NoLock, Preserve)
                {
                    SMIC,   8
                }

                Scope (\_SB)
                {
                    Scope (PCI0)
                    {
                        Device (S900)
                        {
                            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                            Name (_UID, 0x0700)  // _UID: Unique ID
                            Name (_STA, 0x0F)  // _STA: Status
                            Name (CRS, ResourceTemplate ()
                            {
                                IO (Decode16,
                                    0x0010,             // Range Minimum
                                    0x0010,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0x0022,             // Range Minimum
                                    0x0022,             // Range Maximum
                                    0x00,               // Alignment
                                    0x1E,               // Length
                                    )
                                IO (Decode16,
                                    0x0063,             // Range Minimum
                                    0x0063,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0065,             // Range Minimum
                                    0x0065,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0067,             // Range Minimum
                                    0x0067,             // Range Maximum
                                    0x00,               // Alignment
                                    0x09,               // Length
                                    )
                                IO (Decode16,
                                    0x0072,             // Range Minimum
                                    0x0072,             // Range Maximum
                                    0x00,               // Alignment
                                    0x0E,               // Length
                                    )
                                IO (Decode16,
                                    0x0080,             // Range Minimum
                                    0x0080,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0084,             // Range Minimum
                                    0x0084,             // Range Maximum
                                    0x00,               // Alignment
                                    0x03,               // Length
                                    )
                                IO (Decode16,
                                    0x0088,             // Range Minimum
                                    0x0088,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x008C,             // Range Minimum
                                    0x008C,             // Range Maximum
                                    0x00,               // Alignment
                                    0x03,               // Length
                                    )
                                IO (Decode16,
                                    0x0090,             // Range Minimum
                                    0x0090,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0x00A2,             // Range Minimum
                                    0x00A2,             // Range Maximum
                                    0x00,               // Alignment
                                    0x1E,               // Length
                                    )
                                IO (Decode16,
                                    0x00B1,             // Range Minimum
                                    0x00B1,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x00E0,             // Range Minimum
                                    0x00E0,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0x04D0,             // Range Minimum
                                    0x04D0,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x040B,             // Range Minimum
                                    0x040B,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x04D6,             // Range Minimum
                                    0x04D6,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0C00,             // Range Minimum
                                    0x0C00,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0C14,             // Range Minimum
                                    0x0C14,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0C50,             // Range Minimum
                                    0x0C50,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0C52,             // Range Minimum
                                    0x0C52,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0C6C,             // Range Minimum
                                    0x0C6C,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0C6F,             // Range Minimum
                                    0x0C6F,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0CD0,             // Range Minimum
                                    0x0CD0,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0CD2,             // Range Minimum
                                    0x0CD2,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0CD4,             // Range Minimum
                                    0x0CD4,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0CD6,             // Range Minimum
                                    0x0CD6,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0CD8,             // Range Minimum
                                    0x0CD8,             // Range Maximum
                                    0x00,               // Alignment
                                    0x08,               // Length
                                    )
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y10)
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y12)
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y11)
                                IO (Decode16,
                                    0x0900,             // Range Minimum
                                    0x0900,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0x0910,             // Range Minimum
                                    0x0910,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0x0060,             // Range Minimum
                                    0x0060,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    )
                                IO (Decode16,
                                    0x0064,             // Range Minimum
                                    0x0064,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y13)
                                Memory32Fixed (ReadWrite,
                                    0xFEC01000,         // Address Base
                                    0x00001000,         // Address Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0xFEDC0000,         // Address Base
                                    0x00001000,         // Address Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0xFEE00000,         // Address Base
                                    0x00001000,         // Address Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0xFED80000,         // Address Base
                                    0x00010000,         // Address Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y14)
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y15)
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y16)
                            })
                            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                            {
                                CreateWordField (CRS, \_SB.PCI0.S900._Y10._MIN, PBB)  // _MIN: Minimum Base Address
                                CreateWordField (CRS, \_SB.PCI0.S900._Y10._MAX, PBH)  // _MAX: Maximum Base Address
                                CreateByteField (CRS, \_SB.PCI0.S900._Y10._LEN, PML)  // _LEN: Length
                                Store (PMBS, PBB)
                                Store (PMBS, PBH)
                                Store (PMLN, PML)
                                If (SMBB)
                                {
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y11._MIN, SMB1)  // _MIN: Minimum Base Address
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y11._MAX, SMH1)  // _MAX: Maximum Base Address
                                    CreateByteField (CRS, \_SB.PCI0.S900._Y11._LEN, SML1)  // _LEN: Length
                                    Store (SMBB, SMB1)
                                    Store (SMBB, SMH1)
                                    Store (SMBL, SML1)
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y12._MIN, SMBZ)  // _MIN: Minimum Base Address
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y12._MAX, SMH0)  // _MAX: Maximum Base Address
                                    CreateByteField (CRS, \_SB.PCI0.S900._Y12._LEN, SML0)  // _LEN: Length
                                    Store (SMB0, SMBZ)
                                    Store (SMB0, SMH0)
                                    Store (SMBM, SML0)
                                }

                                If (APCB)
                                {
                                    CreateDWordField (CRS, \_SB.PCI0.S900._Y13._BAS, APB)  // _BAS: Base Address
                                    CreateDWordField (CRS, \_SB.PCI0.S900._Y13._LEN, APL)  // _LEN: Length
                                    Store (APCB, APB)
                                    Store (APCL, APL)
                                }

                                CreateDWordField (CRS, \_SB.PCI0.S900._Y14._BAS, SPIB)  // _BAS: Base Address
                                CreateDWordField (CRS, \_SB.PCI0.S900._Y14._LEN, SPIL)  // _LEN: Length
                                Store (0xFEC10000, SPIB)
                                Store (0x1000, SPIL)
                                If (WDTB)
                                {
                                    CreateDWordField (CRS, \_SB.PCI0.S900._Y15._BAS, WDTB)  // _BAS: Base Address
                                    CreateDWordField (CRS, \_SB.PCI0.S900._Y15._LEN, WDTL)  // _LEN: Length
                                    Store (\WDTB, WDTB)
                                    Store (\WDTL, WDTL)
                                }

                                CreateDWordField (CRS, \_SB.PCI0.S900._Y16._BAS, ROMB)  // _BAS: Base Address
                                CreateDWordField (CRS, \_SB.PCI0.S900._Y16._LEN, ROML)  // _LEN: Length
                                Store (0xFF000000, ROMB)
                                Store (0x01000000, ROML)
                                Return (CRS)
                            }
                        }
                    }
                }

                Scope (\_SB)
                {
                    Scope (PCI0)
                    {
                        Scope (SBRG)
                        {
                            Method (RRIO, 4, NotSerialized)
                            {
                                Store ("RRIO", Debug)
                            }

                            Method (RDMA, 3, NotSerialized)
                            {
                                Store ("rDMA", Debug)
                            }
                        }
                    }
                }

                Device (SIO1)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y17)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y18)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y19)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y1A)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (LAnd (LLess (SP1O, 0x03F0), LGreater (SP1O, 0xF0)))
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y17._MIN, GPI0)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y17._MAX, GPI1)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIO1._Y17._LEN, GPIL)  // _LEN: Length
                            Store (SP1O, GPI0)
                            Store (SP1O, GPI1)
                            Store (0x02, GPIL)
                        }

                        If (IO1B)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y18._MIN, GP10)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y18._MAX, GP11)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIO1._Y18._LEN, GPL1)  // _LEN: Length
                            Store (IO1B, GP10)
                            Store (IO1B, GP11)
                            Store (IO1L, GPL1)
                        }

                        If (IO2B)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y19._MIN, GP20)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y19._MAX, GP21)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIO1._Y19._LEN, GPL2)  // _LEN: Length
                            Store (IO2B, GP20)
                            Store (IO2B, GP21)
                            Store (IO2L, GPL2)
                        }

                        If (IO3B)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y1A._MIN, GP30)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y1A._MAX, GP31)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIO1._Y1A._LEN, GPL3)  // _LEN: Length
                            Store (IO3B, GP30)
                            Store (IO3B, GP31)
                            Store (IO3L, GPL3)
                        }

                        Return (CRS)
                    }

                    Name (DCAT, Package (0x11)
                    {
                        One, 
                        0x02, 
                        0x03, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0x05, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0x06, 
                        0xFF, 
                        0x0A
                    })
                    Mutex (MUT0, 0x00)
                    Method (ENFG, 1, NotSerialized)
                    {
                        Acquire (MUT0, 0x0FFF)
                        Store (0x87, INDX)
                        Store (One, INDX)
                        Store (0x55, INDX)
                        If (LEqual (SP1O, 0x2E))
                        {
                            Store (0x55, INDX)
                        }
                        Else
                        {
                            Store (0xAA, INDX)
                        }

                        Store (Arg0, LDN)
                    }

                    Method (EXFG, 0, NotSerialized)
                    {
                        Store (0x02, INDX)
                        Store (0x02, DATA)
                        Release (MUT0)
                    }

                    Method (LPTM, 1, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        And (OPT0, 0x02, Local0)
                        EXFG ()
                        Return (Local0)
                    }

                    OperationRegion (IOID, SystemIO, SP1O, 0x02)
                    Field (IOID, ByteAcc, NoLock, Preserve)
                    {
                        INDX,   8, 
                        DATA,   8
                    }

                    IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x07), 
                        LDN,    8, 
                        Offset (0x21), 
                        SCF1,   8, 
                        SCF2,   8, 
                        SCF3,   8, 
                        SCF4,   8, 
                        SCF5,   8, 
                        SCF6,   8, 
                        Offset (0x29), 
                        CKCF,   8, 
                        Offset (0x2C), 
                        CR2C,   8, 
                        CR2D,   8, 
                        Offset (0x30), 
                        ACTR,   8, 
                        Offset (0x60), 
                        IOAH,   8, 
                        IOAL,   8, 
                        IOH2,   8, 
                        IOL2,   8, 
                        Offset (0x70), 
                        INTR,   4, 
                        INTT,   4, 
                        Offset (0x74), 
                        DMCH,   8, 
                        Offset (0xE0), 
                        RGE0,   8, 
                        RGE1,   8, 
                        RGE2,   8, 
                        RGE3,   8, 
                        RGE4,   8, 
                        RGE5,   8, 
                        RGE6,   8, 
                        RGE7,   8, 
                        RGE8,   8, 
                        RGE9,   8, 
                        Offset (0xF0), 
                        OPT0,   8, 
                        OPT1,   8, 
                        OPT2,   8, 
                        OPT3,   8, 
                        OPT4,   8, 
                        OPT5,   8, 
                        OPT6,   8, 
                        OPT7,   8, 
                        OPT8,   8, 
                        OPT9,   8
                    }

                    Method (CGLD, 1, NotSerialized)
                    {
                        Return (DerefOf (Index (DCAT, Arg0)))
                    }

                    Method (DSTA, 1, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        Store (ACTR, Local0)
                        EXFG ()
                        If (LEqual (Local0, 0xFF))
                        {
                            Return (Zero)
                        }

                        And (Local0, One, Local0)
                        If (LLess (Arg0, 0x10))
                        {
                            Or (IOST, ShiftLeft (Local0, Arg0), IOST)
                        }

                        If (Local0)
                        {
                            Return (0x0F)
                        }
                        ElseIf (LLess (Arg0, 0x10))
                        {
                            If (And (ShiftLeft (One, Arg0), IOST))
                            {
                                Return (0x0D)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (ESTA, 1, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        Store (ACTR, Local0)
                        EXFG ()
                        If (LEqual (Local0, 0xFF))
                        {
                            Return (Zero)
                        }

                        And (Local0, One, Local0)
                        If (LGreater (Arg0, 0x0F))
                        {
                            Or (IOES, ShiftLeft (Local0, And (Arg0, 0x0F)), IOES)
                        }

                        If (Local0)
                        {
                            Return (0x0F)
                        }
                        ElseIf (LGreater (Arg0, 0x0F))
                        {
                            If (And (ShiftLeft (One, And (Arg0, 0x0F)), IOES))
                            {
                                Return (0x0D)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (DCNT, 2, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        If (LAnd (LLess (DMCH, 0x04), LNotEqual (And (DMCH, 0x03, Local1), Zero)))
                        {
                            RDMA (Arg0, Arg1, Increment (Local1))
                        }

                        Store (Arg1, ACTR)
                        ShiftLeft (IOAH, 0x08, Local1)
                        Or (IOAL, Local1, Local1)
                        RRIO (Arg0, Arg1, Local1, 0x08)
                        EXFG ()
                    }

                    Name (CRS1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y1D)
                        IRQNoFlags (_Y1B)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y1C)
                            {}
                    })
                    CreateWordField (CRS1, \_SB.PCI0.SBRG.SIO1._Y1B._INT, IRQM)  // _INT: Interrupts
                    CreateByteField (CRS1, \_SB.PCI0.SBRG.SIO1._Y1C._DMA, DMAM)  // _DMA: Direct Memory Access
                    CreateWordField (CRS1, \_SB.PCI0.SBRG.SIO1._Y1D._MIN, IO11)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI0.SBRG.SIO1._Y1D._MAX, IO12)  // _MAX: Maximum Base Address
                    CreateByteField (CRS1, \_SB.PCI0.SBRG.SIO1._Y1D._LEN, LEN1)  // _LEN: Length
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y20)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y21)
                        IRQNoFlags (_Y1E)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y1F)
                            {}
                    })
                    CreateWordField (CRS2, \_SB.PCI0.SBRG.SIO1._Y1E._INT, IRQE)  // _INT: Interrupts
                    CreateByteField (CRS2, \_SB.PCI0.SBRG.SIO1._Y1F._DMA, DMAE)  // _DMA: Direct Memory Access
                    CreateWordField (CRS2, \_SB.PCI0.SBRG.SIO1._Y20._MIN, IO21)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0.SBRG.SIO1._Y20._MAX, IO22)  // _MAX: Maximum Base Address
                    CreateByteField (CRS2, \_SB.PCI0.SBRG.SIO1._Y20._LEN, LEN2)  // _LEN: Length
                    CreateWordField (CRS2, \_SB.PCI0.SBRG.SIO1._Y21._MIN, IO31)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0.SBRG.SIO1._Y21._MAX, IO32)  // _MAX: Maximum Base Address
                    CreateByteField (CRS2, \_SB.PCI0.SBRG.SIO1._Y21._LEN, LEN3)  // _LEN: Length
                    Method (DCRS, 2, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        ShiftLeft (IOAH, 0x08, IO11)
                        Or (IOAL, IO11, IO11)
                        Store (IO11, IO12)
                        Store (0x08, LEN1)
                        If (INTR)
                        {
                            ShiftLeft (One, INTR, IRQM)
                        }
                        Else
                        {
                            Store (Zero, IRQM)
                        }

                        If (LOr (LGreater (DMCH, 0x03), LEqual (Arg1, Zero)))
                        {
                            Store (Zero, DMAM)
                        }
                        Else
                        {
                            And (DMCH, 0x03, Local1)
                            ShiftLeft (One, Local1, DMAM)
                        }

                        EXFG ()
                        Return (CRS1)
                    }

                    Method (DCR2, 2, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        ShiftLeft (IOAH, 0x08, IO21)
                        Or (IOAL, IO21, IO21)
                        Store (IO21, IO22)
                        Store (0x08, LEN2)
                        ShiftLeft (IOH2, 0x08, IO31)
                        Or (IOL2, IO31, IO31)
                        Store (IO31, IO32)
                        Store (0x08, LEN3)
                        If (INTR)
                        {
                            ShiftLeft (One, INTR, IRQE)
                        }
                        Else
                        {
                            Store (Zero, IRQE)
                        }

                        If (LOr (LGreater (DMCH, 0x03), LEqual (Arg1, Zero)))
                        {
                            Store (Zero, DMAE)
                        }
                        Else
                        {
                            And (DMCH, 0x03, Local1)
                            ShiftLeft (One, Local1, DMAE)
                        }

                        EXFG ()
                        Return (CRS2)
                    }

                    Method (DSRS, 2, NotSerialized)
                    {
                        If (And (LEqual (Arg1, 0x02), LPTM (Arg1)))
                        {
                            DSR2 (Arg0, Arg1)
                        }
                        Else
                        {
                            CreateWordField (Arg0, 0x09, IRQM)
                            CreateByteField (Arg0, 0x0C, DMAM)
                            CreateWordField (Arg0, 0x02, IO11)
                            ENFG (CGLD (Arg1))
                            And (IO11, 0xFF, IOAL)
                            ShiftRight (IO11, 0x08, IOAH)
                            If (IRQM)
                            {
                                FindSetRightBit (IRQM, Local0)
                                Subtract (Local0, One, INTR)
                            }
                            Else
                            {
                                Store (Zero, INTR)
                            }

                            If (DMAM)
                            {
                                FindSetRightBit (DMAM, Local0)
                                Subtract (Local0, One, DMCH)
                            }
                            Else
                            {
                                Store (0x04, DMCH)
                            }

                            EXFG ()
                            DCNT (Arg1, One)
                        }
                    }

                    Method (DSR2, 2, NotSerialized)
                    {
                        CreateWordField (Arg0, 0x11, IRQE)
                        CreateByteField (Arg0, 0x14, DMAE)
                        CreateWordField (Arg0, 0x02, IO21)
                        CreateWordField (Arg0, 0x0A, IO31)
                        ENFG (CGLD (Arg1))
                        And (IO21, 0xFF, IOAL)
                        ShiftRight (IO21, 0x08, IOAH)
                        And (IO31, 0xFF, IOL2)
                        ShiftRight (IO31, 0x08, IOH2)
                        If (IRQE)
                        {
                            FindSetRightBit (IRQE, Local0)
                            Subtract (Local0, One, INTR)
                        }
                        Else
                        {
                            Store (Zero, INTR)
                        }

                        If (DMAE)
                        {
                            FindSetRightBit (DMAE, Local0)
                            Subtract (Local0, One, DMCH)
                        }
                        Else
                        {
                            Store (0x04, DMCH)
                        }

                        EXFG ()
                        DCNT (Arg1, One)
                    }

                    Name (PMFG, Zero)
                    Method (SIOS, 1, NotSerialized)
                    {
                        Store ("SIOS", Debug)
                        If (LNotEqual (0x05, Arg0))
                        {
                            ENFG (0x04)
                            Store (0xFF, OPT1)
                            If (KBFG)
                            {
                                Or (OPT0, 0x08, OPT0)
                            }
                            Else
                            {
                                And (OPT0, 0xF7, OPT0)
                            }

                            If (MSFG)
                            {
                                Or (OPT0, 0x10, OPT0)
                            }
                            Else
                            {
                                And (OPT0, 0xEF, OPT0)
                            }

                            And (0xBF, OPT2, Local0)
                            Store (Local0, OPT2)
                            EXFG ()
                        }

                        ENFG (0x07)
                        Or (0x10, CR2C, Local0)
                        Store (Local0, CR2C)
                        EXFG ()
                    }

                    Method (SIOW, 1, NotSerialized)
                    {
                        Store ("SIOW", Debug)
                        ENFG (0x04)
                        Store (OPT1, PMFG)
                        Store (0xFF, OPT1)
                        And (OPT0, 0xE7, OPT0)
                        Or (0x40, OPT2, Local0)
                        Store (Local0, OPT2)
                        EXFG ()
                    }

                    Method (SIOH, 0, NotSerialized)
                    {
                    }
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303"))  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (LDN, 0x05)
                    Name (_CID, EisaId ("PNP030B"))  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (And (IOST, 0x0400))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x0060,             // Range Minimum
                                0x0060,             // Range Maximum
                                0x00,               // Alignment
                                0x01,               // Length
                                )
                            IO (Decode16,
                                0x0064,             // Range Minimum
                                0x0064,             // Range Maximum
                                0x00,               // Alignment
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        }
                        EndDependentFn ()
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        Store (Arg0, KBFG)
                    }

                    Scope (\)
                    {
                        Name (KBFG, One)
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x1D, 0x03))
                    }
                }

                Device (PS2M)
                {
                    Name (_HID, EisaId ("PNP0F03"))  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (LDN, 0x06)
                    Name (_CID, EisaId ("PNP0F13"))  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (And (IOST, 0x4000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (CRS1, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {12}
                    })
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {12}
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (And (IOST, 0x0400))
                        {
                            Return (CRS1)
                        }
                        Else
                        {
                            Return (CRS2)
                        }
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IRQNoFlags ()
                                {12}
                        }
                        EndDependentFn ()
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        Store (Arg0, MSFG)
                    }

                    Scope (\)
                    {
                        Name (MSFG, One)
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x1D, 0x03))
                    }
                }

                Device (HHMD)
                {
                    Name (_HID, EisaId ("PNP0C08"))  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (LDN, 0x04)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (Zero)
                    }
                }

                Device (UAR1)
                {
                    Name (_HID, EisaId ("PNP0501"))  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (LDN, One)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (^^SIO1.DSTA (Zero))
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        ^^SIO1.DCNT (Zero, Zero)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Return (^^SIO1.DCRS (Zero, Zero))
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        ^^SIO1.DSRS (Arg0, Zero)
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        EndDependentFn ()
                    })
                }
            }

            Device (SDIO)
            {
                Name (_ADR, 0x00140007)  // _ADR: Address
            }

            Device (GPP2)
            {
                Name (_ADR, 0x00010003)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (MAL)
                    {
                        If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (One)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x02)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Case (0x03)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x21                                           
                                            })
                                        }

                                    }
                                }
                                Case (0x05)
                                {
                                    Return (One)
                                }
                                Default
                                {
                                    Return (Zero)
                                }

                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR03)
                    }

                    Return (PD03)
                }

                Device (PT01)
                {
                    Name (_ADR, One)  // _ADR: Address
                }

                Device (PT02)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Device (PT20)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Device (PX11)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                            {
                                Return (GPRW (0x08, 0x04))
                            }
                        }
                    }

                    Device (PT21)
                    {
                        Name (_ADR, 0x00010000)  // _ADR: Address
                        Device (RLAN)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                            {
                                Return (GPRW (0x18, 0x04))
                            }
                        }
                    }

                    Device (PT22)
                    {
                        Name (_ADR, 0x00020000)  // _ADR: Address
                    }

                    Device (PT23)
                    {
                        Name (_ADR, 0x00030000)  // _ADR: Address
                    }

                    Device (PT24)
                    {
                        Name (_ADR, 0x00040000)  // _ADR: Address
                        Device (X4_0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                            {
                                Return (GPRW (0x08, 0x04))
                            }
                        }
                    }

                    Device (PT25)
                    {
                        Name (_ADR, 0x00050000)  // _ADR: Address
                    }

                    Device (PT26)
                    {
                        Name (_ADR, 0x00060000)  // _ADR: Address
                    }

                    Device (PT27)
                    {
                        Name (_ADR, 0x00070000)  // _ADR: Address
                    }
                }

                Device (PTXH)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x08, 0x04))
                    }

                    Device (RHUB)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        OperationRegion (PDID, PCI_Config, Zero, 0x04)
                        Field (PDID, AnyAcc, NoLock, Preserve)
                        {
                            Offset (0x02), 
                            XDID,   16
                        }

                        Name (PT4, Package (0x16)
                        {
                            One, 
                            0x02, 
                            0x03, 
                            0x04, 
                            0x05, 
                            0x06, 
                            0x07, 
                            0x08, 
                            One, 
                            0x02, 
                            0x03, 
                            0x04, 
                            0x05, 
                            0x06, 
                            0x07, 
                            0x08, 
                            0x09, 
                            0x0A, 
                            0x0B, 
                            0x0C, 
                            0x0D, 
                            0x0E
                        })
                        Name (PT2, Package (0x16)
                        {
                            One, 
                            0x02, 
                            0x03, 
                            0x04, 
                            One, 
                            0x02, 
                            0x03, 
                            0x04, 
                            0x05, 
                            0x06, 
                            0x07, 
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
                            0x12
                        })
                        Name (PT1, Package (0x16)
                        {
                            One, 
                            0x02, 
                            0x03, 
                            One, 
                            0x02, 
                            0x03, 
                            0x04, 
                            0x05, 
                            0x06, 
                            0x07, 
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
                            0x13
                        })
                        Name (USBV, Package (0x16)
                        {
                            One, 
                            Zero, 
                            One, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            One, 
                            One, 
                            One, 
                            One, 
                            One, 
                            One, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Name (USBP, Package (0x16){})
                        Method (UPGP, 0, Serialized)
                        {
                            Store (0x16, Local0)
                            If (LOr (LEqual (XDID, 0x43B9), LEqual (XDID, 0x43D0)))
                            {
                                While (Local0)
                                {
                                    Decrement (Local0)
                                    Store (DerefOf (Index (PT4, Local0)), Index (USBP, Local0))
                                }
                            }
                            ElseIf (LOr (LEqual (XDID, 0x43BB), LEqual (XDID, 0x43D5)))
                            {
                                While (Local0)
                                {
                                    Decrement (Local0)
                                    Store (DerefOf (Index (PT2, Local0)), Index (USBP, Local0))
                                }
                            }
                            ElseIf (LEqual (XDID, 0x43BC))
                            {
                                While (Local0)
                                {
                                    Decrement (Local0)
                                    Store (DerefOf (Index (PT1, Local0)), Index (USBP, Local0))
                                }
                            }
                        }

                        Method (GPLD, 2, Serialized)
                        {
                            Name (PCKG, Package (0x01)
                            {
                                Buffer (0x14){}
                            })
                            CreateField (DerefOf (Index (PCKG, Zero)), Zero, 0x07, REV)
                            Store (0x02, REV)
                            CreateField (DerefOf (Index (PCKG, Zero)), 0x40, One, VISI)
                            Store (Arg0, VISI)
                            CreateField (DerefOf (Index (PCKG, Zero)), 0x57, 0x08, GPOS)
                            Store (Arg1, GPOS)
                            Return (PCKG)
                        }

                        Method (GUPC, 1, Serialized)
                        {
                            Name (PCKG, Package (0x04)
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Store (Arg0, Index (PCKG, Zero))
                            Return (PCKG)
                        }

                        Method (TUPC, 1, Serialized)
                        {
                            Name (PCKG, Package (0x04)
                            {
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            Store (Arg0, Index (PCKG, One))
                            Return (PCKG)
                        }

                        Device (POT3)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, 0x02)), DerefOf (Index (USBP, 0x02))))
                            }
                        }

                        Device (PO11)
                        {
                            Name (_ADR, 0x0B)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, 0x0A)), DerefOf (Index (USBP, 0x0A))))
                            }
                        }

                        Device (POT4)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, 0x03)), DerefOf (Index (USBP, 0x03))))
                            }
                        }

                        Device (PO12)
                        {
                            Name (_ADR, 0x0C)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, 0x0B)), DerefOf (Index (USBP, 0x0B))))
                            }
                        }

                        Device (POT5)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, 0x04)), DerefOf (Index (USBP, 0x04))))
                            }
                        }

                        Device (PO13)
                        {
                            Name (_ADR, 0x0D)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, 0x0C)), DerefOf (Index (USBP, 0x0C))))
                            }
                        }

                        Device (POT6)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, 0x05)), DerefOf (Index (USBP, 0x05))))
                            }
                        }

                        Device (PO14)
                        {
                            Name (_ADR, 0x0E)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, 0x0D)), DerefOf (Index (USBP, 0x0D))))
                            }
                        }

                        Device (POT1)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, Zero)), DerefOf (Index (USBP, Zero))))
                            }
                        }

                        Device (POT9)
                        {
                            Name (_ADR, 0x09)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, 0x08)), DerefOf (Index (USBP, 0x08))))
                            }
                        }

                        Device (POT2)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, One)), DerefOf (Index (USBP, One))))
                            }
                        }

                        Device (PO10)
                        {
                            Name (_ADR, 0x0A)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, 0x09)), DerefOf (Index (USBP, 0x09))))
                            }
                        }

                        Device (POT7)
                        {
                            Name (_ADR, 0x07)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, 0x06)), DerefOf (Index (USBP, 0x06))))
                            }
                        }

                        Device (PO15)
                        {
                            Name (_ADR, 0x0F)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, 0x0E)), DerefOf (Index (USBP, 0x0E))))
                            }
                        }

                        Device (POT8)
                        {
                            Name (_ADR, 0x08)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, 0x07)), DerefOf (Index (USBP, 0x07))))
                            }
                        }

                        Device (PO16)
                        {
                            Name (_ADR, 0x10)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, 0x0F)), DerefOf (Index (USBP, 0x0F))))
                            }
                        }

                        Device (PO17)
                        {
                            Name (_ADR, 0x11)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, 0x10)), DerefOf (Index (USBP, 0x10))))
                            }
                        }

                        Device (PO18)
                        {
                            Name (_ADR, 0x12)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, 0x11)), DerefOf (Index (USBP, 0x11))))
                            }
                        }

                        Device (PO19)
                        {
                            Name (_ADR, 0x13)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, 0x12)), DerefOf (Index (USBP, 0x12))))
                            }
                        }

                        Device (PO20)
                        {
                            Name (_ADR, 0x14)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, 0x13)), DerefOf (Index (USBP, 0x13))))
                            }
                        }

                        Device (PO21)
                        {
                            Name (_ADR, 0x15)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, 0x14)), DerefOf (Index (USBP, 0x14))))
                            }
                        }

                        Device (PO22)
                        {
                            Name (_ADR, 0x16)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (One))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                UPGP ()
                                Return (GPLD (DerefOf (Index (USBV, 0x15)), DerefOf (Index (USBP, 0x15))))
                            }
                        }
                    }
                }
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L08, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.GPP0, 0x02)
            Notify (\_SB.PCI0.GPP1, 0x02)
            Notify (\_SB.PCI0.GPP3, 0x02)
            Notify (\_SB.PCI0.GPP4, 0x02)
            Notify (\_SB.PCI0.GPP5, 0x02)
            Notify (\_SB.PCI0.GPP6, 0x02)
            Notify (\_SB.PCI0.GPP7, 0x02)
            Notify (\_SB.PCI0.GPP8, 0x02)
            Notify (\_SB.PCI0.GPP8.X161, 0x02)
            Notify (\_SB.PCI0.GPP9, 0x02)
            Notify (\_SB.PCI0.GPP9.X162, 0x02)
            Notify (\_SB.PCI0.GPPA, 0x02)
            Notify (\_SB.PCI0.GPPB, 0x02)
            Notify (\_SB.PCI0.GPPC, 0x02)
            Notify (\_SB.PCI0.GPPD, 0x02)
            Notify (\_SB.PCI0.GPPE, 0x02)
            Notify (\_SB.PCI0.GPPF, 0x02)
            Notify (\_SB.PCI0.GP10, 0x02)
            Notify (\_SB.PCI0.GP11, 0x02)
            Notify (\_SB.PCI0.GPP2, 0x02)
            Notify (\_SB.PCI0.GPP2.PT02.PT20.PX11, 0x02)
            Notify (\_SB.PCI0.GPP2.PT02.PT24.X4_0, 0x02)
            Notify (\_SB.PCI0.GPP2.PTXH, 0x02)
            Notify (\_SB.PWRB, 0x02)
        }

        Method (_L19, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.GP12, 0x02)
            Notify (\_SB.PCI0.GP13, 0x02)
            Notify (\_SB.PCI0.GP13.XHC0, 0x02)
            Notify (\_SB.PCI0.GP30, 0x02)
            Notify (\_SB.PCI0.GP31, 0x02)
            Notify (\_SB.PWRB, 0x02)
        }

        Method (_L18, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.GPP2.PT02.PT21.RLAN, 0x02)
            Notify (\_SB.PWRB, 0x02)
        }
    }

    Scope (_SB)
    {
        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
            Name (_UID, 0xAA)  // _UID: Unique ID
            Name (_STA, 0x0B)  // _STA: Status
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S3, Package (0x04)  // _S3_: S3 System State
    {
        0x03, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x04, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x05, 
        Zero, 
        Zero, 
        Zero
    })
    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (Arg0)
        {
            \_SB.TPM.TPTS (Arg0)
            SPTS (Arg0)
            MPTS (Arg0, \_SB.PCI0.SBRG.SIO1.SIOS (Arg0), \_SB.PCI0.GPTS (Arg0), \_SB.PCI0.NPTS (Arg0))
        }
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        ShiftLeft (Arg0, 0x04, DBG8)
        \_SB.PCI0.NWAK (Arg0)
        \_SB.PCI0.GWAK (Arg0)
        \_SB.PCI0.SBRG.SIO1.SIOW (Arg0)
        MWAK (Arg0)
        ShiftLeft (Arg0, 0x04, DBG8)
        SWAK (Arg0)
        Return (WAKP)
    }

    Scope (_SB)
    {
        OperationRegion (PIRQ, SystemIO, 0x0C00, 0x02)
        Field (PIRQ, ByteAcc, NoLock, Preserve)
        {
            PIDX,   8, 
            PDAT,   8
        }

        IndexField (PIDX, PDAT, ByteAcc, NoLock, Preserve)
        {
            PIRA,   8, 
            PIRB,   8, 
            PIRC,   8, 
            PIRD,   8, 
            PIRE,   8, 
            PIRF,   8, 
            PIRG,   8, 
            PIRH,   8, 
            Offset (0x0C), 
            SIRA,   8, 
            SIRB,   8, 
            SIRC,   8, 
            SIRD,   8, 
            PIRS,   8, 
            Offset (0x13), 
            HDAD,   8, 
            Offset (0x17), 
            SDCL,   8, 
            Offset (0x1A), 
            SDIO,   8, 
            Offset (0x30), 
            USB1,   8, 
            Offset (0x34), 
            USB3,   8, 
            Offset (0x41), 
            SATA,   8, 
            Offset (0x62), 
            GIOC,   8, 
            Offset (0x70), 
            I2C0,   8, 
            I2C1,   8, 
            I2C2,   8, 
            I2C3,   8, 
            URT0,   8, 
            URT1,   8, 
            Offset (0x80), 
            AIRA,   8, 
            AIRB,   8, 
            AIRC,   8, 
            AIRD,   8, 
            AIRE,   8, 
            AIRF,   8, 
            AIRG,   8, 
            AIRH,   8
        }

        OperationRegion (KBDD, SystemIO, 0x64, One)
        Field (KBDD, ByteAcc, NoLock, Preserve)
        {
            PD64,   8
        }

        Method (DSPI, 0, NotSerialized)
        {
            INTA (0x1F)
            INTB (0x1F)
            INTC (0x1F)
            INTD (0x1F)
            Store (PD64, Local1)
            Store (0x1F, PIRE)
            Store (0x1F, PIRF)
            Store (0x1F, PIRG)
            Store (0x1F, PIRH)
            Store (PD64, Local1)
            Store (0x10, AIRA)
            Store (0x11, AIRB)
            Store (0x12, AIRC)
            Store (0x13, AIRD)
            Store (0x14, AIRE)
            Store (0x15, AIRF)
            Store (0x16, AIRG)
            Store (0x17, AIRH)
        }

        Method (INTA, 1, NotSerialized)
        {
            Store (Arg0, PIRA)
            Store (Arg0, HDAD)
        }

        Method (INTB, 1, NotSerialized)
        {
            Store (Arg0, PIRB)
        }

        Method (INTC, 1, NotSerialized)
        {
            Store (Arg0, PIRC)
            Store (Arg0, USB1)
            Store (Arg0, USB3)
        }

        Method (INTD, 1, NotSerialized)
        {
            Store (Arg0, PIRD)
            Store (Arg0, SATA)
        }

        Name (BUFA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {15}
        })
        Name (IPRA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRB, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRC, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRD, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRA)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSA)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTA (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRA, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                INTA (Local0)
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRB)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSB)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTB (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRB, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                INTB (Local0)
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRC)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSC)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTC (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRC, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                INTC (Local0)
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRD)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSD)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTD (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRD, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                INTD (Local0)
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRE)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSE)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Store (0x1F, PIRE)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRE, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (PIRE, Local0)
                Decrement (Local0)
                Store (Local0, PIRE)
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRF)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSF)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Store (0x1F, PIRF)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRF, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRF)
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRG)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSG)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Store (0x1F, PIRG)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRG, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRG)
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRH)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSH)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Store (0x1F, PIRH)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRH, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRH)
            }
        }
    }

    Device (HPET)
    {
        Name (_HID, EisaId ("PNP0103"))  // _HID: Hardware ID
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (LEqual (HPEN, One))
            {
                If (LGreaterEqual (OSVR, 0x0C))
                {
                    Return (0x0F)
                }

                Store (Zero, HPEN)
                Return (One)
            }

            Return (One)
        }

        Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
        {
            Name (BUF0, ResourceTemplate ()
            {
                IRQNoFlags ()
                    {0}
                IRQNoFlags ()
                    {8}
                Memory32Fixed (ReadOnly,
                    0xFED00000,         // Address Base
                    0x00000400,         // Address Length
                    )
            })
            Return (BUF0)
        }
    }

    Name (OSTB, Ones)
    Name (TPOS, Zero)
    Name (LINX, Zero)
    Name (OSSP, Zero)
    Method (SEQL, 2, Serialized)
    {
        Store (SizeOf (Arg0), Local0)
        Store (SizeOf (Arg1), Local1)
        If (LNotEqual (Local0, Local1))
        {
            Return (Zero)
        }

        Name (BUF0, Buffer (Local0){})
        Store (Arg0, BUF0)
        Name (BUF1, Buffer (Local0){})
        Store (Arg1, BUF1)
        Store (Zero, Local2)
        While (LLess (Local2, Local0))
        {
            Store (DerefOf (Index (BUF0, Local2)), Local3)
            Store (DerefOf (Index (BUF1, Local2)), Local4)
            If (LNotEqual (Local3, Local4))
            {
                Return (Zero)
            }

            Increment (Local2)
        }

        Return (One)
    }

    Method (OSTP, 0, NotSerialized)
    {
        If (LEqual (OSTB, Ones))
        {
            If (CondRefOf (\_OSI, Local0))
            {
                Store (Zero, OSTB)
                Store (Zero, TPOS)
                If (_OSI ("Windows 2001"))
                {
                    Store (0x08, OSTB)
                    Store (0x08, TPOS)
                }

                If (_OSI ("Windows 2001.1"))
                {
                    Store (0x20, OSTB)
                    Store (0x20, TPOS)
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    Store (0x10, OSTB)
                    Store (0x10, TPOS)
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    Store (0x11, OSTB)
                    Store (0x11, TPOS)
                }

                If (_OSI ("Windows 2001 SP3"))
                {
                    Store (0x12, OSTB)
                    Store (0x12, TPOS)
                }

                If (_OSI ("Windows 2006"))
                {
                    Store (0x40, OSTB)
                    Store (0x40, TPOS)
                }

                If (_OSI ("Windows 2006 SP1"))
                {
                    Store (0x41, OSTB)
                    Store (0x41, TPOS)
                    Store (One, OSSP)
                }

                If (_OSI ("Windows 2009"))
                {
                    Store (One, OSSP)
                    Store (0x50, OSTB)
                    Store (0x50, TPOS)
                }

                If (_OSI ("Windows 2012"))
                {
                    Store (One, OSSP)
                    Store (0x60, OSTB)
                    Store (0x60, TPOS)
                }

                If (_OSI ("Windows 2013"))
                {
                    Store (One, OSSP)
                    Store (0x61, OSTB)
                    Store (0x61, TPOS)
                }

                If (_OSI ("Windows 2015"))
                {
                    Store (One, OSSP)
                    Store (0x70, OSTB)
                    Store (0x70, TPOS)
                }

                If (_OSI ("Linux"))
                {
                    Store (One, LINX)
                    Store (0x80, OSTB)
                    Store (0x80, TPOS)
                }
            }
            ElseIf (CondRefOf (\_OS, Local0))
            {
                If (SEQL (_OS, "Microsoft Windows"))
                {
                    Store (One, OSTB)
                    Store (One, TPOS)
                }
                ElseIf (SEQL (_OS, "Microsoft WindowsME: Millennium Edition"))
                {
                    Store (0x02, OSTB)
                    Store (0x02, TPOS)
                }
                ElseIf (SEQL (_OS, "Microsoft Windows NT"))
                {
                    Store (0x04, OSTB)
                    Store (0x04, TPOS)
                }
                Else
                {
                    Store (Zero, OSTB)
                    Store (Zero, TPOS)
                }
            }
            Else
            {
                Store (Zero, OSTB)
                Store (Zero, TPOS)
            }
        }

        Return (OSTB)
    }

    Scope (_SB.PCI0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (LNotEqual (PICM, Zero))
            {
                DSPI ()
                NAPE ()
            }

            OSTP ()
            OSFL ()
        }
    }

    Name (TSOS, 0x75)
    Name (UR0I, 0x03)
    Name (UR1I, 0x04)
    Name (UR2I, 0x03)
    Name (UR3I, 0x04)
    Name (IC0I, 0x04)
    Name (IC1I, 0x0B)
    Name (IC2I, 0x0A)
    Name (IC3I, 0x06)
    Name (IC4I, 0x0E)
    Name (IC5I, 0x0F)
    If (CondRefOf (\_OSI))
    {
        If (_OSI ("Windows 2009"))
        {
            Store (0x50, TSOS)
        }

        If (_OSI ("Windows 2015"))
        {
            Store (0x70, TSOS)
        }
    }

    Scope (_SB)
    {
        OperationRegion (ECMC, SystemIO, 0x72, 0x02)
        Field (ECMC, AnyAcc, NoLock, Preserve)
        {
            ECMI,   8, 
            ECMD,   8
        }

        IndexField (ECMI, ECMD, ByteAcc, NoLock, Preserve)
        {
            Offset (0x08), 
            FRTB,   32
        }

        OperationRegion (FRTP, SystemMemory, FRTB, 0x0100)
        Field (FRTP, AnyAcc, NoLock, Preserve)
        {
            PEBA,   32, 
                ,   4, 
            LPCE,   1, 
            IC0E,   1, 
            IC1E,   1, 
            IC2E,   1, 
            IC3E,   1, 
            IC4E,   1, 
            IC5E,   1, 
            UT0E,   1, 
            UT1E,   1, 
                ,   1, 
                ,   1, 
            ST_E,   1, 
            UT2E,   1, 
                ,   1, 
            EMMD,   2, 
                ,   3, 
            XHCE,   1, 
                ,   1, 
                ,   1, 
            UT3E,   1, 
            ESPI,   1, 
            EMME,   1, 
            Offset (0x08), 
            PCEF,   1, 
                ,   4, 
            IC0D,   1, 
            IC1D,   1, 
            IC2D,   1, 
            IC3D,   1, 
            IC4D,   1, 
            IC5D,   1, 
            UT0D,   1, 
            UT1D,   1, 
                ,   1, 
                ,   1, 
            ST_D,   1, 
            UT2D,   1, 
                ,   1, 
            EHCD,   1, 
                ,   4, 
            XHCD,   1, 
            SD_D,   1, 
                ,   1, 
            UT3D,   1, 
                ,   1, 
            EMD3,   1, 
                ,   2, 
            S03D,   1, 
            FW00,   16, 
            FW01,   32, 
            FW02,   16, 
            FW03,   32, 
            SDS0,   8, 
            SDS1,   8, 
            CZFG,   1, 
            Offset (0x20), 
            SD10,   32, 
            EH10,   32, 
            XH10,   32, 
            STBA,   32
        }

        OperationRegion (FCFG, SystemMemory, PEBA, 0x01000000)
        Field (FCFG, DWordAcc, NoLock, Preserve)
        {
            Offset (0xA3044), 
            IPDE,   32, 
            IMPE,   32, 
            Offset (0xA3078), 
                ,   2, 
            LDQ0,   1, 
            Offset (0xA30CB), 
                ,   7, 
            AUSS,   1
        }

        OperationRegion (IOMX, SystemMemory, 0xFED80D00, 0x0100)
        Field (IOMX, AnyAcc, NoLock, Preserve)
        {
            Offset (0x15), 
            IM15,   8, 
            IM16,   8, 
            Offset (0x1F), 
            IM1F,   8, 
            IM20,   8, 
            Offset (0x44), 
            IM44,   8, 
            Offset (0x46), 
            IM46,   8, 
            Offset (0x4A), 
            IM4A,   8, 
            IM4B,   8, 
            Offset (0x57), 
            IM57,   8, 
            IM58,   8, 
            Offset (0x68), 
            IM68,   8, 
            IM69,   8, 
            IM6A,   8, 
            IM6B,   8, 
            Offset (0x6D), 
            IM6D,   8
        }

        OperationRegion (FACR, SystemMemory, 0xFED81E00, 0x0100)
        Field (FACR, AnyAcc, NoLock, Preserve)
        {
            Offset (0x80), 
                ,   28, 
            RD28,   1, 
                ,   1, 
            RQTY,   1, 
            Offset (0x84), 
                ,   28, 
            SD28,   1, 
                ,   1, 
            Offset (0xA0), 
            PG1A,   1
        }

        OperationRegion (EMMX, SystemMemory, 0xFEDD5800, 0x0130)
        Field (EMMX, AnyAcc, NoLock, Preserve)
        {
            Offset (0xD0), 
                ,   17, 
            FC18,   1, 
            FC33,   1, 
                ,   7, 
            CD_T,   1, 
            WP_T,   1
        }

        OperationRegion (EMMB, SystemMemory, 0xFEDD5800, 0x0130)
        Field (EMMB, AnyAcc, NoLock, Preserve)
        {
            Offset (0xA4), 
            E0A4,   32, 
            E0A8,   32, 
            Offset (0xB0), 
            E0B0,   32, 
            Offset (0xD0), 
            E0D0,   32, 
            Offset (0x116), 
            E116,   32
        }

        Name (SVBF, Buffer (0x0100)
        {
             0x00                                           
        })
        CreateDWordField (SVBF, Zero, S0A4)
        CreateDWordField (SVBF, 0x04, S0A8)
        CreateDWordField (SVBF, 0x08, S0B0)
        CreateDWordField (SVBF, 0x0C, S0D0)
        CreateDWordField (SVBF, 0x10, S116)
        Method (SECR, 0, Serialized)
        {
            Store (E116, S116)
            Store (Zero, RQTY)
            Store (One, RD28)
            Store (SD28, Local0)
            While (Local0)
            {
                Store (SD28, Local0)
            }
        }

        Method (RECR, 0, Serialized)
        {
            Store (S116, E116)
        }

        OperationRegion (LUIE, SystemMemory, 0xFEDC0020, 0x04)
        Field (LUIE, AnyAcc, NoLock, Preserve)
        {
            IER0,   1, 
            IER1,   1, 
            IER2,   1, 
            IER3,   1, 
            UOL0,   1, 
            UOL1,   1, 
            UOL2,   1, 
            UOL3,   1, 
            WUR0,   2, 
            WUR1,   2, 
            WUR2,   2, 
            WUR3,   2
        }

        Method (FRUI, 2, Serialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (IUA0, Arg1)
            }

            If (LEqual (Arg0, One))
            {
                Store (IUA1, Arg1)
            }

            If (LEqual (Arg0, 0x02))
            {
                Store (IUA2, Arg1)
            }

            If (LEqual (Arg0, 0x03))
            {
                Store (IUA3, Arg1)
            }
        }

        Method (SRAD, 2, Serialized)
        {
            ShiftLeft (Arg0, One, Local0)
            Add (Local0, 0xFED81E40, Local0)
            OperationRegion (ADCR, SystemMemory, Local0, 0x02)
            Field (ADCR, ByteAcc, NoLock, Preserve)
            {
                ADTD,   2, 
                ADPS,   1, 
                ADPD,   1, 
                ADSO,   1, 
                ADSC,   1, 
                ADSR,   1, 
                ADIS,   1, 
                ADDS,   3
            }

            Store (One, ADIS)
            Store (Zero, ADSR)
            Stall (Arg1)
            Store (One, ADSR)
            Store (Zero, ADIS)
            Stall (Arg1)
        }

        Method (DSAD, 2, Serialized)
        {
            ShiftLeft (Arg0, One, Local0)
            Add (Local0, 0xFED81E40, Local0)
            OperationRegion (ADCR, SystemMemory, Local0, 0x02)
            Field (ADCR, ByteAcc, NoLock, Preserve)
            {
                ADTD,   2, 
                ADPS,   1, 
                ADPD,   1, 
                ADSO,   1, 
                ADSC,   1, 
                ADSR,   1, 
                ADIS,   1, 
                ADDS,   3
            }

            If (LNotEqual (Arg0, ADTD))
            {
                If (LEqual (Arg1, Zero))
                {
                    Store (Zero, ADTD)
                    Store (One, ADPD)
                    Store (ADDS, Local0)
                    While (LNotEqual (Local0, 0x07))
                    {
                        Store (ADDS, Local0)
                    }
                }

                If (LEqual (Arg1, 0x03))
                {
                    Store (Zero, ADPD)
                    Store (ADDS, Local0)
                    While (LNotEqual (Local0, Zero))
                    {
                        Store (ADDS, Local0)
                    }

                    Store (0x03, ADTD)
                }
            }
        }

        Method (HSAD, 2, Serialized)
        {
            ShiftLeft (One, Arg0, Local3)
            ShiftLeft (Arg0, One, Local0)
            Add (Local0, 0xFED81E40, Local0)
            OperationRegion (ADCR, SystemMemory, Local0, 0x02)
            Field (ADCR, ByteAcc, NoLock, Preserve)
            {
                ADTD,   2, 
                ADPS,   1, 
                ADPD,   1, 
                ADSO,   1, 
                ADSC,   1, 
                ADSR,   1, 
                ADIS,   1, 
                ADDS,   3
            }

            If (LNotEqual (Arg1, ADTD))
            {
                If (LEqual (Arg1, Zero))
                {
                    Store (One, PG1A)
                    Store (Zero, ADTD)
                    Store (One, ADPD)
                    Store (ADDS, Local0)
                    While (LNotEqual (Local0, 0x07))
                    {
                        Store (ADDS, Local0)
                    }

                    Store (One, RQTY)
                    Store (One, RD28)
                    Store (SD28, Local0)
                    While (LNot (Local0))
                    {
                        Store (SD28, Local0)
                    }
                }

                If (LEqual (Arg1, 0x03))
                {
                    Store (Zero, RQTY)
                    Store (One, RD28)
                    Store (SD28, Local0)
                    While (Local0)
                    {
                        Store (SD28, Local0)
                    }

                    Store (Zero, ADPD)
                    Store (ADDS, Local0)
                    While (LNotEqual (Local0, Zero))
                    {
                        Store (ADDS, Local0)
                    }

                    Store (0x03, ADTD)
                    Store (Zero, PG1A)
                }
            }
        }

        OperationRegion (FPIC, SystemIO, 0x0C00, 0x02)
        Field (ECMC, AnyAcc, NoLock, Preserve)
        {
            FPII,   8, 
            FPID,   8
        }

        IndexField (FPII, FPID, ByteAcc, NoLock, Preserve)
        {
            Offset (0xF4), 
            IUA0,   8, 
            IUA1,   8, 
            Offset (0xF8), 
            IUA2,   8, 
            IUA3,   8
        }

        Device (GPIO)
        {
            Name (_HID, "AMDI0030")  // _HID: Hardware ID
            Name (_CID, "AMDI0030")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000007,
                    }
                    Memory32Fixed (ReadWrite,
                        0xFED81500,         // Address Base
                        0x00000400,         // Address Length
                        )
                })
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LGreaterEqual (TSOS, 0x70))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (FUR0)
        {
            Name (_HID, "AMDI0020")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {3}
                    Memory32Fixed (ReadWrite,
                        0xFEDC9000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFEDC7000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                ShiftLeft (One, And (UR0I, 0x0F), IRQW)
                Return (BUF0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LGreaterEqual (TSOS, 0x70))
                {
                    If (LEqual (UT0E, One))
                    {
                        If (IER0)
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (FUR1)
        {
            Name (_HID, "AMDI0020")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {4}
                    Memory32Fixed (ReadWrite,
                        0xFEDCA000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFEDC8000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                ShiftLeft (One, And (UR1I, 0x0F), IRQW)
                Return (BUF0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LGreaterEqual (TSOS, 0x70))
                {
                    If (LEqual (UT1E, One))
                    {
                        If (UOL1)
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (FUR2)
        {
            Name (_HID, "AMDI0020")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {3}
                    Memory32Fixed (ReadWrite,
                        0xFEDCE000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFEDCC000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                ShiftLeft (One, And (UR2I, 0x0F), IRQW)
                Return (BUF0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LGreaterEqual (TSOS, 0x70))
                {
                    If (LEqual (UT2E, One))
                    {
                        If (UOL2)
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (FUR3)
        {
            Name (_HID, "AMDI0020")  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {4}
                    Memory32Fixed (ReadWrite,
                        0xFEDCF000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFEDCD000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                ShiftLeft (One, And (UR3I, 0x0F), IRQW)
                Return (BUF0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LGreaterEqual (TSOS, 0x70))
                {
                    If (LEqual (UT3E, One))
                    {
                        If (UOL3)
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (I2CA)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {10}
                    Memory32Fixed (ReadWrite,
                        0xFEDC2000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                ShiftLeft (One, And (IC0I, 0x0F), IRQW)
                Return (BUF0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LGreaterEqual (TSOS, 0x70))
                {
                    If (LEqual (IC0E, One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x05, 0xC8)
            }
        }

        Device (I2CB)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {11}
                    Memory32Fixed (ReadWrite,
                        0xFEDC3000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                ShiftLeft (One, And (IC1I, 0x0F), IRQW)
                Return (BUF0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LGreaterEqual (TSOS, 0x70))
                {
                    If (LEqual (IC1E, One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x06, 0xC8)
            }
        }

        Device (I2CC)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {4}
                    Memory32Fixed (ReadWrite,
                        0xFEDC4000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                ShiftLeft (One, And (IC2I, 0x0F), IRQW)
                Return (BUF0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LGreaterEqual (TSOS, 0x70))
                {
                    If (LEqual (IC2E, One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x07, 0xC8)
            }
        }

        Device (I2CD)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {6}
                    Memory32Fixed (ReadWrite,
                        0xFEDC5000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                ShiftLeft (One, And (IC3I, 0x0F), IRQW)
                Return (BUF0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LGreaterEqual (TSOS, 0x70))
                {
                    If (LEqual (IC3E, One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x08, 0xC8)
            }
        }

        Device (I2CE)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {14}
                    Memory32Fixed (ReadWrite,
                        0xFEDC6000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                ShiftLeft (One, And (IC4I, 0x0F), IRQW)
                Return (BUF0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LGreaterEqual (TSOS, 0x70))
                {
                    If (LEqual (IC4E, One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x09, 0xC8)
            }
        }

        Device (I2CF)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {15}
                    Memory32Fixed (ReadWrite,
                        0xFEDCB000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                ShiftLeft (One, And (IC5I, 0x0F), IRQW)
                Return (BUF0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LGreaterEqual (TSOS, 0x70))
                {
                    If (LEqual (IC5E, One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x0A, 0xC8)
            }
        }

        Method (EPIN, 0, NotSerialized)
        {
            Store (Zero, IPDE)
            Store (Zero, IMPE)
            Store (One, IM15)
            Store (One, IM16)
            Store (One, IM20)
            Store (One, IM44)
            Store (One, IM46)
            Store (One, IM68)
            Store (One, IM69)
            Store (One, IM6A)
            Store (One, IM6B)
            Store (One, IM1F)
            If (LNotEqual (EMMD, One))
            {
                Store (One, IM4A)
                Store (One, IM58)
                Store (One, IM4B)
                Store (One, IM57)
                Store (One, IM6D)
            }

            SECR ()
        }

        Name (NCRS, ResourceTemplate ()
        {
            Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
            {
                0x00000005,
            }
            Memory32Fixed (ReadWrite,
                0xFEDD5000,         // Address Base
                0x00001000,         // Address Length
                )
        })
        Name (DCRS, ResourceTemplate ()
        {
            Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
            {
                0x00000005,
            }
            Memory32Fixed (ReadWrite,
                0xFEDD5000,         // Address Base
                0x00001000,         // Address Length
                )
            GpioInt (Edge, ActiveBoth, SharedAndWake, PullUp, 0x0BB8,
                "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0044
                }
            GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0044
                }
        })
        Name (AHID, "AMDI0040")
        Name (ACID, "AMDI0040")
        Name (SHID, 0x400DD041)
        Name (SCID, "PCICC_080501")
        Device (EMM0)
        {
            Method (_HID, 0, Serialized)  // _HID: Hardware ID
            {
                If (EMMD)
                {
                    Return (SHID)
                }
                Else
                {
                    Return (AHID)
                }
            }

            Method (_CID, 0, Serialized)  // _CID: Compatible ID
            {
                If (EMMD)
                {
                    Return (SCID)
                }
                Else
                {
                    Return (ACID)
                }
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                If (EMD3)
                {
                    Return (DCRS)
                }
                Else
                {
                    Return (NCRS)
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LGreaterEqual (TSOS, 0x70))
                {
                    If (EMME)
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (EMME)
                {
                    EPIN ()
                }
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If (LAnd (EMD3, EMME))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (LAnd (EMD3, EMME))
                {
                    HSAD (0x1C, Zero)
                    RECR ()
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If (LAnd (EMD3, EMME))
                {
                    HSAD (0x1C, 0x03)
                }
            }
        }

        Device (UAR1)
        {
            Name (_HID, EisaId ("PNP0500"))  // _HID: Hardware ID
            Name (_DDN, "COM1")  // _DDN: DOS Device Name
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (IER0)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x02E8,             // Range Minimum
                        0x02E8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y22)
                    IRQNoFlags (_Y23)
                        {3}
                })
                CreateByteField (BUF0, \_SB.UAR1._CRS._Y22._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.UAR1._CRS._Y22._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.UAR1._CRS._Y23._INT, IRQL)  // _INT: Interrupts
                FRUI (WUR0, IRQL)
                Return (BUF0)
            }
        }

        Device (UAR2)
        {
            Name (_HID, EisaId ("PNP0500"))  // _HID: Hardware ID
            Name (_DDN, "COM2")  // _DDN: DOS Device Name
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (IER1)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x02F8,             // Range Minimum
                        0x02F8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y24)
                    IRQNoFlags (_Y25)
                        {4}
                })
                CreateByteField (BUF0, \_SB.UAR2._CRS._Y24._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.UAR2._CRS._Y24._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.UAR2._CRS._Y25._INT, IRQL)  // _INT: Interrupts
                FRUI (WUR1, IRQL)
                Return (BUF0)
            }
        }

        Device (UAR3)
        {
            Name (_HID, EisaId ("PNP0500"))  // _HID: Hardware ID
            Name (_DDN, "COM3")  // _DDN: DOS Device Name
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (IER2)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x03E8,             // Range Minimum
                        0x03E8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y26)
                    IRQNoFlags (_Y27)
                        {3}
                })
                CreateByteField (BUF0, \_SB.UAR3._CRS._Y26._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.UAR3._CRS._Y26._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.UAR3._CRS._Y27._INT, IRQL)  // _INT: Interrupts
                FRUI (WUR2, IRQL)
                Return (BUF0)
            }
        }

        Device (UAR4)
        {
            Name (_HID, EisaId ("PNP0500"))  // _HID: Hardware ID
            Name (_DDN, "COM4")  // _DDN: DOS Device Name
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (IER3)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x03F8,             // Range Minimum
                        0x03F8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y28)
                    IRQNoFlags (_Y29)
                        {4}
                })
                CreateByteField (BUF0, \_SB.UAR4._CRS._Y28._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.UAR4._CRS._Y28._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.UAR4._CRS._Y29._INT, IRQL)  // _INT: Interrupts
                FRUI (WUR3, IRQL)
                Return (BUF0)
            }
        }
    }

    Device (_SB.TPM)
    {
        Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
        {
            If (TCMF)
            {
                Return (0x01013469)
            }
            ElseIf (LEqual (TTDP, Zero))
            {
                Return (0x310CD041)
            }
            Else
            {
                Return ("MSFT0101")
            }
        }

        Method (_STR, 0, NotSerialized)  // _STR: Description String
        {
            If (LEqual (TTDP, Zero))
            {
                Return (Unicode ("TPM 1.2 Device"))
            }
            Else
            {
                Return (Unicode ("TPM 2.0 Device"))
            }
        }

        Name (_UID, One)  // _UID: Unique ID
        Name (CRST, ResourceTemplate ()
        {
            Memory32Fixed (ReadOnly,
                0x00000000,         // Address Base
                0x00001000,         // Address Length
                _Y2A)
            Memory32Fixed (ReadOnly,
                0xFED70000,         // Address Base
                0x00001000,         // Address Length
                _Y2B)
        })
        Name (CRSD, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                _Y2C)
        })
        Name (CRSI, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                _Y2D)
        })
        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
        {
            If (LEqual (AMDT, One))
            {
                CreateDWordField (CRST, \_SB.TPM._Y2A._BAS, MTFB)  // _BAS: Base Address
                CreateDWordField (CRST, \_SB.TPM._Y2A._LEN, LTFB)  // _LEN: Length
                Store (TPMB, MTFB)
                Store (0x1000, LTFB)
                CreateDWordField (CRST, \_SB.TPM._Y2B._BAS, MTFC)  // _BAS: Base Address
                CreateDWordField (CRST, \_SB.TPM._Y2B._LEN, LTFC)  // _LEN: Length
                Store (TPMC, MTFC)
                Store (0x1000, LTFC)
                Return (CRST)
            }
            Else
            {
                If (LEqual (DTPT, One))
                {
                    CreateDWordField (CRSD, \_SB.TPM._Y2C._BAS, MTFE)  // _BAS: Base Address
                    CreateDWordField (CRSD, \_SB.TPM._Y2C._LEN, LTFE)  // _LEN: Length
                    Store (0xFED40000, MTFE)
                    Store (0x5000, LTFE)
                    Return (CRSD)
                }
                ElseIf (LEqual (TTPF, One))
                {
                    CreateDWordField (CRSI, \_SB.TPM._Y2D._BAS, MTFD)  // _BAS: Base Address
                    CreateDWordField (CRSI, \_SB.TPM._Y2D._LEN, LTFD)  // _LEN: Length
                    Store (0xFED40000, MTFD)
                    Store (0x5000, LTFD)
                    Return (CRSI)
                }
                ElseIf (LEqual (TTPF, Zero))
                {
                    CreateDWordField (CRSI, \_SB.TPM._Y2D._BAS, MTFF)  // _BAS: Base Address
                    Store (TPMM, MTFF)
                    Return (CRSI)
                }

                Store (Zero, MTFE)
                Store (Zero, LTFE)
                Return (CRSI)
            }

            Return (CRSI)
        }

        OperationRegion (TMMB, SystemMemory, 0xFED40000, 0x5000)
        Field (TMMB, ByteAcc, Lock, Preserve)
        {
            Offset (0x04), 
            LCST,   32, 
            Offset (0x40), 
            CREQ,   32, 
            CSTS,   32, 
            Offset (0x4C), 
            SCMD,   32
        }

        OperationRegion (CRBD, SystemMemory, TPMM, 0x48)
        Field (CRBD, AnyAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            HERR,   32, 
            Offset (0x40), 
            HCMD,   32, 
            HSTS,   32
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (LEqual (TTDP, Zero))
            {
                If (TPMF)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
            ElseIf (LEqual (TTDP, One))
            {
                If (TPMF)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Return (Zero)
        }

        Method (STRT, 3, Serialized)
        {
            OperationRegion (TPMR, SystemMemory, FTPM, 0x1000)
            Field (TPMR, AnyAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                FERR,   32, 
                Offset (0x0C), 
                BEGN,   32
            }

            Name (TIMR, Zero)
            If (LNotEqual (ToInteger (Arg0), Zero)){}
            Switch (ToInteger (Arg1))
            {
                Case (Zero)
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }
                Case (One)
                {
                    Store (Zero, TIMR)
                    If (LEqual (AMDT, One))
                    {
                        While (LAnd (LEqual (BEGN, One), LLess (TIMR, 0x0200)))
                        {
                            If (LEqual (BEGN, One))
                            {
                                Sleep (One)
                                Increment (TIMR)
                            }
                        }
                    }
                    ElseIf (LEqual (Or (And (HSTS, 0x02), And (HSTS, One)), 0x03))
                    {
                        Store (One, HCMD)
                    }
                    Else
                    {
                        Store (One, FERR)
                        Store (Zero, BEGN)
                    }

                    Return (Zero)
                }

            }

            Return (One)
        }

        Method (CRYF, 3, Serialized)
        {
            If (LNotEqual (ToInteger (Arg0), One)){}
            Switch (ToInteger (Arg1))
            {
                Case (Zero)
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }
                Case (One)
                {
                    Name (TPMV, Package (0x02)
                    {
                        One, 
                        Package (0x02)
                        {
                            One, 
                            0x20
                        }
                    })
                    If (LEqual (_STA (), Zero))
                    {
                        Return (Package (0x01)
                        {
                            Zero
                        })
                    }

                    Return (TPMV)
                }

            }

            Return (Buffer (One)
            {
                 0x00                                           
            })
        }
    }

    Scope (_SB.TPM)
    {
        OperationRegion (TSMI, SystemIO, SMIA, 0x02)
        Field (TSMI, WordAcc, NoLock, Preserve)
        {
            SMI,    16
        }

        OperationRegion (ATNV, SystemMemory, PPIM, PPIL)
        Field (ATNV, AnyAcc, NoLock, Preserve)
        {
            RQST,   32, 
            RCNT,   32, 
            ERRO,   32, 
            FLAG,   32, 
            MISC,   32, 
            OPTN,   32, 
            SRSP,   32
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg0, ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        Return (Buffer (0x02)
                        {
                             0xFF, 0x01                                     
                        })
                    }
                    Case (One)
                    {
                        If (LEqual (PPIV, Zero))
                        {
                            Return ("1.2")
                        }
                        Else
                        {
                            Return ("1.3")
                        }
                    }
                    Case (0x02)
                    {
                        Store (DerefOf (Index (Arg3, Zero)), RQST)
                        Store (Zero, SRSP)
                        Store (0x02, FLAG)
                        Store (OFST, TMF1)
                        Store (Zero, SRSP)
                        Store (TMF1, SMI)
                        Return (SRSP)
                    }
                    Case (0x03)
                    {
                        Name (PPI1, Package (0x02)
                        {
                            Zero, 
                            Zero
                        })
                        Store (RQST, Index (PPI1, One))
                        Return (PPI1)
                    }
                    Case (0x04)
                    {
                        Return (TRST)
                    }
                    Case (0x05)
                    {
                        Name (PPI2, Package (0x03)
                        {
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Store (Zero, SRSP)
                        Store (0x05, FLAG)
                        Store (OFST, SMI)
                        Store (RCNT, Index (PPI2, One))
                        Store (ERRO, Index (PPI2, 0x02))
                        Return (PPI2)
                    }
                    Case (0x06)
                    {
                        Return (0x03)
                    }
                    Case (0x07)
                    {
                        Store (DerefOf (Index (Arg3, Zero)), RQST)
                        Store (0x07, FLAG)
                        Store (Zero, OPTN)
                        If (LEqual (RQST, 0x17))
                        {
                            ToInteger (DerefOf (Index (Arg3, One)), OPTN)
                        }

                        Store (OFST, TMF1)
                        Store (Zero, SRSP)
                        Store (TMF1, SMI)
                        Return (SRSP)
                    }
                    Case (0x08)
                    {
                        Store (DerefOf (Index (Arg3, Zero)), RQST)
                        Store (0x08, FLAG)
                        Store (OFST, TMF1)
                        Store (Zero, SRSP)
                        Store (TMF1, SMI)
                        Return (SRSP)
                    }
                    Default
                    {
                    }

                }
            }
            ElseIf (LEqual (Arg0, ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d")))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }
                    Case (One)
                    {
                        Store (DerefOf (Index (Arg3, Zero)), RQST)
                        Store (0x09, FLAG)
                        Store (OFST, TMF1)
                        Store (Zero, SRSP)
                        Store (TMF1, SMI)
                        Return (SRSP)
                    }
                    Default
                    {
                    }

                }
            }

            If (LEqual (Arg0, ToUUID ("cf8e16a5-c1e8-4e25-b712-4f54a96702c8")))
            {
                Return (CRYF (Arg1, Arg2, Arg3))
            }

            If (LEqual (Arg0, ToUUID ("6bbf6cab-5463-4714-b7cd-f0203c0368d4")))
            {
                Return (STRT (Arg1, Arg2, Arg3))
            }

            Return (Buffer (One)
            {
                 0x00                                           
            })
        }

        Method (TPTS, 1, Serialized)
        {
            Switch (ToInteger (Arg0))
            {
                Case (0x04)
                {
                    Store (Zero, RQST)
                    Store (0x09, FLAG)
                    Store (Zero, SRSP)
                    Store (OFST, SMI)
                }
                Case (0x05)
                {
                    Store (Zero, RQST)
                    Store (0x09, FLAG)
                    Store (Zero, SRSP)
                    Store (OFST, SMI)
                }

            }

            Sleep (0x012C)
        }
    }

    Scope (\)
    {
        Device (AMW0)
        {
            Name (_HID, EisaId ("PNP0C14"))  // _HID: Hardware ID
            Name (_UID, "ASUSWMI")  // _UID: Unique ID
            Name (_WDG, Buffer (0x50)
            {
                /* 0000 */  0xD0, 0x5E, 0x84, 0x97, 0x6D, 0x4E, 0xDE, 0x11,
                /* 0008 */  0x8A, 0x39, 0x08, 0x00, 0x20, 0x0C, 0x9A, 0x66,
                /* 0010 */  0x42, 0x43, 0x01, 0x02, 0xA0, 0x47, 0x67, 0x46,
                /* 0018 */  0xEC, 0x70, 0xDE, 0x11, 0x8A, 0x39, 0x08, 0x00,
                /* 0020 */  0x20, 0x0C, 0x9A, 0x66, 0x42, 0x44, 0x01, 0x02,
                /* 0028 */  0x72, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11,
                /* 0030 */  0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,
                /* 0038 */  0xD2, 0x00, 0x01, 0x08, 0x21, 0x12, 0x90, 0x05,
                /* 0040 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,
                /* 0048 */  0xC9, 0x06, 0x29, 0x10, 0x4D, 0x4F, 0x01, 0x00 
            })
            Name (CCAC, Zero)
            Name (ECD2, Zero)
            Name (EID2, Zero)
            Method (WED2, 1, NotSerialized)
            {
                Store (Arg0, ECD2)
            }

            Method (WMBC, 3, Serialized)
            {
                Store (One, Local0)
                Switch (Arg1)
                {
                    Case (0x43455053)
                    {
                        Return (SPEC (Arg2))
                    }
                    Case (0x50564544)
                    {
                        Return (DEVP (Arg2))
                    }
                    Case (0x50534453)
                    {
                        Return (SDSP (Arg2))
                    }
                    Case (0x50534447)
                    {
                        Return (GDSP (Arg2))
                    }
                    Case (0x53564544)
                    {
                        Return (DEVS (Arg2))
                    }
                    Case (0x53544344)
                    {
                        Return (DSTS (Arg2))
                    }
                    Case (0x44495047)
                    {
                        Return (GPID ())
                    }
                    Case (0x5446424B)
                    {
                        Return (KBFT (Arg2))
                    }
                    Case (0x59454B48)
                    {
                        Return (HKEY ())
                    }
                    Case (0x4C455252)
                    {
                        Return (LERR (Arg2))
                    }
                    Case (0x47424F44)
                    {
                        Return (GBOD (Arg2))
                    }
                    Case (0x53424F44)
                    {
                        Return (SBOD (Arg2))
                    }
                    Case (0x47424F4E)
                    {
                        Return (GBON (Arg2))
                    }
                    Case (0x53415057)
                    {
                        Return (SAPW (Arg2))
                    }
                    Case (0x53555057)
                    {
                        Return (SUPW (Arg2))
                    }
                    Case (0x53555058)
                    {
                        Return (GLBN (Arg2))
                    }
                    Case (0x53555059)
                    {
                        Return (ISLG (Arg2))
                    }
                    Case (0x53555060)
                    {
                        Return (GLBO (Arg2))
                    }
                    Case (0x53555061)
                    {
                        Return (SLBO (Arg2))
                    }
                    Case (0x53424F47)
                    {
                        Return (SBOG (Arg2))
                    }
                    Case (0x4C444654)
                    {
                        Return (LDFT ())
                    }
                    Case (0x53465442)
                    {
                        Return (SFTB (Arg2))
                    }
                    Case (0x53444654)
                    {
                        Return (SDFT (Arg2))
                    }
                    Case (0x5346544D)
                    {
                        Return (SFTM ())
                    }
                    Case (0x4443544C)
                    {
                        Return (DCTL (Arg2))
                    }
                    Case (0x4746414E)
                    {
                        Return (GFAN (Arg2))
                    }
                    Case (0x4446414E)
                    {
                        Return (SFAN (Arg2))
                    }
                    Case (0x47464356)
                    {
                        Return (GFCV (Arg2))
                    }
                    Case (0x44464356)
                    {
                        Return (SFCV (Arg2))
                    }
                    Case (0x43455057)
                    {
                        Return (CKPW (Arg2))
                    }
                    Case (0x47544F44)
                    {
                        Return (GTOD (Arg2))
                    }
                    Case (0x53544F44)
                    {
                        Return (STOD (Arg2))
                    }
                    Case (0x4F505945)
                    {
                        Return (EYPO ())
                    }
                    Case (0x54505945)
                    {
                        Return (EYPT ())
                    }
                    Case (0x45505945)
                    {
                        Return (EYPE ())
                    }
                    Case (0x56505945)
                    {
                        Return (EYPF ())
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }

                Return (Local0)
            }

            Method (RSMB, 1, Serialized)
            {
                Return (Zero)
            }

            Method (WSMB, 1, Serialized)
            {
                Return (Zero)
            }

            Method (RSMW, 1, Serialized)
            {
                Return (Zero)
            }

            Method (WSMW, 1, Serialized)
            {
                Return (Zero)
            }

            Method (RSMK, 1, Serialized)
            {
                Return (Zero)
            }

            Method (WSMK, 1, Serialized)
            {
                Return (Zero)
            }

            Mutex (ASMX, 0x00)
            Method (RIOB, 1, Serialized)
            {
                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    CreateWordField (Arg0, Zero, W_PT)
                    OperationRegion (TMIO, SystemIO, W_PT, One)
                    Field (TMIO, ByteAcc, NoLock, Preserve)
                    {
                        PT08,   8
                    }

                    Store (PT08, Local0)
                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (WIOB, 1, Serialized)
            {
                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    CreateWordField (Arg0, Zero, W_PT)
                    CreateByteField (Arg0, 0x02, B_DT)
                    OperationRegion (TMIO, SystemIO, W_PT, One)
                    Field (TMIO, ByteAcc, NoLock, Preserve)
                    {
                        PT08,   8
                    }

                    Store (B_DT, PT08)
                    Release (ASMX)
                }

                Return (Ones)
            }

            Method (RIOW, 1, Serialized)
            {
                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    CreateWordField (Arg0, Zero, W_PT)
                    OperationRegion (TMIO, SystemIO, W_PT, 0x02)
                    Field (TMIO, WordAcc, NoLock, Preserve)
                    {
                        PT16,   16
                    }

                    Store (PT16, Local0)
                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (WIOW, 1, Serialized)
            {
                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    CreateWordField (Arg0, Zero, W_PT)
                    CreateWordField (Arg0, 0x02, W_DT)
                    OperationRegion (TMIO, SystemIO, W_PT, 0x02)
                    Field (TMIO, WordAcc, NoLock, Preserve)
                    {
                        PT16,   16
                    }

                    Store (W_DT, PT16)
                    Release (ASMX)
                }

                Return (Ones)
            }

            Method (RIOD, 1, Serialized)
            {
                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    CreateWordField (Arg0, Zero, W_PT)
                    OperationRegion (TMIO, SystemIO, W_PT, 0x04)
                    Field (TMIO, DWordAcc, NoLock, Preserve)
                    {
                        PT32,   32
                    }

                    Store (PT32, Local0)
                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (WIOD, 1, Serialized)
            {
                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    CreateWordField (Arg0, Zero, W_PT)
                    CreateDWordField (Arg0, 0x02, D_DT)
                    OperationRegion (TMIO, SystemIO, W_PT, 0x04)
                    Field (TMIO, DWordAcc, NoLock, Preserve)
                    {
                        PT32,   32
                    }

                    Store (D_DT, PT32)
                    Release (ASMX)
                }

                Return (Ones)
            }

            Method (RMEM, 1, Serialized)
            {
                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    CreateDWordField (Arg0, Zero, W_MM)
                    CreateByteField (Arg0, 0x04, W_SZ)
                    OperationRegion (TMMM, SystemMemory, ToInteger (W_MM), 0x04)
                    Field (TMMM, ByteAcc, NoLock, Preserve)
                    {
                        MM08,   8
                    }

                    Field (TMMM, ByteAcc, NoLock, Preserve)
                    {
                        MM16,   16
                    }

                    Field (TMMM, ByteAcc, NoLock, Preserve)
                    {
                        MM32,   32
                    }

                    Switch (ToInteger (W_SZ))
                    {
                        Case (One)
                        {
                            Store (MM08, Local0)
                        }
                        Case (0x02)
                        {
                            Store (MM16, Local0)
                        }
                        Case (0x04)
                        {
                            Store (MM32, Local0)
                        }
                        Default
                        {
                            Store (Ones, Local0)
                        }

                    }

                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (WMEM, 1, Serialized)
            {
                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    CreateDWordField (Arg0, Zero, W_MM)
                    CreateByteField (Arg0, 0x04, W_SZ)
                    CreateDWordField (Arg0, 0x08, W_DT)
                    OperationRegion (TMMM, SystemMemory, W_MM, 0x04)
                    Field (TMMM, ByteAcc, NoLock, Preserve)
                    {
                        MM08,   8
                    }

                    Field (TMMM, WordAcc, NoLock, Preserve)
                    {
                        MM16,   16
                    }

                    Field (TMMM, DWordAcc, NoLock, Preserve)
                    {
                        MM32,   32
                    }

                    Store (Zero, Local0)
                    Switch (ToInteger (W_SZ))
                    {
                        Case (One)
                        {
                            Store (W_DT, MM08)
                        }
                        Case (0x02)
                        {
                            Store (W_DT, MM16)
                        }
                        Case (0x04)
                        {
                            Store (W_DT, MM32)
                        }
                        Default
                        {
                            Store (Ones, Local0)
                        }

                    }

                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (RPCI, 1, Serialized)
            {
                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    CreateByteField (Arg0, Zero, TBUS)
                    CreateByteField (Arg0, One, TDEV)
                    CreateByteField (Arg0, 0x02, TFUN)
                    CreateWordField (Arg0, 0x04, TREG)
                    CreateByteField (Arg0, 0x06, W_SZ)
                    Store (TBUS, Local0)
                    ShiftLeft (Local0, 0x05, Local0)
                    Add (Local0, TDEV, Local0)
                    ShiftLeft (Local0, 0x03, Local0)
                    Add (Local0, TFUN, Local0)
                    ShiftLeft (Local0, 0x0C, Local0)
                    Add (Local0, TREG, Local0)
                    Add (Local0, PEBS, Local0)
                    OperationRegion (PCFG, SystemMemory, Local0, 0x04)
                    Field (PCFG, ByteAcc, NoLock, Preserve)
                    {
                        BCFG,   8
                    }

                    Field (PCFG, WordAcc, NoLock, Preserve)
                    {
                        WCFG,   16
                    }

                    Field (PCFG, DWordAcc, NoLock, Preserve)
                    {
                        XCFG,   32
                    }

                    Store (Zero, Local0)
                    Switch (ToInteger (W_SZ))
                    {
                        Case (One)
                        {
                            Store (BCFG, Local0)
                        }
                        Case (0x02)
                        {
                            Store (WCFG, Local0)
                        }
                        Case (0x04)
                        {
                            Store (XCFG, Local0)
                        }
                        Default
                        {
                            Store (Ones, Local0)
                        }

                    }

                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (WPCI, 1, Serialized)
            {
                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    CreateByteField (Arg0, Zero, TBUS)
                    CreateByteField (Arg0, One, TDEV)
                    CreateByteField (Arg0, 0x02, TFUN)
                    CreateWordField (Arg0, 0x04, TREG)
                    CreateByteField (Arg0, 0x06, W_SZ)
                    CreateDWordField (Arg0, 0x08, TDAT)
                    Store (TBUS, Local0)
                    ShiftLeft (Local0, 0x05, Local0)
                    Add (Local0, TDEV, Local0)
                    ShiftLeft (Local0, 0x03, Local0)
                    Add (Local0, TFUN, Local0)
                    ShiftLeft (Local0, 0x0C, Local0)
                    Add (Local0, TREG, Local0)
                    Add (Local0, PEBS, Local0)
                    OperationRegion (PCFG, SystemMemory, Local0, 0x04)
                    Field (PCFG, ByteAcc, NoLock, Preserve)
                    {
                        BCFG,   8
                    }

                    Field (PCFG, WordAcc, NoLock, Preserve)
                    {
                        WCFG,   16
                    }

                    Field (PCFG, DWordAcc, NoLock, Preserve)
                    {
                        XCFG,   32
                    }

                    Store (Zero, Local0)
                    Switch (ToInteger (W_SZ))
                    {
                        Case (One)
                        {
                            Store (TDAT, BCFG)
                        }
                        Case (0x02)
                        {
                            Store (TDAT, WCFG)
                        }
                        Case (0x04)
                        {
                            Store (TDAT, XCFG)
                        }
                        Default
                        {
                            Store (Ones, Local0)
                        }

                    }

                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (RIDX, 1, Serialized)
            {
                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    CreateWordField (Arg0, Zero, W_PT)
                    CreateByteField (Arg0, 0x02, W_ID)
                    OperationRegion (TMIO, SystemIO, W_PT, 0x02)
                    Field (TMIO, ByteAcc, NoLock, Preserve)
                    {
                        IDXP,   8, 
                        DATP,   8
                    }

                    Store (ToInteger (W_ID), IDXP)
                    Store (DATP, Local0)
                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (WIDX, 1, Serialized)
            {
                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    CreateWordField (Arg0, Zero, W_PT)
                    CreateByteField (Arg0, 0x02, W_ID)
                    CreateByteField (Arg0, 0x03, W_DT)
                    OperationRegion (TMIO, SystemIO, W_PT, 0x02)
                    Field (TMIO, ByteAcc, NoLock, Preserve)
                    {
                        IDXP,   8, 
                        DATP,   8
                    }

                    Store (ToInteger (W_ID), IDXP)
                    Store (W_DT, DATP)
                    Release (ASMX)
                    Return (Zero)
                }

                Return (Ones)
            }

            Name (RGBF, Buffer (0x10){})
            CreateDWordField (RGBF, Zero, REAX)
            CreateDWordField (RGBF, 0x04, REBX)
            CreateDWordField (RGBF, 0x08, RECX)
            CreateDWordField (RGBF, 0x0C, REDX)
            Name (MRBF, Buffer (0x08){})
            CreateDWordField (MRBF, Zero, MEDX)
            CreateDWordField (MRBF, 0x04, MEAX)
            Method (RDMR, 1, Serialized)
            {
                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    CreateDWordField (Arg0, Zero, W_ID)
                    Store (\_SB.GMSR (W_ID), RGBF)
                    Store (REDX, MEDX)
                    Store (REAX, MEAX)
                    Release (ASMX)
                    Return (MRBF)
                }

                Return (Ones)
            }

            Method (WRMR, 1, Serialized)
            {
                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    CreateDWordField (Arg0, Zero, W_ID)
                    CreateDWordField (Arg0, 0x04, W_HI)
                    CreateDWordField (Arg0, 0x08, W_LW)
                    Store (W_ID, RECX)
                    Store (W_HI, REDX)
                    Store (W_LW, REAX)
                    Store (\_SB.SMSR (RGBF), Local0)
                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (RCID, 1, Serialized)
            {
                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    CreateDWordField (Arg0, Zero, W_ID)
                    Store (\_SB.PRID (W_ID), RGBF)
                    Release (ASMX)
                    Return (RGBF)
                }

                Return (Ones)
            }

            Method (RDEC, 1, Serialized)
            {
                Return (Ones)
            }

            Method (WREC, 1, Serialized)
            {
                Return (Ones)
            }

            Method (RSIO, 1, Serialized)
            {
                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    CreateByteField (Arg0, Zero, W_LN)
                    CreateByteField (Arg0, One, W_ID)
                    Store (Ones, Local0)
                    If (LEqual (Acquire (\_SB.PCI0.SBRG.SIO1.MUT0, 0xFFFF), Zero))
                    {
                        \_SB.PCI0.SBRG.SIO1.ENFG (W_LN)
                        Store (W_ID, \_SB.PCI0.SBRG.SIO1.INDX)
                        Store (\_SB.PCI0.SBRG.SIO1.DATA, Local0)
                        \_SB.PCI0.SBRG.SIO1.EXFG ()
                    }

                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (WSIO, 1, Serialized)
            {
                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    CreateByteField (Arg0, Zero, W_LN)
                    CreateByteField (Arg0, One, W_ID)
                    CreateByteField (Arg0, 0x02, W_DT)
                    Store (Ones, Local0)
                    If (LEqual (Acquire (\_SB.PCI0.SBRG.SIO1.MUT0, 0xFFFF), Zero))
                    {
                        \_SB.PCI0.SBRG.SIO1.ENFG (W_LN)
                        Store (W_ID, \_SB.PCI0.SBRG.SIO1.INDX)
                        Store (W_DT, \_SB.PCI0.SBRG.SIO1.DATA)
                        \_SB.PCI0.SBRG.SIO1.EXFG ()
                    }

                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            IndexField (\_SB.PCI0.SBRG.SIO1.INDX, \_SB.PCI0.SBRG.SIO1.DATA, ByteAcc, NoLock, Preserve)
            {
                Offset (0x24), 
                    ,   6, 
                HMSL,   2, 
                Offset (0xF3), 
                    ,   2, 
                ECLK,   1
            }

            Method (HMBS, 1, Serialized)
            {
                Switch (HMSL)
                {
                    Case (Zero)
                    {
                        Store (0xF7000000, Local0)
                    }
                    Case (One)
                    {
                        Store (0xF7100000, Local0)
                    }
                    Case (0x02)
                    {
                        Store (0xF7200000, Local0)
                    }
                    Case (0x03)
                    {
                        Store (0xF7300000, Local0)
                    }

                }

                Multiply (Arg0, 0x0100, Local1)
                Add (Local0, Local1, Local2)
                Return (Local2)
            }

            Method (RHWM, 1, Serialized)
            {
                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    CreateByteField (Arg0, Zero, W_BK)
                    CreateByteField (Arg0, One, W_ID)
                    \_SB.PCI0.SBRG.SIO1.ENFG (0x04)
                    Store (Zero, ECLK)
                    Store (HMBS (W_BK), Local0)
                    Add (Local0, W_ID, Local1)
                    OperationRegion (HWMM, SystemMemory, Local1, 0x04)
                    Field (HWMM, ByteAcc, NoLock, Preserve)
                    {
                        BHWM,   8
                    }

                    Store (BHWM, Local0)
                    Store (One, ECLK)
                    \_SB.PCI0.SBRG.SIO1.EXFG ()
                    Release (ASMX)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (WHWM, 1, Serialized)
            {
                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    CreateByteField (Arg0, Zero, W_BK)
                    CreateByteField (Arg0, One, W_ID)
                    CreateByteField (Arg0, 0x02, W_DT)
                    \_SB.PCI0.SBRG.SIO1.ENFG (0x04)
                    Store (Zero, ECLK)
                    Store (HMBS (W_BK), Local0)
                    Add (Local0, W_ID, Local1)
                    OperationRegion (HWMM, SystemMemory, Local1, 0x04)
                    Field (HWMM, ByteAcc, NoLock, Preserve)
                    {
                        BHWM,   8
                    }

                    Store (W_DT, BHWM)
                    Store (One, ECLK)
                    \_SB.PCI0.SBRG.SIO1.EXFG ()
                    Release (ASMX)
                    Return (Zero)
                }

                Return (Ones)
            }

            Method (ATOH, 1, Serialized)
            {
                Store (Ones, Local0)
                If (LAnd (LGreaterEqual (Arg0, 0x61), LLessEqual (Arg0, 0x66)))
                {
                    Subtract (Arg0, 0x57, Local0)
                }

                If (LAnd (LGreaterEqual (Arg0, 0x41), LLessEqual (Arg0, 0x46)))
                {
                    Subtract (Arg0, 0x37, Local0)
                }

                If (LAnd (LGreaterEqual (Arg0, 0x30), LLessEqual (Arg0, 0x39)))
                {
                    Subtract (Arg0, 0x30, Local0)
                }

                Return (Local0)
            }

            Method (HTOA, 1, Serialized)
            {
                Store (Ones, Local0)
                If (LAnd (LGreaterEqual (Arg0, Zero), LLessEqual (Arg0, 0x09)))
                {
                    Add (Arg0, 0x30, Local0)
                }

                If (LAnd (LGreaterEqual (Arg0, 0x0A), LLessEqual (Arg0, 0x0F)))
                {
                    Subtract (Arg0, 0x0A, Local0)
                    Add (Local0, 0x41, Local0)
                }

                Return (Local0)
            }

            Name (STRB, Buffer (0x0100){})
            Name (HEXB, Buffer (0x0100){})
            Method (STOH, 1, Serialized)
            {
                Store (Arg0, STRB)
                CreateByteField (Arg0, Zero, DCNT)
                ShiftRight (DCNT, 0x02, DCNT)
                Store (Zero, Local0)
                While (LLess (Local0, DCNT))
                {
                    Add (Multiply (0x04, Local0), 0x02, Local1)
                    Add (Local1, 0x02, Local2)
                    Store (ATOH (DerefOf (Index (STRB, Local1))), Local3)
                    ShiftLeft (Local3, 0x04, Local3)
                    Add (Local3, ATOH (DerefOf (Index (STRB, Local2))), Local3)
                    Store (Local3, Index (HEXB, Local0))
                    Increment (Local0)
                }

                Return (HEXB)
            }

            Method (HTOS, 2, Serialized)
            {
                Store (Arg0, HEXB)
                ShiftLeft (Arg1, 0x02, Index (STRB, Zero))
                Store (Zero, Index (STRB, One))
                Store (Zero, Local0)
                While (LLess (Local0, Arg1))
                {
                    Store (DerefOf (Index (HEXB, Local0)), Local3)
                    ShiftRight (Local3, 0x04, Local4)
                    And (Local4, 0x0F, Local4)
                    And (Local3, 0x0F, Local3)
                    Add (Multiply (0x04, Local0), 0x02, Local1)
                    Add (Local1, 0x02, Local2)
                    Store (HTOA (Local4), Index (STRB, Local1))
                    Increment (Local1)
                    Store (Zero, Index (STRB, Local1))
                    Store (HTOA (Local3), Index (STRB, Local2))
                    Increment (Local2)
                    Store (Zero, Index (STRB, Local2))
                    Increment (Local0)
                }

                Return (STRB)
            }

            Name (IDBF, Buffer (0x60){})
            Name (OSBF, Buffer (0x82){})
            Name (ODBF, Buffer (0x20){})
            Name (B_CT, Zero)
            Name (B_BK, Zero)
            Name (B_ID, Zero)
            Name (B_DT, Zero)
            Method (BRIO, 1, Serialized)
            {
                CreateByteField (Arg0, Zero, WLEN)
                ShiftRight (WLEN, 0x02, B_CT)
                If (LGreater (B_CT, 0x20))
                {
                    Return (Ones)
                }

                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    Store (STOH (Arg0), IDBF)
                    \_SB.PCI0.SBRG.SIO1.ENFG (0x07)
                    Store (Zero, Local0)
                    Store (Zero, Local1)
                    While (LLess (Local0, B_CT))
                    {
                        Store (DerefOf (Index (IDBF, Local0)), B_BK)
                        Increment (Local0)
                        Store (DerefOf (Index (IDBF, Local0)), B_ID)
                        Increment (Local0)
                        Store (B_BK, \_SB.PCI0.SBRG.SIO1.LDN)
                        Store (B_ID, \_SB.PCI0.SBRG.SIO1.INDX)
                        Store (\_SB.PCI0.SBRG.SIO1.DATA, Index (ODBF, Local1))
                        Increment (Local1)
                    }

                    \_SB.PCI0.SBRG.SIO1.EXFG ()
                    Store (HTOS (ODBF, Local1), OSBF)
                    Release (ASMX)
                    Return (OSBF)
                }

                Return (Ones)
            }

            Method (BWIO, 1, Serialized)
            {
                CreateByteField (Arg0, Zero, WLEN)
                ShiftRight (WLEN, 0x02, B_CT)
                If (LGreater (B_CT, 0x20))
                {
                    Return (Ones)
                }

                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    Store (STOH (Arg0), IDBF)
                    \_SB.PCI0.SBRG.SIO1.ENFG (0x07)
                    Store (Zero, Local0)
                    While (LLess (Local0, B_CT))
                    {
                        Store (DerefOf (Index (IDBF, Local0)), B_BK)
                        Increment (Local0)
                        Store (DerefOf (Index (IDBF, Local0)), B_ID)
                        Increment (Local0)
                        Store (DerefOf (Index (IDBF, Local0)), B_DT)
                        Increment (Local0)
                        Store (B_BK, \_SB.PCI0.SBRG.SIO1.LDN)
                        Store (B_ID, \_SB.PCI0.SBRG.SIO1.INDX)
                        Store (B_DT, \_SB.PCI0.SBRG.SIO1.DATA)
                    }

                    \_SB.PCI0.SBRG.SIO1.EXFG ()
                    Release (ASMX)
                    Return (Zero)
                }

                Return (Ones)
            }

            Method (IMRD, 2, Serialized)
            {
                OperationRegion (TMMM, SystemMemory, Arg0, 0x04)
                Field (TMMM, ByteAcc, NoLock, Preserve)
                {
                    MM08,   8
                }

                Field (TMMM, WordAcc, NoLock, Preserve)
                {
                    MM16,   16
                }

                Field (TMMM, DWordAcc, NoLock, Preserve)
                {
                    MM32,   32
                }

                Switch (Arg1)
                {
                    Case (One)
                    {
                        Store (MM08, Local0)
                    }
                    Case (0x02)
                    {
                        Store (MM16, Local0)
                    }
                    Case (0x04)
                    {
                        Store (MM32, Local0)
                    }
                    Default
                    {
                        Store (Ones, Local0)
                    }

                }

                Return (Local0)
            }

            Method (IMWR, 3, Serialized)
            {
                OperationRegion (TMMM, SystemMemory, Arg0, 0x04)
                Field (TMMM, ByteAcc, NoLock, Preserve)
                {
                    MM08,   8
                }

                Field (TMMM, WordAcc, NoLock, Preserve)
                {
                    MM16,   16
                }

                Field (TMMM, DWordAcc, NoLock, Preserve)
                {
                    MM32,   32
                }

                Switch (Arg1)
                {
                    Case (One)
                    {
                        Store (Arg2, MM08)
                    }
                    Case (0x02)
                    {
                        Store (Arg2, MM16)
                    }
                    Case (0x04)
                    {
                        Store (Arg2, MM32)
                    }
                    Default
                    {
                    }

                }
            }

            Method (BRHM, 1, Serialized)
            {
                CreateByteField (Arg0, Zero, WLEN)
                ShiftRight (WLEN, 0x02, B_CT)
                If (LGreater (B_CT, 0x20))
                {
                    Return (Ones)
                }

                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    Store (STOH (Arg0), IDBF)
                    \_SB.PCI0.SBRG.SIO1.ENFG (0x04)
                    Store (Zero, ECLK)
                    Store (Zero, Local0)
                    Store (Zero, Local1)
                    While (LLess (Local0, B_CT))
                    {
                        Store (DerefOf (Index (IDBF, Local0)), B_BK)
                        Increment (Local0)
                        Store (DerefOf (Index (IDBF, Local0)), B_ID)
                        Increment (Local0)
                        Store (HMBS (B_BK), Local2)
                        Add (Local2, B_ID, Local3)
                        Store (IMRD (Local3, One), Index (ODBF, Local1))
                        Increment (Local1)
                    }

                    Store (One, ECLK)
                    \_SB.PCI0.SBRG.SIO1.EXFG ()
                    Store (HTOS (ODBF, Local1), OSBF)
                    Release (ASMX)
                    Return (OSBF)
                }

                Return (Ones)
            }

            Method (BWHM, 1, Serialized)
            {
                CreateByteField (Arg0, Zero, WLEN)
                ShiftRight (WLEN, 0x02, B_CT)
                If (LGreater (B_CT, 0x20))
                {
                    Return (Ones)
                }

                If (LEqual (Acquire (ASMX, 0xFFFF), Zero))
                {
                    Store (STOH (Arg0), IDBF)
                    \_SB.PCI0.SBRG.SIO1.ENFG (0x04)
                    Store (Zero, ECLK)
                    Store (Zero, Local0)
                    While (LLess (Local0, B_CT))
                    {
                        Store (DerefOf (Index (IDBF, Local0)), B_BK)
                        Increment (Local0)
                        Store (DerefOf (Index (IDBF, Local0)), B_ID)
                        Increment (Local0)
                        Store (DerefOf (Index (IDBF, Local0)), B_DT)
                        Increment (Local0)
                        Store (HMBS (B_BK), Local2)
                        Add (Local2, B_ID, Local3)
                        IMWR (Local3, One, B_DT)
                    }

                    Store (One, ECLK)
                    \_SB.PCI0.SBRG.SIO1.EXFG ()
                    Release (ASMX)
                    Return (Zero)
                }

                Return (Ones)
            }

            Name (ECBK, Zero)
            Method (BREC, 1, Serialized)
            {
                Return (Ones)
            }

            Method (BWEC, 1, Serialized)
            {
                Return (Ones)
            }

            Method (WMBD, 3, Serialized)
            {
                Store (One, Local0)
                Switch (Arg1)
                {
                    Case (0x424D5352)
                    {
                        Return (RSMB (Arg2))
                    }
                    Case (0x424D5357)
                    {
                        Return (WSMB (Arg2))
                    }
                    Case (0x574D5352)
                    {
                        Return (RSMW (Arg2))
                    }
                    Case (0x574D5357)
                    {
                        Return (WSMW (Arg2))
                    }
                    Case (0x4B4D5352)
                    {
                        Return (RSMK (Arg2))
                    }
                    Case (0x4B4D5357)
                    {
                        Return (WSMK (Arg2))
                    }
                    Case (0x52494F42)
                    {
                        Return (RIOB (Arg2))
                    }
                    Case (0x57494F42)
                    {
                        Return (WIOB (Arg2))
                    }
                    Case (0x52494F57)
                    {
                        Return (RIOW (Arg2))
                    }
                    Case (0x57494F57)
                    {
                        Return (WIOW (Arg2))
                    }
                    Case (0x52494F44)
                    {
                        Return (RIOD (Arg2))
                    }
                    Case (0x57494F44)
                    {
                        Return (WIOD (Arg2))
                    }
                    Case (0x524D454D)
                    {
                        Return (RMEM (Arg2))
                    }
                    Case (0x574D454D)
                    {
                        Return (WMEM (Arg2))
                    }
                    Case (0x52504349)
                    {
                        Return (RPCI (Arg2))
                    }
                    Case (0x57504349)
                    {
                        Return (WPCI (Arg2))
                    }
                    Case (0x52494458)
                    {
                        Return (RIDX (Arg2))
                    }
                    Case (0x57494458)
                    {
                        Return (WIDX (Arg2))
                    }
                    Case (0x52444D52)
                    {
                        Return (RDMR (Arg2))
                    }
                    Case (0x57524D52)
                    {
                        Return (WRMR (Arg2))
                    }
                    Case (0x52434944)
                    {
                        Return (RCID (Arg2))
                    }
                    Case (0x52444543)
                    {
                        Return (RDEC (Arg2))
                    }
                    Case (0x57524543)
                    {
                        Return (WREC (Arg2))
                    }
                    Case (0x5253494F)
                    {
                        Return (RSIO (Arg2))
                    }
                    Case (0x5753494F)
                    {
                        Return (WSIO (Arg2))
                    }
                    Case (0x5248574D)
                    {
                        Return (RHWM (Arg2))
                    }
                    Case (0x5748574D)
                    {
                        Return (WHWM (Arg2))
                    }
                    Case (0x4252494F)
                    {
                        Return (BRIO (Arg2))
                    }
                    Case (0x4257494F)
                    {
                        Return (BWIO (Arg2))
                    }
                    Case (0x4252484D)
                    {
                        Return (BRHM (Arg2))
                    }
                    Case (0x4257484D)
                    {
                        Return (BWHM (Arg2))
                    }
                    Case (0x42524543)
                    {
                        Return (BREC (Arg2))
                    }
                    Case (0x42574543)
                    {
                        Return (BWEC (Arg2))
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }

                Return (Local0)
            }

            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
            {
                If (LEqual (Arg0, 0xD2))
                {
                    Return (EID2)
                }

                Return (Zero)
            }

            Method (AMWR, 1, Serialized)
            {
                Store (Zero, Local1)
                If (ECD2)
                {
                    Store (Arg0, EID2)
                    Notify (AMW0, 0xD2)
                    Store (One, Local1)
                }
                Else
                {
                }

                Return (Local1)
            }

            Method (AMWN, 1, Serialized)
            {
                Store (AMWR (Arg0), Local0)
                Return (Local0)
            }

            Name (WQMO, Buffer (0x1C5F)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                /* 0008 */  0x4F, 0x1C, 0x00, 0x00, 0x82, 0xDA, 0x00, 0x00,
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                /* 0018 */  0xA8, 0x29, 0xA7, 0x00, 0x01, 0x06, 0x18, 0x42,
                /* 0020 */  0x10, 0x07, 0x10, 0x0A, 0x2A, 0x9A, 0x42, 0x04,
                /* 0028 */  0x0A, 0x0D, 0xA1, 0x38, 0x0A, 0x60, 0x30, 0x12,
                /* 0030 */  0x20, 0x24, 0x07, 0x42, 0x2E, 0x98, 0x98, 0x00,
                /* 0038 */  0x11, 0x10, 0xF2, 0x2A, 0xC0, 0xA6, 0x00, 0x93,
                /* 0040 */  0x20, 0xEA, 0xDF, 0x1F, 0xA2, 0x24, 0x38, 0x94,
                /* 0048 */  0x10, 0x08, 0x49, 0x14, 0x60, 0x5E, 0x80, 0x6E,
                /* 0050 */  0x01, 0x86, 0x05, 0xD8, 0x16, 0x60, 0x5A, 0x80,
                /* 0058 */  0x63, 0x48, 0x2A, 0x0D, 0x9C, 0x12, 0x58, 0x0A,
                /* 0060 */  0x84, 0x84, 0x0A, 0x50, 0x2E, 0xC0, 0xB7, 0x00,
                /* 0068 */  0xED, 0x88, 0x92, 0x2C, 0xC0, 0x32, 0x8C, 0x08,
                /* 0070 */  0x3C, 0x8A, 0xC8, 0x46, 0xE3, 0x04, 0x65, 0x43,
                /* 0078 */  0xA3, 0x64, 0x40, 0xC8, 0xB3, 0x00, 0xEB, 0xC0,
                /* 0080 */  0x84, 0xC0, 0xEE, 0x05, 0x98, 0x13, 0xE0, 0x4D,
                /* 0088 */  0x80, 0xB8, 0x61, 0xC8, 0xDA, 0x00, 0x04, 0x55,
                /* 0090 */  0x98, 0x00, 0x5B, 0x30, 0x42, 0xA9, 0x0D, 0x46,
                /* 0098 */  0x28, 0x8D, 0x21, 0x68, 0x18, 0x46, 0x89, 0x78,
                /* 00A0 */  0x48, 0x9D, 0xC1, 0x0A, 0x25, 0x62, 0x98, 0x10,
                /* 00A8 */  0x11, 0x2A, 0xC3, 0x20, 0xC3, 0x0A, 0x15, 0x2D,
                /* 00B0 */  0x6E, 0x84, 0xF6, 0x07, 0x41, 0xA2, 0xAD, 0x58,
                /* 00B8 */  0x43, 0x75, 0xA4, 0xD1, 0xA0, 0x86, 0x97, 0xE0,
                /* 00C0 */  0x70, 0x3D, 0xD4, 0x73, 0xEC, 0x5C, 0x80, 0x74,
                /* 00C8 */  0x60, 0x81, 0x04, 0x3F, 0x8B, 0x3A, 0xC7, 0x49,
                /* 00D0 */  0x40, 0x12, 0x18, 0xEB, 0xF8, 0xD9, 0xC0, 0xF1,
                /* 00D8 */  0xAE, 0x01, 0x35, 0xE3, 0xE3, 0x65, 0x82, 0xE0,
                /* 00E0 */  0x50, 0x43, 0xF4, 0x40, 0xC3, 0x9D, 0xC0, 0x21,
                /* 00E8 */  0x32, 0x40, 0xCF, 0xE9, 0x68, 0x30, 0x07, 0x00,
                /* 00F0 */  0x3B, 0x9C, 0x8C, 0xEE, 0x01, 0xA5, 0x0A, 0x30,
                /* 00F8 */  0x3B, 0x66, 0x59, 0x04, 0xD2, 0x78, 0x0C, 0x7D,
                /* 0100 */  0xBA, 0xE7, 0x73, 0xC2, 0x09, 0x2C, 0x7F, 0x10,
                /* 0108 */  0xA8, 0x91, 0x19, 0xDA, 0x06, 0xA7, 0x25, 0xCC,
                /* 0110 */  0x90, 0x87, 0x7F, 0x58, 0x4C, 0x2C, 0x84, 0x3E,
                /* 0118 */  0x08, 0x1E, 0x0F, 0xBC, 0xFF, 0xFF, 0x78, 0xC0,
                /* 0120 */  0xA3, 0xF8, 0x4C, 0x20, 0x84, 0x57, 0x82, 0xD8,
                /* 0128 */  0x1E, 0xD0, 0x73, 0x82, 0x81, 0xB1, 0x03, 0xB2,
                /* 0130 */  0x5F, 0x01, 0x08, 0xC1, 0xCB, 0x1C, 0x91, 0x9C,
                /* 0138 */  0x22, 0x68, 0x4C, 0xC6, 0x68, 0x15, 0x42, 0x43,
                /* 0140 */  0x08, 0x6D, 0x88, 0xB3, 0x8B, 0x7F, 0xF0, 0x86,
                /* 0148 */  0x39, 0x77, 0x13, 0x14, 0x39, 0x02, 0x94, 0x98,
                /* 0150 */  0x11, 0xA0, 0x8E, 0x01, 0xD1, 0x43, 0x9F, 0x4D,
                /* 0158 */  0xF4, 0xE3, 0x89, 0x72, 0x12, 0x07, 0xE4, 0x33,
                /* 0160 */  0x83, 0x11, 0x82, 0x97, 0x7B, 0x48, 0x20, 0x9A,
                /* 0168 */  0xE7, 0xA0, 0x13, 0xC3, 0x39, 0x1D, 0x02, 0x13,
                /* 0170 */  0xC4, 0xF3, 0x3C, 0x41, 0xA2, 0x2C, 0x55, 0x36,
                /* 0178 */  0x96, 0xEA, 0x41, 0x50, 0x41, 0x40, 0x9A, 0xBB,
                /* 0180 */  0x21, 0x4E, 0xDA, 0xC8, 0x81, 0x63, 0x54, 0x3F,
                /* 0188 */  0x6C, 0x2A, 0x02, 0x4E, 0x87, 0x0D, 0x8F, 0xDB,
                /* 0190 */  0xF1, 0x49, 0x14, 0x7D, 0x40, 0x14, 0xCE, 0x61,
                /* 0198 */  0xCF, 0x1C, 0x14, 0xC4, 0x80, 0x4E, 0x02, 0x21,
                /* 01A0 */  0x27, 0x47, 0x01, 0x94, 0x96, 0x71, 0x92, 0x71,
                /* 01A8 */  0x9D, 0xDA, 0x9B, 0x80, 0xA7, 0xF5, 0x58, 0x70,
                /* 01B0 */  0x18, 0xC7, 0x75, 0xD6, 0x7E, 0x7E, 0xF8, 0xC6,
                /* 01B8 */  0xE0, 0xF9, 0xF8, 0x2E, 0xC0, 0x35, 0x40, 0x68,
                /* 01C0 */  0x46, 0x86, 0xB7, 0x1A, 0x40, 0x0A, 0xC6, 0x4F,
                /* 01C8 */  0x02, 0x8F, 0x00, 0x26, 0xB0, 0xAE, 0x03, 0x01,
                /* 01D0 */  0xF4, 0xCB, 0x86, 0x87, 0xEF, 0x13, 0xC6, 0xE3,
                /* 01D8 */  0x45, 0x82, 0xFA, 0xEE, 0x03, 0xA0, 0x00, 0xF2,
                /* 01E0 */  0x01, 0xC0, 0x4A, 0xEF, 0x00, 0x74, 0x0C, 0x21,
                /* 01E8 */  0xC2, 0x44, 0x33, 0x3A, 0x97, 0xB0, 0x52, 0xFD,
                /* 01F0 */  0xFF, 0x47, 0xCB, 0x0F, 0x2A, 0x1E, 0xAD, 0x41,
                /* 01F8 */  0x3C, 0x5A, 0x07, 0x1A, 0x2D, 0xFA, 0x98, 0x61,
                /* 0200 */  0x85, 0xA3, 0x92, 0xCF, 0x09, 0x68, 0xB8, 0x30,
                /* 0208 */  0x08, 0x0A, 0x3F, 0x70, 0x40, 0x03, 0x3C, 0xBD,
                /* 0210 */  0x37, 0x03, 0xCF, 0xC4, 0x70, 0x9E, 0x2F, 0x87,
                /* 0218 */  0xF3, 0x7C, 0xF9, 0x70, 0x7C, 0xA0, 0x80, 0x3F,
                /* 0220 */  0x60, 0x2C, 0x41, 0x81, 0x13, 0x06, 0x39, 0x3C,
                /* 0228 */  0x46, 0xF0, 0x60, 0xA9, 0xAC, 0x71, 0xA1, 0xEE,
                /* 0230 */  0x07, 0x3E, 0xD1, 0x30, 0xEC, 0x43, 0x3D, 0x9A,
                /* 0238 */  0xB7, 0x84, 0x33, 0x7C, 0x9B, 0x38, 0xA8, 0x77,
                /* 0240 */  0x0F, 0x3B, 0x15, 0x6A, 0xD1, 0x21, 0xAC, 0x47,
                /* 0248 */  0xCA, 0x61, 0x8D, 0x16, 0xF6, 0x80, 0x9F, 0x3B,
                /* 0250 */  0x7C, 0xCF, 0xE0, 0x57, 0x1A, 0x1F, 0x43, 0xE8,
                /* 0258 */  0x2A, 0x74, 0xAA, 0xE0, 0xA2, 0x20, 0x14, 0x6F,
                /* 0260 */  0x2D, 0x1A, 0xFE, 0x59, 0x78, 0x5C, 0xAF, 0x18,
                /* 0268 */  0xBE, 0x02, 0x3C, 0x9C, 0xF8, 0x0C, 0x10, 0x3F,
                /* 0270 */  0xD0, 0x11, 0xBC, 0x88, 0xF8, 0xEC, 0xE3, 0xCB,
                /* 0278 */  0x8B, 0x0F, 0x19, 0xEC, 0x64, 0xC1, 0x43, 0x50,
                /* 0280 */  0x28, 0xC6, 0xE1, 0x00, 0x25, 0x1C, 0x46, 0x70,
                /* 0288 */  0x06, 0xF1, 0xF0, 0x1C, 0xE4, 0x70, 0x80, 0x3E,
                /* 0290 */  0x07, 0x79, 0x20, 0x6C, 0x10, 0x06, 0x39, 0x8F,
                /* 0298 */  0x97, 0x1F, 0x76, 0xB1, 0xC0, 0xFF, 0xFF, 0x2F,
                /* 02A0 */  0x16, 0xC0, 0x2B, 0xCD, 0xA0, 0xD0, 0x7A, 0x06,
                /* 02A8 */  0x05, 0x01, 0xE3, 0xF9, 0xC1, 0xE3, 0xF5, 0x6C,
                /* 02B0 */  0x3D, 0x2D, 0xF0, 0x8E, 0xD8, 0xE7, 0x0F, 0xE0,
                /* 02B8 */  0x1C, 0xFE, 0xF0, 0x82, 0x8A, 0x3B, 0x24, 0x0A,
                /* 02C0 */  0xE2, 0xB3, 0x81, 0xA3, 0x8C, 0x17, 0x3D, 0x13,
                /* 02C8 */  0x1F, 0x86, 0x7C, 0x5C, 0x78, 0xBA, 0xC1, 0x1C,
                /* 02D0 */  0x3E, 0xC0, 0x3D, 0x12, 0x1F, 0x3E, 0x80, 0xC7,
                /* 02D8 */  0xFF, 0xFF, 0xF0, 0x01, 0xFC, 0x24, 0x5A, 0xD4,
                /* 02E0 */  0x2A, 0xF4, 0xF0, 0x01, 0xAE, 0x20, 0x27, 0x24,
                /* 02E8 */  0xB4, 0x9C, 0xC3, 0x07, 0x72, 0x22, 0x61, 0xA2,
                /* 02F0 */  0xFB, 0x8C, 0xF4, 0xE2, 0x61, 0x09, 0x07, 0x0F,
                /* 02F8 */  0x54, 0x78, 0x12, 0xC5, 0x3F, 0x15, 0xA0, 0x02,
                /* 0300 */  0x9F, 0x0A, 0x28, 0x88, 0x01, 0x7D, 0xA8, 0x80,
                /* 0308 */  0x33, 0x83, 0x67, 0x2F, 0xCC, 0x3C, 0x60, 0x9C,
                /* 0310 */  0x91, 0x00, 0x5B, 0x87, 0x0A, 0xF0, 0xFE, 0xFF,
                /* 0318 */  0x0F, 0x15, 0xC0, 0xE1, 0x80, 0x04, 0xC8, 0x92,
                /* 0320 */  0x78, 0x41, 0x7A, 0xA8, 0x00, 0xD7, 0x81, 0xD3,
                /* 0328 */  0x87, 0x0A, 0x7E, 0x92, 0xB3, 0x28, 0x20, 0x1D,
                /* 0330 */  0xF1, 0x7C, 0xA8, 0x80, 0x71, 0x11, 0x32, 0xFC,
                /* 0338 */  0x2F, 0xDD, 0xB1, 0x3C, 0x87, 0x91, 0x73, 0x05,
                /* 0340 */  0x3A, 0xF6, 0xC1, 0x00, 0x15, 0x74, 0xF4, 0x14,
                /* 0348 */  0xC4, 0x80, 0x4E, 0x71, 0x30, 0x40, 0xEB, 0x38,
                /* 0350 */  0x57, 0xA0, 0x8E, 0x71, 0xC0, 0xEF, 0xFF, 0x7F,
                /* 0358 */  0xA6, 0x00, 0x4E, 0x22, 0x8E, 0x56, 0xA8, 0xE1,
                /* 0360 */  0x7A, 0xAC, 0x06, 0xF1, 0x58, 0x7D, 0x0C, 0xF5,
                /* 0368 */  0x58, 0x71, 0xDF, 0x00, 0x1F, 0x01, 0xF0, 0x47,
                /* 0370 */  0x27, 0x1C, 0xD8, 0x73, 0x05, 0x60, 0xDA, 0xE3,
                /* 0378 */  0xB9, 0x02, 0x74, 0xD2, 0xCE, 0x3E, 0xE8, 0x80,
                /* 0380 */  0x6B, 0xD5, 0x49, 0x0C, 0x7F, 0x8E, 0x63, 0x04,
                /* 0388 */  0x43, 0x1D, 0xDE, 0x28, 0x84, 0xE3, 0x50, 0x28,
                /* 0390 */  0xCC, 0xC9, 0x80, 0xFE, 0xFF, 0x8F, 0xB0, 0x04,
                /* 0398 */  0x8E, 0x82, 0x78, 0x68, 0x0E, 0x73, 0x86, 0x03,
                /* 03A0 */  0xCD, 0xB1, 0x00, 0xDE, 0xAD, 0x82, 0x1D, 0x0B,
                /* 03A8 */  0x60, 0x13, 0xF8, 0x58, 0x00, 0xBE, 0x38, 0xC3,
                /* 03B0 */  0x42, 0x8F, 0xD6, 0xF7, 0x3F, 0xDC, 0xFD, 0x21,
                /* 03B8 */  0xCA, 0x4B, 0xB1, 0x0F, 0x39, 0x70, 0xC7, 0x05,
                /* 03C0 */  0x8E, 0xD3, 0x03, 0xE0, 0xEA, 0x20, 0x26, 0xA7,
                /* 03C8 */  0xA7, 0x07, 0x70, 0x25, 0x39, 0x3D, 0xA0, 0x06,
                /* 03D0 */  0xEC, 0xFF, 0xBF, 0x1E, 0x20, 0x9D, 0x13, 0xB0,
                /* 03D8 */  0x17, 0x6D, 0x06, 0x71, 0xA2, 0xCF, 0x23, 0x56,
                /* 03E0 */  0x70, 0xC4, 0x41, 0x65, 0x27, 0x51, 0xF2, 0x23,
                /* 03E8 */  0x0E, 0x2A, 0xEB, 0xD8, 0x29, 0x88, 0x01, 0x7D,
                /* 03F0 */  0xA2, 0x04, 0x7C, 0xDC, 0x71, 0x80, 0xC5, 0x46,
                /* 03F8 */  0x3D, 0x59, 0x1E, 0x79, 0xB2, 0x14, 0xC4, 0x93,
                /* 0400 */  0xF5, 0xA5, 0x02, 0x38, 0xDC, 0x70, 0x80, 0xFD,
                /* 0408 */  0xFF, 0xFF, 0x52, 0x01, 0x94, 0x1C, 0x4A, 0xBD,
                /* 0410 */  0x54, 0x80, 0x4C, 0xDE, 0x0D, 0x07, 0x1D, 0x72,
                /* 0418 */  0xAD, 0xBA, 0xD7, 0xB1, 0x63, 0xAB, 0xC7, 0xED,
                /* 0420 */  0x9B, 0x34, 0x26, 0xD8, 0x0D, 0x07, 0x15, 0x89,
                /* 0428 */  0x42, 0x81, 0xCE, 0x05, 0xA8, 0x08, 0x70, 0x14,
                /* 0430 */  0xC4, 0x43, 0xF3, 0xB9, 0xC0, 0x4A, 0xCE, 0x05,
                /* 0438 */  0x68, 0xEF, 0x17, 0x0A, 0x32, 0x38, 0xDF, 0x0B,
                /* 0440 */  0x0C, 0x53, 0xFC, 0x50, 0x74, 0xEF, 0xF1, 0xB9,
                /* 0448 */  0x00, 0xDC, 0x57, 0x1C, 0x70, 0x19, 0x13, 0xA0,
                /* 0450 */  0x0D, 0x92, 0xDC, 0xC3, 0x3D, 0x2E, 0xDC, 0x38,
                /* 0458 */  0x3C, 0xAA, 0x63, 0x8A, 0xF9, 0x1C, 0x17, 0xE4,
                /* 0460 */  0x39, 0xCE, 0xF3, 0xC2, 0x9D, 0x1F, 0x80, 0xDB,
                /* 0468 */  0xFF, 0x7F, 0x60, 0xB0, 0x2E, 0x5C, 0x40, 0x5C,
                /* 0470 */  0xA8, 0x49, 0x89, 0xE7, 0x07, 0x70, 0xDD, 0xBA,
                /* 0478 */  0x7D, 0x2F, 0xC4, 0x49, 0xB9, 0xBB, 0xA2, 0x30,
                /* 0480 */  0x5E, 0x49, 0x62, 0xF8, 0x9E, 0x6A, 0x6C, 0xC3,
                /* 0488 */  0x1C, 0xC0, 0xA9, 0x18, 0x27, 0xC1, 0xE0, 0x67,
                /* 0490 */  0x07, 0x3A, 0x2E, 0x47, 0x26, 0xD1, 0x6D, 0xDF,
                /* 0498 */  0x47, 0x08, 0x1E, 0x73, 0xF4, 0x14, 0xC4, 0x80,
                /* 04A0 */  0xCE, 0x70, 0x52, 0x41, 0xAB, 0x00, 0xD1, 0x14,
                /* 04A8 */  0x30, 0x37, 0x57, 0xC0, 0xDF, 0xFF, 0xFF, 0xE6,
                /* 04B0 */  0x0A, 0xB0, 0xC2, 0xA5, 0x42, 0x8D, 0x52, 0x8F,
                /* 04B8 */  0x14, 0xE0, 0xBA, 0x03, 0xFA, 0x16, 0x86, 0x93,
                /* 04C0 */  0x04, 0xA4, 0x2B, 0xEB, 0x69, 0x3C, 0x00, 0xF8,
                /* 04C8 */  0x4A, 0x01, 0xE3, 0xE2, 0xC9, 0x8E, 0x38, 0xFC,
                /* 04D0 */  0x76, 0xED, 0x63, 0x01, 0x30, 0xFF, 0xFF, 0x5F,
                /* 04D8 */  0x09, 0xC1, 0x7A, 0x2C, 0x00, 0xDE, 0x22, 0x5D,
                /* 04E0 */  0x5A, 0x34, 0x7B, 0x3F, 0x06, 0xD9, 0xB1, 0x00,
                /* 04E8 */  0x2D, 0x0A, 0x48, 0x1E, 0x67, 0x41, 0x86, 0xF6,
                /* 04F0 */  0x58, 0xF6, 0xAA, 0xE7, 0x51, 0x3D, 0x03, 0x44,
                /* 04F8 */  0x38, 0x91, 0x10, 0x09, 0x2C, 0xE3, 0x58, 0x80,
                /* 0500 */  0xA2, 0xF0, 0x25, 0x1E, 0xEE, 0xCD, 0x13, 0xCE,
                /* 0508 */  0x1C, 0x30, 0x53, 0x7E, 0x71, 0xE1, 0xE7, 0x02,
                /* 0510 */  0xC0, 0xCE, 0xFF, 0xFF, 0x5C, 0x00, 0x4C, 0x94,
                /* 0518 */  0x2A, 0xB5, 0x28, 0xF3, 0x7E, 0x0B, 0xDE, 0x01,
                /* 0520 */  0xFB, 0x7E, 0xEB, 0x73, 0x01, 0x53, 0x38, 0x0B,
                /* 0528 */  0x21, 0x04, 0xE9, 0xF3, 0x08, 0xA0, 0x13, 0x80,
                /* 0530 */  0xCF, 0x05, 0xEC, 0xB0, 0xE6, 0x73, 0x01, 0x3F,
                /* 0538 */  0x8C, 0x38, 0xCA, 0x79, 0x0D, 0x25, 0x1E, 0x8E,
                /* 0540 */  0x82, 0xF8, 0x82, 0x0B, 0xEF, 0x5C, 0x00, 0x38,
                /* 0548 */  0x18, 0x96, 0x81, 0xF9, 0xB0, 0xF8, 0x5C, 0xE1,
                /* 0550 */  0x1C, 0x85, 0x80, 0xDF, 0x55, 0xE1, 0xC9, 0xD2,
                /* 0558 */  0xE3, 0xF2, 0xFF, 0xFF, 0x30, 0xF7, 0xEC, 0x08,
                /* 0560 */  0xE4, 0x7D, 0x2A, 0xF4, 0x78, 0x7A, 0x00, 0x57,
                /* 0568 */  0x8E, 0xD3, 0x03, 0x5A, 0x0D, 0x90, 0x26, 0xF4,
                /* 0570 */  0xF4, 0x00, 0x33, 0xFF, 0x51, 0x0D, 0x95, 0xFC,
                /* 0578 */  0x7E, 0x0B, 0x8A, 0x73, 0x01, 0x38, 0x2E, 0x6B,
                /* 0580 */  0xC0, 0xEC, 0x56, 0x80, 0xBD, 0xAC, 0x01, 0x8B,
                /* 0588 */  0x0B, 0x0E, 0xFC, 0xFF, 0xFF, 0xCD, 0x03, 0xF8,
                /* 0590 */  0x5D, 0x6F, 0x01, 0x59, 0x77, 0x8A, 0xD7, 0x5B,
                /* 0598 */  0x90, 0x49, 0x5B, 0x85, 0xEE, 0x93, 0xB8, 0x80,
                /* 05A0 */  0x6B, 0xD1, 0x05, 0x07, 0x0F, 0xFF, 0x80, 0xCB,
                /* 05A8 */  0x75, 0x5E, 0x99, 0xC9, 0x21, 0xC0, 0x71, 0x4E,
                /* 05B0 */  0xE1, 0xA8, 0x20, 0x14, 0x8A, 0x7D, 0x32, 0x40,
                /* 05B8 */  0x05, 0x1D, 0x3D, 0x05, 0x31, 0xA0, 0x53, 0x5C,
                /* 05C0 */  0x5D, 0xD1, 0x3A, 0x6E, 0x5C, 0x9E, 0x82, 0x06,
                /* 05C8 */  0x71, 0x46, 0x67, 0xE5, 0x43, 0x05, 0xF8, 0xFF,
                /* 05D0 */  0xFF, 0xB7, 0x56, 0x30, 0x1D, 0x2A, 0x80, 0xC5,
                /* 05D8 */  0xE5, 0x18, 0xEE, 0xA1, 0x02, 0xF0, 0x12, 0xE9,
                /* 05E0 */  0xDA, 0x82, 0xFE, 0x2C, 0xF8, 0xA2, 0x00, 0x7B,
                /* 05E8 */  0x64, 0x60, 0x3F, 0x2E, 0xF8, 0x82, 0x04, 0x3C,
                /* 05F0 */  0xFF, 0xFF, 0xA7, 0x0F, 0xF0, 0xEB, 0xBC, 0x20,
                /* 05F8 */  0x81, 0x4E, 0xDB, 0xE9, 0x03, 0x9D, 0xF0, 0x82,
                /* 0600 */  0x84, 0x18, 0x55, 0xC8, 0x23, 0x31, 0xF0, 0x91,
                /* 0608 */  0x3D, 0x17, 0x1A, 0xE1, 0xDD, 0xFC, 0x71, 0xC1,
                /* 0610 */  0xE8, 0x26, 0x98, 0xE7, 0xF4, 0x81, 0x4A, 0x42,
                /* 0618 */  0xA1, 0x24, 0x47, 0x08, 0x94, 0xF6, 0x23, 0x04,
                /* 0620 */  0x05, 0xF1, 0x75, 0x9D, 0x1F, 0x0E, 0xF0, 0x43,
                /* 0628 */  0x7E, 0x1C, 0x78, 0x85, 0xF0, 0xA0, 0xD8, 0x44,
                /* 0630 */  0x60, 0xDC, 0x92, 0x80, 0xE7, 0x1D, 0xD5, 0xE3,
                /* 0638 */  0xC2, 0x0D, 0xC6, 0xC7, 0x87, 0xB3, 0x3A, 0xA5,
                /* 0640 */  0xA3, 0x02, 0x1E, 0x53, 0xF6, 0xA8, 0xC0, 0xF4,
                /* 0648 */  0xFF, 0xBF, 0x4A, 0x01, 0x26, 0x6F, 0x1F, 0xE0,
                /* 0650 */  0xB8, 0x4A, 0x01, 0x1E, 0xBC, 0x0A, 0x35, 0x78,
                /* 0658 */  0x95, 0x02, 0x99, 0xB2, 0xDB, 0x07, 0x8A, 0xC3,
                /* 0660 */  0xF9, 0x6E, 0x1F, 0x08, 0xAB, 0x87, 0x7D, 0x72,
                /* 0668 */  0x02, 0x78, 0x7F, 0x80, 0x71, 0xF9, 0x00, 0xCB,
                /* 0670 */  0xFF, 0xFF, 0xF2, 0x01, 0xF0, 0xFF, 0xFF, 0x7F,
                /* 0678 */  0xF9, 0x00, 0x4C, 0x59, 0xBD, 0x7C, 0x80, 0x4C,
                /* 0680 */  0xE0, 0xE5, 0x03, 0x35, 0x52, 0xC7, 0x3C, 0x17,
                /* 0688 */  0x22, 0x86, 0x16, 0xE3, 0x09, 0xE1, 0xF5, 0xA1,
                /* 0690 */  0x63, 0x01, 0xE6, 0x8F, 0x86, 0x00, 0x05, 0xFE,
                /* 0698 */  0xFF, 0x47, 0x43, 0x80, 0xE7, 0x62, 0x0F, 0x20,
                /* 06A0 */  0xD0, 0xFE, 0xFF, 0x07, 0x10, 0x78, 0xC2, 0x8E,
                /* 06A8 */  0x86, 0xE8, 0x78, 0x6B, 0x11, 0xF0, 0xB3, 0xD0,
                /* 06B0 */  0xFB, 0x07, 0x9C, 0x63, 0xC8, 0xEB, 0x82, 0x07,
                /* 06B8 */  0xFF, 0x0C, 0xE0, 0x30, 0xA7, 0x0F, 0x54, 0x8C,
                /* 06C0 */  0xD3, 0x07, 0xA0, 0x3B, 0xCE, 0xE9, 0x03, 0x15,
                /* 06C8 */  0xE0, 0xF4, 0x41, 0x41, 0x7C, 0xFA, 0x00, 0xDC,
                /* 06D0 */  0xFC, 0xFF, 0x03, 0x0D, 0x05, 0x35, 0x2C, 0x8F,
                /* 06D8 */  0xC3, 0x47, 0x05, 0xFC, 0x41, 0x01, 0x77, 0xF8,
                /* 06E0 */  0x00, 0x7E, 0x8A, 0x4F, 0x11, 0xE4, 0xBE, 0xE0,
                /* 06E8 */  0x23, 0x83, 0x0F, 0x1F, 0xC0, 0xDC, 0xEC, 0xE1,
                /* 06F0 */  0x03, 0x74, 0xE2, 0x0E, 0x1F, 0x28, 0x51, 0x10,
                /* 06F8 */  0x8A, 0x78, 0x98, 0x82, 0x7E, 0xB8, 0xF3, 0xF1,
                /* 0700 */  0xD0, 0xC7, 0x07, 0x72, 0x94, 0x02, 0xEA, 0xFF,
                /* 0708 */  0xFF, 0xA3, 0x14, 0xC0, 0xA3, 0x9B, 0x02, 0xFC,
                /* 0710 */  0xA3, 0x14, 0xE0, 0xE5, 0xFF, 0x7F, 0xFC, 0x00,
                /* 0718 */  0x3E, 0x82, 0x8F, 0x52, 0xA0, 0x3E, 0x7E, 0xF8,
                /* 0720 */  0x28, 0xE5, 0x6B, 0x2E, 0x3B, 0x7E, 0x80, 0x21,
                /* 0728 */  0xCA, 0xF1, 0x03, 0x15, 0x82, 0x42, 0x21, 0xCE,
                /* 0730 */  0x10, 0x28, 0xD9, 0x67, 0x08, 0x0A, 0xE2, 0xE1,
                /* 0738 */  0xF9, 0xF8, 0x01, 0x98, 0x38, 0x0B, 0xC3, 0x19,
                /* 0740 */  0x2B, 0xFC, 0x63, 0x2E, 0x30, 0xFB, 0xFF, 0x1F,
                /* 0748 */  0x73, 0x01, 0xFE, 0x19, 0x3E, 0x7C, 0x80, 0x2E,
                /* 0750 */  0xD4, 0x3A, 0x74, 0xF8, 0xC0, 0x49, 0x3B, 0x7C,
                /* 0758 */  0x20, 0x8E, 0x0F, 0x30, 0x90, 0x9E, 0xCF, 0xB0,
                /* 0760 */  0x32, 0x0E, 0x1F, 0x28, 0x0A, 0x42, 0xA3, 0xFF,
                /* 0768 */  0xFF, 0xD1, 0x80, 0x47, 0x3E, 0x1A, 0x50, 0x10,
                /* 0770 */  0xB3, 0x39, 0xCF, 0xCD, 0x02, 0xAD, 0xE8, 0x0C,
                /* 0778 */  0x8A, 0x9C, 0x08, 0xBC, 0x53, 0x3B, 0xF0, 0x3C,
                /* 0780 */  0x5A, 0x00, 0x16, 0xCF, 0x53, 0xE0, 0x3C, 0x5A,
                /* 0788 */  0x00, 0x9F, 0xFF, 0xFF, 0xD1, 0x02, 0x3C, 0x1E,
                /* 0790 */  0x7D, 0x2A, 0x3C, 0x5A, 0x80, 0xEC, 0xCC, 0xE9,
                /* 0798 */  0xA3, 0x05, 0x1F, 0xB0, 0x45, 0x01, 0x69, 0x62,
                /* 07A0 */  0x07, 0xF1, 0xA4, 0x13, 0xF1, 0x7C, 0x83, 0xD6,
                /* 07A8 */  0x8C, 0xA2, 0x71, 0x86, 0x0F, 0xFD, 0x2C, 0x99,
                /* 07B0 */  0xC0, 0x32, 0x0E, 0x47, 0x14, 0xC2, 0x14, 0x3E,
                /* 07B8 */  0x17, 0x00, 0xFF, 0xE3, 0x3B, 0x3F, 0x17, 0x00,
                /* 07C0 */  0x8E, 0xA4, 0x6A, 0x94, 0x28, 0xF3, 0x5C, 0x00,
                /* 07C8 */  0xAE, 0x0C, 0x27, 0x18, 0xD4, 0xFF, 0x1F, 0xD6,
                /* 07D0 */  0x4A, 0x4E, 0x30, 0x08, 0x8D, 0xB7, 0x02, 0x1D,
                /* 07D8 */  0x0A, 0x9E, 0x61, 0x30, 0x04, 0xD3, 0x1F, 0x0B,
                /* 07E0 */  0xE8, 0xA0, 0x9C, 0x9B, 0x44, 0xB9, 0x8F, 0x05,
                /* 07E8 */  0xA8, 0xA4, 0xC7, 0x02, 0x0A, 0xE2, 0xC3, 0x32,
                /* 07F0 */  0x81, 0x90, 0x91, 0x63, 0x01, 0xEA, 0x30, 0xE6,
                /* 07F8 */  0x61, 0x30, 0xAD, 0xC3, 0xD0, 0x98, 0x0E, 0xFE,
                /* 0800 */  0xAD, 0xC0, 0xD7, 0x85, 0x27, 0x17, 0xF0, 0x8E,
                /* 0808 */  0xD4, 0x87, 0x02, 0x70, 0x88, 0xBB, 0xB8, 0x00,
                /* 0810 */  0x54, 0xF9, 0xFF, 0xDF, 0x28, 0x80, 0x89, 0xC2,
                /* 0818 */  0x1F, 0xC5, 0x8B, 0x0B, 0xC8, 0x04, 0x5D, 0xE4,
                /* 0820 */  0xD1, 0xB1, 0x6E, 0x14, 0x88, 0x83, 0x54, 0xE8,
                /* 0828 */  0x18, 0x47, 0x72, 0x1C, 0x91, 0x9F, 0x5D, 0xB0,
                /* 0830 */  0x04, 0xBE, 0x2A, 0xFA, 0x52, 0xC1, 0xE5, 0x53,
                /* 0838 */  0x48, 0xFE, 0x0D, 0x0B, 0x25, 0xF8, 0x6E, 0x41,
                /* 0840 */  0x41, 0x3C, 0x3A, 0x27, 0xB9, 0x61, 0xA1, 0xB5,
                /* 0848 */  0x80, 0x68, 0x1E, 0x38, 0x9D, 0xD3, 0xD0, 0xB4,
                /* 0850 */  0x7C, 0xBD, 0x02, 0xA6, 0x21, 0x6E, 0x0F, 0x68,
                /* 0858 */  0x19, 0x20, 0xBA, 0x77, 0xE0, 0xAE, 0x8A, 0xC0,
                /* 0860 */  0xEC, 0xE8, 0x80, 0x3D, 0x78, 0xF0, 0xFF, 0xFF,
                /* 0868 */  0x55, 0x11, 0x60, 0xDA, 0xCD, 0x48, 0x57, 0x45,
                /* 0870 */  0xB0, 0x5D, 0xC0, 0x50, 0x57, 0x45, 0x02, 0xA4,
                /* 0878 */  0x9B, 0x11, 0xE6, 0xEA, 0x1A, 0xE4, 0x11, 0xC0,
                /* 0880 */  0x07, 0xC2, 0xE3, 0x0A, 0xF5, 0x74, 0xE4, 0xC9,
                /* 0888 */  0xBC, 0x04, 0xF0, 0x3B, 0x18, 0xB8, 0xFE, 0xFF,
                /* 0890 */  0x77, 0x30, 0x80, 0x11, 0x36, 0x8F, 0x38, 0x40,
                /* 0898 */  0xE4, 0x7C, 0x63, 0xED, 0x23, 0xD1, 0xD9, 0x20,
                /* 08A0 */  0xC8, 0x23, 0x80, 0xC1, 0x7D, 0x0B, 0xF0, 0x10,
                /* 08A8 */  0x1E, 0x71, 0x80, 0xC3, 0x3C, 0x70, 0x47, 0x1C,
                /* 08B0 */  0x30, 0xFF, 0xFF, 0x8F, 0x38, 0x00, 0xFF, 0xFF,
                /* 08B8 */  0xFF, 0x07, 0x0F, 0x30, 0xCA, 0x94, 0xEA, 0x50,
                /* 08C0 */  0xE2, 0xC1, 0x03, 0x5C, 0x12, 0x25, 0x5C, 0x59,
                /* 08C8 */  0xB1, 0x41, 0x57, 0xA2, 0xD3, 0xF3, 0x23, 0x0E,
                /* 08D0 */  0x87, 0x3D, 0xB0, 0x97, 0x0E, 0x1F, 0x31, 0x7C,
                /* 08D8 */  0xC6, 0x49, 0xE0, 0x68, 0x80, 0x3A, 0x76, 0xF0,
                /* 08E0 */  0x50, 0x30, 0x8A, 0x7D, 0x2E, 0x40, 0x05, 0x3D,
                /* 08E8 */  0x17, 0x50, 0x10, 0x03, 0x3A, 0xC5, 0x65, 0x12,
                /* 08F0 */  0x3D, 0x64, 0xCF, 0x82, 0x4D, 0xF5, 0x1C, 0x4E,
                /* 08F8 */  0xEA, 0x61, 0x12, 0xF0, 0x15, 0x6E, 0x95, 0x1A,
                /* 0900 */  0x2B, 0x8F, 0x73, 0x70, 0xA1, 0x20, 0xB6, 0x70,
                /* 0908 */  0xA4, 0x00, 0x62, 0xFF, 0xFF, 0xC3, 0x24, 0x30,
                /* 0910 */  0x08, 0x72, 0xAE, 0x41, 0x5F, 0x59, 0x7C, 0xA6,
                /* 0918 */  0xC2, 0x1D, 0x3B, 0x80, 0xDF, 0xB1, 0x06, 0x3B,
                /* 0920 */  0x74, 0x58, 0xD7, 0x69, 0x7B, 0xC7, 0x10, 0xE6,
                /* 0928 */  0x53, 0x86, 0x8F, 0x90, 0x6C, 0x58, 0xE0, 0x86,
                /* 0930 */  0xF2, 0xD0, 0xC1, 0x17, 0x65, 0xE8, 0x68, 0x68,
                /* 0938 */  0xA3, 0xBE, 0x1F, 0xF8, 0x62, 0x11, 0xF5, 0xF9,
                /* 0940 */  0xC3, 0xA3, 0x02, 0xFB, 0x4F, 0x44, 0x63, 0x07,
                /* 0948 */  0xE1, 0x09, 0xE6, 0xFF, 0xFF, 0x04, 0x03, 0xAC,
                /* 0950 */  0x75, 0x1A, 0xD4, 0xE8, 0xF1, 0x04, 0x03, 0x2E,
                /* 0958 */  0x51, 0x27, 0x18, 0xF4, 0xC9, 0xC5, 0x67, 0x3E,
                /* 0960 */  0xCC, 0x09, 0x06, 0x46, 0x98, 0x13, 0x0C, 0x2A,
                /* 0968 */  0x06, 0x8C, 0x62, 0x1C, 0x43, 0x50, 0xC2, 0x8F,
                /* 0970 */  0x21, 0x14, 0xC4, 0xC7, 0x10, 0x9F, 0x60, 0x00,
                /* 0978 */  0x13, 0x19, 0x2E, 0x0E, 0x68, 0x15, 0x57, 0x10,
                /* 0980 */  0xE4, 0x25, 0x0C, 0x58, 0xFD, 0xFF, 0x6F, 0x0D,
                /* 0988 */  0x30, 0x72, 0x1C, 0x40, 0xD0, 0x37, 0x74, 0x1F,
                /* 0990 */  0x40, 0x60, 0xCC, 0x09, 0xAC, 0x87, 0x02, 0x1F,
                /* 0998 */  0xD4, 0xC0, 0x76, 0x8A, 0xF7, 0xED, 0x03, 0xFE,
                /* 09A0 */  0x98, 0xC0, 0x8A, 0xE4, 0x69, 0x83, 0xED, 0x2C,
                /* 09A8 */  0x07, 0x58, 0x3C, 0xBA, 0x60, 0xFF, 0xFF, 0x67,
                /* 09B0 */  0x39, 0xC0, 0xCE, 0xD1, 0x45, 0x67, 0x39, 0x90,
                /* 09B8 */  0xE9, 0xFF, 0x27, 0xE8, 0x4C, 0x8A, 0x53, 0x01,
                /* 09C0 */  0xA4, 0xB3, 0x1C, 0x1B, 0xC7, 0x4B, 0x8A, 0x87,
                /* 09C8 */  0xF9, 0x62, 0xE9, 0x7B, 0x0A, 0x1B, 0x5F, 0x9C,
                /* 09D0 */  0xA7, 0x80, 0x17, 0xD0, 0x87, 0x00, 0x67, 0x7E,
                /* 09D8 */  0xB2, 0xE8, 0xF0, 0xC2, 0xD3, 0xC2, 0x48, 0xF9,
                /* 09E0 */  0x99, 0x14, 0xA5, 0xF5, 0x4C, 0x4A, 0x41, 0x3C,
                /* 09E8 */  0x3A, 0x1F, 0x5E, 0x00, 0x9B, 0xFF, 0xFF, 0xC3,
                /* 09F0 */  0x0B, 0x30, 0xB8, 0x75, 0x00, 0x0B, 0xC9, 0xBF,
                /* 09F8 */  0x0A, 0x5D, 0x06, 0xB8, 0x48, 0x18, 0x0D, 0xC9,
                /* 0A00 */  0x20, 0x06, 0xF4, 0x85, 0x14, 0xF0, 0x72, 0xDD,
                /* 0A08 */  0xF3, 0x95, 0x01, 0x7F, 0xF5, 0x61, 0xA7, 0x72,
                /* 0A10 */  0xDF, 0x2C, 0x4C, 0xF0, 0xAC, 0xEC, 0x9B, 0x1C,
                /* 0A18 */  0xB8, 0x0F, 0x0D, 0xE0, 0x1A, 0x14, 0xCC, 0x41,
                /* 0A20 */  0x9C, 0x8B, 0xCF, 0x5D, 0x1E, 0x14, 0xFE, 0xFF,
                /* 0A28 */  0x7F, 0x7D, 0x01, 0xDF, 0xA0, 0xC0, 0x0F, 0x1B,
                /* 0A30 */  0xF0, 0xDD, 0xE0, 0xC0, 0x81, 0xC5, 0xFD, 0xCC,
                /* 0A38 */  0x83, 0x02, 0x16, 0x03, 0x07, 0x16, 0x37, 0x10,
                /* 0A40 */  0x0F, 0x0A, 0x5C, 0x97, 0x46, 0x0F, 0x0A, 0x77,
                /* 0A48 */  0xCC, 0xB0, 0x48, 0x40, 0xDD, 0x42, 0x9E, 0x4F,
                /* 0A50 */  0x4E, 0x1C, 0x33, 0x2A, 0xB0, 0x7B, 0x18, 0x15,
                /* 0A58 */  0xF4, 0xFF, 0xFF, 0xA8, 0xC0, 0x35, 0x73, 0xCC,
                /* 0A60 */  0xA8, 0xC0, 0x0E, 0xE3, 0x51, 0x81, 0xEB, 0x3E,
                /* 0A68 */  0x05, 0xBC, 0xB5, 0x3A, 0xBC, 0x59, 0x82, 0x4D,
                /* 0A70 */  0xEB, 0x7D, 0x0A, 0x9D, 0xF8, 0x61, 0xA1, 0x9B,
                /* 0A78 */  0x25, 0xBB, 0x4F, 0xC1, 0xCE, 0x77, 0x9F, 0x42,
                /* 0A80 */  0x25, 0x83, 0x51, 0xB2, 0x33, 0x0F, 0x2A, 0xCB,
                /* 0A88 */  0x99, 0x87, 0x82, 0xD8, 0xC4, 0x7D, 0x0A, 0x28,
                /* 0A90 */  0xFD, 0xFF, 0xEF, 0x53, 0x80, 0xBF, 0x41, 0xC3,
                /* 0A98 */  0x39, 0x11, 0xE1, 0x07, 0x0D, 0xD6, 0xAB, 0x03,
                /* 0AA0 */  0x1F, 0x34, 0x78, 0xA6, 0x04, 0xF3, 0xF8, 0x81,
                /* 0AA8 */  0x99, 0x12, 0x58, 0x8F, 0x4C, 0xE0, 0x9B, 0x12,
                /* 0AB0 */  0x9C, 0xE3, 0x10, 0x7E, 0x4A, 0xFC, 0xFF, 0x3F,
                /* 0AB8 */  0x25, 0xB0, 0x5D, 0x98, 0xC0, 0x37, 0x25, 0x98,
                /* 0AC0 */  0xA3, 0x06, 0xFF, 0x79, 0x09, 0x7C, 0x47, 0x58,
                /* 0AC8 */  0x4F, 0x09, 0x77, 0xCB, 0xF5, 0x59, 0x08, 0xC6,
                /* 0AD0 */  0x98, 0xC0, 0x7A, 0x5C, 0x02, 0xDF, 0x98, 0xE0,
                /* 0AD8 */  0x0E, 0x1B, 0xFC, 0x87, 0x25, 0xF0, 0xFD, 0xFF,
                /* 0AE0 */  0x4F, 0xB9, 0x80, 0x45, 0x18, 0x9F, 0x72, 0x01,
                /* 0AE8 */  0x4F, 0xB7, 0x28, 0x9D, 0x72, 0x41, 0x96, 0x66,
                /* 0AF0 */  0x1D, 0x3A, 0xEF, 0xE3, 0x34, 0x01, 0x69, 0x64,
                /* 0AF8 */  0x27, 0x11, 0xF1, 0x5D, 0xBF, 0xEB, 0x79, 0xE9,
                /* 0B00 */  0xBC, 0xD4, 0x39, 0x82, 0x6E, 0x32, 0xEF, 0x00,
                /* 0B08 */  0x86, 0xB6, 0x8A, 0x83, 0x3E, 0x1D, 0x95, 0xF3,
                /* 0B10 */  0x93, 0x28, 0xFF, 0xB9, 0x00, 0x95, 0xF8, 0x5C,
                /* 0B18 */  0x40, 0x41, 0x0C, 0xE8, 0x38, 0x02, 0xFE, 0xFF,
                /* 0B20 */  0x27, 0x24, 0xEC, 0x4E, 0x7C, 0xAD, 0x62, 0x08,
                /* 0B28 */  0x87, 0xC4, 0x06, 0x02, 0xE3, 0x9A, 0x04, 0x56,
                /* 0B30 */  0x02, 0xDF, 0xC5, 0x01, 0xE7, 0x83, 0xF1, 0xB5,
                /* 0B38 */  0x02, 0x70, 0xF3, 0xFF, 0xBF, 0x56, 0xE0, 0xBC,
                /* 0B40 */  0x0A, 0xB5, 0xE8, 0xF0, 0x5A, 0x01, 0x2E, 0x41,
                /* 0B48 */  0xAB, 0xD0, 0xB5, 0x02, 0x17, 0x6B, 0x2D, 0xBA,
                /* 0B50 */  0x8B, 0x33, 0x9F, 0xD0, 0xC2, 0x38, 0x92, 0xE3,
                /* 0B58 */  0x88, 0x7C, 0xC8, 0x2F, 0x10, 0x61, 0x42, 0x3C,
                /* 0B60 */  0x90, 0xEA, 0x5A, 0x81, 0x8A, 0x40, 0xA1, 0xE8,
                /* 0B68 */  0xE7, 0x02, 0x54, 0xD8, 0xB1, 0x53, 0x10, 0x03,
                /* 0B70 */  0x3A, 0xC9, 0xB5, 0x02, 0xAD, 0x05, 0x44, 0xB3,
                /* 0B78 */  0xC0, 0xE9, 0x9C, 0x84, 0x26, 0xE5, 0x43, 0x05,
                /* 0B80 */  0xE0, 0x2B, 0xC6, 0x35, 0x1E, 0x25, 0xFC, 0x1A,
                /* 0B88 */  0x4F, 0x41, 0x3C, 0x31, 0x1F, 0x2A, 0x80, 0xF3,
                /* 0B90 */  0xFF, 0xFF, 0xA8, 0x0D, 0x9E, 0x61, 0xE1, 0x64,
                /* 0B98 */  0xDC, 0x70, 0x7C, 0xC6, 0x24, 0xA8, 0x8F, 0xE3,
                /* 0BA0 */  0xC0, 0xF9, 0xE0, 0x01, 0xBC, 0x25, 0xFA, 0x94,
                /* 0BA8 */  0x7A, 0x68, 0x05, 0x99, 0x98, 0x83, 0x07, 0x3A,
                /* 0BB0 */  0xD2, 0x5A, 0x74, 0x68, 0x65, 0x07, 0x0F, 0x58,
                /* 0BB8 */  0x21, 0x0E, 0x1E, 0x28, 0xF9, 0x14, 0x92, 0x7F,
                /* 0BC0 */  0x76, 0x40, 0x09, 0x3E, 0x3B, 0x50, 0x10, 0x8F,
                /* 0BC8 */  0xCD, 0x07, 0x0F, 0xE0, 0xF1, 0xFF, 0x3F, 0x78,
                /* 0BD0 */  0x00, 0x93, 0x10, 0x37, 0x07, 0xE8, 0x97, 0x56,
                /* 0BD8 */  0x60, 0x76, 0x70, 0xC0, 0x1E, 0x9F, 0x00, 0x8B,
                /* 0BE0 */  0xC7, 0x0E, 0xE0, 0xF9, 0xFF, 0x3F, 0x76, 0x00,
                /* 0BE8 */  0x0D, 0xA7, 0xC7, 0x0E, 0x70, 0xC5, 0x79, 0x03,
                /* 0BF0 */  0xE8, 0xD8, 0x81, 0x13, 0x05, 0xA4, 0xE3, 0x13,
                /* 0BF8 */  0x1B, 0xD3, 0x13, 0xB6, 0x41, 0x1E, 0x1F, 0x30,
                /* 0C00 */  0xC6, 0x00, 0x25, 0xE3, 0xBC, 0x41, 0x21, 0x4C,
                /* 0C08 */  0xE1, 0x73, 0x01, 0x18, 0x67, 0x81, 0x3F, 0x17,
                /* 0C10 */  0x80, 0x9D, 0xC0, 0xE7, 0x02, 0xC0, 0x93, 0x45,
                /* 0C18 */  0xB3, 0x42, 0x7D, 0x9E, 0x0B, 0xE0, 0xFE, 0xFF,
                /* 0C20 */  0xCF, 0x05, 0xE0, 0x9E, 0xA6, 0xCF, 0x05, 0x00,
                /* 0C28 */  0x7D, 0xA4, 0x9E, 0x0B, 0x80, 0xD7, 0x38, 0x9F,
                /* 0C30 */  0x0B, 0xC0, 0xF2, 0xFF, 0x3F, 0x17, 0x00, 0xD4,
                /* 0C38 */  0xB0, 0x78, 0x2E, 0x00, 0x5E, 0xD2, 0xCE, 0x05,
                /* 0C40 */  0x80, 0x8A, 0xFF, 0xFF, 0xB9, 0x00, 0xD0, 0xA6,
                /* 0C48 */  0xF5, 0x5C, 0x00, 0x2E, 0xF1, 0xAB, 0xA0, 0xA1,
                /* 0C50 */  0x21, 0x24, 0x17, 0x06, 0x25, 0x61, 0xEC, 0x50,
                /* 0C58 */  0x46, 0x73, 0x30, 0xC7, 0x10, 0x9C, 0x49, 0x82,
                /* 0C60 */  0x43, 0x0D, 0xD4, 0x53, 0x7F, 0x1A, 0x38, 0x8D,
                /* 0C68 */  0xC7, 0x40, 0xCF, 0xEA, 0x79, 0x3C, 0x24, 0x3B,
                /* 0C70 */  0x23, 0x78, 0x88, 0xFC, 0x58, 0xE0, 0xB1, 0xBE,
                /* 0C78 */  0xB1, 0x59, 0x3B, 0xA2, 0x4E, 0x6C, 0x86, 0x49,
                /* 0C80 */  0xE0, 0x21, 0x32, 0x34, 0x4E, 0x70, 0x66, 0xA1,
                /* 0C88 */  0x31, 0x37, 0x3F, 0xDF, 0xFF, 0x5E, 0x03, 0x3C,
                /* 0C90 */  0x37, 0x13, 0x74, 0x3F, 0x74, 0x29, 0x44, 0xD0,
                /* 0C98 */  0x09, 0xE0, 0x9D, 0xA0, 0x46, 0x01, 0xDE, 0xAE,
                /* 0CA0 */  0x02, 0xB2, 0x25, 0x40, 0xDC, 0xE8, 0x85, 0xF5,
                /* 0CA8 */  0xCA, 0x15, 0x25, 0x44, 0x84, 0xA0, 0x51, 0x8C,
                /* 0CB0 */  0x17, 0x21, 0x54, 0x88, 0x28, 0x51, 0x9B, 0x03,
                /* 0CB8 */  0x91, 0x36, 0x54, 0x81, 0x44, 0x0B, 0x66, 0x04,
                /* 0CC0 */  0x66, 0x7F, 0x10, 0x44, 0xFA, 0x33, 0x40, 0x77,
                /* 0CC8 */  0x40, 0x47, 0x3A, 0x3C, 0xA2, 0x87, 0xEB, 0xA1,
                /* 0CD0 */  0x9E, 0xE3, 0xFF, 0xFF, 0x35, 0xFD, 0x79, 0xD2,
                /* 0CD8 */  0x20, 0x07, 0x79, 0x6E, 0x4F, 0x8F, 0x18, 0x70,
                /* 0CE0 */  0x9D, 0x21, 0xA0, 0x5D, 0xE6, 0x03, 0x9E, 0xF1,
                /* 0CE8 */  0x03, 0x33, 0x85, 0x43, 0x0D, 0xD1, 0xA7, 0x77,
                /* 0CF0 */  0x4F, 0xE0, 0x10, 0x19, 0xA0, 0x0F, 0x11, 0xF0,
                /* 0CF8 */  0xC7, 0xE3, 0x03, 0x24, 0xE6, 0xB0, 0xA9, 0x41,
                /* 0D00 */  0xA0, 0x46, 0x66, 0x68, 0x8F, 0xF4, 0xB4, 0x9E,
                /* 0D08 */  0x32, 0x3D, 0xFC, 0xC3, 0x62, 0x62, 0xCF, 0x0E,
                /* 0D10 */  0x74, 0x3C, 0xE0, 0x57, 0x7C, 0x26, 0x10, 0xC2,
                /* 0D18 */  0xC3, 0x83, 0xE7, 0xEB, 0x43, 0xB5, 0x4E, 0x22,
                /* 0D20 */  0x68, 0x68, 0x83, 0x9E, 0x8D, 0xCF, 0x10, 0xBE,
                /* 0D28 */  0x79, 0xB0, 0xA3, 0x05, 0x17, 0x75, 0xB4, 0x40,
                /* 0D30 */  0x9D, 0x16, 0x7C, 0x50, 0x60, 0x47, 0x54, 0x7E,
                /* 0D38 */  0xB2, 0x60, 0x47, 0x61, 0x70, 0xCA, 0x3B, 0x84,
                /* 0D40 */  0x80, 0x02, 0xC4, 0x27, 0x0B, 0x36, 0x2F, 0x0C,
                /* 0D48 */  0x81, 0x45, 0xC2, 0xA3, 0x0E, 0x1D, 0x86, 0xE7,
                /* 0D50 */  0xA7, 0x84, 0xC7, 0x11, 0x86, 0xFD, 0x46, 0xE2,
                /* 0D58 */  0x29, 0x1C, 0x8E, 0x8F, 0x14, 0x46, 0x08, 0x5E,
                /* 0D60 */  0xEE, 0xD4, 0xF4, 0xFF, 0x9F, 0x40, 0xCD, 0xA3,
                /* 0D68 */  0xD3, 0x94, 0x4E, 0xF9, 0x10, 0xD8, 0x50, 0x3D,
                /* 0D70 */  0x04, 0x7E, 0x5E, 0xF0, 0x10, 0xF8, 0x00, 0x5A,
                /* 0D78 */  0x9D, 0x1D, 0x39, 0x9F, 0x9C, 0x13, 0x6E, 0xBC,
                /* 0D80 */  0x7C, 0x4C, 0xD8, 0x01, 0xF0, 0x94, 0xAF, 0x5C,
                /* 0D88 */  0x9F, 0x45, 0x68, 0x8C, 0xE5, 0xFB, 0x38, 0x02,
                /* 0D90 */  0xC8, 0x99, 0xC4, 0x13, 0x48, 0x84, 0x97, 0x91,
                /* 0D98 */  0x20, 0x21, 0x8E, 0xE5, 0x35, 0xC4, 0x20, 0x31,
                /* 0DA0 */  0x8E, 0xE1, 0x64, 0x1E, 0x47, 0x38, 0xCC, 0x33,
                /* 0DA8 */  0x89, 0xE1, 0x1E, 0x0E, 0x5E, 0x45, 0x5E, 0x48,
                /* 0DB0 */  0x0C, 0xF3, 0x28, 0xE2, 0xF3, 0x41, 0x0C, 0x63,
                /* 0DB8 */  0x86, 0x8A, 0x76, 0x02, 0x3E, 0x8E, 0xB0, 0x48,
                /* 0DC0 */  0x0F, 0x06, 0x0D, 0xD5, 0xC7, 0x11, 0xC0, 0xCF,
                /* 0DC8 */  0xFF, 0xFF, 0x38, 0x02, 0xFC, 0x8F, 0x08, 0xB8,
                /* 0DD0 */  0xD3, 0x06, 0xDC, 0xFB, 0x44, 0x88, 0x27, 0x8D,
                /* 0DD8 */  0x97, 0x84, 0x67, 0x0D, 0xE0, 0xA2, 0x8A, 0xB9,
                /* 0DE0 */  0x00, 0x43, 0x20, 0x4A, 0x73, 0x34, 0x47, 0x71,
                /* 0DE8 */  0x58, 0x13, 0x90, 0x86, 0xC9, 0x19, 0xCF, 0xFD,
                /* 0DF0 */  0xB9, 0xE0, 0xEC, 0x62, 0x07, 0x09, 0x13, 0xE4,
                /* 0DF8 */  0x89, 0xE0, 0x35, 0xCA, 0xA7, 0x20, 0x41, 0xEA,
                /* 0E00 */  0x6C, 0xCE, 0xD3, 0x53, 0x48, 0xF7, 0xD9, 0x1C,
                /* 0E08 */  0xA5, 0xF4, 0x9C, 0x46, 0x41, 0x7C, 0x46, 0xF0,
                /* 0E10 */  0xB5, 0x1B, 0xCE, 0x1C, 0xCE, 0xE8, 0x40, 0xDE,
                /* 0E18 */  0x03, 0xD8, 0xC5, 0x1C, 0x98, 0x5D, 0x64, 0xB0,
                /* 0E20 */  0x27, 0x1D, 0x3C, 0xBA, 0xFF, 0xFF, 0x37, 0x85,
                /* 0E28 */  0xF3, 0x7C, 0x3F, 0xF0, 0xBD, 0x1C, 0xB0, 0x15,
                /* 0E30 */  0xE2, 0x2E, 0x80, 0x92, 0x7D, 0x17, 0xA0, 0x20,
                /* 0E38 */  0x9E, 0x98, 0xA3, 0x5C, 0x91, 0xA0, 0xE0, 0x3F,
                /* 0E40 */  0x0A, 0xBC, 0x0C, 0xBC, 0x2E, 0x60, 0xAE, 0xE5,
                /* 0E48 */  0xC0, 0x37, 0xC8, 0x85, 0x01, 0xCA, 0x6D, 0xE0,
                /* 0E50 */  0xE1, 0x89, 0x0D, 0x0A, 0xFC, 0x50, 0xBE, 0x1E,
                /* 0E58 */  0x82, 0xF9, 0xFF, 0x7F, 0x3D, 0x04, 0xB6, 0x4A,
                /* 0E60 */  0x9D, 0xDA, 0x54, 0x78, 0x3D, 0x04, 0x57, 0x94,
                /* 0E68 */  0x6B, 0x09, 0xEA, 0xD6, 0x64, 0x41, 0x40, 0xF2,
                /* 0E70 */  0x7E, 0xBE, 0x21, 0x98, 0x3E, 0x97, 0xC0, 0xBB,
                /* 0E78 */  0x83, 0x6A, 0x55, 0xBA, 0x97, 0xF0, 0xE0, 0x14,
                /* 0E80 */  0x8A, 0x7E, 0x78, 0x40, 0x85, 0x3D, 0x3C, 0x50,
                /* 0E88 */  0x10, 0x5F, 0x8C, 0x7C, 0x2F, 0x01, 0xEC, 0xFF,
                /* 0E90 */  0xFF, 0x47, 0x84, 0xCD, 0x30, 0x22, 0xB4, 0x8A,
                /* 0E98 */  0xA3, 0x05, 0x72, 0x46, 0x60, 0x3D, 0x11, 0xF8,
                /* 0EA0 */  0xE4, 0x02, 0x9C, 0xC3, 0x5F, 0x82, 0x51, 0x71,
                /* 0EA8 */  0xE7, 0x4C, 0x41, 0x3C, 0x28, 0x9F, 0x5C, 0x80,
                /* 0EB0 */  0xDF, 0xA9, 0x04, 0x30, 0xF5, 0xFF, 0x07, 0xD3,
                /* 0EB8 */  0xA9, 0x04, 0x74, 0x77, 0x2F, 0x30, 0x5D, 0x4D,
                /* 0EC0 */  0xCE, 0x24, 0x5A, 0x70, 0xDF, 0xBD, 0x00, 0x66,
                /* 0EC8 */  0xFE, 0xFF, 0xEF, 0x5E, 0x00, 0x3D, 0xBD, 0xDE,
                /* 0ED0 */  0xBD, 0x80, 0xD7, 0xB9, 0x84, 0xFF, 0xFF, 0xEF,
                /* 0ED8 */  0x5E, 0x00, 0xFF, 0xFF, 0xFF, 0x77, 0x2F, 0x80,
                /* 0EE0 */  0x32, 0xA7, 0x12, 0x90, 0x65, 0x3B, 0x95, 0xA0,
                /* 0EE8 */  0x15, 0x9E, 0xA3, 0xA1, 0x4E, 0xE0, 0x50, 0x9E,
                /* 0EF0 */  0x30, 0x5E, 0xD5, 0x13, 0x58, 0xCF, 0xE5, 0x0B,
                /* 0EF8 */  0xA5, 0x04, 0x46, 0x97, 0x2F, 0xE0, 0xF5, 0xFF,
                /* 0F00 */  0xBF, 0x7C, 0x01, 0xAC, 0x08, 0x74, 0x17, 0x40,
                /* 0F08 */  0x45, 0xB8, 0x0B, 0x50, 0x10, 0x5F, 0xBE, 0x00,
                /* 0F10 */  0x2F, 0xA1, 0x20, 0x64, 0xE4, 0x26, 0x41, 0x2F,
                /* 0F18 */  0x5F, 0x70, 0x2E, 0x0E, 0xBE, 0x1F, 0x79, 0x50,
                /* 0F20 */  0x30, 0xFE, 0xFF, 0x83, 0x82, 0x39, 0x98, 0xF3,
                /* 0F28 */  0x2E, 0xF6, 0xA4, 0x48, 0xAF, 0x27, 0x70, 0xEF,
                /* 0F30 */  0x1C, 0x1E, 0x1B, 0x38, 0xC4, 0x5D, 0xC1, 0x80,
                /* 0F38 */  0xBD, 0xCB, 0xDB, 0x09, 0xB8, 0xB4, 0xAD, 0x5D,
                /* 0F40 */  0xB7, 0x13, 0x5C, 0xC2, 0xE3, 0x34, 0xE4, 0xE3,
                /* 0F48 */  0x09, 0x26, 0xCF, 0xED, 0x04, 0x95, 0x04, 0x46,
                /* 0F50 */  0x59, 0x48, 0x74, 0x84, 0xE0, 0xEA, 0x6F, 0x62,
                /* 0F58 */  0x14, 0xC4, 0x16, 0x6E, 0x27, 0x80, 0x88, 0xFF,
                /* 0F60 */  0xFF, 0xED, 0x04, 0xB0, 0x30, 0x66, 0x38, 0x23,
                /* 0F68 */  0x7A, 0xAF, 0x30, 0xA4, 0xCF, 0x60, 0xC0, 0x34,
                /* 0F70 */  0xD0, 0x11, 0x04, 0x7D, 0x49, 0xC3, 0x26, 0xB8,
                /* 0F78 */  0x81, 0xD0, 0x19, 0xC1, 0xBB, 0x80, 0xC0, 0x9D,
                /* 0F80 */  0x18, 0xAC, 0x03, 0x08, 0xF8, 0xCE, 0x6A, 0xC0,
                /* 0F88 */  0xE8, 0xFF, 0x7F, 0x56, 0x03, 0xBE, 0x07, 0x00,
                /* 0F90 */  0x9F, 0xD5, 0x00, 0x55, 0xB7, 0x17, 0x90, 0x5D,
                /* 0F98 */  0x53, 0x7C, 0x7B, 0xE1, 0x03, 0xB6, 0x06, 0x20,
                /* 0FA0 */  0x1D, 0x1F, 0x4E, 0xFF, 0x38, 0x8E, 0xE2, 0xBC,
                /* 0FA8 */  0x4E, 0xE3, 0x05, 0x26, 0x46, 0xCD, 0xA7, 0x0C,
                /* 0FB0 */  0x32, 0xE1, 0xDE, 0x00, 0x95, 0xFA, 0x1A, 0x45,
                /* 0FB8 */  0x47, 0xE5, 0xBC, 0x24, 0x4A, 0x7D, 0x2C, 0x40,
                /* 0FC0 */  0xE5, 0x3C, 0x16, 0x50, 0x10, 0x03, 0xFA, 0xE2,
                /* 0FC8 */  0x61, 0x25, 0x17, 0x0F, 0xF4, 0x20, 0x4E, 0xF6,
                /* 0FD0 */  0x0D, 0xD5, 0x17, 0x0F, 0x30, 0x13, 0xFC, 0xFF,
                /* 0FD8 */  0x5F, 0x3C, 0xC0, 0x64, 0xEC, 0xD6, 0xF3, 0x42,
                /* 0FE0 */  0x01, 0x44, 0x82, 0x4F, 0x15, 0x15, 0x75, 0xAA,
                /* 0FE8 */  0x14, 0xC4, 0x53, 0x75, 0x8C, 0x13, 0x89, 0xA7,
                /* 0FF0 */  0x8A, 0x3E, 0x09, 0x9D, 0xDB, 0x1B, 0x09, 0x3F,
                /* 0FF8 */  0x0F, 0xBC, 0x4F, 0x80, 0x79, 0x28, 0x3E, 0x5C,
                /* 1000 */  0x01, 0x8E, 0x14, 0xFA, 0x34, 0xA9, 0xF4, 0x3A,
                /* 1008 */  0x01, 0x2E, 0x41, 0xD7, 0x09, 0x74, 0xAC, 0xA5,
                /* 1010 */  0xEA, 0x3A, 0x01, 0x6F, 0x98, 0x0E, 0x72, 0x9D,
                /* 1018 */  0xA0, 0x10, 0xFF, 0xFF, 0xC7, 0x3C, 0x16, 0xE0,
                /* 1020 */  0xB0, 0x87, 0x92, 0x0C, 0x47, 0x41, 0x3C, 0x36,
                /* 1028 */  0xDF, 0xC9, 0x7D, 0x9D, 0x80, 0x7B, 0x67, 0x81,
                /* 1030 */  0x77, 0x9D, 0x60, 0x87, 0x02, 0xD8, 0x04, 0xBE,
                /* 1038 */  0xB3, 0x80, 0xE7, 0x40, 0xC1, 0x0E, 0x0E, 0x60,
                /* 1040 */  0x1E, 0x14, 0x38, 0x0E, 0x0E, 0x80, 0xAA, 0x1B,
                /* 1048 */  0x2D, 0xC8, 0xF4, 0x1F, 0x1C, 0xD0, 0x2A, 0xAE,
                /* 1050 */  0x35, 0x88, 0xFF, 0xFF, 0xC1, 0x01, 0x2F, 0xED,
                /* 1058 */  0x34, 0x44, 0x72, 0x5F, 0x6B, 0x50, 0x89, 0xAF,
                /* 1060 */  0x35, 0x80, 0xEC, 0xE8, 0x53, 0x45, 0x85, 0x9D,
                /* 1068 */  0x2A, 0x05, 0xF1, 0x54, 0x7D, 0xE5, 0x80, 0x75,
                /* 1070 */  0x9D, 0xC0, 0x1C, 0xBB, 0xC0, 0x3D, 0x14, 0x5F,
                /* 1078 */  0x39, 0xC0, 0x77, 0x9F, 0x00, 0x0E, 0xFF, 0xFF,
                /* 1080 */  0x63, 0x17, 0x48, 0xEF, 0x35, 0xA0, 0x93, 0x74,
                /* 1088 */  0x9F, 0x40, 0x07, 0xBB, 0xD7, 0x40, 0xBC, 0x4F,
                /* 1090 */  0x3C, 0xAD, 0x3D, 0xD1, 0xE9, 0x5E, 0x83, 0x0A,
                /* 1098 */  0x41, 0xA1, 0x8B, 0x8D, 0x4F, 0x05, 0x5C, 0x34,
                /* 10A0 */  0x1C, 0x05, 0xF1, 0xBD, 0x06, 0x70, 0x72, 0x72,
                /* 10A8 */  0x00, 0xEF, 0xBD, 0x06, 0x3C, 0x27, 0x07, 0xE0,
                /* 10B0 */  0xF3, 0xFF, 0x3F, 0x39, 0x00, 0xB5, 0x8B, 0x0D,
                /* 10B8 */  0xC8, 0x12, 0x9C, 0x1C, 0xD0, 0x3A, 0x2E, 0x36,
                /* 10C0 */  0x50, 0x11, 0x12, 0x4C, 0x7E, 0xB1, 0x41, 0x65,
                /* 10C8 */  0xBE, 0xD8, 0x00, 0xB2, 0xEF, 0xA7, 0xE0, 0xBB,
                /* 10D0 */  0x08, 0x3C, 0x50, 0xE0, 0x2E, 0x14, 0xF8, 0xFF,
                /* 10D8 */  0xFF, 0xCD, 0x06, 0x98, 0xDD, 0x4F, 0x81, 0xBF,
                /* 10E0 */  0xC4, 0x9B, 0x0D, 0xE8, 0x44, 0x5D, 0x28, 0xD0,
                /* 10E8 */  0xD1, 0x6E, 0x36, 0x50, 0xAD, 0x01, 0x2A, 0xCC,
                /* 10F0 */  0xCD, 0x06, 0x15, 0x83, 0x42, 0x57, 0x1B, 0x1F,
                /* 10F8 */  0x0B, 0xB8, 0x6C, 0x38, 0x0A, 0xE2, 0x9B, 0x0D,
                /* 1100 */  0xE0, 0xE4, 0xE8, 0x80, 0xF9, 0xFF, 0x1F, 0x1D,
                /* 1108 */  0xC0, 0x78, 0xB5, 0x01, 0x3E, 0x47, 0x07, 0x40,
                /* 1110 */  0xC1, 0xD5, 0x06, 0x64, 0x2A, 0x56, 0xA1, 0xA3,
                /* 1118 */  0x03, 0x2E, 0xCB, 0x4D, 0x19, 0xAA, 0x39, 0x40,
                /* 1120 */  0xDD, 0x9A, 0x7D, 0xB5, 0xE1, 0xBA, 0x29, 0xA4,
                /* 1128 */  0xFC, 0xE8, 0x80, 0xD2, 0x7A, 0x74, 0xA0, 0x20,
                /* 1130 */  0x1E, 0x9B, 0x53, 0x1C, 0x0B, 0xD0, 0x3A, 0x8E,
                /* 1138 */  0x05, 0x74, 0xAE, 0x31, 0x22, 0x3C, 0x3B, 0x3C,
                /* 1140 */  0xDB, 0x00, 0xA3, 0xFF, 0xFF, 0xA1, 0x00, 0x5E,
                /* 1148 */  0x86, 0x9B, 0x28, 0x94, 0x0B, 0x40, 0xC4, 0x33,
                /* 1150 */  0x3A, 0x7F, 0x13, 0x9C, 0xE8, 0x21, 0x81, 0xF3,
                /* 1158 */  0x20, 0x0A, 0xBE, 0xCB, 0x0F, 0x60, 0x70, 0x24,
                /* 1160 */  0xBE, 0x72, 0x00, 0x6E, 0xFE, 0xFF, 0x57, 0x0E,
                /* 1168 */  0x9C, 0x4D, 0x8B, 0x36, 0x2F, 0x3F, 0x20, 0x0B,
                /* 1170 */  0x77, 0xF9, 0x41, 0x4B, 0xBC, 0x72, 0x40, 0x3C,
                /* 1178 */  0xCE, 0x1C, 0xB1, 0x2F, 0x42, 0xBE, 0xFC, 0x70,
                /* 1180 */  0x39, 0x30, 0x12, 0x03, 0xA1, 0x63, 0x01, 0x8F,
                /* 1188 */  0x7F, 0xE5, 0xA0, 0x20, 0x96, 0x70, 0x2C, 0x80,
                /* 1190 */  0x7A, 0xE5, 0xC0, 0xDC, 0x7E, 0x80, 0xE9, 0xB1,
                /* 1198 */  0x80, 0x5F, 0xA7, 0xE1, 0x9C, 0x3A, 0x70, 0xD7,
                /* 11A0 */  0x69, 0xE0, 0x7A, 0x41, 0x02, 0x1E, 0xFF, 0xFF,
                /* 11A8 */  0xE3, 0x05, 0xA0, 0xF1, 0x82, 0x04, 0xB2, 0x18,
                /* 11B0 */  0x0F, 0x09, 0x1D, 0x2F, 0x70, 0x62, 0x80, 0x74,
                /* 11B8 */  0xBC, 0x80, 0x87, 0xF0, 0x54, 0xA1, 0x15, 0xE9,
                /* 11C0 */  0x82, 0xC4, 0x83, 0xC3, 0x28, 0xFA, 0xF1, 0x02,
                /* 11C8 */  0x15, 0xF6, 0x94, 0x41, 0x41, 0x7C, 0xD4, 0x71,
                /* 11D0 */  0x82, 0x93, 0x03, 0x7A, 0x94, 0x56, 0x38, 0x06,
                /* 11D8 */  0xCD, 0xE3, 0xE9, 0x07, 0xBC, 0x04, 0xBE, 0x36,
                /* 11E0 */  0x80, 0x6B, 0x42, 0x70, 0x86, 0x70, 0xBE, 0xB5,
                /* 11E8 */  0x4F, 0x08, 0xD2, 0xFF, 0xFF, 0x76, 0x04, 0x9C,
                /* 11F0 */  0x22, 0x4C, 0x08, 0xAD, 0x02, 0x44, 0x1A, 0x0F,
                /* 11F8 */  0x01, 0xC4, 0xF1, 0x88, 0x40, 0x7C, 0x68, 0xE0,
                /* 1200 */  0x23, 0x02, 0xD7, 0x65, 0x10, 0x07, 0xEE, 0xA3,
                /* 1208 */  0xC4, 0x19, 0xF7, 0x7C, 0x02, 0x03, 0x31, 0x92,
                /* 1210 */  0x0F, 0xAB, 0x60, 0x3B, 0x81, 0x01, 0xAB, 0x7B,
                /* 1218 */  0x8F, 0x4F, 0x60, 0xC0, 0xE4, 0xFF, 0x7F, 0x02,
                /* 1220 */  0x03, 0x1C, 0x59, 0x38, 0xD3, 0x00, 0xAA, 0x4C,
                /* 1228 */  0x3A, 0x14, 0x7A, 0x02, 0x03, 0x99, 0xCC, 0x33,
                /* 1230 */  0x0D, 0x3A, 0xEC, 0x4A, 0x74, 0xA6, 0x81, 0x37,
                /* 1238 */  0x4D, 0xC7, 0x3B, 0xD3, 0x50, 0x08, 0x07, 0x83,
                /* 1240 */  0x51, 0x2C, 0x08, 0x1D, 0x0B, 0x78, 0x10, 0x38,
                /* 1248 */  0x0A, 0x62, 0x0F, 0xC7, 0x6D, 0x7A, 0xA6, 0x81,
                /* 1250 */  0x77, 0xB6, 0xE2, 0xFF, 0xFF, 0xF3, 0x17, 0x78,
                /* 1258 */  0x2F, 0x14, 0xE0, 0x1A, 0x12, 0x9C, 0x4B, 0x0D,
                /* 1260 */  0x3F, 0x7D, 0x01, 0xD7, 0x03, 0x1A, 0x9C, 0x63,
                /* 1268 */  0x0D, 0x66, 0x4C, 0x60, 0x3F, 0xD8, 0x80, 0x6F,
                /* 1270 */  0x4C, 0x3E, 0xD8, 0xC0, 0x3B, 0x9E, 0x81, 0x1B,
                /* 1278 */  0xCA, 0x77, 0x66, 0x70, 0xFD, 0xFF, 0x8F, 0x79,
                /* 1280 */  0xC0, 0xEF, 0x6E, 0x03, 0xBE, 0x63, 0x1E, 0xF0,
                /* 1288 */  0x3B, 0xC3, 0x00, 0xBA, 0xAE, 0xD5, 0x40, 0xEB,
                /* 1290 */  0xBA, 0x70, 0x9C, 0xAF, 0xD5, 0xEC, 0xFF, 0x7F,
                /* 1298 */  0xAD, 0xC6, 0xA9, 0xBF, 0x56, 0xA3, 0xF4, 0x1E,
                /* 12A0 */  0x4A, 0x29, 0x88, 0xC7, 0xE6, 0x24, 0x87, 0x0B,
                /* 12A8 */  0xB4, 0x96, 0x0B, 0x3E, 0x99, 0xD3, 0x31, 0x9C,
                /* 12B0 */  0xCF, 0x09, 0x15, 0x7F, 0xC6, 0x47, 0x5D, 0xAC,
                /* 12B8 */  0x81, 0xE1, 0x3D, 0x0C, 0xE6, 0xA0, 0x30, 0x17,
                /* 12C0 */  0x6B, 0xC0, 0x56, 0xF0, 0x7B, 0x18, 0x2A, 0xEA,
                /* 12C8 */  0x8C, 0x28, 0x88, 0xAF, 0x05, 0xBE, 0x97, 0xC0,
                /* 12D0 */  0xB9, 0x73, 0xE0, 0xEE, 0x25, 0xF0, 0xEE, 0xD5,
                /* 12D8 */  0x60, 0xF9, 0xFF, 0xCF, 0x15, 0x6C, 0x57, 0x0E,
                /* 12E0 */  0xE0, 0x2D, 0x56, 0xA2, 0xC9, 0x6B, 0x35, 0x10,
                /* 12E8 */  0x93, 0x76, 0xAD, 0x06, 0x5D, 0x9C, 0x2B, 0x07,
                /* 12F0 */  0x7A, 0x4C, 0xBE, 0x72, 0xC0, 0xBA, 0x58, 0x03,
                /* 12F8 */  0xD3, 0x2B, 0x12, 0xDC, 0x53, 0x07, 0xEE, 0xEC,
                /* 1300 */  0x00, 0xE3, 0xFF, 0x7F, 0x17, 0x03, 0xB6, 0xC7,
                /* 1308 */  0x0B, 0x70, 0xDC, 0xC5, 0x80, 0xD3, 0xF1, 0x02,
                /* 1310 */  0xA8, 0x5F, 0x90, 0x40, 0xA6, 0xE5, 0x82, 0x84,
                /* 1318 */  0x4E, 0x74, 0xBC, 0x80, 0x6A, 0xED, 0xC4, 0xE3,
                /* 1320 */  0x0B, 0x12, 0xEA, 0x8E, 0xE4, 0xD4, 0x47, 0x18,
                /* 1328 */  0x54, 0xCE, 0xD3, 0x01, 0x05, 0x31, 0xA0, 0x6F,
                /* 1330 */  0x84, 0xBE, 0x86, 0xE1, 0xCE, 0x0D, 0xEC, 0xFF,
                /* 1338 */  0x7F, 0x6E, 0xC0, 0x1C, 0x8F, 0x80, 0xE1, 0x21,
                /* 1340 */  0x8C, 0x5D, 0x7E, 0x80, 0x45, 0x8C, 0xB3, 0x15,
                /* 1348 */  0x4A, 0xF8, 0xC5, 0x84, 0x82, 0x78, 0x62, 0x3E,
                /* 1350 */  0xC1, 0xC1, 0xB9, 0x4E, 0x70, 0x91, 0x63, 0xD2,
                /* 1358 */  0xA1, 0x16, 0xFC, 0x63, 0xF1, 0x09, 0x0E, 0x7C,
                /* 1360 */  0xA3, 0x82, 0x3B, 0xDC, 0xB3, 0x39, 0x2A, 0xF0,
                /* 1368 */  0x5F, 0x14, 0x7C, 0xCC, 0x03, 0xE7, 0xFF, 0xFF,
                /* 1370 */  0xD6, 0x01, 0x9C, 0x95, 0xDA, 0x94, 0x78, 0x47,
                /* 1378 */  0x02, 0x59, 0xBC, 0x3B, 0x12, 0x5A, 0xE4, 0xAD,
                /* 1380 */  0x03, 0xEA, 0x91, 0xC7, 0xB2, 0xEE, 0x48, 0x28,
                /* 1388 */  0x41, 0x30, 0xBA, 0x24, 0xF9, 0xEC, 0xC0, 0x97,
                /* 1390 */  0x66, 0x30, 0x83, 0xF8, 0x8E, 0xE4, 0x20, 0xB7,
                /* 1398 */  0x0E, 0xE8, 0x17, 0x24, 0xE0, 0x79, 0x74, 0x00,
                /* 13A0 */  0xC7, 0xF9, 0x02, 0xFE, 0x0D, 0x09, 0x3C, 0xA3,
                /* 13A8 */  0xC2, 0xFD, 0xFF, 0xCF, 0x17, 0xC0, 0xEF, 0x8E,
                /* 13B0 */  0x04, 0x9E, 0xF3, 0x05, 0x60, 0x4A, 0xE9, 0x25,
                /* 13B8 */  0x09, 0x64, 0x7A, 0x0E, 0xEA, 0xE8, 0x54, 0x07,
                /* 13C0 */  0x75, 0xA8, 0xDE, 0x00, 0x95, 0xE3, 0x84, 0x4E,
                /* 13C8 */  0x47, 0xE5, 0x04, 0x30, 0xBA, 0x24, 0x01, 0xBF,
                /* 13D0 */  0xFF, 0xFF, 0x25, 0x09, 0x30, 0x11, 0xE5, 0x66,
                /* 13D8 */  0x82, 0x12, 0x7F, 0x33, 0xA1, 0x20, 0xBE, 0x1C,
                /* 13E0 */  0xFB, 0x0C, 0xE7, 0xA9, 0xE2, 0xA0, 0x3D, 0x80,
                /* 13E8 */  0x47, 0x80, 0x17, 0x13, 0xB8, 0x57, 0x24, 0xE0,
                /* 13F0 */  0x35, 0x26, 0x58, 0x8A, 0xC7, 0x04, 0x04, 0x6E,
                /* 13F8 */  0x1C, 0xE0, 0x1C, 0x13, 0xAC, 0x3B, 0xFE, 0x31,
                /* 1400 */  0x81, 0xE9, 0xFF, 0x7F, 0x83, 0x07, 0x06, 0x63,
                /* 1408 */  0x82, 0x7D, 0xA6, 0x38, 0x26, 0xF0, 0xDF, 0x8C,
                /* 1410 */  0x7C, 0x6F, 0x01, 0x3C, 0xFD, 0x15, 0x3B, 0xBC,
                /* 1418 */  0x66, 0x81, 0xEC, 0xA0, 0xE1, 0x7B, 0x0B, 0x4E,
                /* 1420 */  0xC2, 0x35, 0x0B, 0xE2, 0x30, 0x1F, 0x31, 0x1D,
                /* 1428 */  0xFA, 0xAA, 0x47, 0x47, 0xE5, 0xB8, 0x24, 0x0A,
                /* 1430 */  0x7D, 0x6F, 0x41, 0xC5, 0x3C, 0x64, 0x50, 0x10,
                /* 1438 */  0x03, 0xFA, 0xE0, 0x0D, 0x96, 0xFF, 0xFF, 0xBD,
                /* 1440 */  0x05, 0x9C, 0x07, 0x6F, 0xC0, 0xF4, 0x69, 0x17,
                /* 1448 */  0x7C, 0xC7, 0x09, 0xE0, 0xED, 0xD0, 0xE2, 0x25,
                /* 1450 */  0x10, 0x6C, 0x97, 0x3E, 0x1F, 0x27, 0xD8, 0xFF,
                /* 1458 */  0x7F, 0xBC, 0x2C, 0xD4, 0x52, 0x75, 0x9C, 0x80,
                /* 1460 */  0x67, 0xEE, 0x2E, 0x4A, 0x2F, 0x81, 0x3C, 0x00,
                /* 1468 */  0x85, 0xE4, 0xDF, 0x47, 0x51, 0x82, 0xE1, 0x28,
                /* 1470 */  0x88, 0xC7, 0xE6, 0x13, 0x35, 0x70, 0xBB, 0x4F,
                /* 1478 */  0x80, 0xEF, 0x44, 0x0D, 0xDC, 0xCE, 0x0D, 0x80,
                /* 1480 */  0xA9, 0xCB, 0x1D, 0xDC, 0xFF, 0xFF, 0xB9, 0x01,
                /* 1488 */  0x46, 0xFA, 0x73, 0x03, 0xFA, 0x24, 0xED, 0xCB,
                /* 1490 */  0x1D, 0xBC, 0x73, 0x83, 0x55, 0x9F, 0xA8, 0x51,
                /* 1498 */  0x7A, 0x29, 0xA4, 0xFA, 0xDC, 0x80, 0xD2, 0x79,
                /* 14A0 */  0x6E, 0xA0, 0x20, 0x1E, 0x9B, 0x13, 0x1C, 0x0A,
                /* 14A8 */  0xD0, 0xA3, 0xF4, 0x7C, 0x1F, 0x02, 0xEA, 0x3C,
                /* 14B0 */  0xD4, 0x00, 0xD1, 0x5B, 0x0F, 0xB0, 0x3A, 0x33,
                /* 14B8 */  0x80, 0xEF, 0xD6, 0x03, 0x98, 0xF8, 0xFF, 0x5F,
                /* 14C0 */  0xED, 0xC0, 0x7B, 0xDD, 0x00, 0x1C, 0xF9, 0x34,
                /* 14C8 */  0xE9, 0xF4, 0xD6, 0x03, 0xB2, 0x48, 0xD7, 0x0D,
                /* 14D0 */  0xB4, 0xB0, 0x3B, 0x19, 0xD4, 0x4B, 0x9D, 0xA5,
                /* 14D8 */  0x1C, 0xA5, 0x51, 0x22, 0x0E, 0xD1, 0xBE, 0x60,
                /* 14E0 */  0xA2, 0xAE, 0x66, 0x1C, 0xC4, 0x17, 0x3C, 0x9F,
                /* 14E8 */  0x4D, 0x7D, 0xDD, 0x80, 0x77, 0xE9, 0x01, 0xEE,
                /* 14F0 */  0xFF, 0xFF, 0x7B, 0x11, 0x70, 0xB9, 0x71, 0x80,
                /* 14F8 */  0xEF, 0x5E, 0x04, 0xDC, 0x4E, 0x16, 0x80, 0xAA,
                /* 1500 */  0x7B, 0x11, 0xC8, 0xE2, 0x9F, 0x2C, 0xD0, 0x21,
                /* 1508 */  0x4E, 0x16, 0x50, 0x0F, 0x46, 0x4F, 0x00, 0xBA,
                /* 1510 */  0x17, 0xA1, 0x04, 0x53, 0x48, 0xF6, 0xBD, 0x08,
                /* 1518 */  0x25, 0x14, 0x46, 0xFF, 0x7F, 0x38, 0x83, 0x78,
                /* 1520 */  0x6C, 0x8E, 0x70, 0x28, 0x40, 0xAB, 0x00, 0x91,
                /* 1528 */  0xC2, 0x79, 0x68, 0x0C, 0x5D, 0x1F, 0x8C, 0x00,
                /* 1530 */  0x62, 0xFF, 0xFF, 0xCF, 0x1B, 0xC0, 0xDD, 0xA6,
                /* 1538 */  0x57, 0x91, 0x07, 0x23, 0x90, 0x85, 0x3A, 0x6F,
                /* 1540 */  0xA0, 0xA5, 0x9D, 0x37, 0xA0, 0x1E, 0x99, 0x2D,
                /* 1548 */  0xE6, 0x60, 0x84, 0x92, 0x01, 0xA3, 0x93, 0x91,
                /* 1550 */  0x0F, 0x05, 0x3C, 0xF6, 0x79, 0x83, 0x82, 0xF8,
                /* 1558 */  0x60, 0xE4, 0x43, 0x01, 0x9C, 0xF3, 0x06, 0xE6,
                /* 1560 */  0x64, 0x04, 0x98, 0xFD, 0xFF, 0x9F, 0x8C, 0x00,
                /* 1568 */  0x8E, 0x1C, 0x2D, 0x74, 0x32, 0x02, 0x59, 0x96,
                /* 1570 */  0xA3, 0x05, 0x5A, 0xD1, 0xD1, 0x02, 0xA2, 0x34,
                /* 1578 */  0x01, 0xDA, 0x8E, 0x36, 0x3E, 0x19, 0xA1, 0xD2,
                /* 1580 */  0x93, 0x28, 0xFD, 0xF1, 0x05, 0x95, 0xF7, 0x74,
                /* 1588 */  0x40, 0x41, 0x0C, 0xE8, 0x30, 0x43, 0x44, 0x41,
                /* 1590 */  0x7A, 0x20, 0x9E, 0xEF, 0xE9, 0x1C, 0xC3, 0x8B,
                /* 1598 */  0x03, 0x66, 0xBA, 0x95, 0x23, 0x68, 0x32, 0xCD,
                /* 15A0 */  0xC3, 0x69, 0x2E, 0x0F, 0x3F, 0xB0, 0xFF, 0xFF,
                /* 15A8 */  0xB7, 0x23, 0x98, 0xBA, 0xAE, 0x05, 0xD0, 0x4F,
                /* 15B0 */  0x01, 0x47, 0x7B, 0x26, 0x87, 0x60, 0xCF, 0x97,
                /* 15B8 */  0x1F, 0x20, 0x12, 0x7F, 0xBA, 0xA8, 0xC0, 0xD3,
                /* 15C0 */  0xA5, 0x20, 0x9E, 0x2E, 0x1C, 0x29, 0x57, 0x0A,
                /* 15C8 */  0xD4, 0x64, 0x71, 0xB7, 0x82, 0x87, 0x75, 0xB0,
                /* 15D0 */  0x5F, 0x13, 0x3D, 0x5C, 0x30, 0x5D, 0xDF, 0x80,
                /* 15D8 */  0xBB, 0x52, 0x85, 0xB7, 0x0A, 0x70, 0xC5, 0x5A,
                /* 15E0 */  0xA7, 0x6E, 0x15, 0x38, 0x71, 0xA7, 0x75, 0xF2,
                /* 15E8 */  0xFF, 0xBF, 0x55, 0xC0, 0xF2, 0x06, 0xE9, 0xD3,
                /* 15F0 */  0x3A, 0x4A, 0x08, 0x85, 0x64, 0x5C, 0xDF, 0x50,
                /* 15F8 */  0xD7, 0x2C, 0x83, 0x19, 0xC4, 0xA3, 0x73, 0xA8,
                /* 1600 */  0x73, 0x01, 0x5A, 0xD2, 0xAD, 0x02, 0xCA, 0xD9,
                /* 1608 */  0x00, 0x5C, 0xB7, 0x20, 0xF0, 0x9C, 0x0D, 0x00,
                /* 1610 */  0x53, 0x5E, 0xCF, 0x06, 0x20, 0x0B, 0x73, 0x81,
                /* 1618 */  0x41, 0x4B, 0xBA, 0x6A, 0x41, 0x75, 0x76, 0x9F,
                /* 1620 */  0xA5, 0x17, 0x18, 0x1E, 0x9F, 0x44, 0x47, 0x10,
                /* 1628 */  0xB8, 0x69, 0xCE, 0x06, 0xC8, 0xFF, 0x3F, 0x41,
                /* 1630 */  0x3D, 0x57, 0x2D, 0xD4, 0x09, 0x06, 0xE0, 0xBB,
                /* 1638 */  0x4D, 0x91, 0xFF, 0xFF, 0x13, 0x0C, 0xD8, 0x82,
                /* 1640 */  0x9D, 0x60, 0xD0, 0xF2, 0x4E, 0x30, 0x10, 0x8F,
                /* 1648 */  0x15, 0x6F, 0x30, 0x09, 0x0A, 0x3A, 0xC1, 0xA0,
                /* 1650 */  0xA4, 0x50, 0xE8, 0x08, 0xE3, 0x73, 0x01, 0x8F,
                /* 1658 */  0x0E, 0x46, 0x41, 0x3C, 0x3A, 0xC7, 0x3A, 0x17,
                /* 1660 */  0xA0, 0x45, 0x1D, 0x2B, 0x20, 0xDD, 0x0D, 0xE0,
                /* 1668 */  0x1C, 0x61, 0x00, 0xD3, 0x87, 0x83, 0x47, 0x18,
                /* 1670 */  0xE0, 0xF3, 0xFF, 0x3F, 0x1C, 0x60, 0xAC, 0x1D,
                /* 1678 */  0x61, 0x00, 0xD2, 0xFF, 0xFF, 0x8F, 0x15, 0xC0,
                /* 1680 */  0xC2, 0xA1, 0xC5, 0x23, 0x0C, 0x30, 0xBB, 0x78,
                /* 1688 */  0xFA, 0x08, 0x03, 0xF0, 0xE9, 0x70, 0xF0, 0x08,
                /* 1690 */  0xC3, 0xFF, 0xFF, 0x87, 0x03, 0xB0, 0x28, 0xB4,
                /* 1698 */  0xE9, 0x53, 0xA3, 0x51, 0xAB, 0x06, 0x65, 0x6A,
                /* 16A0 */  0x94, 0x69, 0x50, 0xAB, 0x4F, 0xA5, 0xC6, 0x8C,
                /* 16A8 */  0x95, 0x78, 0x0C, 0x28, 0x06, 0x84, 0xC6, 0xE2,
                /* 16B0 */  0xD3, 0x8B, 0x41, 0xAC, 0x9B, 0x42, 0x57, 0x67,
                /* 16B8 */  0x87, 0x00, 0x11, 0x90, 0x65, 0xFF, 0xC2, 0x05,
                /* 16C0 */  0x44, 0x40, 0x04, 0x64, 0x21, 0x9F, 0x14, 0x01,
                /* 16C8 */  0x59, 0x15, 0x88, 0x80, 0x9C, 0x0A, 0x88, 0x46,
                /* 16D0 */  0x04, 0xA2, 0x71, 0x3C, 0x00, 0xB1, 0x70, 0x20,
                /* 16D8 */  0x02, 0xB2, 0x3A, 0x13, 0x40, 0x4C, 0x2A, 0x88,
                /* 16E0 */  0x80, 0x2C, 0x4B, 0x05, 0x10, 0x13, 0x09, 0x22,
                /* 16E8 */  0x20, 0x67, 0x5C, 0x9F, 0x80, 0x1C, 0x18, 0x44,
                /* 16F0 */  0x40, 0x0E, 0xF9, 0xAD, 0x16, 0x90, 0x23, 0x83,
                /* 16F8 */  0x08, 0xC8, 0x82, 0x75, 0x00, 0x31, 0xF9, 0x20,
                /* 1700 */  0x02, 0x72, 0x7C, 0x20, 0x2A, 0xC6, 0x07, 0x10,
                /* 1708 */  0x8B, 0xF2, 0x18, 0x10, 0x90, 0x73, 0x81, 0x08,
                /* 1710 */  0xC8, 0x39, 0x68, 0x04, 0xE4, 0x54, 0x14, 0x02,
                /* 1718 */  0xB2, 0x2A, 0x27, 0x40, 0x4C, 0x23, 0x88, 0x80,
                /* 1720 */  0x9C, 0x12, 0x88, 0x66, 0x06, 0xA2, 0x82, 0xAD,
                /* 1728 */  0x00, 0x31, 0xF5, 0x20, 0x02, 0xB2, 0x52, 0x2D,
                /* 1730 */  0x40, 0x4C, 0x37, 0x88, 0x80, 0x9C, 0xDA, 0x0B,
                /* 1738 */  0x10, 0xD3, 0xF0, 0x0E, 0x10, 0x90, 0x33, 0x98,
                /* 1740 */  0x01, 0x62, 0x89, 0x40, 0x04, 0x64, 0x45, 0x6E,
                /* 1748 */  0x80, 0x98, 0x3E, 0x10, 0x01, 0x39, 0x1D, 0x10,
                /* 1750 */  0xCD, 0x0A, 0x44, 0x95, 0xDA, 0x01, 0x62, 0xB2,
                /* 1758 */  0x41, 0x04, 0x64, 0x91, 0x0F, 0x21, 0x01, 0x59,
                /* 1760 */  0x32, 0x88, 0x80, 0x9C, 0xD8, 0x0F, 0x10, 0x8B,
                /* 1768 */  0x0F, 0x22, 0x20, 0x87, 0x3D, 0x84, 0x08, 0xC8,
                /* 1770 */  0xD1, 0x41, 0x04, 0x64, 0xF9, 0x86, 0x80, 0x58,
                /* 1778 */  0x18, 0x10, 0x01, 0x59, 0x94, 0x23, 0x20, 0xA6,
                /* 1780 */  0x10, 0x44, 0x40, 0x8E, 0x07, 0x44, 0xFE, 0xFF,
                /* 1788 */  0x83, 0x11, 0x10, 0x4D, 0xF6, 0x3A, 0x15, 0x90,
                /* 1790 */  0x73, 0x82, 0x08, 0xC8, 0x6A, 0x35, 0x01, 0x31,
                /* 1798 */  0xE9, 0x20, 0x02, 0x72, 0x6E, 0x20, 0x2A, 0xC2,
                /* 17A0 */  0x13, 0x10, 0x8B, 0x0C, 0xA2, 0x6B, 0x3B, 0x79,
                /* 17A8 */  0x88, 0x08, 0xC8, 0x29, 0x4C, 0x01, 0xB1, 0x48,
                /* 17B0 */  0x20, 0x02, 0x72, 0x00, 0x55, 0x40, 0x2C, 0x0E,
                /* 17B8 */  0x88, 0x80, 0x2C, 0xC9, 0x15, 0x10, 0x13, 0x08,
                /* 17C0 */  0x22, 0x20, 0xE7, 0x7B, 0x50, 0x08, 0xC8, 0x61,
                /* 17C8 */  0x41, 0x04, 0xE4, 0x68, 0xB6, 0x80, 0x58, 0x50,
                /* 17D0 */  0x10, 0x01, 0x59, 0xEA, 0x6B, 0x49, 0x40, 0x16,
                /* 17D8 */  0x0E, 0x22, 0x20, 0x27, 0xF7, 0x05, 0xC4, 0x64,
                /* 17E0 */  0xBC, 0x44, 0x04, 0xE4, 0xD0, 0x20, 0x02, 0xB2,
                /* 17E8 */  0x04, 0x63, 0x40, 0x2C, 0x06, 0x88, 0x80, 0x1C,
                /* 17F0 */  0x0A, 0x88, 0xAA, 0x7A, 0x76, 0x0A, 0xC8, 0x12,
                /* 17F8 */  0x41, 0x74, 0x78, 0x20, 0x40, 0x34, 0x30, 0x10,
                /* 1800 */  0x8D, 0xF7, 0xB0, 0xD3, 0x80, 0x08, 0x88, 0x0E,
                /* 1808 */  0x18, 0xE4, 0x29, 0xA3, 0xC3, 0x05, 0x01, 0x11,
                /* 1810 */  0x90, 0x25, 0xBF, 0x78, 0x05, 0xE4, 0x00, 0x20,
                /* 1818 */  0x3A, 0x85, 0x10, 0x73, 0x40, 0x4C, 0x0E, 0x88,
                /* 1820 */  0x80, 0x9C, 0x44, 0x1D, 0x10, 0x8B, 0x05, 0xA2,
                /* 1828 */  0x83, 0x02, 0x71, 0x77, 0x50, 0xA0, 0x20, 0x3A,
                /* 1830 */  0x0C, 0x10, 0x7B, 0x87, 0x01, 0x0A, 0x22, 0x20,
                /* 1838 */  0x07, 0x03, 0xA2, 0x29, 0x81, 0x68, 0xA6, 0x9F,
                /* 1840 */  0x95, 0x80, 0x9C, 0x10, 0x44, 0x40, 0xD6, 0xF9,
                /* 1848 */  0x66, 0x11, 0x90, 0x55, 0x83, 0x08, 0xC8, 0xC1,
                /* 1850 */  0xFF, 0x2A, 0x81, 0x88, 0x8A, 0xF7, 0x4D, 0x20,
                /* 1858 */  0x22, 0x1E, 0x44, 0x40, 0x4E, 0x02, 0x44, 0x75,
                /* 1860 */  0xBF, 0x5C, 0x02, 0x91, 0x14, 0x20, 0x02, 0xB2,
                /* 1868 */  0x82, 0x87, 0x8C, 0x06, 0x46, 0x40, 0x04, 0xE4,
                /* 1870 */  0xEC, 0x40, 0x54, 0x89, 0xC6, 0x81, 0x51, 0x10,
                /* 1878 */  0x0D, 0x8C, 0x00, 0x51, 0x3D, 0x1E, 0x81, 0xFC,
                /* 1880 */  0xFF, 0x3F, 0x8A, 0x08, 0x44, 0x07, 0x06, 0x02,
                /* 1888 */  0x44, 0x73, 0x02, 0x51, 0x8D, 0x8F, 0x96, 0x40,
                /* 1890 */  0x44, 0x30, 0x88, 0x0E, 0x1C, 0x04, 0x88, 0x46,
                /* 1898 */  0x06, 0xA2, 0x62, 0x55, 0x02, 0x31, 0xE5, 0x20,
                /* 18A0 */  0x3A, 0x34, 0x10, 0x20, 0x9A, 0x1F, 0x88, 0xA6,
                /* 18A8 */  0x75, 0x09, 0xC4, 0xB2, 0x83, 0x08, 0xC8, 0xDA,
                /* 18B0 */  0x7F, 0x34, 0x81, 0x48, 0x10, 0x10, 0x01, 0x39,
                /* 18B8 */  0x3D, 0x10, 0x95, 0xA2, 0x73, 0xB0, 0x14, 0x44,
                /* 18C0 */  0x07, 0x05, 0xE2, 0x13, 0x88, 0x45, 0x00, 0x11,
                /* 18C8 */  0x90, 0x03, 0x01, 0x51, 0x29, 0x2F, 0x9E, 0x40,
                /* 18D0 */  0x44, 0x18, 0x88, 0x80, 0x1C, 0x09, 0x88, 0x06,
                /* 18D8 */  0x04, 0xA2, 0xD2, 0x8C, 0x02, 0x31, 0xA1, 0x20,
                /* 18E0 */  0x3A, 0xB4, 0x10, 0x20, 0x1A, 0x19, 0x88, 0xCA,
                /* 18E8 */  0x7D, 0xFD, 0x04, 0x22, 0xE2, 0x41, 0x04, 0xE4,
                /* 18F0 */  0xE8, 0x1F, 0x20, 0x01, 0x59, 0xC7, 0x23, 0xE8,
                /* 18F8 */  0x41, 0x80, 0x81, 0xE8, 0x20, 0x40, 0x80, 0xA8,
                /* 1900 */  0x04, 0xAB, 0x40, 0x4C, 0x0F, 0x88, 0x0E, 0x2E,
                /* 1908 */  0x04, 0x88, 0x86, 0x02, 0xA2, 0x62, 0xB4, 0x02,
                /* 1910 */  0x31, 0x65, 0x20, 0x02, 0x72, 0x22, 0x20, 0x1A,
                /* 1918 */  0x0F, 0x88, 0xEA, 0x7A, 0x0F, 0x3D, 0xDC, 0x30,
                /* 1920 */  0x10, 0x1D, 0x54, 0x08, 0x10, 0x8D, 0x0A, 0x44,
                /* 1928 */  0x73, 0x89, 0x3D, 0x34, 0x50, 0x10, 0x1D, 0x56,
                /* 1930 */  0x88, 0xDA, 0xC3, 0x0A, 0x05, 0xD1, 0x61, 0x85,
                /* 1938 */  0xB8, 0x3D, 0xAC, 0x50, 0x10, 0x1D, 0x56, 0x88,
                /* 1940 */  0xDC, 0xC3, 0x0A, 0x05, 0xD1, 0x61, 0x85, 0xD8,
                /* 1948 */  0x3D, 0xAC, 0x50, 0x10, 0x01, 0x59, 0xB4, 0x5E,
                /* 1950 */  0x20, 0x16, 0x01, 0x44, 0x87, 0x06, 0xF2, 0x6A,
                /* 1958 */  0xD2, 0xA1, 0x81, 0x80, 0xE8, 0x60, 0x42, 0x80,
                /* 1960 */  0x68, 0x24, 0x20, 0x1A, 0xE0, 0xB5, 0x15, 0x48,
                /* 1968 */  0xFF, 0xFF, 0x83, 0x89, 0x40, 0x74, 0xDA, 0x22,
                /* 1970 */  0x8E, 0x81, 0x98, 0x38, 0x10, 0x01, 0x39, 0xDC,
                /* 1978 */  0x7B, 0x49, 0x83, 0x23, 0x20, 0x3A, 0x94, 0x90,
                /* 1980 */  0x47, 0xD9, 0x43, 0x09, 0x03, 0xD1, 0xE1, 0x80,
                /* 1988 */  0x7C, 0xB0, 0x74, 0x38, 0x20, 0xBF, 0x44, 0x1D,
                /* 1990 */  0x04, 0x88, 0xEA, 0x61, 0x51, 0x10, 0x2A, 0xF7,
                /* 1998 */  0x2F, 0x16, 0x84, 0x44, 0xFD, 0x43, 0x05, 0x21,
                /* 19A0 */  0x42, 0x3F, 0x60, 0x3A, 0x1E, 0x90, 0x1F, 0x55,
                /* 19A8 */  0x70, 0x92, 0x0F, 0x44, 0x47, 0x0F, 0xF2, 0x1A,
                /* 19B0 */  0xD3, 0xD1, 0x83, 0x80, 0x08, 0xC8, 0x6A, 0x8C,
                /* 19B8 */  0x03, 0x31, 0x6D, 0x20, 0x3A, 0x3A, 0x11, 0x20,
                /* 19C0 */  0x9A, 0x11, 0x88, 0x2A, 0xFC, 0xB9, 0x05, 0x22,
                /* 19C8 */  0x72, 0x41, 0x74, 0x4C, 0x21, 0x40, 0x34, 0x30,
                /* 19D0 */  0x10, 0x95, 0xF9, 0x0C, 0x14, 0x90, 0x35, 0x83,
                /* 19D8 */  0x08, 0xC8, 0xFA, 0x7E, 0x70, 0x81, 0x88, 0x5A,
                /* 19E0 */  0x10, 0x01, 0x39, 0xA9, 0x76, 0x20, 0x16, 0x1B,
                /* 19E8 */  0x44, 0x40, 0xD6, 0xFA, 0x96, 0x3B, 0x4C, 0x06,
                /* 19F0 */  0xA2, 0xE3, 0x00, 0x79, 0xB7, 0x3D, 0x0E, 0x30,
                /* 19F8 */  0x10, 0x0D, 0x92, 0x00, 0xD1, 0xE8, 0x40, 0x54,
                /* 1A00 */  0xB8, 0xFA, 0xE3, 0x08, 0x05, 0xD1, 0x11, 0x82,
                /* 1A08 */  0x00, 0x51, 0x1D, 0xEE, 0x81, 0x98, 0x7A, 0x10,
                /* 1A10 */  0x01, 0x39, 0x0A, 0x10, 0x95, 0x2D, 0xFF, 0x18,
                /* 1A18 */  0x43, 0x41, 0x74, 0x8C, 0x20, 0xFA, 0x8F, 0x11,
                /* 1A20 */  0x14, 0x44, 0x40, 0x0E, 0x01, 0x44, 0x13, 0x01,
                /* 1A28 */  0x51, 0xF5, 0xFE, 0x81, 0x58, 0x16, 0x10, 0x01,
                /* 1A30 */  0x59, 0x53, 0x80, 0x81, 0x53, 0x10, 0x1D, 0x21,
                /* 1A38 */  0x48, 0x81, 0x63, 0x01, 0x05, 0xD1, 0x40, 0x49,
                /* 1A40 */  0x02, 0x20, 0x26, 0x16, 0x44, 0x83, 0x26, 0x40,
                /* 1A48 */  0x34, 0x30, 0x10, 0x15, 0xDD, 0x00, 0x88, 0x25,
                /* 1A50 */  0x00, 0xD1, 0xF1, 0x84, 0x44, 0x38, 0x26, 0x51,
                /* 1A58 */  0x10, 0x01, 0xFD, 0xFF, 0x1F, 0x81, 0x54, 0x01,
                /* 1A60 */  0x88, 0x29, 0xC8, 0x00, 0xC4, 0xB2, 0x82, 0x08,
                /* 1A68 */  0xC8, 0xC9, 0x81, 0xA8, 0xE6, 0x10, 0x03, 0xA0,
                /* 1A70 */  0x20, 0x3A, 0xC6, 0x10, 0x20, 0xAA, 0xA4, 0x04,
                /* 1A78 */  0x10, 0x4B, 0x90, 0xE2, 0x08, 0x41, 0x41, 0x34,
                /* 1A80 */  0x70, 0xD2, 0x02, 0x88, 0xC5, 0x00, 0xD1, 0x60,
                /* 1A88 */  0x49, 0x0D, 0x20, 0x26, 0x08, 0x44, 0xC7, 0x31,
                /* 1A90 */  0x02, 0x44, 0x83, 0x01, 0x51, 0x49, 0x3D, 0x8E,
                /* 1A98 */  0x5C, 0x14, 0x44, 0x40, 0xD6, 0x12, 0xE4, 0x18,
                /* 1AA0 */  0x42, 0x41, 0x74, 0x60, 0x20, 0x45, 0x0E, 0x0C,
                /* 1AA8 */  0x14, 0x44, 0x83, 0x25, 0x49, 0x0E, 0x09, 0x14,
                /* 1AB0 */  0x44, 0x40, 0x0E, 0xDA, 0x04, 0x88, 0xA5, 0x06,
                /* 1AB8 */  0xD1, 0x40, 0x49, 0x94, 0x63, 0x0D, 0x05, 0xD1,
                /* 1AC0 */  0x21, 0x81, 0x54, 0x39, 0x24, 0x50, 0x10, 0x01,
                /* 1AC8 */  0x39, 0x70, 0x96, 0x23, 0x08, 0x05, 0xD1, 0xE0,
                /* 1AD0 */  0x48, 0x97, 0xC1, 0x51, 0x10, 0x1D, 0x95, 0xC8,
                /* 1AD8 */  0x3B, 0x55, 0xC7, 0x0F, 0x02, 0xA2, 0x63, 0x14,
                /* 1AE0 */  0x29, 0x03, 0xC4, 0x32, 0x81, 0x08, 0xC8, 0x3A,
                /* 1AE8 */  0x9E, 0xBB, 0x02, 0xB2, 0x28, 0x10, 0x1D, 0x99,
                /* 1AF0 */  0x08, 0x10, 0x8D, 0x05, 0x44, 0xA5, 0xB4, 0x01,
                /* 1AF8 */  0x62, 0xBA, 0x40, 0x74, 0xCC, 0x23, 0x40, 0x34,
                /* 1B00 */  0x1B, 0x10, 0x8D, 0x11, 0xE7, 0x08, 0x43, 0x41,
                /* 1B08 */  0x74, 0x1C, 0x21, 0x79, 0x8E, 0x23, 0x14, 0x44,
                /* 1B10 */  0x07, 0x0F, 0x02, 0x44, 0x03, 0x02, 0x51, 0x61,
                /* 1B18 */  0x7D, 0x80, 0x98, 0x4C, 0x10, 0x1D, 0x4B, 0x08,
                /* 1B20 */  0x10, 0x8D, 0x0A, 0x44, 0x45, 0x06, 0x1A, 0x28,
                /* 1B28 */  0x05, 0xD1, 0xE1, 0x82, 0x00, 0xD1, 0xE8, 0x40,
                /* 1B30 */  0x54, 0x79, 0xA2, 0x81, 0x52, 0x10, 0x1D, 0x87,
                /* 1B38 */  0x08, 0x10, 0x95, 0xD2, 0x08, 0xC8, 0xFF, 0xFF,
                /* 1B40 */  0x43, 0x9E, 0x40, 0x74, 0x60, 0x20, 0x91, 0x0E,
                /* 1B48 */  0x09, 0xB4, 0x12, 0x10, 0xCB, 0x03, 0x22, 0x20,
                /* 1B50 */  0x2B, 0xC9, 0x34, 0x48, 0x0A, 0x22, 0x20, 0xE7,
                /* 1B58 */  0x01, 0xA2, 0xE9, 0x80, 0xA8, 0xAA, 0x50, 0x47,
                /* 1B60 */  0x31, 0x0A, 0xA2, 0x41, 0x92, 0x52, 0x83, 0xA4,
                /* 1B68 */  0x20, 0x3A, 0x6E, 0x11, 0x20, 0x1A, 0x13, 0x88,
                /* 1B70 */  0x4A, 0x6C, 0x75, 0x8C, 0xA2, 0x20, 0x1A, 0x1C,
                /* 1B78 */  0x01, 0xA2, 0xD1, 0x81, 0xA8, 0xEC, 0x07, 0xAA,
                /* 1B80 */  0x0E, 0x1F, 0x04, 0x44, 0xC7, 0x43, 0x52, 0x0B,
                /* 1B88 */  0x88, 0x69, 0xC9, 0x35, 0x38, 0x0A, 0xA2, 0xC1,
                /* 1B90 */  0x91, 0x5E, 0x03, 0xA5, 0x20, 0x02, 0x72, 0x0E,
                /* 1B98 */  0x20, 0x9A, 0x1F, 0x88, 0xAA, 0x09, 0x76, 0xDC,
                /* 1BA0 */  0xA1, 0x20, 0x3A, 0x20, 0x10, 0x20, 0xAA, 0x26,
                /* 1BA8 */  0x19, 0x10, 0x93, 0x06, 0x22, 0x20, 0x6B, 0x68,
                /* 1BB0 */  0x06, 0xC4, 0x14, 0x81, 0x08, 0xC8, 0x59, 0xA2,
                /* 1BB8 */  0x01, 0xB1, 0x64, 0x20, 0x3A, 0x1A, 0x92, 0x6A,
                /* 1BC0 */  0x07, 0x0B, 0x0A, 0xA2, 0x43, 0x05, 0xC9, 0x76,
                /* 1BC8 */  0xBC, 0xA4, 0x20, 0x3A, 0x18, 0x90, 0x6E, 0x40,
                /* 1BD0 */  0x4C, 0x25, 0x88, 0x06, 0x4C, 0xC2, 0x0D, 0x98,
                /* 1BD8 */  0x82, 0x08, 0xC8, 0xA1, 0xCA, 0x01, 0x53, 0x10,
                /* 1BE0 */  0x1D, 0xAD, 0x48, 0xBA, 0xA3, 0x15, 0x05, 0x11,
                /* 1BE8 */  0x90, 0x03, 0x02, 0xD1, 0xB8, 0x40, 0x54, 0x65,
                /* 1BF0 */  0xBC, 0x43, 0x02, 0x05, 0xD1, 0x41, 0x83, 0x00,
                /* 1BF8 */  0xD1, 0xD4, 0x40, 0x34, 0x5E, 0xBD, 0xE3, 0x1D,
                /* 1C00 */  0x05, 0xD1, 0x61, 0x87, 0xF4, 0x03, 0x62, 0xA2,
                /* 1C08 */  0x41, 0x74, 0x08, 0x20, 0x40, 0x34, 0x3A, 0x10,
                /* 1C10 */  0x95, 0x1C, 0xF0, 0x88, 0x47, 0x41, 0x74, 0xD0,
                /* 1C18 */  0x20, 0x09, 0x07, 0x4E, 0x41, 0x04, 0xF4, 0xFF,
                /* 1C20 */  0x7F, 0x48, 0x11, 0x10, 0x55, 0xD2, 0xF0, 0x88,
                /* 1C28 */  0x45, 0x23, 0x1E, 0x8C, 0x28, 0x88, 0x0E, 0x07,
                /* 1C30 */  0x24, 0x23, 0x10, 0xD3, 0x0B, 0xA2, 0x63, 0x29,
                /* 1C38 */  0xE9, 0x08, 0xC4, 0xB4, 0x82, 0xE8, 0xA8, 0x49,
                /* 1C40 */  0x42, 0x1E, 0x35, 0x69, 0xC9, 0x83, 0x06, 0x4D,
                /* 1C48 */  0x79, 0x18, 0xA0, 0x20, 0x3A, 0x44, 0x90, 0x96,
                /* 1C50 */  0x87, 0x08, 0x0A, 0x22, 0x20, 0x2B, 0xAB, 0x09,
                /* 1C58 */  0xC4, 0x74, 0x82, 0x08, 0xC8, 0xFF, 0x7F       
            })
            Name (EPY1, 0xFFFFFFFF)
            Name (EPY2, 0xFFFFFFFF)
            Name (EPY3, 0xFFFFFFFF)
            Name (EPY4, 0xFFFFFFFF)
            Method (EYPO, 0, Serialized)
            {
                Return (EPY1)
            }

            Method (EYPT, 0, Serialized)
            {
                Return (EPY2)
            }

            Method (EYPE, 0, Serialized)
            {
                Return (EPY3)
            }

            Method (EYPF, 0, Serialized)
            {
                Return (EPY4)
            }

            Method (SPEC, 1, Serialized)
            {
                Return (AMWV)
            }

            Method (DEVP, 1, Serialized)
            {
                CreateDWordField (Arg0, Zero, DVID)
                CreateDWordField (Arg0, 0x04, PARA)
                If (LEqual (PARA, One))
                {
                    Switch (DVID)
                    {
                        Case (0x00010011)
                        {
                            Or (\_SB.DSAF, One, \_SB.DSAF)
                        }
                        Case (0x00010013)
                        {
                            Or (\_SB.DSAF, 0x02, \_SB.DSAF)
                        }
                        Case (0x00010023)
                        {
                            Or (\_SB.DSAF, 0x04, \_SB.DSAF)
                        }
                        Case (0x00060013)
                        {
                            Or (\_SB.DSAF, 0x08, \_SB.DSAF)
                        }
                        Case (0x00060015)
                        {
                            Or (\_SB.DSAF, 0x10, \_SB.DSAF)
                        }
                        Case (0x00010015)
                        {
                            Or (\_SB.DSAF, 0x20, \_SB.DSAF)
                        }
                        Case (0x00090011)
                        {
                            Or (\_SB.DSAF, 0x40, \_SB.DSAF)
                        }
                        Case (0x00070011)
                        {
                            Or (\_SB.DSAF, 0x80, \_SB.DSAF)
                        }
                        Case (0x00080013)
                        {
                            Or (\_SB.DSAF, 0x0100, \_SB.DSAF)
                        }
                        Case (0x00010019)
                        {
                            Or (\_SB.DSAF, 0x0200, \_SB.DSAF)
                        }
                        Case (0x00010017)
                        {
                            Or (\_SB.DSAF, 0x0400, \_SB.DSAF)
                        }
                        Case (0x00050011)
                        {
                            Or (\_SB.DSAF, 0x0800, \_SB.DSAF)
                        }
                        Case (0x00050012)
                        {
                            Or (\_SB.DSAF, 0x1000, \_SB.DSAF)
                        }
                        Case (0x00060017)
                        {
                            Or (\_SB.DSAF, 0x2000, \_SB.DSAF)
                        }
                        Case (0x00080021)
                        {
                            Or (\_SB.DSAF, 0x4000, \_SB.DSAF)
                        }
                        Case (0x00100011)
                        {
                            Or (\_SB.DSAF, 0x8000, \_SB.DSAF)
                        }
                        Case (0x00050001)
                        {
                            Or (\_SB.DSAF, 0x00010000, \_SB.DSAF)
                        }
                        Case (0x00120000)
                        {
                            Or (\_SB.DSAF, 0x00020000, \_SB.DSAF)
                        }
                        Case (0x00120021)
                        {
                            Or (\_SB.DSAF, 0x00040000, \_SB.DSAF)
                        }
                        Case (0x00120011)
                        {
                            Or (\_SB.DSAF, 0x00080000, \_SB.DSAF)
                        }
                        Case (0x00120023)
                        {
                            Or (\_SB.DSAF, 0x00100000, \_SB.DSAF)
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }
                ElseIf (LEqual (PARA, Zero))
                {
                    Switch (DVID)
                    {
                        Case (0x00010011)
                        {
                            And (\_SB.DSAF, 0xFFFFFFFFFFFFFFFE, \_SB.DSAF)
                        }
                        Case (0x00010013)
                        {
                            And (\_SB.DSAF, 0xFFFFFFFFFFFFFFFD, \_SB.DSAF)
                        }
                        Case (0x00010023)
                        {
                            And (\_SB.DSAF, 0xFFFFFFFFFFFFFFFB, \_SB.DSAF)
                        }
                        Case (0x00060013)
                        {
                            And (\_SB.DSAF, 0xFFFFFFFFFFFFFFF7, \_SB.DSAF)
                        }
                        Case (0x00060015)
                        {
                            And (\_SB.DSAF, 0xFFFFFFFFFFFFFFEF, \_SB.DSAF)
                        }
                        Case (0x00010015)
                        {
                            And (\_SB.DSAF, 0xFFFFFFFFFFFFFFDF, \_SB.DSAF)
                        }
                        Case (0x00090011)
                        {
                            And (\_SB.DSAF, 0xFFFFFFFFFFFFFFBF, \_SB.DSAF)
                        }
                        Case (0x00070011)
                        {
                            And (\_SB.DSAF, 0xFFFFFFFFFFFFFF7F, \_SB.DSAF)
                        }
                        Case (0x00080013)
                        {
                            And (\_SB.DSAF, 0xFFFFFFFFFFFFFEFF, \_SB.DSAF)
                        }
                        Case (0x00010019)
                        {
                            And (\_SB.DSAF, 0xFFFFFFFFFFFFFDFF, \_SB.DSAF)
                        }
                        Case (0x00010017)
                        {
                            And (\_SB.DSAF, 0xFFFFFFFFFFFFFBFF, \_SB.DSAF)
                        }
                        Case (0x00050011)
                        {
                            And (\_SB.DSAF, 0xFFFFFFFFFFFFF7FF, \_SB.DSAF)
                        }
                        Case (0x00050012)
                        {
                            And (\_SB.DSAF, 0xFFFFFFFFFFFFEFFF, \_SB.DSAF)
                        }
                        Case (0x00060017)
                        {
                            And (\_SB.DSAF, 0xFFFFFFFFFFFFDFFF, \_SB.DSAF)
                        }
                        Case (0x00080021)
                        {
                            And (\_SB.DSAF, 0xFFFFFFFFFFFFBFFF, \_SB.DSAF)
                        }
                        Case (0x00100011)
                        {
                            And (\_SB.DSAF, 0xFFFFFFFFFFFF7FFF, \_SB.DSAF)
                        }
                        Case (0x00050001)
                        {
                            And (\_SB.DSAF, 0xFFFFFFFFFFFEFFFF, \_SB.DSAF)
                        }
                        Case (0x00120000)
                        {
                            And (\_SB.DSAF, 0xFFFFFFFFFFFDFFFF, \_SB.DSAF)
                        }
                        Case (0x00120021)
                        {
                            And (\_SB.DSAF, 0xFFFFFFFFFFFBFFFF, \_SB.DSAF)
                        }
                        Case (0x00120011)
                        {
                            And (\_SB.DSAF, 0xFFFFFFFFFFF7FFFF, \_SB.DSAF)
                        }
                        Case (0x00120023)
                        {
                            And (\_SB.DSAF, 0xFFFFFFFFFFEFFFFF, \_SB.DSAF)
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }

                Return (One)
            }

            Method (SDSP, 1, Serialized)
            {
                CreateDWordField (Arg0, Zero, ACTN)
                Return (Zero)
            }

            Method (GDSP, 1, Serialized)
            {
                CreateDWordField (Arg0, Zero, ACTN)
                Return (Zero)
            }

            Method (DEVS, 1, Serialized)
            {
                CreateDWordField (Arg0, Zero, DVID)
                CreateDWordField (Arg0, 0x04, CPAR)
                Switch (DVID)
                {
                    Case (Zero)
                    {
                        Return (Zero)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }

            Method (DSTS, 1, Serialized)
            {
                CreateDWordField (Arg0, Zero, DVID)
                Switch (DVID)
                {
                    Case (0xA0000000)
                    {
                        Store (0x09, Local0)
                    }
                    Case (Zero)
                    {
                        Return (Zero)
                    }
                    Default
                    {
                        Store (Zero, Local0)
                    }

                }

                And (Local0, 0x0007FFFF, Local0)
                Return (Local0)
            }

            Method (GPID, 0, Serialized)
            {
                Return (Zero)
            }

            Method (KBFT, 1, Serialized)
            {
                Return (Zero)
            }

            Method (HKEY, 0, Serialized)
            {
                Return (Zero)
            }

            Method (CFVS, 1, Serialized)
            {
            }

            Method (CFVG, 0, Serialized)
            {
            }

            Name (RAMA, 0xDA237018)
            Name (WBUF, Buffer (0x50){})
            OperationRegion (\RAMX, SystemMemory, RAMA, 0x0100)
            Field (RAMX, ByteAcc, NoLock, Preserve)
            {
                WFUN,   32, 
                WSIZ,   32, 
                Offset (0x10), 
                IDAT,   896, 
                ODAT,   1024
            }

            Mutex (WMTX, 0x00)
            Name (LSTF, Buffer (0x04){})
            Name (LSTI, Buffer (0x70){})
            Name (CURF, Buffer (0x04){})
            Name (CURI, Buffer (0x70){})
            Method (WMII, 0, Serialized)
            {
                Store (WFUN, CURF)
                Store (IDAT, CURI)
                If (LAnd (LEqual (CURF, LSTF), LEqual (CURI, LSTI)))
                {
                    Return (Zero)
                }
                Else
                {
                    Store (Zero, ODAT)
                    \_SB.ISMI (0xDA)
                    Store (WFUN, LSTF)
                    Store (IDAT, LSTI)
                }
            }

            Method (LERR, 1, Serialized)
            {
                Store (ODAT, WBUF)
                Return (DerefOf (Index (WBUF, Zero)))
            }

            Method (GBOD, 1, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x80000001, WFUN)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }

            Method (SBOD, 1, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x80000002, WFUN)
                    Store (Arg0, IDAT)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }

            Method (GBON, 1, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x80000003, WFUN)
                    Store (Arg0, IDAT)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }

            Method (GLBN, 1, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x80000006, WFUN)
                    Store (Arg0, IDAT)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }

            Method (ISLG, 1, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x80000007, WFUN)
                    Store (Arg0, IDAT)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }

            Method (GLBO, 1, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x80000008, WFUN)
                    Store (Arg0, IDAT)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }

            Method (SLBO, 1, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x80000009, WFUN)
                    Store (Arg0, IDAT)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }

            Method (SAPW, 1, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x80000004, WFUN)
                    Store (Arg0, IDAT)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }

            Method (SUPW, 1, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x80000005, WFUN)
                    Store (Arg0, IDAT)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }

            Method (SBOG, 1, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x8000000A, WFUN)
                    Store (Arg0, IDAT)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }

            Method (LDFT, 0, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x8000000B, WFUN)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }

            Method (SFTB, 1, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x8000000C, WFUN)
                    Store (Arg0, IDAT)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }

            Method (SDFT, 1, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x8000000D, WFUN)
                    Store (Arg0, IDAT)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }

            Method (SFTM, 0, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x8000000E, WFUN)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }

            Method (DCTL, 1, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x8000000F, WFUN)
                    Store (Arg0, IDAT)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }

            Method (GFAN, 1, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x80000010, WFUN)
                    Store (Arg0, IDAT)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }

            Method (SFAN, 1, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x80000011, WFUN)
                    Store (Arg0, IDAT)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }

            Method (GFCV, 1, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x80000012, WFUN)
                    Store (Arg0, IDAT)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }

            Method (SFCV, 1, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x80000013, WFUN)
                    Store (Arg0, IDAT)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }

            Method (CKPW, 1, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x80000014, WFUN)
                    Store (Arg0, IDAT)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }

            Method (GTOD, 1, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x80000015, WFUN)
                    Store (Arg0, IDAT)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }

            Method (STOD, 1, Serialized)
            {
                If (LEqual (Acquire (WMTX, 0xFFFF), Zero))
                {
                    Store (0x80000016, WFUN)
                    Store (Arg0, IDAT)
                    WMII ()
                    Store (ODAT, WBUF)
                    Release (WMTX)
                    Return (WBUF)
                }

                Return (Ones)
            }
        }
    }

    Scope (_SB)
    {
        Name (RAMB, 0xDA641018)
        OperationRegion (\RAMW, SystemMemory, RAMB, 0x00010000)
        Field (RAMW, ByteAcc, NoLock, Preserve)
        {
            DSAF,   32, 
            PAR0,   32, 
            PAR1,   32, 
            PAR2,   32, 
            PINX,   32, 
            PADD,   2048
        }

        Mutex (MPAR, 0x00)
        Name (ARBF, Buffer (0x10){})
        CreateDWordField (ARBF, Zero, REAX)
        CreateDWordField (ARBF, 0x04, REBX)
        CreateDWordField (ARBF, 0x08, RECX)
        CreateDWordField (ARBF, 0x0C, REDX)
        OperationRegion (DEB0, SystemIO, 0x80, One)
        Field (DEB0, ByteAcc, NoLock, Preserve)
        {
            DBG8,   8
        }

        OperationRegion (IOB2, SystemIO, SMIP, 0x02)
        Field (IOB2, ByteAcc, NoLock, Preserve)
        {
            SMPT,   8, 
            SMIS,   8
        }

        Method (ISMI, 1, Serialized)
        {
            Store (Arg0, SMPT)
        }

        Method (GMSR, 1, Serialized)
        {
            If (LEqual (Acquire (MPAR, 0xFFFF), Zero))
            {
                Store (0x80000000, PINX)
                Store (Arg0, PAR0)
                ISMI (0x90)
                Store (Arg0, RECX)
                Store (PAR1, REAX)
                Store (PAR2, REDX)
                Release (MPAR)
                Return (ARBF)
            }

            Return (Ones)
        }

        Method (SMSR, 1, Serialized)
        {
            If (LEqual (Acquire (MPAR, 0xFFFF), Zero))
            {
                CreateDWordField (Arg0, Zero, AEAX)
                CreateDWordField (Arg0, 0x04, AEBX)
                CreateDWordField (Arg0, 0x08, AECX)
                CreateDWordField (Arg0, 0x0C, AEDX)
                Store (0x80000001, PINX)
                Store (AECX, PAR0)
                Store (AEAX, PAR1)
                Store (AEDX, PAR2)
                ISMI (0x90)
                Release (MPAR)
            }

            Return (Ones)
        }

        Method (PRID, 1, Serialized)
        {
            If (LEqual (Acquire (MPAR, 0xFFFF), Zero))
            {
                Store (0x80000002, PINX)
                Store (Arg0, PAR0)
                ISMI (0x90)
                Store (PAR1, REAX)
                Store (PAR2, REDX)
                Release (MPAR)
                Return (ARBF)
            }

            Return (Ones)
        }

        Method (GPRE, 1, Serialized)
        {
            Store (Arg0, PAR0)
            Store (0x80000005, PINX)
            ISMI (0x90)
            Return (PAR0)
        }

        Method (GNVS, 1, Serialized)
        {
            Store (Arg0, PAR0)
            Store (0x80000003, PINX)
            ISMI (0x90)
            Return (PAR1)
        }

        Method (SNVS, 2, Serialized)
        {
            Store (Arg0, PAR0)
            Store (Arg1, PAR1)
            Store (0x80000004, PINX)
            ISMI (0x90)
        }

        Method (SIRS, 0, Serialized)
        {
            Store (0x8000000A, PINX)
            ISMI (0x90)
        }

        Method (SARM, 1, Serialized)
        {
            If (LAnd (LGreater (Arg0, 0x03), LLess (Arg0, 0x06)))
            {
                ISMI (0x92)
            }
        }

        Method (GAMM, 0, Serialized)
        {
            ISMI (0x91)
        }

        Method (SAMM, 0, Serialized)
        {
            ISMI (0x92)
        }
    }

    Scope (_SB.PCI0.GP13.XHC0)
    {
        Device (RHUB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Device (PRT1)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x69, 0x0C, 0x80, 0x00, 0x01, 0x00, 0x00, 0x00,
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                    }
                })
            }

            Device (PRT2)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x69, 0x0E, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00,
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                    }
                })
            }

            Device (PRT3)
            {
                Name (_ADR, 0x03)  // _ADR: Address
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    One, 
                    0x0A, 
                    Zero, 
                    Zero
                })
                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x69, 0x0C, 0x80, 0x01, 0x01, 0x00, 0x00, 0x00,
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                    }
                })
            }

            Device (PRT4)
            {
                Name (_ADR, 0x04)  // _ADR: Address
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x69, 0x0E, 0x00, 0x02, 0x01, 0x00, 0x00, 0x00,
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                    }
                })
            }

            Device (PRT5)
            {
                Name (_ADR, 0x05)  // _ADR: Address
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x69, 0x0C, 0x80, 0x00, 0x01, 0x00, 0x00, 0x00,
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                    }
                })
            }

            Device (PRT6)
            {
                Name (_ADR, 0x06)  // _ADR: Address
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x69, 0x0E, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00,
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                    }
                })
            }

            Device (PRT7)
            {
                Name (_ADR, 0x07)  // _ADR: Address
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    One, 
                    0x0A, 
                    Zero, 
                    Zero
                })
                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x69, 0x0C, 0x80, 0x01, 0x01, 0x00, 0x00, 0x00,
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                    }
                })
            }

            Device (PRT8)
            {
                Name (_ADR, 0x08)  // _ADR: Address
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x69, 0x0E, 0x00, 0x02, 0x01, 0x00, 0x00, 0x00,
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                    }
                })
            }
        }
    }
}

