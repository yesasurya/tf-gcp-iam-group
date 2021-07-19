provider "google" {
    project = "mh-dev-320110"
    region = "asia-southeast1"
    zone = "asia-southeast1-a"
}

resource "google_cloud_identity_group" "group-example-100" {
  display_name         = "group-example-100"
  initial_group_config = "WITH_INITIAL_OWNER"

  parent = "customers/C014xwqob"

  group_key {
      id = "group-example-100@testhousing.online"
  }

  labels = {
    "cloudidentity.googleapis.com/groups.discussion_forum" = ""
  }
}
