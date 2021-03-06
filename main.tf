resource "ibm_database" "database" {
  name              = "mq1-test"
  plan              = "standard"
  location          = "us-south"
 // resource_group_id = var.rg_id"


  tags = "${concat(var.database_tags, list("GIT_VERSION:1.0"))}"
  service = "messages-for-rabbitmq"
  version = "3.7"

  service_endpoints = "public-and-private"
  members_memory_allocation_mb = 3072
  members_disk_allocation_mb   = 3072

}

variable "database_tags" {
type = "list"
default = ["a:b", "c:d"]
}
