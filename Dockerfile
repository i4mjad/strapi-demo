# Use an official Node.js image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and yarn.lock separately to prevent errors
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install --frozen-lockfile

# Copy the rest of the application files
COPY . .

# Force rebuild of better-sqlite3 (to fix "invalid ELF header")
RUN yarn add better-sqlite3 --force

# Expose Strapi port
EXPOSE 1337

# Start the Strapi server
CMD ["yarn", "develop"]
