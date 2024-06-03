import matplotlib.pyplot as plt

def extract_real_times(filename):
    times = []
    with open(filename, 'r') as file:
        for line in file:
            if 'real' in line:
                # Extract the minutes and seconds from the format '0m0.660s'
                mins, secs = line.split()[1].replace('s', '').split('m')
                total_time = float(mins) * 60 + float(secs)
                times.append(total_time)
    return times

# Load real times from text files
generate_times = extract_real_times('generate-time.txt')
sort_times = extract_real_times('sort-time.txt')

scales = [1000, 10000, 100000]

plt.figure(figsize=(10, 5))
plt.plot(scales, generate_times, marker='o', label='Generation Time', linestyle='-', color='blue')
plt.plot(scales, sort_times, marker='o', label='Sorting Time', linestyle='-', color='red')

plt.xlabel('Number of Records')
plt.ylabel('Time in Seconds')
plt.title('Time Taken for Data Generation and Sorting')
plt.xscale('log')  # Logarithmic scale for the x-axis
plt.yscale('log')  # Optional: Logarithmic scale for the y-axis to show exponential growth
plt.grid(True)
plt.legend()
plt.show()