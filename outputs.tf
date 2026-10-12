output "os_secret_backends_max_versions" {
  description = "Map of max_versions values across all os_secret_backends, keyed the same as var.os_secret_backends except keys with no max_versions are omitted"
  value       = { for k, v in vault_os_secret_backend.os_secret_backends : k => v.max_versions if v.max_versions != null }
}
output "os_secret_backends_mount" {
  description = "Map of mount values across all os_secret_backends, keyed the same as var.os_secret_backends except keys with no mount are omitted"
  value       = { for k, v in vault_os_secret_backend.os_secret_backends : k => v.mount if v.mount != null && length(v.mount) > 0 }
}
output "os_secret_backends_namespace" {
  description = "Map of namespace values across all os_secret_backends, keyed the same as var.os_secret_backends except keys with no namespace are omitted"
  value       = { for k, v in vault_os_secret_backend.os_secret_backends : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "os_secret_backends_ssh_host_key_trust_on_first_use" {
  description = "Map of ssh_host_key_trust_on_first_use values across all os_secret_backends, keyed the same as var.os_secret_backends except keys with no ssh_host_key_trust_on_first_use are omitted"
  value       = { for k, v in vault_os_secret_backend.os_secret_backends : k => v.ssh_host_key_trust_on_first_use if v.ssh_host_key_trust_on_first_use != null }
}

