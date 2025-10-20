
# Local CI/CD Demo

## Objective
- Build a simple Node.js web application
- Dockerize the application
- Implement a local CI/CD pipeline using Git Bash
- Auto rebuild & deploy on git push

## Prerequisites
- Node.js & npm installed
- Docker installed
- Git & Git Bash installed (for Windows users)

## Project Structure
```

local-ci-cd-demo/
│
├── server.js
├── package.json
├── package-lock.json
├── Dockerfile
├── deploy.sh
└── .git/hooks/pre-push

````

## Step 1 — Node.js Web App
- `server.js` contains a simple Express app
- Run locally to test:
```bash
node server.js
````

* Open in browser: `http://localhost:3000`

## Step 2 — Dockerize the App

* Dockerfile included
* Build and run Docker container:

```bash
docker build -t local-ci-cd-app:latest .
docker run -d -p 8080:3000 --name local-ci-cd-container local-ci-cd-app:latest
```

## Step 3 — Local CI/CD

* `deploy.sh` automates Docker build & deployment
* Pre-push Git hook triggers deployment before git push

Test workflow:

```bash
git add .
git commit -m "update"
git push
```

## Step 4 — Verification

* Refresh browser → see updated app text
* Check Docker container status:

```bash
docker ps
```

## Notes

* Always use **Git Bash** on Windows for scripts
* Pre-push hook ensures automation
* Code changes reflect after running deploy.sh / pushing changes

## Submission Instructions

1. Copy all files into `local-ci-cd-demo` folder
2. Initialize git repository (if not already):

```bash
git init
git add .
git commit -m "Initial commit: ready to submit"
```

3. Connect to GitHub repository:

```bash
git remote add origin https://github.com/kaneri-taklikar/local-CI-CD-demo.git
git branch -M main
git push -u origin main
```
