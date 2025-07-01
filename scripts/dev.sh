#!/bin/bash
# Install frontend dependencies and start Angular dev server
(
  cd ../frontend
  npm install
  npm run start &
)

# Build and run backend API
(
  cd ../backend
  dotnet run
)
