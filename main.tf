provider "docker" {
  version = "~> 2.6"
  host    = "npipe:////.//pipe//docker_engine"
}

resource "docker_image" "nginx-image" {
  name = "nginx"
}

resource "docker_container" "nginx" {
  image = docker_image.nginx-image.latest
  name  = "nginx"
  ports {
    internal = 80
    external = var.external_port
    protocol = "tcp"
  }
}

output "url" {
  description = "Browser URL for container site"
  value       = join(":", ["http://localhost", tostring(var.external_port)])
}