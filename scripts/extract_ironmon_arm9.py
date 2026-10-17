#!/usr/bin/env python3
"""Extract the IronMON ARM9 binary from HGPyroIronMON V0.2.2a NoLimiter.

Run from the decomp root:
    python3 scripts/extract_ironmon_arm9.py [path/to/ironmon.nds]

The reference NDS defaults to ../../artifacts/HGPyroIronMONV0.2.2a.NoLimiter.reference.nds
relative to the decomp root. Output goes to prebuilt/ironmon_arm9.bin.
"""
import struct, sys
from pathlib import Path

DECOMP_ROOT = Path(__file__).resolve().parent.parent
DEFAULT_NDS  = DECOMP_ROOT / "../../artifacts/HGPyroIronMONV0.2.2a.NoLimiter.reference.nds"
OUT_PATH     = DECOMP_ROOT / "prebuilt/ironmon_arm9.bin"

nds_path = Path(sys.argv[1]) if len(sys.argv) > 1 else DEFAULT_NDS
if not nds_path.exists():
    print(f"ERROR: NDS not found: {nds_path}")
    print("Provide the path to HGPyroIronMONV0.2.2a.NoLimiter.nds as an argument.")
    sys.exit(1)

rom = nds_path.read_bytes()
arm9_off = struct.unpack_from("<I", rom, 0x20)[0]
arm9_sz  = struct.unpack_from("<I", rom, 0x2c)[0]
arm9     = rom[arm9_off:arm9_off + arm9_sz]

OUT_PATH.parent.mkdir(exist_ok=True)
OUT_PATH.write_bytes(arm9)
print(f"Extracted {arm9_sz:,} bytes -> {OUT_PATH}")
