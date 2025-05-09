# Use a Windows base image
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Set the working directory
WORKDIR /app

# Download and install essentials
ADD https://www.dropbox.com/scl/fi/qdyd4p9t6xoabl95n5o3g/Downloads.bat?rlkey=snr74vv1vr8k5suujugvrhjtm&dl=1 Downloads.bat

# Run the batch file to install essentials
RUN cmd /c Downloads.bat

# Copy the show.bat script into the container (make sure you have this file in your context)
COPY show.bat .

# Command to log in to AnyDesk
CMD ["cmd", "/c", "show.bat"]
