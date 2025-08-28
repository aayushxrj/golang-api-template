#!/bin/bash

# Get current folder name as project name
PROJECT_NAME=$(basename "$PWD")

echo "Setting up Golang API boilerplate in '$PROJECT_NAME'..."

# If golang-api-template exists as a submodule, remove it properly
if [ -d "golang-api-template" ]; then
    echo "Removing potential submodule golang-api-template..."
    git submodule deinit -f golang-api-template 2>/dev/null || true
    git rm -f golang-api-template 2>/dev/null || true
    rm -rf .git/modules/golang-api-template 2>/dev/null || true
    rm -rf golang-api-template
fi

# Create main folders and subfolders
mkdir -p cmd/api
mkdir -p internal/api/{handlers,router,middlewares}
mkdir -p internal/models
mkdir -p internal/repository/mongodb
mkdir -p internal/repository/sqlconnect
mkdir -p pkg/utils
mkdir -p proto

# Create essential files
touch cmd/api/server.go
touch cmd/api/.env
touch internal/models/user.go
touch internal/models/product.go
touch internal/repository/mongodb/mongoconnect.go
touch internal/repository/sqlconnect/sqlconfig.go
touch pkg/utils/error_handling.go
touch pkg/utils/jwt_processing.go
touch proto/main.proto

# Initialize Go module using the current folder name
go mod init github.com/aayushxrj/$PROJECT_NAME

# Initialize new Git repository
echo "Initializing a fresh Git repository..."
git init
git add .
git commit -m "Initialise project structure"

echo "Project '$PROJECT_NAME' has been created and initial commit made successfully!"
