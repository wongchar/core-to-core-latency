# Use the official Rust image as a base  
FROM rust:1.67-slim  
  
# Set the working directory inside the container  
WORKDIR /usr/src/myapp  
  
# Copy the current directory contents into the container at /usr/src/myapp  
COPY . .  
  
# Create a directory for results  
RUN mkdir -p /usr/src/myapp/results  
  
# Install the specified Rust package  
RUN cargo install core-to-core-latency  
  
# Set the default command to run when the container starts  
CMD ["core-to-core-latency 5000 --csv > /usr/src/myapp/results"]  

