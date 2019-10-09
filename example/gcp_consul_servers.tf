module "gcp_consul_servers" {
  source = "../"

  dc_net          = var.dc_net_gcp
  public_key_path = var.public_key_path
  server_count    = var.server_count_gcp
  subnet-vm       = subnet_vm
  gcp_image       = var.gcp_image
}