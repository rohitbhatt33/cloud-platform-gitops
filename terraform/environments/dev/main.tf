module "storage" {

  source = "../../modules/storage"

  bucket_name = "cloud-platform-dev-state"
  table_name= "cloud-platform-dev-lock"

}
