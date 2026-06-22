module "storage" {

  source = "../../modules/storage"

  bucket_name = "cloud-platform-dev-state"
  table_name  = "cloud-platform-dev-lock"

}
module "secrets" {
  source = "../../modules/secrets"

  secret_name  = "database-password"
  secret_value = "SuperSecret123"
}

module "messaging" {
source = "../../modules/messaging"

topic_name = "cloud-platform-events"
queue_name = "cloud-platform-queue"
}