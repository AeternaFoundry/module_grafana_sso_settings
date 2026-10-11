output "sso_settings_id" {
  description = "Map of id values across all sso_settings, keyed the same as var.sso_settings except keys with no id are omitted"
  value       = { for k, v in grafana_sso_settings.sso_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sso_settings_ldap_settings" {
  description = "Map of ldap_settings values across all sso_settings, keyed the same as var.sso_settings except keys with no ldap_settings are omitted"
  value       = { for k, v in grafana_sso_settings.sso_settings : k => one(v.ldap_settings) if v.ldap_settings != null && length(v.ldap_settings) > 0 }
  sensitive   = true
}
output "sso_settings_oauth2_settings" {
  description = "Map of oauth2_settings values across all sso_settings, keyed the same as var.sso_settings except keys with no oauth2_settings are omitted"
  value       = { for k, v in grafana_sso_settings.sso_settings : k => one(v.oauth2_settings) if v.oauth2_settings != null && length(v.oauth2_settings) > 0 }
  sensitive   = true
}
output "sso_settings_provider_name" {
  description = "Map of provider_name values across all sso_settings, keyed the same as var.sso_settings except keys with no provider_name are omitted"
  value       = { for k, v in grafana_sso_settings.sso_settings : k => v.provider_name if v.provider_name != null && length(v.provider_name) > 0 }
}
output "sso_settings_saml_settings" {
  description = "Map of saml_settings values across all sso_settings, keyed the same as var.sso_settings except keys with no saml_settings are omitted"
  value       = { for k, v in grafana_sso_settings.sso_settings : k => one(v.saml_settings) if v.saml_settings != null && length(v.saml_settings) > 0 }
  sensitive   = true
}

