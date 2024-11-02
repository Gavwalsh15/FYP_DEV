import serial
import time

ser = serial.Serial('COM12', baudrate=230400, timeout=1)

def send_file_over_serial(file_path):
    try:
        with open(file_path, 'rb') as file:
            file_content = file.read()

            chunk_size = 1024  # Adjust chunk size as needed
            for i in range(0, len(file_content), chunk_size):
                chunk = file_content[i:i + chunk_size]

                # Append a newline or specific delimiter at the end of each chunk
                chunk += b'\n'

                ser.write(chunk)
                print(f"Sent chunk: {chunk}")

                time.sleep(0.1)  # Delay to prevent overwhelming the receiver

            print("File transmission complete.")

    except Exception as e:
        print(f"Error: {e}")

if __name__ == '__main__':
    try:
        send_file_over_serial('files/example.txt')

        while True:
            if ser.in_waiting > 0:
                incoming_data = ser.read(ser.in_waiting).decode('utf-8')
                print(f"PC Received: {incoming_data}")

            time.sleep(2)

    except KeyboardInterrupt:
        print("Exiting...")

    finally:
        ser.close()
