# -----------------------------
# 📦 Stage 1: Build the Docusaurus site
# -----------------------------
  FROM node:22-alpine AS builder

  # Set working directory
  WORKDIR /app
  
  # Copy package files and install dependencies
  COPY package*.json ./
  RUN npm install
  
  # Copy the full application source and build
  COPY . .
  ENV NODE_OPTIONS="--max_old_space_size=8192"
  RUN npm run build
  
  # -----------------------------
  # 🚀 Stage 2: Serve with NGINX
  # -----------------------------
  FROM nginx:alpine AS production
  
  # Remove default nginx static files
  RUN rm -rf /usr/share/nginx/html/*
  
  # Copy custom nginx config
  COPY nginx.conf /etc/nginx/conf.d/default.conf
  
  # Copy built static files from builder stage
  COPY --from=builder /app/build /usr/share/nginx/html
  
  # Expose port
  EXPOSE 80
  
  # Start NGINX
  CMD ["nginx", "-g", "daemon off;"]