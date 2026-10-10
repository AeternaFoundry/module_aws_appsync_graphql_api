output "appsync_graphql_apis_id" {
  description = "Map of id values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appsync_graphql_apis_additional_authentication_provider" {
  description = "Map of additional_authentication_provider values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => v.additional_authentication_provider if v.additional_authentication_provider != null && length(v.additional_authentication_provider) > 0 }
}
output "appsync_graphql_apis_api_type" {
  description = "Map of api_type values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => v.api_type if v.api_type != null && length(v.api_type) > 0 }
}
output "appsync_graphql_apis_arn" {
  description = "Map of arn values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "appsync_graphql_apis_authentication_type" {
  description = "Map of authentication_type values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => v.authentication_type if v.authentication_type != null && length(v.authentication_type) > 0 }
}
output "appsync_graphql_apis_enhanced_metrics_config" {
  description = "Map of enhanced_metrics_config values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => one(v.enhanced_metrics_config) if v.enhanced_metrics_config != null && length(v.enhanced_metrics_config) > 0 }
}
output "appsync_graphql_apis_introspection_config" {
  description = "Map of introspection_config values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => v.introspection_config if v.introspection_config != null && length(v.introspection_config) > 0 }
}
output "appsync_graphql_apis_lambda_authorizer_config" {
  description = "Map of lambda_authorizer_config values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => one(v.lambda_authorizer_config) if v.lambda_authorizer_config != null && length(v.lambda_authorizer_config) > 0 }
}
output "appsync_graphql_apis_log_config" {
  description = "Map of log_config values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => one(v.log_config) if v.log_config != null && length(v.log_config) > 0 }
}
output "appsync_graphql_apis_merged_api_execution_role_arn" {
  description = "Map of merged_api_execution_role_arn values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => v.merged_api_execution_role_arn if v.merged_api_execution_role_arn != null && length(v.merged_api_execution_role_arn) > 0 }
}
output "appsync_graphql_apis_name" {
  description = "Map of name values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => v.name if v.name != null && length(v.name) > 0 }
}
output "appsync_graphql_apis_openid_connect_config" {
  description = "Map of openid_connect_config values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => one(v.openid_connect_config) if v.openid_connect_config != null && length(v.openid_connect_config) > 0 }
}
output "appsync_graphql_apis_query_depth_limit" {
  description = "Map of query_depth_limit values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => v.query_depth_limit if v.query_depth_limit != null }
}
output "appsync_graphql_apis_region" {
  description = "Map of region values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => v.region if v.region != null && length(v.region) > 0 }
}
output "appsync_graphql_apis_resolver_count_limit" {
  description = "Map of resolver_count_limit values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => v.resolver_count_limit if v.resolver_count_limit != null }
}
output "appsync_graphql_apis_schema" {
  description = "Map of schema values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "appsync_graphql_apis_tags" {
  description = "Map of tags values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "appsync_graphql_apis_tags_all" {
  description = "Map of tags_all values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "appsync_graphql_apis_uris" {
  description = "Map of uris values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => v.uris if v.uris != null && length(v.uris) > 0 }
}
output "appsync_graphql_apis_user_pool_config" {
  description = "Map of user_pool_config values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => one(v.user_pool_config) if v.user_pool_config != null && length(v.user_pool_config) > 0 }
}
output "appsync_graphql_apis_visibility" {
  description = "Map of visibility values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => v.visibility if v.visibility != null && length(v.visibility) > 0 }
}
output "appsync_graphql_apis_xray_enabled" {
  description = "Map of xray_enabled values across all appsync_graphql_apis, keyed the same as var.appsync_graphql_apis"
  value       = { for k, v in aws_appsync_graphql_api.appsync_graphql_apis : k => v.xray_enabled if v.xray_enabled != null }
}

