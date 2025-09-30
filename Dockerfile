FROM node:24-slim

# Install Bun
RUN curl -fsSL https://bun.sh/install | bash

# Set Bun to PATH
ENV PATH="/root/.bun/bin:${PATH}"

# Set workdir
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies with Bun
RUN bun install

EXPOSE 3000

# Run the app with Bun
CMD ["bun", "."]
