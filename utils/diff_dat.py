import sys
import numpy as np

def read_dat_file(file_path):
    try:
        with open(file_path, 'r') as file:
            data = []
            for line in file:
                values = line.strip().split()
                for value in values:
                    try:
                        data.append(float(value))
                    except ValueError:
                        if value.lower() == '-nan':
                            data.append(np.nan)
                        else:
                            raise ValueError(f"Invalid value in file: {value}")
            data = np.array(data)
        return data
    except Exception as e:
        print(f"Error reading file {file_path}: {e}")
        sys.exit(1)

def write_dat_file(file_path, data):
    try:
        with open(file_path, 'w') as file:
            for value in data:
                file.write(f"{value}\n")
    except Exception as e:
        print(f"Error writing file {file_path}: {e}")
        sys.exit(1)

def main():
    if len(sys.argv) != 4:
        print("Usage: python diff_dat.py <file1.dat> <file2.dat> <output.dat>")
        sys.exit(1)

    file1_path = sys.argv[1]
    file2_path = sys.argv[2]
    output_path = sys.argv[3]

    data1 = read_dat_file(file1_path)
    data2 = read_dat_file(file2_path)
    min_length = min(len(data1), len(data2))

    diff = np.full(max(len(data1), len(data2)), np.nan)
    diff[:min_length] = np.where(
        np.isnan(data1[:min_length]) | np.isnan(data2[:min_length]),
        np.nan,
        data1[:min_length] - data2[:min_length]
    )

    write_dat_file(output_path, diff)
    print(f"Difference saved to {output_path}")

if __name__ == "__main__":
    main()