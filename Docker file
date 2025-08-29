# -------- Stage 1: Build the app --------
FROM node:16 AS build
WORKDIR /app

# Install deps first (better cache)
COPY package*.json ./
RUN npm install

# Copy source & build
COPY . .
# If your project builds a static site (React/Vite/etc), this produces /app/build
RUN npm run build

# -------- Stage 2: Serve with Nginx --------
FROM nginx:alpine

# Copy build output into Nginx web root
COPY --from=build /app/build /usr/share/nginx/html

# Expose HTTP port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
