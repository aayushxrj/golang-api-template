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
    chmod +x golang-api-template/setup.sh
    ./golang-api-template/setup.sh
    ```

This will:
- Create the folder structure and placeholder files  
- Initialize a new Go module using your current folder name  
- Initialize a fresh Git repository with an initial commit 
- Remove the temporary files

4. **Start developing your API:**

    ``` bash
    go run cmd/api/server.go
    ```
## Folder Structure (Generated)
```
cmd/api/
    └── server.go
internal/
    ├── api/
    │   ├── handlers/
    │   ├── router/
    │       └── router.go
    │   └── middlewares/
    ├── models/
    └── repository/
        └── sqlconnect/
            └── sqlconfig.go
pkg/utils/
    └── error_handling.go
.env
```
