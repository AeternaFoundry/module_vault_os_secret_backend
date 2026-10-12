resource "vault_os_secret_backend" "os_secret_backends" {
  for_each = var.os_secret_backends

  mount                           = each.value.mount
  max_versions                    = each.value.max_versions
  namespace                       = each.value.namespace
  ssh_host_key_trust_on_first_use = each.value.ssh_host_key_trust_on_first_use
}

