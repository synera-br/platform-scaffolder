terraform {
  required_version = ">= 1.4.5"
  required_providers {
    http = {
      source = "hashicorp/http"
      version = "3.4.5"
    }
  }

}

provider "http" {
  # Configuration options
}

