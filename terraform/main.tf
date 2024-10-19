terraform {
  required_providers {
    docker = {
      source  = "hashicorp/docker"
      version = "~> 2.0"
    }
  }
}

provider "docker" {
  host = "tcp://docker:2375/"  # This will be used in Azure Pipelines
}

resource "docker_image" "my_image" {
  name = "my_docker_image:latest"

  build {
    context = "${path.module}/../"  # Adjust the context to point to the directory with Dockerfile
  }
}
