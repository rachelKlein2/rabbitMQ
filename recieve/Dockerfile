FROM ruby:3.2-slim

# Install system dependencies for native gem builds
RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    build-essential \
    libssl-dev \
    libffi-dev \
    zlib1g-dev \
 && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy Gemfile and install dependencies
COPY Gemfile ./
RUN bundle install

# Copy the rest of the project
COPY . .

# Run your Ruby script
CMD ["ruby", "reciever.rb"]
