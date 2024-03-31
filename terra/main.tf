provider "google" {
  project = "circular-gist-416512"
  region  = "us-central1"

  credentials = file("circular-gist-416512-92c70c59decc.json")
}

resource "google_cloud_run_service" "my_service" {
  name     = "my-cloud-run-service"
  location = "us-central1"

  template {
    spec {
      containers {
        image = "docker.io/lavi324/git_hub_actions:0.2"

        # Ensure that your container listens on port 9119
        ports {
          container_port = 9119
        }
      }
    }
  }

  # No need to specify the port here. Cloud Run will automatically route traffic to port 9119 of the container.
}
