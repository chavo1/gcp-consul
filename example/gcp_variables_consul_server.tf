variable "server_count_gcp" {
  default = 2
}
variable "dc_net_gcp" {
  default = 32
}
variable "public_key_path" {
  description = "Path to SSH public key to be attached to cloud instances"
  default     = "~/.ssh/id_rsa.pub"
}
variable "gcp_image" {
  description = "GCP Image with consul installed"
  default     = "projects/sup-eng-eu/global/images/packer-1563530504"
}
variable "subnet_vm" {
  default = "projects/sup-eng-eu/regions/us-east4/subnetworks/subnet-vm"
}
