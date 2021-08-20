terraform {
  required_providers {
    null = {
      source = "hashicorp/null"

      configuration_aliases = [
        null.alt,
      ]
    }
  }
}

resource "null_resource" "alt" {
  provider = null.alt
}
