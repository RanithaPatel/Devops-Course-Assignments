terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "flask" {
  name = "flask-app"
  build {
    context    = "."
    dockerfile = "Dockerfile.flask"
  }
}

resource "docker_container" "flask" {
  name  = "flask-container"
  image = docker_image.flask.latest
  ports {
    internal = 5000
    external = 5000
  }
}

resource "docker_image" "express" {
  name = "express-app"
  build {
    context    = "."
    dockerfile = "Dockerfile.express"
  }
}

resource "docker_container" "express" {
  name  = "express-container"
  image = docker_image.express.latest
  ports {
    internal = 3000
    external = 3000
  }
}


