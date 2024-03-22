FROM --platform=linux/amd64 ubuntu:latest

# Install required system libraries
RUN apt-get update && apt-get install -y libc6 zip libc6-dev-i386 nmap net-tools tcpdump

# Install any necessary dependencies (if required)
# For example, if your binary needs specific libraries or tools
# RUN apt-get update && apt-get install -y <package_name>

# Copy the binary into the container
RUN chmod +x goscan
COPY goscan /usr/local/bin/goscan

# Set execute permissions on the binary
RUN chmod +x /usr/local/bin/goscan

# Define the command to run the binary when the container starts
CMD ["/usr/local/bin/goscan"]

