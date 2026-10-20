# Smart Job Portal

## Project Overview

Smart Job Portal is a web-based job portal project developed using HTML, CSS, JavaScript, and Bootstrap. It provides a simple interface for users to explore job opportunities and register through a responsive web interface.

## Features

- User-friendly job search and browsing interface
- User registration page
- Responsive design for different screen sizes
- Simple and clean navigation

## Technologies Used

- HTML5
- CSS3
- JavaScript
- Bootstrap

## Live URL

https://job-fsd-live.vercel.app/

## Project Structure

```
job fsd/
├── index.html
├── register.html
├── main.js
├── style.css
├── responsive.css
├── test_project.py
├── Dockerfile
├── compose.yaml
├── Jenkinsfile
├── .github/workflows/ci.yml
├── k8s/            (Deployment and Service manifests)
├── monitoring/     (Prometheus config and Grafana dashboards)
├── docs/           (deployment and monitoring screenshots)
└── README.md
```

## CI Pipeline

GitHub Actions runs on every push and pull request to `main`. The `test` job runs the test suite with pytest, and on `main` the `publish` job builds the Docker image and pushes it to the GitHub Container Registry.

## Docker Container Registry

Docker image: `ghcr.io/skit-devops-2026/devops-24eskcs017:latest`

Pull the image using:

```bash
docker pull ghcr.io/skit-devops-2026/devops-24eskcs017:latest
```

Run the full stack (site, Prometheus, Grafana) locally:

```bash
docker compose up --build
```

## Monitoring

Prometheus probes the site through the blackbox exporter, and Grafana dashboards are provided. The configuration and evidence are in the `monitoring/` directory.

## Kubernetes

Kubernetes Deployment and Service manifests are in the `k8s/` directory.
