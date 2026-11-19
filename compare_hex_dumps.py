import os
import sys
import argparse

def parse_hex_line(line):
    line = line.strip()
    if not line:
        return None 

    if '.' in line:
        if not line.startswith('0x'):
            line = '0x' + line
        return float.fromhex(line)
    else:
        return int(line, 16)


def compare_files(file1, file2, threshold, subdir, filename):
    with open(file1, 'r') as f1, open(file2, 'r') as f2:
        lines1 = f1.readlines()
        lines2 = f2.readlines()

    if len(lines1) != len(lines2):
        print(f"Error: {subdir}/{filename} has different number of lines: "
              f"{len(lines1)} vs {len(lines2)}")
        sys.exit(1)

    for i, (line1, line2) in enumerate(zip(lines1, lines2), start=1):
        val1 = None
        val2 = None
        
        # Tenta parse da linha 1
        try:
            val1 = parse_hex_line(line1)
        except Exception as e:
            # Se falhar, tenta parse como float
            try:
                val1 = float(line1.strip())
            except:
                print(f"Error parsing line {i} in {subdir}/{filename}: {e} (also failed as float)")
                sys.exit(1)
        
        # Tenta parse da linha 2
        try:
            val2 = parse_hex_line(line2)
        except Exception as e:
            # Se falhar, tenta parse como float
            try:
                val2 = float(line2.strip())
            except:
                print(f"Error parsing line {i} in {subdir}/{filename}: {e} (also failed as float)")
                sys.exit(1)
        
        if val1 is None or val2 is None:
            continue
        
        if val1 == 0 and val2 == 0:
            rel_err = 0.0
        else:
            denom = max(abs(val1), abs(val2))
            rel_err = abs(val1 - val2) / denom
        
        # esse 100 é para evitar valores pequenos como 2 e 1 que dá 100% de erro
        if rel_err > threshold:
            print(f"{subdir}/{filename} "
                f"line {i} val1={val1}, val2={val2} ({rel_err:.2f})")

def main():
    parser = argparse.ArgumentParser(
        description="Compare hex dump files between two directories."
    )
    parser.add_argument("path1", help="First directory path")
    parser.add_argument("path2", help="Second directory path")
    parser.add_argument("threshold", type=float, help="Relative error threshold")
    args = parser.parse_args()

    subdirs = [
        # "2_frames",
        # "3_hamming_frames",
        # "4_power_spectrum",
        # "5_energies",
        "6_ceps"
    ]

    for subdir in subdirs:
        dir1 = os.path.join(args.path1, subdir)
        dir2 = os.path.join(args.path2, subdir)

        if not os.path.isdir(dir1):
            print(f"Directory not found: {dir1}")
            sys.exit(1)
        if not os.path.isdir(dir2):
            print(f"Directory not found: {dir2}")
            sys.exit(1)

        files1 = [f for f in os.listdir(dir1) if f.endswith(".hex")]
        files2 = [f for f in os.listdir(dir2) if f.endswith(".hex")]

        files1.sort(key=lambda x: int(x.split('.')[0]))
        files2.sort(key=lambda x: int(x.split('.')[0]))

        if files1 != files2:
            sys.exit(1)

        for fname in files1:
            file1 = os.path.join(dir1, fname)
            file2 = os.path.join(dir2, fname)
            compare_files(file1, file2, args.threshold, subdir, fname)

    print("All files match within threshold.")
    sys.exit(0)


if __name__ == "__main__":
    main()
