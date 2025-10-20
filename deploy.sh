#!/bin/bash

echo "🔁 Local CI/CD: Starting build & deploy..."

# पुराना container रोकें और delete करें
docker stop local-ci-cd-container 2>/dev/null || true
docker rm local-ci-cd-container 2>/dev/null || true

# नया Docker image build करें
docker build -t local-ci-cd-app:latest .

# नया container चलाएँ
docker run -d -p 8080:3000 --name local-ci-cd-container local-ci-cd-app:latest

echo "✅ Deployment complete! Visit http://localhost:8080"