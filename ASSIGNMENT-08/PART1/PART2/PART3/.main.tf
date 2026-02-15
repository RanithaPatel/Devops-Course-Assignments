provider "aws" {
  region = var.aws_region
}

resource "aws_ecr_repository" "flask" {
  name = "flask-repo"
}

resource "aws_ecr_repository" "express" {
  name = "express-repo"
}

resource "aws_ecs_cluster" "main" {
  name = "app-cluster"
}
