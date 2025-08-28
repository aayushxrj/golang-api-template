#!/bin/bash

# Get current folder name as project name
PROJECT_NAME=$(basename "$PWD")

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
touch go.mod
touch go.sum

# Initialize Go module using the current folder name
go mod init github.com/aayushxrj/$PROJECT_NAME

echo "Project structure for '$PROJECT_NAME' has been created!"
