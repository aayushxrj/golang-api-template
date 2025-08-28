# Golang API Boilerplate

This repository provides a ready-to-use boilerplate for building REST APIs in Golang.

## Usage

1. **Create a new project folder and navigate into it:**

   ```bash
   mkdir my-project && cd my-project
   ```

2. **Clone this boilerplate repository:**

    ```bash
    git clone https://github.com/aayushxrj/golang-api-template
    ```

3. **Run the setup script to generate the project structure:**

    ```bash
    chmod +x setup.sh
    ./setup.sh
    ```

This will:
- Remove the existing `.git` history from the boilerplate  
- Remove the boilerplate `README.md` file  
- Create the folder structure and placeholder files  
- Initialize a new Go module using your current folder name  
- Initialize a fresh Git repository with an initial commit 

4. **Start developing your API:**

    ``` bash
    go run cmd/api/server.go
    ```
## Folder Structure (Generated)
```
cmd/api/
    ├── server.go
    └── .env
internal/
    ├── api/
    │   ├── handlers/
    │   ├── router/
    │   └── middlewares/
    ├── models/
    │   ├── user.go
    │   └── product.go
    └── repository/
        ├── mongodb/
        │   └── mongoconnect.go
        └── sqlconnect/
            └── sqlconfig.go
pkg/utils/
    ├── error_handling.go
    └── jwt_processing.go
proto/
    └── main.proto
go.mod
go.sum
```