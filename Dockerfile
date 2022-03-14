# Use the official R image
# https://hub.docker.com/_/r-base
FROM rstudio/plumber

# Create and change to the app directory.
WORKDIR /usr/src/app

# Copy local code to the container image.
COPY . .

# Install any R packages
RUN Rscript -e "install.packages('plumber')"

# Set port on build time
ARG PORT=8080
ENV PORT=${PORT}
EXPOSE ${PORT}

# Run the web service on container startup.
CMD [ "Rscript", "server.R"]