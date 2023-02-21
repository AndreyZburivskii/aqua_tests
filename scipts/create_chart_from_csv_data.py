import pandas as pd
import matplotlib.pyplot as plt

# Read the CSV file into a pandas dataframe
df = pd.read_csv('memory_usage_res.csv', delimiter=';')


# Extract the unique list of Process from the DataFrame
unique_processes = df['Process'].unique()

# Print the unique list of Process
for process in unique_processes:
    # set graph size
    plt.subplots(figsize=(36, 22))

    # Filter rows where Process is 'process'
    process_df = df[df['Process'] == process]

    # Create the line chart for Virtual column
    plt.plot(process_df['Timestamp'], process_df['Virtual'], label='Virtual', color='blue')

    # Create the line chart for Physical column
    plt.plot(process_df['Timestamp'], process_df['Physical'], label='Physical', color='green')

    # Create the line chart for Dirty column
    plt.plot(process_df['Timestamp'], process_df['Dirty'], label='Dirty', color='red')

    # Set the chart title to 'process memory Usage'
    plt.title(f'{process} memory Usage')

    # Set the x-axis label to 'Timestamp'
    plt.xlabel('Timestamp')

    # Set the y-axis label to 'Memory, MB'
    plt.ylabel('Memory, MB')

    # Add a legend to the chart
    plt.legend()

    # Rotate the x-axis labels by 90 degrees
    plt.xticks(rotation=90)

    # Save the chart to a PNG file
    plt.savefig(f'charts/{process}_memory_usage.png')

    # Close the plot
    plt.close()