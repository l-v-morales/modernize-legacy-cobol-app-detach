FROM toricls/gnucobol

# Install required dependencies
RUN apt-get update && \
    apt-get install -y gcc g++ && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy COBOL source files
COPY main.cob operations.cob data.cob ./

# Compile the COBOL application
RUN cobc -x main.cob operations.cob data.cob -o accountsystem

# Run the application
CMD ["./accountsystem"]
