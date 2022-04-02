resource "google_artifact_registry_repository" "spotmusic-repo" {
  provider = google-beta

  location = "us-central1"
  repository_id = "spotmusic"
  description = "Imagens Docker para SpotMusic app"
  format = "DOCKER"
}

resource "google_sql_database" "database" {
  name     = "spotmusic-database"
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_database_instance" "instance" {
  name             = "spotmusic-instance"
  region           = "us-central1"
  database_version = "MYSQL_5_7"
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection  = "true"
}

resource "google_sql_user" "users" {
  name     = "spotmusic-tfuser"
  host     = ""
  instance = google_sql_database_instance.instance.name
}