# Use the official Python image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy all the project files into the container
COPY . /app

# Install any necessary dependencies
# If you have a requirements.txt file, uncomment the following lines
# COPY requirements.txt /app/
# RUN pip install -r requirements.txt

# Otherwise, install packages manually
RUN pip install opencv-python numpy scikit-learn

# Expose the port if your application needs to be accessible on a specific port (e.g., for a GUI)
# EXPOSE 5000

# Specify the command to run on container start
CMD ["python", "main.py"]
