provider "google" {
    project = "personal-320108"
    region = "asia-southeast1"
    zone = "asia-southeast1-a"
}

resource "google_cloud_identity_group" "group-example-1" {
  display_name         = "group-example-1"
  initial_group_config = "WITH_INITIAL_OWNER"

  parent = "customers/C043jufqt"

  group_key {
      id = "group-example-1@yesa.id"
  }

  labels = {
    "cloudidentity.googleapis.com/groups.discussion_forum" = ""
  }
}
