variable "os_secret_backends" {
  description = <<EOT
Map of os_secret_backends, attributes below
Required:
    - mount
Optional:
    - max_versions
    - namespace
    - ssh_host_key_trust_on_first_use
EOT

  type = map(object({
    mount                           = string
    max_versions                    = optional(number)
    namespace                       = optional(string)
    ssh_host_key_trust_on_first_use = optional(bool)
  }))
}

