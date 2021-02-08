/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-2.aml, Mon Feb  8 17:15:46 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00008C98 (35992)
 *     Revision         0x02
 *     Checksum         0x46
 *     OEM ID           "AMD"
 *     OEM Table ID     "AMD ALIB"
 *     OEM Revision     0x00000002 (2)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x04000000 (67108864)
 */
DefinitionBlock ("", "SSDT", 2, "AMD", "AMD ALIB", 0x00000002)
{
    Scope (\_SB)
    {
        Name (AGRB, 0xF8000000)
        Name (ADBG, Buffer (0x0100){})
        Name (ADAT, Buffer (0x0520)
        {
            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0020 */  0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x10,
            /* 0028 */  0x1F, 0xFF, 0xFF, 0x00, 0x00, 0x03, 0x01, 0x00,
            /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,
            /* 0038 */  0x00, 0x00, 0x01, 0x07, 0x00, 0xFF, 0xFF, 0x01,
            /* 0040 */  0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0048 */  0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00,
            /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,
            /* 0060 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0070 */  0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00,
            /* 0078 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0080 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,
            /* 0088 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0090 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0098 */  0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00,
            /* 00A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 00A8 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,
            /* 00B0 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 00B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 00C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 00C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 00D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 00D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 00E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 00E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 00F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 00F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0100 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0108 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0110 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0118 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0120 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0128 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0130 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0138 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0140 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0148 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0150 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0158 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0160 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0168 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0170 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0178 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0180 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0188 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0190 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0198 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 01A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 01A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 01B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 01B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 01C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 01C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 01D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 01D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 01E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 01E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 01F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 01F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0200 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0208 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0210 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0218 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0220 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0228 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0230 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0238 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0240 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0248 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0250 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0258 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0260 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0268 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0270 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0278 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0280 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0288 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0290 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0298 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 02A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 02A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 02B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 02B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 02C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 02C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 02D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 02D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 02E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 02E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 02F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 02F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0300 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0308 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0310 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0318 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0320 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0328 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0330 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0338 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0340 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0348 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0350 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0358 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0360 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0368 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0370 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0378 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0380 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0388 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0390 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0398 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 03A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 03A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 03B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 03B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 03C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 03C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 03D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 03D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 03E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 03E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 03F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 03F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0400 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0408 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0410 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0418 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0420 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0428 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0430 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0438 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0440 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0448 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0450 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0458 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0460 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0468 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0470 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0478 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0480 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0488 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0490 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0498 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 04A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 04A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 04B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 04B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 04C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 04C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 04D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 04D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 04E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 04E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 04F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 04F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0500 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0508 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0510 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0518 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        })
        Method (ALIB, 2, NotSerialized)
        {
            If (LEqual (Arg0, 0x00))
            {
                CreateWordField (Arg1, 0x00, A005)
                CreateWordField (Arg1, 0x02, A006)
                CreateDWordField (Arg1, 0x04, A007)
                Store (Buffer (0x0100){}, Local0)
                CreateWordField (Local0, 0x00, A008)
                Store (A005, A008)
                CreateWordField (Local0, 0x02, A009)
                Store (A006, A009)
                CreateDWordField (Local0, 0x04, A010)
                Store (A007, A010)
                And (A010, Not (0x0F), A010)
                If (LGreater (DerefOf (Index (\_SB.ADAT, 0x00)), 0x00))
                {
                    Store (0x0F, Local1)
                }
                Else
                {
                    Store (0x01, Local1)
                }

                Or (A010, Local1, A010)
                Return (Local0)
            }

            If (LEqual (Arg0, 0x01))
            {
                Store (DerefOf (Index (Arg1, 0x02)), Local0)
                Return (A011 (Local0))
            }

            If (LEqual (Arg0, 0x02))
            {
                Store (Buffer (0x0100)
                    {
                         0x03, 0x00, 0x00                               
                    }, Local0)
                Return (Local0)
            }

            If (LEqual (Arg0, 0x03))
            {
                Store (Buffer (0x0100)
                    {
                         0x03, 0x00, 0x00                               
                    }, Local0)
                Return (Local0)
            }

            If (LEqual (Arg0, 0x06))
            {
                Store (DerefOf (Index (Arg1, 0x04)), Local0)
                Store (DerefOf (Index (Arg1, 0x02)), Local1)
                Return (A014 (Local0, Local1))
            }

            If (LEqual (Arg0, 0x0A))
            {
                Store (DerefOf (Index (Arg1, 0x02)), Local0)
                Return (A015 (Local0))
            }

            If (LEqual (Arg0, 0x0B))
            {
                Store (DerefOf (Index (Arg1, 0x02)), Local0)
                Store (DerefOf (Index (Arg1, 0x03)), Local1)
                Store (DerefOf (Index (Arg1, 0x04)), Local2)
                Or (ShiftLeft (DerefOf (Index (Arg1, 0x05)), 0x08), Local2, Local2)
                Or (ShiftLeft (DerefOf (Index (Arg1, 0x06)), 0x10), Local2, Local2)
                Or (ShiftLeft (DerefOf (Index (Arg1, 0x07)), 0x18), Local2, Local2)
                Store (DerefOf (Index (Arg1, 0x08)), Local3)
                Or (ShiftLeft (DerefOf (Index (Arg1, 0x09)), 0x08), Local3, Local3)
                Or (ShiftLeft (DerefOf (Index (Arg1, 0x0A)), 0x10), Local3, Local3)
                Or (ShiftLeft (DerefOf (Index (Arg1, 0x0B)), 0x18), Local3, Local3)
                Store (DerefOf (Index (Arg1, 0x0C)), Local4)
                Or (ShiftLeft (DerefOf (Index (Arg1, 0x0D)), 0x08), Local4, Local4)
                Or (ShiftLeft (DerefOf (Index (Arg1, 0x0E)), 0x10), Local4, Local4)
                Or (ShiftLeft (DerefOf (Index (Arg1, 0x0F)), 0x18), Local4, Local4)
                Return (A016 (Local0, Local1, Local2, Local3, Local4))
            }

            If (LEqual (Arg0, 0x0C))
            {
                A017 (Arg1)
            }

            Return (0x00)
        }

        Method (A014, 2, NotSerialized)
        {
            Store (0x00, Local0)
            While (LLess (Local0, 0x10))
            {
                Store (A065 (Local0, Arg1), Local1)
                If (LEqual (Local1, 0x01))
                {
                    Store (A066 (Local0, Arg0), Local1)
                    Break
                }

                Increment (Local0)
            }

            Store (Buffer (0x0A){}, Local7)
            CreateWordField (Local7, 0x00, A008)
            CreateByteField (Local7, 0x02, A019)
            CreateByteField (Local7, 0x03, A067)
            Store (0x04, A008)
            Store (0x00, A019)
            Store (Local1, A067)
            Return (Local7)
        }

        Method (A065, 2, NotSerialized)
        {
            If (LEqual (Arg0, 0x00))
            {
                Return (\_SB.AWR0.ABR0.A060 (Arg1))
            }

            If (LEqual (Arg0, 0x01))
            {
                Return (\_SB.AWR0.ABR1.A060 (Arg1))
            }

            If (LEqual (Arg0, 0x02))
            {
                Return (\_SB.AWR0.ABR2.A060 (Arg1))
            }

            If (LEqual (Arg0, 0x03))
            {
                Return (\_SB.AWR0.ABR3.A060 (Arg1))
            }

            If (LEqual (Arg0, 0x04))
            {
                Return (\_SB.AWR0.ABR4.A060 (Arg1))
            }

            If (LEqual (Arg0, 0x05))
            {
                Return (\_SB.AWR0.ABR5.A060 (Arg1))
            }

            If (LEqual (Arg0, 0x06))
            {
                Return (\_SB.AWR0.ABR6.A060 (Arg1))
            }

            If (LEqual (Arg0, 0x07))
            {
                Return (\_SB.AWR0.ABR7.A060 (Arg1))
            }

            If (LEqual (Arg0, 0x08))
            {
                Return (\_SB.AWR1.ABR8.A060 (Arg1))
            }

            If (LEqual (Arg0, 0x09))
            {
                Return (\_SB.AWR1.ABR9.A060 (Arg1))
            }

            If (LEqual (Arg0, 0x0A))
            {
                Return (\_SB.AWR1.ABRA.A060 (Arg1))
            }

            If (LEqual (Arg0, 0x0B))
            {
                Return (\_SB.AWR1.ABRB.A060 (Arg1))
            }

            If (LEqual (Arg0, 0x0C))
            {
                Return (\_SB.AWR1.ABRC.A060 (Arg1))
            }

            If (LEqual (Arg0, 0x0D))
            {
                Return (\_SB.AWR1.ABRD.A060 (Arg1))
            }

            If (LEqual (Arg0, 0x0E))
            {
                Return (\_SB.AWR1.ABRE.A060 (Arg1))
            }

            If (LEqual (Arg0, 0x0F))
            {
                Return (\_SB.AWR1.ABRF.A060 (Arg1))
            }
        }

        Method (A066, 2, NotSerialized)
        {
            If (LEqual (Arg0, 0x00))
            {
                Return (\_SB.AWR0.ABR0.A061 (Arg1))
            }

            If (LEqual (Arg0, 0x01))
            {
                Return (\_SB.AWR0.ABR1.A061 (Arg1))
            }

            If (LEqual (Arg0, 0x02))
            {
                Return (\_SB.AWR0.ABR2.A061 (Arg1))
            }

            If (LEqual (Arg0, 0x03))
            {
                Return (\_SB.AWR0.ABR3.A061 (Arg1))
            }

            If (LEqual (Arg0, 0x04))
            {
                Return (\_SB.AWR0.ABR4.A061 (Arg1))
            }

            If (LEqual (Arg0, 0x05))
            {
                Return (\_SB.AWR0.ABR5.A061 (Arg1))
            }

            If (LEqual (Arg0, 0x06))
            {
                Return (\_SB.AWR0.ABR6.A061 (Arg1))
            }

            If (LEqual (Arg0, 0x07))
            {
                Return (\_SB.AWR0.ABR7.A061 (Arg1))
            }

            If (LEqual (Arg0, 0x08))
            {
                Return (\_SB.AWR1.ABR8.A061 (Arg1))
            }

            If (LEqual (Arg0, 0x09))
            {
                Return (\_SB.AWR1.ABR9.A061 (Arg1))
            }

            If (LEqual (Arg0, 0x0A))
            {
                Return (\_SB.AWR1.ABRA.A061 (Arg1))
            }

            If (LEqual (Arg0, 0x0B))
            {
                Return (\_SB.AWR1.ABRB.A061 (Arg1))
            }

            If (LEqual (Arg0, 0x0C))
            {
                Return (\_SB.AWR1.ABRC.A061 (Arg1))
            }

            If (LEqual (Arg0, 0x0D))
            {
                Return (\_SB.AWR1.ABRD.A061 (Arg1))
            }

            If (LEqual (Arg0, 0x0E))
            {
                Return (\_SB.AWR1.ABRE.A061 (Arg1))
            }

            If (LEqual (Arg0, 0x0F))
            {
                Return (\_SB.AWR1.ABRF.A061 (Arg1))
            }
        }

        Name (AD00, 0x00)
        Name (DK00, 0x00)
        Method (A011, 1, NotSerialized)
        {
            If (LEqual (AD00, Arg0))
            {
                Return (0x00)
            }

            Store (Arg0, AD00)
            A003 ()
        }

        Method (A015, 1, NotSerialized)
        {
            Store (Arg0, DK00)
        }

        Method (A016, 5, NotSerialized)
        {
        }

        Name (AP01, 0x00)
        Name (AP02, 0x00)
        Name (AP03, 0x00)
        Name (AP05, 0x00)
        Name (AP0B, 0xFF)
        Name (AP10, 0x00)
        Method (A018, 1, NotSerialized)
        {
            Store (Buffer (0x0100){}, Local7)
            CreateWordField (Local7, 0x00, A008)
            Store (0x03, A008)
            CreateByteField (Local7, 0x02, A019)
            Store (0x01, A019)
            If (LEqual (DerefOf (Index (\_SB.ADAT, 0x00)), 0x01))
            {
                Store (0x02, A019)
                Return (Local7)
            }

            If (LEqual (DerefOf (Index (\_SB.ADAT, 0x00)), 0x00))
            {
                Store (0x01, A019)
                Return (Local7)
            }

            A020 (Arg0)
            If (LNotEqual (AP05, 0x01))
            {
                Return (Local7)
            }

            A021 ()
            Store (0x02, A019)
            Return (Local7)
        }

        Method (A022, 0, NotSerialized)
        {
            If (LLessEqual (DerefOf (Index (\_SB.ADAT, 0x00)), 0x01))
            {
                Return (0x00)
            }

            If (LNotEqual (AP05, 0x01))
            {
                Return (0x00)
            }

            A021 ()
        }

        Method (A023, 1, NotSerialized)
        {
            If (LEqual (Arg0, 0x03))
            {
                Store (0x00, AP01)
            }
        }

        Method (A024, 1, NotSerialized)
        {
            Store (0x01, AP10)
        }

        Method (A025, 1, NotSerialized)
        {
            Store (Arg0, AP05)
            If (LLessEqual (DerefOf (Index (\_SB.ADAT, 0x00)), 0x01))
            {
                Return (0x00)
            }

            Store (AP0B, Local1)
            If (LEqual (AP05, 0x00))
            {
                Store (0x00, Local0)
                While (LLess (Local0, 0x10))
                {
                    A026 (Local0)
                    Increment (Local0)
                }

                Store (0x00, AP0B)
            }

            A021 ()
            Store (Local1, AP0B)
            Store (Buffer (0x0100){}, Local7)
            Store (0x03, Index (Local7, 0x00))
            Store (0x00, Index (Local7, 0x01))
            Store (0x00, Index (Local7, 0x02))
            Return (Local7)
        }

        Method (A027, 0, NotSerialized)
        {
            If (LNotEqual (AP0B, 0xFF))
            {
                Return (AP0B)
            }

            Return (AD00)
        }

        Method (A020, 1, NotSerialized)
        {
            CreateWordField (Arg0, 0x02, AP06)
            CreateWordField (Arg0, 0x04, AP07)
            CreateWordField (Arg0, 0x06, AP08)
            CreateByteField (Arg0, 0x08, AP09)
            CreateByteField (Arg0, 0x09, AP0A)
            Store (0x00, Local0)
            While (LLess (Local0, 0x10))
            {
                If (LEqual (A028 (Local0, AP06), 0x01))
                {
                    If (LEqual (And (AP07, AP08), 0x01))
                    {
                        Store (A029 (Local0), Local1)
                        A030 (Local0, Local1)
                    }
                    Else
                    {
                        A030 (Local0, AP0A)
                    }

                    Break
                }

                Increment (Local0)
            }
        }

        Method (A031, 0, NotSerialized)
        {
            Store (0x01, AP02)
            Store (0x00, Local0)
            While (LLess (Local0, 0x10))
            {
                Store (A032 (Local0), Local1)
                If (LGreater (Local1, AP02))
                {
                    Store (Local1, AP02)
                }

                Increment (Local0)
            }
        }

        Method (A033, 0, NotSerialized)
        {
            Store (0x00, AP03)
            Store (0x00, Local0)
            While (LLess (Local0, 0x10))
            {
                Store (A034 (Local0), Local1)
                If (LGreater (Local1, AP03))
                {
                    Store (Local1, AP03)
                }

                Increment (Local0)
            }
        }

        Method (A021, 0, NotSerialized)
        {
            A033 ()
            A031 ()
            If (LNotEqual (AP02, AP01))
            {
                A004 (AP02, AP01)
            }

            If (LGreater (AP02, AP01))
            {
                Store (AP02, AP01)
            }

            Store (0x00, Local0)
            While (LLess (Local0, 0x10))
            {
                Store (A032 (Local0), Local1)
                Store (A035 (Local0), Local2)
                If (LNotEqual (Local1, Local2))
                {
                    A036 (Local0, Local1)
                }
                ElseIf (LEqual (AP10, 0x01))
                {
                    A036 (Local0, Local1)
                }

                Increment (Local0)
            }

            If (LLess (AP02, AP01))
            {
                Store (AP02, AP01)
            }
            ElseIf (LEqual (AP10, 0x01))
            {
                Store (AP02, AP01)
            }

            Store (0x00, AP10)
        }

        Method (A036, 2, NotSerialized)
        {
            If (LEqual (Arg0, 0x00))
            {
                Return (\_SB.AWR0.ABR0.A037 (Arg1))
            }

            If (LEqual (Arg0, 0x01))
            {
                Return (\_SB.AWR0.ABR1.A037 (Arg1))
            }

            If (LEqual (Arg0, 0x02))
            {
                Return (\_SB.AWR0.ABR2.A037 (Arg1))
            }

            If (LEqual (Arg0, 0x03))
            {
                Return (\_SB.AWR0.ABR3.A037 (Arg1))
            }

            If (LEqual (Arg0, 0x04))
            {
                Return (\_SB.AWR0.ABR4.A037 (Arg1))
            }

            If (LEqual (Arg0, 0x05))
            {
                Return (\_SB.AWR0.ABR5.A037 (Arg1))
            }

            If (LEqual (Arg0, 0x06))
            {
                Return (\_SB.AWR0.ABR6.A037 (Arg1))
            }

            If (LEqual (Arg0, 0x07))
            {
                Return (\_SB.AWR0.ABR7.A037 (Arg1))
            }

            If (LEqual (Arg0, 0x08))
            {
                Return (\_SB.AWR1.ABR8.A037 (Arg1))
            }

            If (LEqual (Arg0, 0x09))
            {
                Return (\_SB.AWR1.ABR9.A037 (Arg1))
            }

            If (LEqual (Arg0, 0x0A))
            {
                Return (\_SB.AWR1.ABRA.A037 (Arg1))
            }

            If (LEqual (Arg0, 0x0B))
            {
                Return (\_SB.AWR1.ABRB.A037 (Arg1))
            }

            If (LEqual (Arg0, 0x0C))
            {
                Return (\_SB.AWR1.ABRC.A037 (Arg1))
            }

            If (LEqual (Arg0, 0x0D))
            {
                Return (\_SB.AWR1.ABRD.A037 (Arg1))
            }

            If (LEqual (Arg0, 0x0E))
            {
                Return (\_SB.AWR1.ABRE.A037 (Arg1))
            }

            If (LEqual (Arg0, 0x0F))
            {
                Return (\_SB.AWR1.ABRF.A037 (Arg1))
            }
        }

        Method (A035, 1, NotSerialized)
        {
            If (LEqual (Arg0, 0x00))
            {
                Return (\_SB.AWR0.ABR0.A038 ())
            }

            If (LEqual (Arg0, 0x01))
            {
                Return (\_SB.AWR0.ABR1.A038 ())
            }

            If (LEqual (Arg0, 0x02))
            {
                Return (\_SB.AWR0.ABR2.A038 ())
            }

            If (LEqual (Arg0, 0x03))
            {
                Return (\_SB.AWR0.ABR3.A038 ())
            }

            If (LEqual (Arg0, 0x04))
            {
                Return (\_SB.AWR0.ABR4.A038 ())
            }

            If (LEqual (Arg0, 0x05))
            {
                Return (\_SB.AWR0.ABR5.A038 ())
            }

            If (LEqual (Arg0, 0x06))
            {
                Return (\_SB.AWR0.ABR6.A038 ())
            }

            If (LEqual (Arg0, 0x07))
            {
                Return (\_SB.AWR0.ABR7.A038 ())
            }

            If (LEqual (Arg0, 0x08))
            {
                Return (\_SB.AWR1.ABR8.A038 ())
            }

            If (LEqual (Arg0, 0x09))
            {
                Return (\_SB.AWR1.ABR9.A038 ())
            }

            If (LEqual (Arg0, 0x0A))
            {
                Return (\_SB.AWR1.ABRA.A038 ())
            }

            If (LEqual (Arg0, 0x0B))
            {
                Return (\_SB.AWR1.ABRB.A038 ())
            }

            If (LEqual (Arg0, 0x0C))
            {
                Return (\_SB.AWR1.ABRC.A038 ())
            }

            If (LEqual (Arg0, 0x0D))
            {
                Return (\_SB.AWR1.ABRD.A038 ())
            }

            If (LEqual (Arg0, 0x0E))
            {
                Return (\_SB.AWR1.ABRE.A038 ())
            }

            If (LEqual (Arg0, 0x0F))
            {
                Return (\_SB.AWR1.ABRF.A038 ())
            }
        }

        Method (A032, 1, NotSerialized)
        {
            If (LEqual (Arg0, 0x00))
            {
                Return (\_SB.AWR0.ABR0.A039 ())
            }

            If (LEqual (Arg0, 0x01))
            {
                Return (\_SB.AWR0.ABR1.A039 ())
            }

            If (LEqual (Arg0, 0x02))
            {
                Return (\_SB.AWR0.ABR2.A039 ())
            }

            If (LEqual (Arg0, 0x03))
            {
                Return (\_SB.AWR0.ABR3.A039 ())
            }

            If (LEqual (Arg0, 0x04))
            {
                Return (\_SB.AWR0.ABR4.A039 ())
            }

            If (LEqual (Arg0, 0x05))
            {
                Return (\_SB.AWR0.ABR5.A039 ())
            }

            If (LEqual (Arg0, 0x06))
            {
                Return (\_SB.AWR0.ABR6.A039 ())
            }

            If (LEqual (Arg0, 0x07))
            {
                Return (\_SB.AWR0.ABR7.A039 ())
            }

            If (LEqual (Arg0, 0x08))
            {
                Return (\_SB.AWR1.ABR8.A039 ())
            }

            If (LEqual (Arg0, 0x09))
            {
                Return (\_SB.AWR1.ABR9.A039 ())
            }

            If (LEqual (Arg0, 0x0A))
            {
                Return (\_SB.AWR1.ABRA.A039 ())
            }

            If (LEqual (Arg0, 0x0B))
            {
                Return (\_SB.AWR1.ABRB.A039 ())
            }

            If (LEqual (Arg0, 0x0C))
            {
                Return (\_SB.AWR1.ABRC.A039 ())
            }

            If (LEqual (Arg0, 0x0D))
            {
                Return (\_SB.AWR1.ABRD.A039 ())
            }

            If (LEqual (Arg0, 0x0E))
            {
                Return (\_SB.AWR1.ABRE.A039 ())
            }

            If (LEqual (Arg0, 0x0F))
            {
                Return (\_SB.AWR1.ABRF.A039 ())
            }
        }

        Method (A034, 1, NotSerialized)
        {
            If (LEqual (Arg0, 0x00))
            {
                Return (\_SB.AWR0.ABR0.A040 ())
            }

            If (LEqual (Arg0, 0x01))
            {
                Return (\_SB.AWR0.ABR1.A040 ())
            }

            If (LEqual (Arg0, 0x02))
            {
                Return (\_SB.AWR0.ABR2.A040 ())
            }

            If (LEqual (Arg0, 0x03))
            {
                Return (\_SB.AWR0.ABR3.A040 ())
            }

            If (LEqual (Arg0, 0x04))
            {
                Return (\_SB.AWR0.ABR4.A040 ())
            }

            If (LEqual (Arg0, 0x05))
            {
                Return (\_SB.AWR0.ABR5.A040 ())
            }

            If (LEqual (Arg0, 0x06))
            {
                Return (\_SB.AWR0.ABR6.A040 ())
            }

            If (LEqual (Arg0, 0x07))
            {
                Return (\_SB.AWR0.ABR7.A040 ())
            }

            If (LEqual (Arg0, 0x08))
            {
                Return (\_SB.AWR1.ABR8.A040 ())
            }

            If (LEqual (Arg0, 0x09))
            {
                Return (\_SB.AWR1.ABR9.A040 ())
            }

            If (LEqual (Arg0, 0x0A))
            {
                Return (\_SB.AWR1.ABRA.A040 ())
            }

            If (LEqual (Arg0, 0x0B))
            {
                Return (\_SB.AWR1.ABRB.A040 ())
            }

            If (LEqual (Arg0, 0x0C))
            {
                Return (\_SB.AWR1.ABRC.A040 ())
            }

            If (LEqual (Arg0, 0x0D))
            {
                Return (\_SB.AWR1.ABRD.A040 ())
            }

            If (LEqual (Arg0, 0x0E))
            {
                Return (\_SB.AWR1.ABRE.A040 ())
            }

            If (LEqual (Arg0, 0x0F))
            {
                Return (\_SB.AWR1.ABRF.A040 ())
            }
        }

        Method (A029, 1, NotSerialized)
        {
            If (LEqual (Arg0, 0x00))
            {
                Return (\_SB.AWR0.ABR0.A041 ())
            }

            If (LEqual (Arg0, 0x01))
            {
                Return (\_SB.AWR0.ABR1.A041 ())
            }

            If (LEqual (Arg0, 0x02))
            {
                Return (\_SB.AWR0.ABR2.A041 ())
            }

            If (LEqual (Arg0, 0x03))
            {
                Return (\_SB.AWR0.ABR3.A041 ())
            }

            If (LEqual (Arg0, 0x04))
            {
                Return (\_SB.AWR0.ABR4.A041 ())
            }

            If (LEqual (Arg0, 0x05))
            {
                Return (\_SB.AWR0.ABR5.A041 ())
            }

            If (LEqual (Arg0, 0x06))
            {
                Return (\_SB.AWR0.ABR6.A041 ())
            }

            If (LEqual (Arg0, 0x07))
            {
                Return (\_SB.AWR0.ABR7.A041 ())
            }

            If (LEqual (Arg0, 0x08))
            {
                Return (\_SB.AWR1.ABR8.A041 ())
            }

            If (LEqual (Arg0, 0x09))
            {
                Return (\_SB.AWR1.ABR9.A041 ())
            }

            If (LEqual (Arg0, 0x0A))
            {
                Return (\_SB.AWR1.ABRA.A041 ())
            }

            If (LEqual (Arg0, 0x0B))
            {
                Return (\_SB.AWR1.ABRB.A041 ())
            }

            If (LEqual (Arg0, 0x0C))
            {
                Return (\_SB.AWR1.ABRC.A041 ())
            }

            If (LEqual (Arg0, 0x0D))
            {
                Return (\_SB.AWR1.ABRD.A041 ())
            }

            If (LEqual (Arg0, 0x0E))
            {
                Return (\_SB.AWR1.ABRE.A041 ())
            }

            If (LEqual (Arg0, 0x0F))
            {
                Return (\_SB.AWR1.ABRF.A041 ())
            }
        }

        Method (A030, 2, NotSerialized)
        {
            If (LEqual (Arg0, 0x00))
            {
                Return (\_SB.AWR0.ABR0.A042 (Arg1))
            }

            If (LEqual (Arg0, 0x01))
            {
                Return (\_SB.AWR0.ABR1.A042 (Arg1))
            }

            If (LEqual (Arg0, 0x02))
            {
                Return (\_SB.AWR0.ABR2.A042 (Arg1))
            }

            If (LEqual (Arg0, 0x03))
            {
                Return (\_SB.AWR0.ABR3.A042 (Arg1))
            }

            If (LEqual (Arg0, 0x04))
            {
                Return (\_SB.AWR0.ABR4.A042 (Arg1))
            }

            If (LEqual (Arg0, 0x05))
            {
                Return (\_SB.AWR0.ABR5.A042 (Arg1))
            }

            If (LEqual (Arg0, 0x06))
            {
                Return (\_SB.AWR0.ABR6.A042 (Arg1))
            }

            If (LEqual (Arg0, 0x07))
            {
                Return (\_SB.AWR0.ABR7.A042 (Arg1))
            }

            If (LEqual (Arg0, 0x08))
            {
                Return (\_SB.AWR1.ABR8.A042 (Arg1))
            }

            If (LEqual (Arg0, 0x09))
            {
                Return (\_SB.AWR1.ABR9.A042 (Arg1))
            }

            If (LEqual (Arg0, 0x0A))
            {
                Return (\_SB.AWR1.ABRA.A042 (Arg1))
            }

            If (LEqual (Arg0, 0x0B))
            {
                Return (\_SB.AWR1.ABRB.A042 (Arg1))
            }

            If (LEqual (Arg0, 0x0C))
            {
                Return (\_SB.AWR1.ABRC.A042 (Arg1))
            }

            If (LEqual (Arg0, 0x0D))
            {
                Return (\_SB.AWR1.ABRD.A042 (Arg1))
            }

            If (LEqual (Arg0, 0x0E))
            {
                Return (\_SB.AWR1.ABRE.A042 (Arg1))
            }

            If (LEqual (Arg0, 0x0F))
            {
                Return (\_SB.AWR1.ABRF.A042 (Arg1))
            }
        }

        Method (A028, 2, NotSerialized)
        {
            If (LEqual (Arg0, 0x00))
            {
                Return (\_SB.AWR0.ABR0.A043 (Arg1))
            }

            If (LEqual (Arg0, 0x01))
            {
                Return (\_SB.AWR0.ABR1.A043 (Arg1))
            }

            If (LEqual (Arg0, 0x02))
            {
                Return (\_SB.AWR0.ABR2.A043 (Arg1))
            }

            If (LEqual (Arg0, 0x03))
            {
                Return (\_SB.AWR0.ABR3.A043 (Arg1))
            }

            If (LEqual (Arg0, 0x04))
            {
                Return (\_SB.AWR0.ABR4.A043 (Arg1))
            }

            If (LEqual (Arg0, 0x05))
            {
                Return (\_SB.AWR0.ABR5.A043 (Arg1))
            }

            If (LEqual (Arg0, 0x06))
            {
                Return (\_SB.AWR0.ABR6.A043 (Arg1))
            }

            If (LEqual (Arg0, 0x07))
            {
                Return (\_SB.AWR0.ABR7.A043 (Arg1))
            }

            If (LEqual (Arg0, 0x08))
            {
                Return (\_SB.AWR1.ABR8.A043 (Arg1))
            }

            If (LEqual (Arg0, 0x09))
            {
                Return (\_SB.AWR1.ABR9.A043 (Arg1))
            }

            If (LEqual (Arg0, 0x0A))
            {
                Return (\_SB.AWR1.ABRA.A043 (Arg1))
            }

            If (LEqual (Arg0, 0x0B))
            {
                Return (\_SB.AWR1.ABRB.A043 (Arg1))
            }

            If (LEqual (Arg0, 0x0C))
            {
                Return (\_SB.AWR1.ABRC.A043 (Arg1))
            }

            If (LEqual (Arg0, 0x0D))
            {
                Return (\_SB.AWR1.ABRD.A043 (Arg1))
            }

            If (LEqual (Arg0, 0x0E))
            {
                Return (\_SB.AWR1.ABRE.A043 (Arg1))
            }

            If (LEqual (Arg0, 0x0F))
            {
                Return (\_SB.AWR1.ABRF.A043 (Arg1))
            }
        }

        Method (A026, 1, NotSerialized)
        {
            If (LEqual (Arg0, 0x00))
            {
                Return (\_SB.AWR0.ABR0.A044 ())
            }

            If (LEqual (Arg0, 0x01))
            {
                Return (\_SB.AWR0.ABR1.A044 ())
            }

            If (LEqual (Arg0, 0x02))
            {
                Return (\_SB.AWR0.ABR2.A044 ())
            }

            If (LEqual (Arg0, 0x03))
            {
                Return (\_SB.AWR0.ABR3.A044 ())
            }

            If (LEqual (Arg0, 0x04))
            {
                Return (\_SB.AWR0.ABR4.A044 ())
            }

            If (LEqual (Arg0, 0x05))
            {
                Return (\_SB.AWR0.ABR5.A044 ())
            }

            If (LEqual (Arg0, 0x06))
            {
                Return (\_SB.AWR0.ABR6.A044 ())
            }

            If (LEqual (Arg0, 0x07))
            {
                Return (\_SB.AWR0.ABR7.A044 ())
            }

            If (LEqual (Arg0, 0x08))
            {
                Return (\_SB.AWR1.ABR8.A044 ())
            }

            If (LEqual (Arg0, 0x09))
            {
                Return (\_SB.AWR1.ABR9.A044 ())
            }

            If (LEqual (Arg0, 0x0A))
            {
                Return (\_SB.AWR1.ABRA.A044 ())
            }

            If (LEqual (Arg0, 0x0B))
            {
                Return (\_SB.AWR1.ABRB.A044 ())
            }

            If (LEqual (Arg0, 0x0C))
            {
                Return (\_SB.AWR1.ABRC.A044 ())
            }

            If (LEqual (Arg0, 0x0D))
            {
                Return (\_SB.AWR1.ABRD.A044 ())
            }

            If (LEqual (Arg0, 0x0E))
            {
                Return (\_SB.AWR1.ABRE.A044 ())
            }

            If (LEqual (Arg0, 0x0F))
            {
                Return (\_SB.AWR1.ABRF.A044 ())
            }
        }

        OperationRegion (A093, SystemMemory, AGRB, 0x1000)
        Field (A093, ByteAcc, NoLock, Preserve)
        {
            Offset (0xB8), 
            A094,   32
        }

        BankField (A093, A094, 0x03B10528, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A082,   32
        }

        BankField (A093, A094, 0x03B10564, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A075,   32
        }

        BankField (A093, A094, 0x03B10598, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A076,   32
        }

        BankField (A093, A094, 0x03B1059C, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A077,   32
        }

        BankField (A093, A094, 0x03B105A0, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A078,   32
        }

        BankField (A093, A094, 0x03B105A4, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A079,   32
        }

        BankField (A093, A094, 0x03B105A8, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A080,   32
        }

        BankField (A093, A094, 0x03B105AC, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A081,   32
        }

        Method (A068, 2, Serialized)
        {
            CreateDWordField (Arg1, 0x00, A069)
            CreateDWordField (Arg1, 0x04, A070)
            CreateDWordField (Arg1, 0x08, A071)
            CreateDWordField (Arg1, 0x0C, A072)
            CreateDWordField (Arg1, 0x10, A073)
            CreateDWordField (Arg1, 0x14, A074)
            Store (0x00, A075)
            While (LNotEqual (A075, 0x00)){}
            Store (A069, A076)
            Store (A070, A077)
            Store (A071, A078)
            Store (A072, A079)
            Store (A073, A080)
            Store (A074, A081)
            Store (Arg0, A082)
            While (LEqual (A075, 0x00)){}
        }

        Method (A083, 5, NotSerialized)
        {
            If (LEqual (Arg0, 0x00))
            {
                Store (Buffer (0x18){}, Local7)
                CreateDWordField (Local7, 0x00, A084)
                CreateDWordField (Local7, 0x04, A085)
                CreateDWordField (Local7, 0x08, A086)
                CreateDWordField (Local7, 0x0C, A087)
                CreateDWordField (Local7, 0x10, A088)
                CreateDWordField (Local7, 0x14, A089)
                Store (Arg0, A084)
                Store (Arg1, A085)
                Store (Arg2, A086)
                Store (Arg3, A087)
                A068 (0x0F, Local7)
            }
        }

        Method (A090, 1, NotSerialized)
        {
            If (LEqual (Arg0, 0x00)){}
            Else
            {
            }

            Return (Local0)
        }

        Method (A091, 1, NotSerialized)
        {
            If (LEqual (Arg0, 0x00)){}
        }

        Method (A017, 1, Serialized)
        {
            CreateWordField (Arg0, 0x00, A092)
            Store (Buffer (0x18){}, Local7)
            CreateDWordField (Local7, 0x00, A084)
            CreateDWordField (Local7, 0x04, A085)
            CreateDWordField (Local7, 0x08, A086)
            CreateDWordField (Local7, 0x0C, A087)
            CreateDWordField (Local7, 0x10, A088)
            CreateDWordField (Local7, 0x14, A089)
            Store (0x02, Local0)
            While (LLess (Local0, A092))
            {
                Store (DerefOf (Index (Arg0, Local0)), Local1)
                Increment (Local0)
                Store (DerefOf (Index (Arg0, Local0)), Local2)
                Increment (Local0)
                Or (ShiftLeft (DerefOf (Index (Arg0, Local0)), 0x08), Local2, Local2)
                Increment (Local0)
                Or (ShiftLeft (DerefOf (Index (Arg0, Local0)), 0x10), Local2, Local2)
                Increment (Local0)
                Or (ShiftLeft (DerefOf (Index (Arg0, Local0)), 0x18), Local2, Local2)
                Increment (Local0)
                Store (0x00, A084)
                Store (0x00, A085)
                Store (0x00, A086)
                Store (0x00, A087)
                Store (0x00, A088)
                Store (0x00, A089)
                If (LEqual (Local1, 0x04))
                {
                    Store (Local2, A084)
                    A068 (0x31, Local7)
                }

                If (LEqual (Local1, 0x0B))
                {
                    Store (Local2, A084)
                    A068 (0x43, Local7)
                }

                If (LEqual (Local1, 0x0C))
                {
                    Store (Local2, A084)
                    A068 (0x44, Local7)
                }

                If (LEqual (Local1, 0x10))
                {
                    Store (Local2, A084)
                    A068 (0x46, Local7)
                }

                If (LEqual (Local1, 0x11))
                {
                    Store (Local2, A084)
                    A068 (0x48, Local7)
                }
            }
        }

        Device (AWR0)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
            Name (_UID, 0x90)  // _UID: Unique ID
            Device (ABR0)
            {
                Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                Name (_UID, 0x80)  // _UID: Unique ID
                Name (AB12, 0x20)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, Add (AGRB, Or (ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), 0x0F), ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), 0x0C))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x00))), AB00)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x01))), AB0E)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x02))), AB01)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x03))), AB02)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x04))), AB03)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x05))), AB04)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x06))), AB05)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x07))), AB06)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x08))), AB07)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x09))), AB08)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0A))), AB09)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0B))), AB0A)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0C))), AB0B)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), AB0C)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), AB0D)
                }

                Method (A045, 0, NotSerialized)
                {
                    Store (A027 (), Local0)
                    If (LEqual (Local0, 0x01))
                    {
                        Return (AB01)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Return (AB0E)
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If (LNotEqual (AB10, 0x00))
                    {
                        If (LEqual (AB10, 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If (LNotEqual (AB05, 0x00))
                    {
                        Return (AB05)
                    }

                    If (LGreater (AB10, 0x01))
                    {
                        Return (Subtract (AB10, 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If (LEqual (\_SB.AP05, 0x00))
                    {
                        If (LNotEqual (AB05, 0x00))
                        {
                            Return (AB05)
                        }

                        Return (AB0E)
                    }

                    Store (A046 (), Local0)
                    If (LNotEqual (Local0, 0x00))
                    {
                        If (LGreater (Local0, AB00))
                        {
                            Return (AB00)
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Store (A045 (), Local0)
                    If (LNotEqual (\_SB.AP03, 0x00))
                    {
                        If (LLess (\_SB.AP03, Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00)
                }

                Method (A037, 1, NotSerialized)
                {
                    Store (Arg0, AB02)
                    A047 (Arg0)
                    If (LNotEqual (AB10, 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    Store (Arg0, AB10)
                }

                Method (A043, 1, NotSerialized)
                {
                    ShiftRight (Arg0, 0x08, Local0)
                    If (LAnd (LGreaterEqual (Local0, A050), LLessEqual (Local0, A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local0)
                    If (LEqual (Arg0, Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    Store (0x00, AB10)
                }

                Method (A047, 1, NotSerialized)
                {
                    If (LGreaterEqual (Arg0, 0x02)){}
                    If (LGreaterEqual (Arg0, 0x03)){}
                    If (LEqual (Arg0, 0x01))
                    {
                        If (LEqual (AB04, 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If (LEqual (A062 (Arg0, 0x00), 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Store (A062 (Arg0, 0x34), Local0)
                    While (0x01)
                    {
                        Store (A062 (Arg0, And (Local0, 0xFF)), Local1)
                        If (LEqual (And (Local1, 0xFF), Arg1))
                        {
                            Return (And (Local0, 0xFF))
                        }

                        And (ShiftRight (Local1, 0x08), 0xFF, Local0)
                        If (LEqual (Local0, 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Store (0x00, Local0)
                    If (LNotEqual (A062 (Local0, 0x00), 0xFFFFFFFF))
                    {
                        And (A062 (Local0, 0x08), 0x80, Local1)
                        If (LEqual (Local1, 0x80))
                        {
                            Store (0x07, Local7)
                        }
                        Else
                        {
                            Store (0x00, Local7)
                        }

                        While (LLessEqual (Local0, Local7))
                        {
                            Store (A064 (Local0, 0x10), Local1)
                            If (LEqual (Local1, 0x00))
                            {
                                Increment (Local0)
                                Continue
                            }

                            If (LEqual (Arg0, 0x00))
                            {
                                Store (A062 (Local0, Add (Local1, 0x10)), Local2)
                                A063 (Local0, Add (Local1, 0x10), And (Local2, Not (0x03)))
                                Store (Local2, Index (AESP, Local0))
                            }
                            Else
                            {
                                Store (DerefOf (Index (AESP, Local0)), Local2)
                                A063 (Local0, Add (Local1, 0x10), Local2)
                            }

                            Increment (Local0)
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Store (Arg2, ADRR)
                }

                Method (A062, 2, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR)
                }

                Method (A060, 1, NotSerialized)
                {
                    If (LNotEqual (AB0B, 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    Store (A054, A049)
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local1)
                    If (LEqual (Arg0, 0x01))
                    {
                        Store (0x01, Local0)
                    }
                    Else
                    {
                        A048 (0x00)
                        Store (A062 (0x00, 0x04), Local0)
                        If (LNotEqual (Local0, 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, And (Local0, Not (0x04)))
                            Store (A062 (0x01, 0x04), Local0)
                            If (LNotEqual (Local0, 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, And (Local0, Not (0x04)))
                            }
                        }

                        Store (0x01, A055)
                        Store (0x05, Local0)
                    }

                    Store (0x00, A054)
                    While (LNotEqual (Local0, 0x08))
                    {
                        If (LEqual (Local0, 0x01)){}
                        If (LEqual (Local0, 0x05))
                        {
                            A062 (0x00, 0x00)
                            Store (0x00, AB05)
                            Store (0x00, AB04)
                            Store (0x00, AB10)
                            Store (0x00, Local2)
                            Store (0x08, Local0)
                        }
                    }

                    Store (A049, A054)
                    If (LNotEqual (A049, 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABR1)
            {
                Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                Name (_UID, 0x81)  // _UID: Unique ID
                Name (AB12, 0x34)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, Add (AGRB, Or (ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), 0x0F), ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), 0x0C))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x00))), AB00)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x01))), AB0E)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x02))), AB01)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x03))), AB02)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x04))), AB03)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x05))), AB04)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x06))), AB05)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x07))), AB06)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x08))), AB07)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x09))), AB08)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0A))), AB09)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0B))), AB0A)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0C))), AB0B)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), AB0C)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), AB0D)
                }

                Method (A045, 0, NotSerialized)
                {
                    Store (A027 (), Local0)
                    If (LEqual (Local0, 0x01))
                    {
                        Return (AB01)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Return (AB0E)
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If (LNotEqual (AB10, 0x00))
                    {
                        If (LEqual (AB10, 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If (LNotEqual (AB05, 0x00))
                    {
                        Return (AB05)
                    }

                    If (LGreater (AB10, 0x01))
                    {
                        Return (Subtract (AB10, 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If (LEqual (\_SB.AP05, 0x00))
                    {
                        If (LNotEqual (AB05, 0x00))
                        {
                            Return (AB05)
                        }

                        Return (AB0E)
                    }

                    Store (A046 (), Local0)
                    If (LNotEqual (Local0, 0x00))
                    {
                        If (LGreater (Local0, AB00))
                        {
                            Return (AB00)
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Store (A045 (), Local0)
                    If (LNotEqual (\_SB.AP03, 0x00))
                    {
                        If (LLess (\_SB.AP03, Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00)
                }

                Method (A037, 1, NotSerialized)
                {
                    Store (Arg0, AB02)
                    A047 (Arg0)
                    If (LNotEqual (AB10, 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    Store (Arg0, AB10)
                }

                Method (A043, 1, NotSerialized)
                {
                    ShiftRight (Arg0, 0x08, Local0)
                    If (LAnd (LGreaterEqual (Local0, A050), LLessEqual (Local0, A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local0)
                    If (LEqual (Arg0, Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    Store (0x00, AB10)
                }

                Method (A047, 1, NotSerialized)
                {
                    If (LGreaterEqual (Arg0, 0x02)){}
                    If (LGreaterEqual (Arg0, 0x03)){}
                    If (LEqual (Arg0, 0x01))
                    {
                        If (LEqual (AB04, 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If (LEqual (A062 (Arg0, 0x00), 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Store (A062 (Arg0, 0x34), Local0)
                    While (0x01)
                    {
                        Store (A062 (Arg0, And (Local0, 0xFF)), Local1)
                        If (LEqual (And (Local1, 0xFF), Arg1))
                        {
                            Return (And (Local0, 0xFF))
                        }

                        And (ShiftRight (Local1, 0x08), 0xFF, Local0)
                        If (LEqual (Local0, 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Store (0x00, Local0)
                    If (LNotEqual (A062 (Local0, 0x00), 0xFFFFFFFF))
                    {
                        And (A062 (Local0, 0x08), 0x80, Local1)
                        If (LEqual (Local1, 0x80))
                        {
                            Store (0x07, Local7)
                        }
                        Else
                        {
                            Store (0x00, Local7)
                        }

                        While (LLessEqual (Local0, Local7))
                        {
                            Store (A064 (Local0, 0x10), Local1)
                            If (LEqual (Local1, 0x00))
                            {
                                Increment (Local0)
                                Continue
                            }

                            If (LEqual (Arg0, 0x00))
                            {
                                Store (A062 (Local0, Add (Local1, 0x10)), Local2)
                                A063 (Local0, Add (Local1, 0x10), And (Local2, Not (0x03)))
                                Store (Local2, Index (AESP, Local0))
                            }
                            Else
                            {
                                Store (DerefOf (Index (AESP, Local0)), Local2)
                                A063 (Local0, Add (Local1, 0x10), Local2)
                            }

                            Increment (Local0)
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Store (Arg2, ADRR)
                }

                Method (A062, 2, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR)
                }

                Method (A060, 1, NotSerialized)
                {
                    If (LNotEqual (AB0B, 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    Store (A054, A049)
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local1)
                    If (LEqual (Arg0, 0x01))
                    {
                        Store (0x01, Local0)
                    }
                    Else
                    {
                        A048 (0x00)
                        Store (A062 (0x00, 0x04), Local0)
                        If (LNotEqual (Local0, 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, And (Local0, Not (0x04)))
                            Store (A062 (0x01, 0x04), Local0)
                            If (LNotEqual (Local0, 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, And (Local0, Not (0x04)))
                            }
                        }

                        Store (0x01, A055)
                        Store (0x05, Local0)
                    }

                    Store (0x00, A054)
                    While (LNotEqual (Local0, 0x08))
                    {
                        If (LEqual (Local0, 0x01)){}
                        If (LEqual (Local0, 0x05))
                        {
                            A062 (0x00, 0x00)
                            Store (0x00, AB05)
                            Store (0x00, AB04)
                            Store (0x00, AB10)
                            Store (0x00, Local2)
                            Store (0x08, Local0)
                        }
                    }

                    Store (A049, A054)
                    If (LNotEqual (A049, 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABR2)
            {
                Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                Name (_UID, 0x82)  // _UID: Unique ID
                Name (AB12, 0x48)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, Add (AGRB, Or (ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), 0x0F), ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), 0x0C))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x00))), AB00)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x01))), AB0E)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x02))), AB01)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x03))), AB02)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x04))), AB03)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x05))), AB04)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x06))), AB05)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x07))), AB06)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x08))), AB07)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x09))), AB08)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0A))), AB09)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0B))), AB0A)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0C))), AB0B)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), AB0C)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), AB0D)
                }

                Method (A045, 0, NotSerialized)
                {
                    Store (A027 (), Local0)
                    If (LEqual (Local0, 0x01))
                    {
                        Return (AB01)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Return (AB0E)
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If (LNotEqual (AB10, 0x00))
                    {
                        If (LEqual (AB10, 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If (LNotEqual (AB05, 0x00))
                    {
                        Return (AB05)
                    }

                    If (LGreater (AB10, 0x01))
                    {
                        Return (Subtract (AB10, 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If (LEqual (\_SB.AP05, 0x00))
                    {
                        If (LNotEqual (AB05, 0x00))
                        {
                            Return (AB05)
                        }

                        Return (AB0E)
                    }

                    Store (A046 (), Local0)
                    If (LNotEqual (Local0, 0x00))
                    {
                        If (LGreater (Local0, AB00))
                        {
                            Return (AB00)
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Store (A045 (), Local0)
                    If (LNotEqual (\_SB.AP03, 0x00))
                    {
                        If (LLess (\_SB.AP03, Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00)
                }

                Method (A037, 1, NotSerialized)
                {
                    Store (Arg0, AB02)
                    A047 (Arg0)
                    If (LNotEqual (AB10, 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    Store (Arg0, AB10)
                }

                Method (A043, 1, NotSerialized)
                {
                    ShiftRight (Arg0, 0x08, Local0)
                    If (LAnd (LGreaterEqual (Local0, A050), LLessEqual (Local0, A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local0)
                    If (LEqual (Arg0, Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    Store (0x00, AB10)
                }

                Method (A047, 1, NotSerialized)
                {
                    If (LGreaterEqual (Arg0, 0x02)){}
                    If (LGreaterEqual (Arg0, 0x03)){}
                    If (LEqual (Arg0, 0x01))
                    {
                        If (LEqual (AB04, 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If (LEqual (A062 (Arg0, 0x00), 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Store (A062 (Arg0, 0x34), Local0)
                    While (0x01)
                    {
                        Store (A062 (Arg0, And (Local0, 0xFF)), Local1)
                        If (LEqual (And (Local1, 0xFF), Arg1))
                        {
                            Return (And (Local0, 0xFF))
                        }

                        And (ShiftRight (Local1, 0x08), 0xFF, Local0)
                        If (LEqual (Local0, 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Store (0x00, Local0)
                    If (LNotEqual (A062 (Local0, 0x00), 0xFFFFFFFF))
                    {
                        And (A062 (Local0, 0x08), 0x80, Local1)
                        If (LEqual (Local1, 0x80))
                        {
                            Store (0x07, Local7)
                        }
                        Else
                        {
                            Store (0x00, Local7)
                        }

                        While (LLessEqual (Local0, Local7))
                        {
                            Store (A064 (Local0, 0x10), Local1)
                            If (LEqual (Local1, 0x00))
                            {
                                Increment (Local0)
                                Continue
                            }

                            If (LEqual (Arg0, 0x00))
                            {
                                Store (A062 (Local0, Add (Local1, 0x10)), Local2)
                                A063 (Local0, Add (Local1, 0x10), And (Local2, Not (0x03)))
                                Store (Local2, Index (AESP, Local0))
                            }
                            Else
                            {
                                Store (DerefOf (Index (AESP, Local0)), Local2)
                                A063 (Local0, Add (Local1, 0x10), Local2)
                            }

                            Increment (Local0)
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Store (Arg2, ADRR)
                }

                Method (A062, 2, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR)
                }

                Method (A060, 1, NotSerialized)
                {
                    If (LNotEqual (AB0B, 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    Store (A054, A049)
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local1)
                    If (LEqual (Arg0, 0x01))
                    {
                        Store (0x01, Local0)
                    }
                    Else
                    {
                        A048 (0x00)
                        Store (A062 (0x00, 0x04), Local0)
                        If (LNotEqual (Local0, 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, And (Local0, Not (0x04)))
                            Store (A062 (0x01, 0x04), Local0)
                            If (LNotEqual (Local0, 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, And (Local0, Not (0x04)))
                            }
                        }

                        Store (0x01, A055)
                        Store (0x05, Local0)
                    }

                    Store (0x00, A054)
                    While (LNotEqual (Local0, 0x08))
                    {
                        If (LEqual (Local0, 0x01)){}
                        If (LEqual (Local0, 0x05))
                        {
                            A062 (0x00, 0x00)
                            Store (0x00, AB05)
                            Store (0x00, AB04)
                            Store (0x00, AB10)
                            Store (0x00, Local2)
                            Store (0x08, Local0)
                        }
                    }

                    Store (A049, A054)
                    If (LNotEqual (A049, 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABR3)
            {
                Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                Name (_UID, 0x83)  // _UID: Unique ID
                Name (AB12, 0x5C)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, Add (AGRB, Or (ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), 0x0F), ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), 0x0C))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x00))), AB00)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x01))), AB0E)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x02))), AB01)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x03))), AB02)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x04))), AB03)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x05))), AB04)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x06))), AB05)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x07))), AB06)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x08))), AB07)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x09))), AB08)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0A))), AB09)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0B))), AB0A)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0C))), AB0B)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), AB0C)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), AB0D)
                }

                Method (A045, 0, NotSerialized)
                {
                    Store (A027 (), Local0)
                    If (LEqual (Local0, 0x01))
                    {
                        Return (AB01)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Return (AB0E)
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If (LNotEqual (AB10, 0x00))
                    {
                        If (LEqual (AB10, 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If (LNotEqual (AB05, 0x00))
                    {
                        Return (AB05)
                    }

                    If (LGreater (AB10, 0x01))
                    {
                        Return (Subtract (AB10, 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If (LEqual (\_SB.AP05, 0x00))
                    {
                        If (LNotEqual (AB05, 0x00))
                        {
                            Return (AB05)
                        }

                        Return (AB0E)
                    }

                    Store (A046 (), Local0)
                    If (LNotEqual (Local0, 0x00))
                    {
                        If (LGreater (Local0, AB00))
                        {
                            Return (AB00)
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Store (A045 (), Local0)
                    If (LNotEqual (\_SB.AP03, 0x00))
                    {
                        If (LLess (\_SB.AP03, Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00)
                }

                Method (A037, 1, NotSerialized)
                {
                    Store (Arg0, AB02)
                    A047 (Arg0)
                    If (LNotEqual (AB10, 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    Store (Arg0, AB10)
                }

                Method (A043, 1, NotSerialized)
                {
                    ShiftRight (Arg0, 0x08, Local0)
                    If (LAnd (LGreaterEqual (Local0, A050), LLessEqual (Local0, A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local0)
                    If (LEqual (Arg0, Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    Store (0x00, AB10)
                }

                Method (A047, 1, NotSerialized)
                {
                    If (LGreaterEqual (Arg0, 0x02)){}
                    If (LGreaterEqual (Arg0, 0x03)){}
                    If (LEqual (Arg0, 0x01))
                    {
                        If (LEqual (AB04, 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If (LEqual (A062 (Arg0, 0x00), 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Store (A062 (Arg0, 0x34), Local0)
                    While (0x01)
                    {
                        Store (A062 (Arg0, And (Local0, 0xFF)), Local1)
                        If (LEqual (And (Local1, 0xFF), Arg1))
                        {
                            Return (And (Local0, 0xFF))
                        }

                        And (ShiftRight (Local1, 0x08), 0xFF, Local0)
                        If (LEqual (Local0, 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Store (0x00, Local0)
                    If (LNotEqual (A062 (Local0, 0x00), 0xFFFFFFFF))
                    {
                        And (A062 (Local0, 0x08), 0x80, Local1)
                        If (LEqual (Local1, 0x80))
                        {
                            Store (0x07, Local7)
                        }
                        Else
                        {
                            Store (0x00, Local7)
                        }

                        While (LLessEqual (Local0, Local7))
                        {
                            Store (A064 (Local0, 0x10), Local1)
                            If (LEqual (Local1, 0x00))
                            {
                                Increment (Local0)
                                Continue
                            }

                            If (LEqual (Arg0, 0x00))
                            {
                                Store (A062 (Local0, Add (Local1, 0x10)), Local2)
                                A063 (Local0, Add (Local1, 0x10), And (Local2, Not (0x03)))
                                Store (Local2, Index (AESP, Local0))
                            }
                            Else
                            {
                                Store (DerefOf (Index (AESP, Local0)), Local2)
                                A063 (Local0, Add (Local1, 0x10), Local2)
                            }

                            Increment (Local0)
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Store (Arg2, ADRR)
                }

                Method (A062, 2, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR)
                }

                Method (A060, 1, NotSerialized)
                {
                    If (LNotEqual (AB0B, 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    Store (A054, A049)
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local1)
                    If (LEqual (Arg0, 0x01))
                    {
                        Store (0x01, Local0)
                    }
                    Else
                    {
                        A048 (0x00)
                        Store (A062 (0x00, 0x04), Local0)
                        If (LNotEqual (Local0, 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, And (Local0, Not (0x04)))
                            Store (A062 (0x01, 0x04), Local0)
                            If (LNotEqual (Local0, 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, And (Local0, Not (0x04)))
                            }
                        }

                        Store (0x01, A055)
                        Store (0x05, Local0)
                    }

                    Store (0x00, A054)
                    While (LNotEqual (Local0, 0x08))
                    {
                        If (LEqual (Local0, 0x01)){}
                        If (LEqual (Local0, 0x05))
                        {
                            A062 (0x00, 0x00)
                            Store (0x00, AB05)
                            Store (0x00, AB04)
                            Store (0x00, AB10)
                            Store (0x00, Local2)
                            Store (0x08, Local0)
                        }
                    }

                    Store (A049, A054)
                    If (LNotEqual (A049, 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABR4)
            {
                Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                Name (_UID, 0x84)  // _UID: Unique ID
                Name (AB12, 0x70)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, Add (AGRB, Or (ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), 0x0F), ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), 0x0C))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x00))), AB00)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x01))), AB0E)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x02))), AB01)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x03))), AB02)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x04))), AB03)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x05))), AB04)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x06))), AB05)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x07))), AB06)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x08))), AB07)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x09))), AB08)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0A))), AB09)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0B))), AB0A)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0C))), AB0B)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), AB0C)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), AB0D)
                }

                Method (A045, 0, NotSerialized)
                {
                    Store (A027 (), Local0)
                    If (LEqual (Local0, 0x01))
                    {
                        Return (AB01)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Return (AB0E)
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If (LNotEqual (AB10, 0x00))
                    {
                        If (LEqual (AB10, 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If (LNotEqual (AB05, 0x00))
                    {
                        Return (AB05)
                    }

                    If (LGreater (AB10, 0x01))
                    {
                        Return (Subtract (AB10, 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If (LEqual (\_SB.AP05, 0x00))
                    {
                        If (LNotEqual (AB05, 0x00))
                        {
                            Return (AB05)
                        }

                        Return (AB0E)
                    }

                    Store (A046 (), Local0)
                    If (LNotEqual (Local0, 0x00))
                    {
                        If (LGreater (Local0, AB00))
                        {
                            Return (AB00)
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Store (A045 (), Local0)
                    If (LNotEqual (\_SB.AP03, 0x00))
                    {
                        If (LLess (\_SB.AP03, Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00)
                }

                Method (A037, 1, NotSerialized)
                {
                    Store (Arg0, AB02)
                    A047 (Arg0)
                    If (LNotEqual (AB10, 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    Store (Arg0, AB10)
                }

                Method (A043, 1, NotSerialized)
                {
                    ShiftRight (Arg0, 0x08, Local0)
                    If (LAnd (LGreaterEqual (Local0, A050), LLessEqual (Local0, A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local0)
                    If (LEqual (Arg0, Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    Store (0x00, AB10)
                }

                Method (A047, 1, NotSerialized)
                {
                    If (LGreaterEqual (Arg0, 0x02)){}
                    If (LGreaterEqual (Arg0, 0x03)){}
                    If (LEqual (Arg0, 0x01))
                    {
                        If (LEqual (AB04, 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If (LEqual (A062 (Arg0, 0x00), 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Store (A062 (Arg0, 0x34), Local0)
                    While (0x01)
                    {
                        Store (A062 (Arg0, And (Local0, 0xFF)), Local1)
                        If (LEqual (And (Local1, 0xFF), Arg1))
                        {
                            Return (And (Local0, 0xFF))
                        }

                        And (ShiftRight (Local1, 0x08), 0xFF, Local0)
                        If (LEqual (Local0, 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Store (0x00, Local0)
                    If (LNotEqual (A062 (Local0, 0x00), 0xFFFFFFFF))
                    {
                        And (A062 (Local0, 0x08), 0x80, Local1)
                        If (LEqual (Local1, 0x80))
                        {
                            Store (0x07, Local7)
                        }
                        Else
                        {
                            Store (0x00, Local7)
                        }

                        While (LLessEqual (Local0, Local7))
                        {
                            Store (A064 (Local0, 0x10), Local1)
                            If (LEqual (Local1, 0x00))
                            {
                                Increment (Local0)
                                Continue
                            }

                            If (LEqual (Arg0, 0x00))
                            {
                                Store (A062 (Local0, Add (Local1, 0x10)), Local2)
                                A063 (Local0, Add (Local1, 0x10), And (Local2, Not (0x03)))
                                Store (Local2, Index (AESP, Local0))
                            }
                            Else
                            {
                                Store (DerefOf (Index (AESP, Local0)), Local2)
                                A063 (Local0, Add (Local1, 0x10), Local2)
                            }

                            Increment (Local0)
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Store (Arg2, ADRR)
                }

                Method (A062, 2, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR)
                }

                Method (A060, 1, NotSerialized)
                {
                    If (LNotEqual (AB0B, 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    Store (A054, A049)
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local1)
                    If (LEqual (Arg0, 0x01))
                    {
                        Store (0x01, Local0)
                    }
                    Else
                    {
                        A048 (0x00)
                        Store (A062 (0x00, 0x04), Local0)
                        If (LNotEqual (Local0, 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, And (Local0, Not (0x04)))
                            Store (A062 (0x01, 0x04), Local0)
                            If (LNotEqual (Local0, 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, And (Local0, Not (0x04)))
                            }
                        }

                        Store (0x01, A055)
                        Store (0x05, Local0)
                    }

                    Store (0x00, A054)
                    While (LNotEqual (Local0, 0x08))
                    {
                        If (LEqual (Local0, 0x01)){}
                        If (LEqual (Local0, 0x05))
                        {
                            A062 (0x00, 0x00)
                            Store (0x00, AB05)
                            Store (0x00, AB04)
                            Store (0x00, AB10)
                            Store (0x00, Local2)
                            Store (0x08, Local0)
                        }
                    }

                    Store (A049, A054)
                    If (LNotEqual (A049, 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABR5)
            {
                Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                Name (_UID, 0x85)  // _UID: Unique ID
                Name (AB12, 0x84)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, Add (AGRB, Or (ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), 0x0F), ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), 0x0C))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x00))), AB00)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x01))), AB0E)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x02))), AB01)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x03))), AB02)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x04))), AB03)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x05))), AB04)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x06))), AB05)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x07))), AB06)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x08))), AB07)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x09))), AB08)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0A))), AB09)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0B))), AB0A)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0C))), AB0B)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), AB0C)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), AB0D)
                }

                Method (A045, 0, NotSerialized)
                {
                    Store (A027 (), Local0)
                    If (LEqual (Local0, 0x01))
                    {
                        Return (AB01)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Return (AB0E)
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If (LNotEqual (AB10, 0x00))
                    {
                        If (LEqual (AB10, 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If (LNotEqual (AB05, 0x00))
                    {
                        Return (AB05)
                    }

                    If (LGreater (AB10, 0x01))
                    {
                        Return (Subtract (AB10, 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If (LEqual (\_SB.AP05, 0x00))
                    {
                        If (LNotEqual (AB05, 0x00))
                        {
                            Return (AB05)
                        }

                        Return (AB0E)
                    }

                    Store (A046 (), Local0)
                    If (LNotEqual (Local0, 0x00))
                    {
                        If (LGreater (Local0, AB00))
                        {
                            Return (AB00)
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Store (A045 (), Local0)
                    If (LNotEqual (\_SB.AP03, 0x00))
                    {
                        If (LLess (\_SB.AP03, Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00)
                }

                Method (A037, 1, NotSerialized)
                {
                    Store (Arg0, AB02)
                    A047 (Arg0)
                    If (LNotEqual (AB10, 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    Store (Arg0, AB10)
                }

                Method (A043, 1, NotSerialized)
                {
                    ShiftRight (Arg0, 0x08, Local0)
                    If (LAnd (LGreaterEqual (Local0, A050), LLessEqual (Local0, A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local0)
                    If (LEqual (Arg0, Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    Store (0x00, AB10)
                }

                Method (A047, 1, NotSerialized)
                {
                    If (LGreaterEqual (Arg0, 0x02)){}
                    If (LGreaterEqual (Arg0, 0x03)){}
                    If (LEqual (Arg0, 0x01))
                    {
                        If (LEqual (AB04, 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If (LEqual (A062 (Arg0, 0x00), 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Store (A062 (Arg0, 0x34), Local0)
                    While (0x01)
                    {
                        Store (A062 (Arg0, And (Local0, 0xFF)), Local1)
                        If (LEqual (And (Local1, 0xFF), Arg1))
                        {
                            Return (And (Local0, 0xFF))
                        }

                        And (ShiftRight (Local1, 0x08), 0xFF, Local0)
                        If (LEqual (Local0, 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Store (0x00, Local0)
                    If (LNotEqual (A062 (Local0, 0x00), 0xFFFFFFFF))
                    {
                        And (A062 (Local0, 0x08), 0x80, Local1)
                        If (LEqual (Local1, 0x80))
                        {
                            Store (0x07, Local7)
                        }
                        Else
                        {
                            Store (0x00, Local7)
                        }

                        While (LLessEqual (Local0, Local7))
                        {
                            Store (A064 (Local0, 0x10), Local1)
                            If (LEqual (Local1, 0x00))
                            {
                                Increment (Local0)
                                Continue
                            }

                            If (LEqual (Arg0, 0x00))
                            {
                                Store (A062 (Local0, Add (Local1, 0x10)), Local2)
                                A063 (Local0, Add (Local1, 0x10), And (Local2, Not (0x03)))
                                Store (Local2, Index (AESP, Local0))
                            }
                            Else
                            {
                                Store (DerefOf (Index (AESP, Local0)), Local2)
                                A063 (Local0, Add (Local1, 0x10), Local2)
                            }

                            Increment (Local0)
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Store (Arg2, ADRR)
                }

                Method (A062, 2, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR)
                }

                Method (A060, 1, NotSerialized)
                {
                    If (LNotEqual (AB0B, 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    Store (A054, A049)
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local1)
                    If (LEqual (Arg0, 0x01))
                    {
                        Store (0x01, Local0)
                    }
                    Else
                    {
                        A048 (0x00)
                        Store (A062 (0x00, 0x04), Local0)
                        If (LNotEqual (Local0, 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, And (Local0, Not (0x04)))
                            Store (A062 (0x01, 0x04), Local0)
                            If (LNotEqual (Local0, 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, And (Local0, Not (0x04)))
                            }
                        }

                        Store (0x01, A055)
                        Store (0x05, Local0)
                    }

                    Store (0x00, A054)
                    While (LNotEqual (Local0, 0x08))
                    {
                        If (LEqual (Local0, 0x01)){}
                        If (LEqual (Local0, 0x05))
                        {
                            A062 (0x00, 0x00)
                            Store (0x00, AB05)
                            Store (0x00, AB04)
                            Store (0x00, AB10)
                            Store (0x00, Local2)
                            Store (0x08, Local0)
                        }
                    }

                    Store (A049, A054)
                    If (LNotEqual (A049, 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABR6)
            {
                Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                Name (_UID, 0x86)  // _UID: Unique ID
                Name (AB12, 0x98)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, Add (AGRB, Or (ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), 0x0F), ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), 0x0C))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x00))), AB00)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x01))), AB0E)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x02))), AB01)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x03))), AB02)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x04))), AB03)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x05))), AB04)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x06))), AB05)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x07))), AB06)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x08))), AB07)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x09))), AB08)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0A))), AB09)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0B))), AB0A)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0C))), AB0B)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), AB0C)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), AB0D)
                }

                Method (A045, 0, NotSerialized)
                {
                    Store (A027 (), Local0)
                    If (LEqual (Local0, 0x01))
                    {
                        Return (AB01)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Return (AB0E)
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If (LNotEqual (AB10, 0x00))
                    {
                        If (LEqual (AB10, 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If (LNotEqual (AB05, 0x00))
                    {
                        Return (AB05)
                    }

                    If (LGreater (AB10, 0x01))
                    {
                        Return (Subtract (AB10, 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If (LEqual (\_SB.AP05, 0x00))
                    {
                        If (LNotEqual (AB05, 0x00))
                        {
                            Return (AB05)
                        }

                        Return (AB0E)
                    }

                    Store (A046 (), Local0)
                    If (LNotEqual (Local0, 0x00))
                    {
                        If (LGreater (Local0, AB00))
                        {
                            Return (AB00)
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Store (A045 (), Local0)
                    If (LNotEqual (\_SB.AP03, 0x00))
                    {
                        If (LLess (\_SB.AP03, Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00)
                }

                Method (A037, 1, NotSerialized)
                {
                    Store (Arg0, AB02)
                    A047 (Arg0)
                    If (LNotEqual (AB10, 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    Store (Arg0, AB10)
                }

                Method (A043, 1, NotSerialized)
                {
                    ShiftRight (Arg0, 0x08, Local0)
                    If (LAnd (LGreaterEqual (Local0, A050), LLessEqual (Local0, A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local0)
                    If (LEqual (Arg0, Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    Store (0x00, AB10)
                }

                Method (A047, 1, NotSerialized)
                {
                    If (LGreaterEqual (Arg0, 0x02)){}
                    If (LGreaterEqual (Arg0, 0x03)){}
                    If (LEqual (Arg0, 0x01))
                    {
                        If (LEqual (AB04, 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If (LEqual (A062 (Arg0, 0x00), 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Store (A062 (Arg0, 0x34), Local0)
                    While (0x01)
                    {
                        Store (A062 (Arg0, And (Local0, 0xFF)), Local1)
                        If (LEqual (And (Local1, 0xFF), Arg1))
                        {
                            Return (And (Local0, 0xFF))
                        }

                        And (ShiftRight (Local1, 0x08), 0xFF, Local0)
                        If (LEqual (Local0, 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Store (0x00, Local0)
                    If (LNotEqual (A062 (Local0, 0x00), 0xFFFFFFFF))
                    {
                        And (A062 (Local0, 0x08), 0x80, Local1)
                        If (LEqual (Local1, 0x80))
                        {
                            Store (0x07, Local7)
                        }
                        Else
                        {
                            Store (0x00, Local7)
                        }

                        While (LLessEqual (Local0, Local7))
                        {
                            Store (A064 (Local0, 0x10), Local1)
                            If (LEqual (Local1, 0x00))
                            {
                                Increment (Local0)
                                Continue
                            }

                            If (LEqual (Arg0, 0x00))
                            {
                                Store (A062 (Local0, Add (Local1, 0x10)), Local2)
                                A063 (Local0, Add (Local1, 0x10), And (Local2, Not (0x03)))
                                Store (Local2, Index (AESP, Local0))
                            }
                            Else
                            {
                                Store (DerefOf (Index (AESP, Local0)), Local2)
                                A063 (Local0, Add (Local1, 0x10), Local2)
                            }

                            Increment (Local0)
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Store (Arg2, ADRR)
                }

                Method (A062, 2, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR)
                }

                Method (A060, 1, NotSerialized)
                {
                    If (LNotEqual (AB0B, 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    Store (A054, A049)
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local1)
                    If (LEqual (Arg0, 0x01))
                    {
                        Store (0x01, Local0)
                    }
                    Else
                    {
                        A048 (0x00)
                        Store (A062 (0x00, 0x04), Local0)
                        If (LNotEqual (Local0, 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, And (Local0, Not (0x04)))
                            Store (A062 (0x01, 0x04), Local0)
                            If (LNotEqual (Local0, 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, And (Local0, Not (0x04)))
                            }
                        }

                        Store (0x01, A055)
                        Store (0x05, Local0)
                    }

                    Store (0x00, A054)
                    While (LNotEqual (Local0, 0x08))
                    {
                        If (LEqual (Local0, 0x01)){}
                        If (LEqual (Local0, 0x05))
                        {
                            A062 (0x00, 0x00)
                            Store (0x00, AB05)
                            Store (0x00, AB04)
                            Store (0x00, AB10)
                            Store (0x00, Local2)
                            Store (0x08, Local0)
                        }
                    }

                    Store (A049, A054)
                    If (LNotEqual (A049, 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABR7)
            {
                Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                Name (_UID, 0x87)  // _UID: Unique ID
                Name (AB12, 0xAC)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, Add (AGRB, Or (ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), 0x0F), ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), 0x0C))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x00))), AB00)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x01))), AB0E)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x02))), AB01)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x03))), AB02)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x04))), AB03)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x05))), AB04)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x06))), AB05)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x07))), AB06)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x08))), AB07)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x09))), AB08)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0A))), AB09)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0B))), AB0A)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0C))), AB0B)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), AB0C)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), AB0D)
                }

                Method (A045, 0, NotSerialized)
                {
                    Store (A027 (), Local0)
                    If (LEqual (Local0, 0x01))
                    {
                        Return (AB01)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Return (AB0E)
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If (LNotEqual (AB10, 0x00))
                    {
                        If (LEqual (AB10, 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If (LNotEqual (AB05, 0x00))
                    {
                        Return (AB05)
                    }

                    If (LGreater (AB10, 0x01))
                    {
                        Return (Subtract (AB10, 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If (LEqual (\_SB.AP05, 0x00))
                    {
                        If (LNotEqual (AB05, 0x00))
                        {
                            Return (AB05)
                        }

                        Return (AB0E)
                    }

                    Store (A046 (), Local0)
                    If (LNotEqual (Local0, 0x00))
                    {
                        If (LGreater (Local0, AB00))
                        {
                            Return (AB00)
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Store (A045 (), Local0)
                    If (LNotEqual (\_SB.AP03, 0x00))
                    {
                        If (LLess (\_SB.AP03, Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00)
                }

                Method (A037, 1, NotSerialized)
                {
                    Store (Arg0, AB02)
                    A047 (Arg0)
                    If (LNotEqual (AB10, 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    Store (Arg0, AB10)
                }

                Method (A043, 1, NotSerialized)
                {
                    ShiftRight (Arg0, 0x08, Local0)
                    If (LAnd (LGreaterEqual (Local0, A050), LLessEqual (Local0, A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local0)
                    If (LEqual (Arg0, Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    Store (0x00, AB10)
                }

                Method (A047, 1, NotSerialized)
                {
                    If (LGreaterEqual (Arg0, 0x02)){}
                    If (LGreaterEqual (Arg0, 0x03)){}
                    If (LEqual (Arg0, 0x01))
                    {
                        If (LEqual (AB04, 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If (LEqual (A062 (Arg0, 0x00), 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Store (A062 (Arg0, 0x34), Local0)
                    While (0x01)
                    {
                        Store (A062 (Arg0, And (Local0, 0xFF)), Local1)
                        If (LEqual (And (Local1, 0xFF), Arg1))
                        {
                            Return (And (Local0, 0xFF))
                        }

                        And (ShiftRight (Local1, 0x08), 0xFF, Local0)
                        If (LEqual (Local0, 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Store (0x00, Local0)
                    If (LNotEqual (A062 (Local0, 0x00), 0xFFFFFFFF))
                    {
                        And (A062 (Local0, 0x08), 0x80, Local1)
                        If (LEqual (Local1, 0x80))
                        {
                            Store (0x07, Local7)
                        }
                        Else
                        {
                            Store (0x00, Local7)
                        }

                        While (LLessEqual (Local0, Local7))
                        {
                            Store (A064 (Local0, 0x10), Local1)
                            If (LEqual (Local1, 0x00))
                            {
                                Increment (Local0)
                                Continue
                            }

                            If (LEqual (Arg0, 0x00))
                            {
                                Store (A062 (Local0, Add (Local1, 0x10)), Local2)
                                A063 (Local0, Add (Local1, 0x10), And (Local2, Not (0x03)))
                                Store (Local2, Index (AESP, Local0))
                            }
                            Else
                            {
                                Store (DerefOf (Index (AESP, Local0)), Local2)
                                A063 (Local0, Add (Local1, 0x10), Local2)
                            }

                            Increment (Local0)
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Store (Arg2, ADRR)
                }

                Method (A062, 2, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR)
                }

                Method (A060, 1, NotSerialized)
                {
                    If (LNotEqual (AB0B, 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    Store (A054, A049)
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local1)
                    If (LEqual (Arg0, 0x01))
                    {
                        Store (0x01, Local0)
                    }
                    Else
                    {
                        A048 (0x00)
                        Store (A062 (0x00, 0x04), Local0)
                        If (LNotEqual (Local0, 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, And (Local0, Not (0x04)))
                            Store (A062 (0x01, 0x04), Local0)
                            If (LNotEqual (Local0, 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, And (Local0, Not (0x04)))
                            }
                        }

                        Store (0x01, A055)
                        Store (0x05, Local0)
                    }

                    Store (0x00, A054)
                    While (LNotEqual (Local0, 0x08))
                    {
                        If (LEqual (Local0, 0x01)){}
                        If (LEqual (Local0, 0x05))
                        {
                            A062 (0x00, 0x00)
                            Store (0x00, AB05)
                            Store (0x00, AB04)
                            Store (0x00, AB10)
                            Store (0x00, Local2)
                            Store (0x08, Local0)
                        }
                    }

                    Store (A049, A054)
                    If (LNotEqual (A049, 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }
        }

        Device (AWR1)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
            Name (_UID, 0x91)  // _UID: Unique ID
            Device (ABR8)
            {
                Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                Name (_UID, 0x88)  // _UID: Unique ID
                Name (AB12, 0xC0)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, Add (AGRB, Or (ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), 0x0F), ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), 0x0C))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x00))), AB00)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x01))), AB0E)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x02))), AB01)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x03))), AB02)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x04))), AB03)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x05))), AB04)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x06))), AB05)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x07))), AB06)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x08))), AB07)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x09))), AB08)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0A))), AB09)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0B))), AB0A)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0C))), AB0B)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), AB0C)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), AB0D)
                }

                Method (A045, 0, NotSerialized)
                {
                    Store (A027 (), Local0)
                    If (LEqual (Local0, 0x01))
                    {
                        Return (AB01)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Return (AB0E)
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If (LNotEqual (AB10, 0x00))
                    {
                        If (LEqual (AB10, 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If (LNotEqual (AB05, 0x00))
                    {
                        Return (AB05)
                    }

                    If (LGreater (AB10, 0x01))
                    {
                        Return (Subtract (AB10, 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If (LEqual (\_SB.AP05, 0x00))
                    {
                        If (LNotEqual (AB05, 0x00))
                        {
                            Return (AB05)
                        }

                        Return (AB0E)
                    }

                    Store (A046 (), Local0)
                    If (LNotEqual (Local0, 0x00))
                    {
                        If (LGreater (Local0, AB00))
                        {
                            Return (AB00)
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Store (A045 (), Local0)
                    If (LNotEqual (\_SB.AP03, 0x00))
                    {
                        If (LLess (\_SB.AP03, Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00)
                }

                Method (A037, 1, NotSerialized)
                {
                    Store (Arg0, AB02)
                    A047 (Arg0)
                    If (LNotEqual (AB10, 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    Store (Arg0, AB10)
                }

                Method (A043, 1, NotSerialized)
                {
                    ShiftRight (Arg0, 0x08, Local0)
                    If (LAnd (LGreaterEqual (Local0, A050), LLessEqual (Local0, A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local0)
                    If (LEqual (Arg0, Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    Store (0x00, AB10)
                }

                Method (A047, 1, NotSerialized)
                {
                    If (LGreaterEqual (Arg0, 0x02)){}
                    If (LGreaterEqual (Arg0, 0x03)){}
                    If (LEqual (Arg0, 0x01))
                    {
                        If (LEqual (AB04, 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If (LEqual (A062 (Arg0, 0x00), 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Store (A062 (Arg0, 0x34), Local0)
                    While (0x01)
                    {
                        Store (A062 (Arg0, And (Local0, 0xFF)), Local1)
                        If (LEqual (And (Local1, 0xFF), Arg1))
                        {
                            Return (And (Local0, 0xFF))
                        }

                        And (ShiftRight (Local1, 0x08), 0xFF, Local0)
                        If (LEqual (Local0, 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Store (0x00, Local0)
                    If (LNotEqual (A062 (Local0, 0x00), 0xFFFFFFFF))
                    {
                        And (A062 (Local0, 0x08), 0x80, Local1)
                        If (LEqual (Local1, 0x80))
                        {
                            Store (0x07, Local7)
                        }
                        Else
                        {
                            Store (0x00, Local7)
                        }

                        While (LLessEqual (Local0, Local7))
                        {
                            Store (A064 (Local0, 0x10), Local1)
                            If (LEqual (Local1, 0x00))
                            {
                                Increment (Local0)
                                Continue
                            }

                            If (LEqual (Arg0, 0x00))
                            {
                                Store (A062 (Local0, Add (Local1, 0x10)), Local2)
                                A063 (Local0, Add (Local1, 0x10), And (Local2, Not (0x03)))
                                Store (Local2, Index (AESP, Local0))
                            }
                            Else
                            {
                                Store (DerefOf (Index (AESP, Local0)), Local2)
                                A063 (Local0, Add (Local1, 0x10), Local2)
                            }

                            Increment (Local0)
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Store (Arg2, ADRR)
                }

                Method (A062, 2, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR)
                }

                Method (A060, 1, NotSerialized)
                {
                    If (LNotEqual (AB0B, 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    Store (A054, A049)
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local1)
                    If (LEqual (Arg0, 0x01))
                    {
                        Store (0x01, Local0)
                    }
                    Else
                    {
                        A048 (0x00)
                        Store (A062 (0x00, 0x04), Local0)
                        If (LNotEqual (Local0, 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, And (Local0, Not (0x04)))
                            Store (A062 (0x01, 0x04), Local0)
                            If (LNotEqual (Local0, 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, And (Local0, Not (0x04)))
                            }
                        }

                        Store (0x01, A055)
                        Store (0x05, Local0)
                    }

                    Store (0x00, A054)
                    While (LNotEqual (Local0, 0x08))
                    {
                        If (LEqual (Local0, 0x01)){}
                        If (LEqual (Local0, 0x05))
                        {
                            A062 (0x00, 0x00)
                            Store (0x00, AB05)
                            Store (0x00, AB04)
                            Store (0x00, AB10)
                            Store (0x00, Local2)
                            Store (0x08, Local0)
                        }
                    }

                    Store (A049, A054)
                    If (LNotEqual (A049, 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABR9)
            {
                Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                Name (_UID, 0x89)  // _UID: Unique ID
                Name (AB12, 0xD4)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, Add (AGRB, Or (ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), 0x0F), ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), 0x0C))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x00))), AB00)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x01))), AB0E)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x02))), AB01)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x03))), AB02)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x04))), AB03)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x05))), AB04)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x06))), AB05)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x07))), AB06)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x08))), AB07)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x09))), AB08)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0A))), AB09)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0B))), AB0A)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0C))), AB0B)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), AB0C)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), AB0D)
                }

                Method (A045, 0, NotSerialized)
                {
                    Store (A027 (), Local0)
                    If (LEqual (Local0, 0x01))
                    {
                        Return (AB01)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Return (AB0E)
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If (LNotEqual (AB10, 0x00))
                    {
                        If (LEqual (AB10, 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If (LNotEqual (AB05, 0x00))
                    {
                        Return (AB05)
                    }

                    If (LGreater (AB10, 0x01))
                    {
                        Return (Subtract (AB10, 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If (LEqual (\_SB.AP05, 0x00))
                    {
                        If (LNotEqual (AB05, 0x00))
                        {
                            Return (AB05)
                        }

                        Return (AB0E)
                    }

                    Store (A046 (), Local0)
                    If (LNotEqual (Local0, 0x00))
                    {
                        If (LGreater (Local0, AB00))
                        {
                            Return (AB00)
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Store (A045 (), Local0)
                    If (LNotEqual (\_SB.AP03, 0x00))
                    {
                        If (LLess (\_SB.AP03, Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00)
                }

                Method (A037, 1, NotSerialized)
                {
                    Store (Arg0, AB02)
                    A047 (Arg0)
                    If (LNotEqual (AB10, 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    Store (Arg0, AB10)
                }

                Method (A043, 1, NotSerialized)
                {
                    ShiftRight (Arg0, 0x08, Local0)
                    If (LAnd (LGreaterEqual (Local0, A050), LLessEqual (Local0, A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local0)
                    If (LEqual (Arg0, Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    Store (0x00, AB10)
                }

                Method (A047, 1, NotSerialized)
                {
                    If (LGreaterEqual (Arg0, 0x02)){}
                    If (LGreaterEqual (Arg0, 0x03)){}
                    If (LEqual (Arg0, 0x01))
                    {
                        If (LEqual (AB04, 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If (LEqual (A062 (Arg0, 0x00), 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Store (A062 (Arg0, 0x34), Local0)
                    While (0x01)
                    {
                        Store (A062 (Arg0, And (Local0, 0xFF)), Local1)
                        If (LEqual (And (Local1, 0xFF), Arg1))
                        {
                            Return (And (Local0, 0xFF))
                        }

                        And (ShiftRight (Local1, 0x08), 0xFF, Local0)
                        If (LEqual (Local0, 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Store (0x00, Local0)
                    If (LNotEqual (A062 (Local0, 0x00), 0xFFFFFFFF))
                    {
                        And (A062 (Local0, 0x08), 0x80, Local1)
                        If (LEqual (Local1, 0x80))
                        {
                            Store (0x07, Local7)
                        }
                        Else
                        {
                            Store (0x00, Local7)
                        }

                        While (LLessEqual (Local0, Local7))
                        {
                            Store (A064 (Local0, 0x10), Local1)
                            If (LEqual (Local1, 0x00))
                            {
                                Increment (Local0)
                                Continue
                            }

                            If (LEqual (Arg0, 0x00))
                            {
                                Store (A062 (Local0, Add (Local1, 0x10)), Local2)
                                A063 (Local0, Add (Local1, 0x10), And (Local2, Not (0x03)))
                                Store (Local2, Index (AESP, Local0))
                            }
                            Else
                            {
                                Store (DerefOf (Index (AESP, Local0)), Local2)
                                A063 (Local0, Add (Local1, 0x10), Local2)
                            }

                            Increment (Local0)
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Store (Arg2, ADRR)
                }

                Method (A062, 2, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR)
                }

                Method (A060, 1, NotSerialized)
                {
                    If (LNotEqual (AB0B, 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    Store (A054, A049)
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local1)
                    If (LEqual (Arg0, 0x01))
                    {
                        Store (0x01, Local0)
                    }
                    Else
                    {
                        A048 (0x00)
                        Store (A062 (0x00, 0x04), Local0)
                        If (LNotEqual (Local0, 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, And (Local0, Not (0x04)))
                            Store (A062 (0x01, 0x04), Local0)
                            If (LNotEqual (Local0, 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, And (Local0, Not (0x04)))
                            }
                        }

                        Store (0x01, A055)
                        Store (0x05, Local0)
                    }

                    Store (0x00, A054)
                    While (LNotEqual (Local0, 0x08))
                    {
                        If (LEqual (Local0, 0x01)){}
                        If (LEqual (Local0, 0x05))
                        {
                            A062 (0x00, 0x00)
                            Store (0x00, AB05)
                            Store (0x00, AB04)
                            Store (0x00, AB10)
                            Store (0x00, Local2)
                            Store (0x08, Local0)
                        }
                    }

                    Store (A049, A054)
                    If (LNotEqual (A049, 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABRA)
            {
                Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                Name (_UID, 0x8A)  // _UID: Unique ID
                Name (AB12, 0xE8)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, Add (AGRB, Or (ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), 0x0F), ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), 0x0C))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x00))), AB00)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x01))), AB0E)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x02))), AB01)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x03))), AB02)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x04))), AB03)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x05))), AB04)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x06))), AB05)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x07))), AB06)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x08))), AB07)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x09))), AB08)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0A))), AB09)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0B))), AB0A)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0C))), AB0B)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), AB0C)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), AB0D)
                }

                Method (A045, 0, NotSerialized)
                {
                    Store (A027 (), Local0)
                    If (LEqual (Local0, 0x01))
                    {
                        Return (AB01)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Return (AB0E)
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If (LNotEqual (AB10, 0x00))
                    {
                        If (LEqual (AB10, 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If (LNotEqual (AB05, 0x00))
                    {
                        Return (AB05)
                    }

                    If (LGreater (AB10, 0x01))
                    {
                        Return (Subtract (AB10, 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If (LEqual (\_SB.AP05, 0x00))
                    {
                        If (LNotEqual (AB05, 0x00))
                        {
                            Return (AB05)
                        }

                        Return (AB0E)
                    }

                    Store (A046 (), Local0)
                    If (LNotEqual (Local0, 0x00))
                    {
                        If (LGreater (Local0, AB00))
                        {
                            Return (AB00)
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Store (A045 (), Local0)
                    If (LNotEqual (\_SB.AP03, 0x00))
                    {
                        If (LLess (\_SB.AP03, Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00)
                }

                Method (A037, 1, NotSerialized)
                {
                    Store (Arg0, AB02)
                    A047 (Arg0)
                    If (LNotEqual (AB10, 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    Store (Arg0, AB10)
                }

                Method (A043, 1, NotSerialized)
                {
                    ShiftRight (Arg0, 0x08, Local0)
                    If (LAnd (LGreaterEqual (Local0, A050), LLessEqual (Local0, A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local0)
                    If (LEqual (Arg0, Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    Store (0x00, AB10)
                }

                Method (A047, 1, NotSerialized)
                {
                    If (LGreaterEqual (Arg0, 0x02)){}
                    If (LGreaterEqual (Arg0, 0x03)){}
                    If (LEqual (Arg0, 0x01))
                    {
                        If (LEqual (AB04, 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If (LEqual (A062 (Arg0, 0x00), 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Store (A062 (Arg0, 0x34), Local0)
                    While (0x01)
                    {
                        Store (A062 (Arg0, And (Local0, 0xFF)), Local1)
                        If (LEqual (And (Local1, 0xFF), Arg1))
                        {
                            Return (And (Local0, 0xFF))
                        }

                        And (ShiftRight (Local1, 0x08), 0xFF, Local0)
                        If (LEqual (Local0, 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Store (0x00, Local0)
                    If (LNotEqual (A062 (Local0, 0x00), 0xFFFFFFFF))
                    {
                        And (A062 (Local0, 0x08), 0x80, Local1)
                        If (LEqual (Local1, 0x80))
                        {
                            Store (0x07, Local7)
                        }
                        Else
                        {
                            Store (0x00, Local7)
                        }

                        While (LLessEqual (Local0, Local7))
                        {
                            Store (A064 (Local0, 0x10), Local1)
                            If (LEqual (Local1, 0x00))
                            {
                                Increment (Local0)
                                Continue
                            }

                            If (LEqual (Arg0, 0x00))
                            {
                                Store (A062 (Local0, Add (Local1, 0x10)), Local2)
                                A063 (Local0, Add (Local1, 0x10), And (Local2, Not (0x03)))
                                Store (Local2, Index (AESP, Local0))
                            }
                            Else
                            {
                                Store (DerefOf (Index (AESP, Local0)), Local2)
                                A063 (Local0, Add (Local1, 0x10), Local2)
                            }

                            Increment (Local0)
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Store (Arg2, ADRR)
                }

                Method (A062, 2, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR)
                }

                Method (A060, 1, NotSerialized)
                {
                    If (LNotEqual (AB0B, 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    Store (A054, A049)
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local1)
                    If (LEqual (Arg0, 0x01))
                    {
                        Store (0x01, Local0)
                    }
                    Else
                    {
                        A048 (0x00)
                        Store (A062 (0x00, 0x04), Local0)
                        If (LNotEqual (Local0, 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, And (Local0, Not (0x04)))
                            Store (A062 (0x01, 0x04), Local0)
                            If (LNotEqual (Local0, 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, And (Local0, Not (0x04)))
                            }
                        }

                        Store (0x01, A055)
                        Store (0x05, Local0)
                    }

                    Store (0x00, A054)
                    While (LNotEqual (Local0, 0x08))
                    {
                        If (LEqual (Local0, 0x01)){}
                        If (LEqual (Local0, 0x05))
                        {
                            A062 (0x00, 0x00)
                            Store (0x00, AB05)
                            Store (0x00, AB04)
                            Store (0x00, AB10)
                            Store (0x00, Local2)
                            Store (0x08, Local0)
                        }
                    }

                    Store (A049, A054)
                    If (LNotEqual (A049, 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABRB)
            {
                Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                Name (_UID, 0x8B)  // _UID: Unique ID
                Name (AB12, 0xFC)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, Add (AGRB, Or (ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), 0x0F), ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), 0x0C))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x00))), AB00)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x01))), AB0E)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x02))), AB01)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x03))), AB02)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x04))), AB03)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x05))), AB04)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x06))), AB05)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x07))), AB06)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x08))), AB07)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x09))), AB08)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0A))), AB09)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0B))), AB0A)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0C))), AB0B)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), AB0C)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), AB0D)
                }

                Method (A045, 0, NotSerialized)
                {
                    Store (A027 (), Local0)
                    If (LEqual (Local0, 0x01))
                    {
                        Return (AB01)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Return (AB0E)
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If (LNotEqual (AB10, 0x00))
                    {
                        If (LEqual (AB10, 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If (LNotEqual (AB05, 0x00))
                    {
                        Return (AB05)
                    }

                    If (LGreater (AB10, 0x01))
                    {
                        Return (Subtract (AB10, 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If (LEqual (\_SB.AP05, 0x00))
                    {
                        If (LNotEqual (AB05, 0x00))
                        {
                            Return (AB05)
                        }

                        Return (AB0E)
                    }

                    Store (A046 (), Local0)
                    If (LNotEqual (Local0, 0x00))
                    {
                        If (LGreater (Local0, AB00))
                        {
                            Return (AB00)
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Store (A045 (), Local0)
                    If (LNotEqual (\_SB.AP03, 0x00))
                    {
                        If (LLess (\_SB.AP03, Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00)
                }

                Method (A037, 1, NotSerialized)
                {
                    Store (Arg0, AB02)
                    A047 (Arg0)
                    If (LNotEqual (AB10, 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    Store (Arg0, AB10)
                }

                Method (A043, 1, NotSerialized)
                {
                    ShiftRight (Arg0, 0x08, Local0)
                    If (LAnd (LGreaterEqual (Local0, A050), LLessEqual (Local0, A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local0)
                    If (LEqual (Arg0, Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    Store (0x00, AB10)
                }

                Method (A047, 1, NotSerialized)
                {
                    If (LGreaterEqual (Arg0, 0x02)){}
                    If (LGreaterEqual (Arg0, 0x03)){}
                    If (LEqual (Arg0, 0x01))
                    {
                        If (LEqual (AB04, 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If (LEqual (A062 (Arg0, 0x00), 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Store (A062 (Arg0, 0x34), Local0)
                    While (0x01)
                    {
                        Store (A062 (Arg0, And (Local0, 0xFF)), Local1)
                        If (LEqual (And (Local1, 0xFF), Arg1))
                        {
                            Return (And (Local0, 0xFF))
                        }

                        And (ShiftRight (Local1, 0x08), 0xFF, Local0)
                        If (LEqual (Local0, 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Store (0x00, Local0)
                    If (LNotEqual (A062 (Local0, 0x00), 0xFFFFFFFF))
                    {
                        And (A062 (Local0, 0x08), 0x80, Local1)
                        If (LEqual (Local1, 0x80))
                        {
                            Store (0x07, Local7)
                        }
                        Else
                        {
                            Store (0x00, Local7)
                        }

                        While (LLessEqual (Local0, Local7))
                        {
                            Store (A064 (Local0, 0x10), Local1)
                            If (LEqual (Local1, 0x00))
                            {
                                Increment (Local0)
                                Continue
                            }

                            If (LEqual (Arg0, 0x00))
                            {
                                Store (A062 (Local0, Add (Local1, 0x10)), Local2)
                                A063 (Local0, Add (Local1, 0x10), And (Local2, Not (0x03)))
                                Store (Local2, Index (AESP, Local0))
                            }
                            Else
                            {
                                Store (DerefOf (Index (AESP, Local0)), Local2)
                                A063 (Local0, Add (Local1, 0x10), Local2)
                            }

                            Increment (Local0)
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Store (Arg2, ADRR)
                }

                Method (A062, 2, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR)
                }

                Method (A060, 1, NotSerialized)
                {
                    If (LNotEqual (AB0B, 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    Store (A054, A049)
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local1)
                    If (LEqual (Arg0, 0x01))
                    {
                        Store (0x01, Local0)
                    }
                    Else
                    {
                        A048 (0x00)
                        Store (A062 (0x00, 0x04), Local0)
                        If (LNotEqual (Local0, 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, And (Local0, Not (0x04)))
                            Store (A062 (0x01, 0x04), Local0)
                            If (LNotEqual (Local0, 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, And (Local0, Not (0x04)))
                            }
                        }

                        Store (0x01, A055)
                        Store (0x05, Local0)
                    }

                    Store (0x00, A054)
                    While (LNotEqual (Local0, 0x08))
                    {
                        If (LEqual (Local0, 0x01)){}
                        If (LEqual (Local0, 0x05))
                        {
                            A062 (0x00, 0x00)
                            Store (0x00, AB05)
                            Store (0x00, AB04)
                            Store (0x00, AB10)
                            Store (0x00, Local2)
                            Store (0x08, Local0)
                        }
                    }

                    Store (A049, A054)
                    If (LNotEqual (A049, 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABRC)
            {
                Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                Name (_UID, 0x8C)  // _UID: Unique ID
                Name (AB12, 0x0110)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, Add (AGRB, Or (ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), 0x0F), ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), 0x0C))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x00))), AB00)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x01))), AB0E)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x02))), AB01)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x03))), AB02)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x04))), AB03)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x05))), AB04)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x06))), AB05)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x07))), AB06)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x08))), AB07)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x09))), AB08)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0A))), AB09)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0B))), AB0A)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0C))), AB0B)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), AB0C)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), AB0D)
                }

                Method (A045, 0, NotSerialized)
                {
                    Store (A027 (), Local0)
                    If (LEqual (Local0, 0x01))
                    {
                        Return (AB01)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Return (AB0E)
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If (LNotEqual (AB10, 0x00))
                    {
                        If (LEqual (AB10, 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If (LNotEqual (AB05, 0x00))
                    {
                        Return (AB05)
                    }

                    If (LGreater (AB10, 0x01))
                    {
                        Return (Subtract (AB10, 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If (LEqual (\_SB.AP05, 0x00))
                    {
                        If (LNotEqual (AB05, 0x00))
                        {
                            Return (AB05)
                        }

                        Return (AB0E)
                    }

                    Store (A046 (), Local0)
                    If (LNotEqual (Local0, 0x00))
                    {
                        If (LGreater (Local0, AB00))
                        {
                            Return (AB00)
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Store (A045 (), Local0)
                    If (LNotEqual (\_SB.AP03, 0x00))
                    {
                        If (LLess (\_SB.AP03, Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00)
                }

                Method (A037, 1, NotSerialized)
                {
                    Store (Arg0, AB02)
                    A047 (Arg0)
                    If (LNotEqual (AB10, 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    Store (Arg0, AB10)
                }

                Method (A043, 1, NotSerialized)
                {
                    ShiftRight (Arg0, 0x08, Local0)
                    If (LAnd (LGreaterEqual (Local0, A050), LLessEqual (Local0, A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local0)
                    If (LEqual (Arg0, Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    Store (0x00, AB10)
                }

                Method (A047, 1, NotSerialized)
                {
                    If (LGreaterEqual (Arg0, 0x02)){}
                    If (LGreaterEqual (Arg0, 0x03)){}
                    If (LEqual (Arg0, 0x01))
                    {
                        If (LEqual (AB04, 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If (LEqual (A062 (Arg0, 0x00), 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Store (A062 (Arg0, 0x34), Local0)
                    While (0x01)
                    {
                        Store (A062 (Arg0, And (Local0, 0xFF)), Local1)
                        If (LEqual (And (Local1, 0xFF), Arg1))
                        {
                            Return (And (Local0, 0xFF))
                        }

                        And (ShiftRight (Local1, 0x08), 0xFF, Local0)
                        If (LEqual (Local0, 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Store (0x00, Local0)
                    If (LNotEqual (A062 (Local0, 0x00), 0xFFFFFFFF))
                    {
                        And (A062 (Local0, 0x08), 0x80, Local1)
                        If (LEqual (Local1, 0x80))
                        {
                            Store (0x07, Local7)
                        }
                        Else
                        {
                            Store (0x00, Local7)
                        }

                        While (LLessEqual (Local0, Local7))
                        {
                            Store (A064 (Local0, 0x10), Local1)
                            If (LEqual (Local1, 0x00))
                            {
                                Increment (Local0)
                                Continue
                            }

                            If (LEqual (Arg0, 0x00))
                            {
                                Store (A062 (Local0, Add (Local1, 0x10)), Local2)
                                A063 (Local0, Add (Local1, 0x10), And (Local2, Not (0x03)))
                                Store (Local2, Index (AESP, Local0))
                            }
                            Else
                            {
                                Store (DerefOf (Index (AESP, Local0)), Local2)
                                A063 (Local0, Add (Local1, 0x10), Local2)
                            }

                            Increment (Local0)
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Store (Arg2, ADRR)
                }

                Method (A062, 2, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR)
                }

                Method (A060, 1, NotSerialized)
                {
                    If (LNotEqual (AB0B, 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    Store (A054, A049)
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local1)
                    If (LEqual (Arg0, 0x01))
                    {
                        Store (0x01, Local0)
                    }
                    Else
                    {
                        A048 (0x00)
                        Store (A062 (0x00, 0x04), Local0)
                        If (LNotEqual (Local0, 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, And (Local0, Not (0x04)))
                            Store (A062 (0x01, 0x04), Local0)
                            If (LNotEqual (Local0, 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, And (Local0, Not (0x04)))
                            }
                        }

                        Store (0x01, A055)
                        Store (0x05, Local0)
                    }

                    Store (0x00, A054)
                    While (LNotEqual (Local0, 0x08))
                    {
                        If (LEqual (Local0, 0x01)){}
                        If (LEqual (Local0, 0x05))
                        {
                            A062 (0x00, 0x00)
                            Store (0x00, AB05)
                            Store (0x00, AB04)
                            Store (0x00, AB10)
                            Store (0x00, Local2)
                            Store (0x08, Local0)
                        }
                    }

                    Store (A049, A054)
                    If (LNotEqual (A049, 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABRD)
            {
                Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                Name (_UID, 0x8D)  // _UID: Unique ID
                Name (AB12, 0x0124)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, Add (AGRB, Or (ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), 0x0F), ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), 0x0C))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x00))), AB00)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x01))), AB0E)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x02))), AB01)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x03))), AB02)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x04))), AB03)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x05))), AB04)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x06))), AB05)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x07))), AB06)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x08))), AB07)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x09))), AB08)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0A))), AB09)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0B))), AB0A)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0C))), AB0B)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), AB0C)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), AB0D)
                }

                Method (A045, 0, NotSerialized)
                {
                    Store (A027 (), Local0)
                    If (LEqual (Local0, 0x01))
                    {
                        Return (AB01)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Return (AB0E)
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If (LNotEqual (AB10, 0x00))
                    {
                        If (LEqual (AB10, 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If (LNotEqual (AB05, 0x00))
                    {
                        Return (AB05)
                    }

                    If (LGreater (AB10, 0x01))
                    {
                        Return (Subtract (AB10, 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If (LEqual (\_SB.AP05, 0x00))
                    {
                        If (LNotEqual (AB05, 0x00))
                        {
                            Return (AB05)
                        }

                        Return (AB0E)
                    }

                    Store (A046 (), Local0)
                    If (LNotEqual (Local0, 0x00))
                    {
                        If (LGreater (Local0, AB00))
                        {
                            Return (AB00)
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Store (A045 (), Local0)
                    If (LNotEqual (\_SB.AP03, 0x00))
                    {
                        If (LLess (\_SB.AP03, Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00)
                }

                Method (A037, 1, NotSerialized)
                {
                    Store (Arg0, AB02)
                    A047 (Arg0)
                    If (LNotEqual (AB10, 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    Store (Arg0, AB10)
                }

                Method (A043, 1, NotSerialized)
                {
                    ShiftRight (Arg0, 0x08, Local0)
                    If (LAnd (LGreaterEqual (Local0, A050), LLessEqual (Local0, A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local0)
                    If (LEqual (Arg0, Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    Store (0x00, AB10)
                }

                Method (A047, 1, NotSerialized)
                {
                    If (LGreaterEqual (Arg0, 0x02)){}
                    If (LGreaterEqual (Arg0, 0x03)){}
                    If (LEqual (Arg0, 0x01))
                    {
                        If (LEqual (AB04, 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If (LEqual (A062 (Arg0, 0x00), 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Store (A062 (Arg0, 0x34), Local0)
                    While (0x01)
                    {
                        Store (A062 (Arg0, And (Local0, 0xFF)), Local1)
                        If (LEqual (And (Local1, 0xFF), Arg1))
                        {
                            Return (And (Local0, 0xFF))
                        }

                        And (ShiftRight (Local1, 0x08), 0xFF, Local0)
                        If (LEqual (Local0, 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Store (0x00, Local0)
                    If (LNotEqual (A062 (Local0, 0x00), 0xFFFFFFFF))
                    {
                        And (A062 (Local0, 0x08), 0x80, Local1)
                        If (LEqual (Local1, 0x80))
                        {
                            Store (0x07, Local7)
                        }
                        Else
                        {
                            Store (0x00, Local7)
                        }

                        While (LLessEqual (Local0, Local7))
                        {
                            Store (A064 (Local0, 0x10), Local1)
                            If (LEqual (Local1, 0x00))
                            {
                                Increment (Local0)
                                Continue
                            }

                            If (LEqual (Arg0, 0x00))
                            {
                                Store (A062 (Local0, Add (Local1, 0x10)), Local2)
                                A063 (Local0, Add (Local1, 0x10), And (Local2, Not (0x03)))
                                Store (Local2, Index (AESP, Local0))
                            }
                            Else
                            {
                                Store (DerefOf (Index (AESP, Local0)), Local2)
                                A063 (Local0, Add (Local1, 0x10), Local2)
                            }

                            Increment (Local0)
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Store (Arg2, ADRR)
                }

                Method (A062, 2, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR)
                }

                Method (A060, 1, NotSerialized)
                {
                    If (LNotEqual (AB0B, 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    Store (A054, A049)
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local1)
                    If (LEqual (Arg0, 0x01))
                    {
                        Store (0x01, Local0)
                    }
                    Else
                    {
                        A048 (0x00)
                        Store (A062 (0x00, 0x04), Local0)
                        If (LNotEqual (Local0, 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, And (Local0, Not (0x04)))
                            Store (A062 (0x01, 0x04), Local0)
                            If (LNotEqual (Local0, 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, And (Local0, Not (0x04)))
                            }
                        }

                        Store (0x01, A055)
                        Store (0x05, Local0)
                    }

                    Store (0x00, A054)
                    While (LNotEqual (Local0, 0x08))
                    {
                        If (LEqual (Local0, 0x01)){}
                        If (LEqual (Local0, 0x05))
                        {
                            A062 (0x00, 0x00)
                            Store (0x00, AB05)
                            Store (0x00, AB04)
                            Store (0x00, AB10)
                            Store (0x00, Local2)
                            Store (0x08, Local0)
                        }
                    }

                    Store (A049, A054)
                    If (LNotEqual (A049, 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABRE)
            {
                Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                Name (_UID, 0x8E)  // _UID: Unique ID
                Name (AB12, 0x0138)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, Add (AGRB, Or (ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), 0x0F), ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), 0x0C))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x00))), AB00)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x01))), AB0E)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x02))), AB01)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x03))), AB02)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x04))), AB03)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x05))), AB04)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x06))), AB05)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x07))), AB06)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x08))), AB07)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x09))), AB08)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0A))), AB09)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0B))), AB0A)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0C))), AB0B)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), AB0C)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), AB0D)
                }

                Method (A045, 0, NotSerialized)
                {
                    Store (A027 (), Local0)
                    If (LEqual (Local0, 0x01))
                    {
                        Return (AB01)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Return (AB0E)
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If (LNotEqual (AB10, 0x00))
                    {
                        If (LEqual (AB10, 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If (LNotEqual (AB05, 0x00))
                    {
                        Return (AB05)
                    }

                    If (LGreater (AB10, 0x01))
                    {
                        Return (Subtract (AB10, 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If (LEqual (\_SB.AP05, 0x00))
                    {
                        If (LNotEqual (AB05, 0x00))
                        {
                            Return (AB05)
                        }

                        Return (AB0E)
                    }

                    Store (A046 (), Local0)
                    If (LNotEqual (Local0, 0x00))
                    {
                        If (LGreater (Local0, AB00))
                        {
                            Return (AB00)
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Store (A045 (), Local0)
                    If (LNotEqual (\_SB.AP03, 0x00))
                    {
                        If (LLess (\_SB.AP03, Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00)
                }

                Method (A037, 1, NotSerialized)
                {
                    Store (Arg0, AB02)
                    A047 (Arg0)
                    If (LNotEqual (AB10, 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    Store (Arg0, AB10)
                }

                Method (A043, 1, NotSerialized)
                {
                    ShiftRight (Arg0, 0x08, Local0)
                    If (LAnd (LGreaterEqual (Local0, A050), LLessEqual (Local0, A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local0)
                    If (LEqual (Arg0, Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    Store (0x00, AB10)
                }

                Method (A047, 1, NotSerialized)
                {
                    If (LGreaterEqual (Arg0, 0x02)){}
                    If (LGreaterEqual (Arg0, 0x03)){}
                    If (LEqual (Arg0, 0x01))
                    {
                        If (LEqual (AB04, 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If (LEqual (A062 (Arg0, 0x00), 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Store (A062 (Arg0, 0x34), Local0)
                    While (0x01)
                    {
                        Store (A062 (Arg0, And (Local0, 0xFF)), Local1)
                        If (LEqual (And (Local1, 0xFF), Arg1))
                        {
                            Return (And (Local0, 0xFF))
                        }

                        And (ShiftRight (Local1, 0x08), 0xFF, Local0)
                        If (LEqual (Local0, 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Store (0x00, Local0)
                    If (LNotEqual (A062 (Local0, 0x00), 0xFFFFFFFF))
                    {
                        And (A062 (Local0, 0x08), 0x80, Local1)
                        If (LEqual (Local1, 0x80))
                        {
                            Store (0x07, Local7)
                        }
                        Else
                        {
                            Store (0x00, Local7)
                        }

                        While (LLessEqual (Local0, Local7))
                        {
                            Store (A064 (Local0, 0x10), Local1)
                            If (LEqual (Local1, 0x00))
                            {
                                Increment (Local0)
                                Continue
                            }

                            If (LEqual (Arg0, 0x00))
                            {
                                Store (A062 (Local0, Add (Local1, 0x10)), Local2)
                                A063 (Local0, Add (Local1, 0x10), And (Local2, Not (0x03)))
                                Store (Local2, Index (AESP, Local0))
                            }
                            Else
                            {
                                Store (DerefOf (Index (AESP, Local0)), Local2)
                                A063 (Local0, Add (Local1, 0x10), Local2)
                            }

                            Increment (Local0)
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Store (Arg2, ADRR)
                }

                Method (A062, 2, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR)
                }

                Method (A060, 1, NotSerialized)
                {
                    If (LNotEqual (AB0B, 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    Store (A054, A049)
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local1)
                    If (LEqual (Arg0, 0x01))
                    {
                        Store (0x01, Local0)
                    }
                    Else
                    {
                        A048 (0x00)
                        Store (A062 (0x00, 0x04), Local0)
                        If (LNotEqual (Local0, 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, And (Local0, Not (0x04)))
                            Store (A062 (0x01, 0x04), Local0)
                            If (LNotEqual (Local0, 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, And (Local0, Not (0x04)))
                            }
                        }

                        Store (0x01, A055)
                        Store (0x05, Local0)
                    }

                    Store (0x00, A054)
                    While (LNotEqual (Local0, 0x08))
                    {
                        If (LEqual (Local0, 0x01)){}
                        If (LEqual (Local0, 0x05))
                        {
                            A062 (0x00, 0x00)
                            Store (0x00, AB05)
                            Store (0x00, AB04)
                            Store (0x00, AB10)
                            Store (0x00, Local2)
                            Store (0x08, Local0)
                        }
                    }

                    Store (A049, A054)
                    If (LNotEqual (A049, 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABRF)
            {
                Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                Name (_UID, 0x8F)  // _UID: Unique ID
                Name (AB12, 0x014C)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, Add (AGRB, Or (ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), 0x0F), ShiftLeft (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), 0x0C))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x00))), AB00)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x01))), AB0E)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x02))), AB01)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x03))), AB02)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x04))), AB03)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x05))), AB04)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x06))), AB05)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x07))), AB06)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x08))), AB07)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x09))), AB08)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0A))), AB09)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0B))), AB0A)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0C))), AB0B)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0D))), AB0C)
                    Store (DerefOf (Index (\_SB.ADAT, Add (AB12, 0x0E))), AB0D)
                }

                Method (A045, 0, NotSerialized)
                {
                    Store (A027 (), Local0)
                    If (LEqual (Local0, 0x01))
                    {
                        Return (AB01)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Return (AB0E)
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If (LNotEqual (AB10, 0x00))
                    {
                        If (LEqual (AB10, 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If (LNotEqual (AB05, 0x00))
                    {
                        Return (AB05)
                    }

                    If (LGreater (AB10, 0x01))
                    {
                        Return (Subtract (AB10, 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If (LEqual (\_SB.AP05, 0x00))
                    {
                        If (LNotEqual (AB05, 0x00))
                        {
                            Return (AB05)
                        }

                        Return (AB0E)
                    }

                    Store (A046 (), Local0)
                    If (LNotEqual (Local0, 0x00))
                    {
                        If (LGreater (Local0, AB00))
                        {
                            Return (AB00)
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Store (A045 (), Local0)
                    If (LNotEqual (\_SB.AP03, 0x00))
                    {
                        If (LLess (\_SB.AP03, Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00)
                }

                Method (A037, 1, NotSerialized)
                {
                    Store (Arg0, AB02)
                    A047 (Arg0)
                    If (LNotEqual (AB10, 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    Store (Arg0, AB10)
                }

                Method (A043, 1, NotSerialized)
                {
                    ShiftRight (Arg0, 0x08, Local0)
                    If (LAnd (LGreaterEqual (Local0, A050), LLessEqual (Local0, A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local0)
                    If (LEqual (Arg0, Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    Store (0x00, AB10)
                }

                Method (A047, 1, NotSerialized)
                {
                    If (LGreaterEqual (Arg0, 0x02)){}
                    If (LGreaterEqual (Arg0, 0x03)){}
                    If (LEqual (Arg0, 0x01))
                    {
                        If (LEqual (AB04, 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If (LEqual (A062 (Arg0, 0x00), 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Store (A062 (Arg0, 0x34), Local0)
                    While (0x01)
                    {
                        Store (A062 (Arg0, And (Local0, 0xFF)), Local1)
                        If (LEqual (And (Local1, 0xFF), Arg1))
                        {
                            Return (And (Local0, 0xFF))
                        }

                        And (ShiftRight (Local1, 0x08), 0xFF, Local0)
                        If (LEqual (Local0, 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Store (0x00, Local0)
                    If (LNotEqual (A062 (Local0, 0x00), 0xFFFFFFFF))
                    {
                        And (A062 (Local0, 0x08), 0x80, Local1)
                        If (LEqual (Local1, 0x80))
                        {
                            Store (0x07, Local7)
                        }
                        Else
                        {
                            Store (0x00, Local7)
                        }

                        While (LLessEqual (Local0, Local7))
                        {
                            Store (A064 (Local0, 0x10), Local1)
                            If (LEqual (Local1, 0x00))
                            {
                                Increment (Local0)
                                Continue
                            }

                            If (LEqual (Arg0, 0x00))
                            {
                                Store (A062 (Local0, Add (Local1, 0x10)), Local2)
                                A063 (Local0, Add (Local1, 0x10), And (Local2, Not (0x03)))
                                Store (Local2, Index (AESP, Local0))
                            }
                            Else
                            {
                                Store (DerefOf (Index (AESP, Local0)), Local2)
                                A063 (Local0, Add (Local1, 0x10), Local2)
                            }

                            Increment (Local0)
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Store (Arg2, ADRR)
                }

                Method (A062, 2, Serialized)
                {
                    Add (AGRB, ShiftLeft (A050, 0x14), Local0)
                    Add (Local0, ShiftLeft (Arg0, 0x0C), Local0)
                    Add (Local0, Arg1, Local0)
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR)
                }

                Method (A060, 1, NotSerialized)
                {
                    If (LNotEqual (AB0B, 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    Store (A054, A049)
                    Or (AB0D, ShiftLeft (AB0C, 0x03), Local1)
                    If (LEqual (Arg0, 0x01))
                    {
                        Store (0x01, Local0)
                    }
                    Else
                    {
                        A048 (0x00)
                        Store (A062 (0x00, 0x04), Local0)
                        If (LNotEqual (Local0, 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, And (Local0, Not (0x04)))
                            Store (A062 (0x01, 0x04), Local0)
                            If (LNotEqual (Local0, 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, And (Local0, Not (0x04)))
                            }
                        }

                        Store (0x01, A055)
                        Store (0x05, Local0)
                    }

                    Store (0x00, A054)
                    While (LNotEqual (Local0, 0x08))
                    {
                        If (LEqual (Local0, 0x01)){}
                        If (LEqual (Local0, 0x05))
                        {
                            A062 (0x00, 0x00)
                            Store (0x00, AB05)
                            Store (0x00, AB04)
                            Store (0x00, AB10)
                            Store (0x00, Local2)
                            Store (0x08, Local0)
                        }
                    }

                    Store (A049, A054)
                    If (LNotEqual (A049, 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }
        }

        Name (A001, 0x01)
        Name (A002, 0x00)
        Method (APTS, 1, NotSerialized)
        {
            If (LEqual (Arg0, 0x03)){}
        }

        Method (AWAK, 1, NotSerialized)
        {
            If (LEqual (Arg0, 0x03)){}
        }

        Method (A003, 0, NotSerialized)
        {
        }

        Method (A004, 2, NotSerialized)
        {
        }
    }
}

