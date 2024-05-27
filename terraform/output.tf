################ MAIN ################

output "Jenkins_public_ip" {
  value = module.vpc.public_ip
}

# output "ssh_key_jenkins" {
#   value = module.secret.ssh_key_jenkins
#   sensitive = true
# }

# output "db_user_pass" {
#   value = module.secret.db_user_pass
#   sensitive = true
# }

output "database_private_ip" {
  value = module.database.database_private_ip[0].ip_address
}