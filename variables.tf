variable "appsync_graphql_apis" {
  description = <<EOT
Map of appsync_graphql_apis, attributes below
Required:
    - authentication_type
    - name
Optional:
    - api_type
    - introspection_config
    - merged_api_execution_role_arn
    - query_depth_limit
    - region
    - resolver_count_limit
    - schema
    - tags
    - tags_all
    - visibility
    - xray_enabled
    - additional_authentication_provider (block):
        - authentication_type (required)
        - lambda_authorizer_config (optional, block):
            - authorizer_result_ttl_in_seconds (optional)
            - authorizer_uri (required)
            - identity_validation_expression (optional)
        - openid_connect_config (optional, block):
            - auth_ttl (optional)
            - client_id (optional)
            - iat_ttl (optional)
            - issuer (required)
        - user_pool_config (optional, block):
            - app_id_client_regex (optional)
            - aws_region (optional)
            - user_pool_id (required)
    - enhanced_metrics_config (block):
        - data_source_level_metrics_behavior (required)
        - operation_level_metrics_config (required)
        - resolver_level_metrics_behavior (required)
    - lambda_authorizer_config (block):
        - authorizer_result_ttl_in_seconds (optional)
        - authorizer_uri (required)
        - identity_validation_expression (optional)
    - log_config (block):
        - cloudwatch_logs_role_arn (required)
        - exclude_verbose_content (optional)
        - field_log_level (required)
    - openid_connect_config (block):
        - auth_ttl (optional)
        - client_id (optional)
        - iat_ttl (optional)
        - issuer (required)
    - user_pool_config (block):
        - app_id_client_regex (optional)
        - aws_region (optional)
        - default_action (required)
        - user_pool_id (required)
EOT

  type = map(object({
    authentication_type           = string
    name                          = string
    api_type                      = optional(string)
    introspection_config          = optional(string)
    merged_api_execution_role_arn = optional(string)
    query_depth_limit             = optional(number)
    region                        = optional(string)
    resolver_count_limit          = optional(number)
    schema                        = optional(string)
    tags                          = optional(map(string))
    tags_all                      = optional(map(string))
    visibility                    = optional(string)
    xray_enabled                  = optional(bool)
    additional_authentication_provider = optional(list(object({
      authentication_type = string
      lambda_authorizer_config = optional(object({
        authorizer_result_ttl_in_seconds = optional(number)
        authorizer_uri                   = string
        identity_validation_expression   = optional(string)
      }))
      openid_connect_config = optional(object({
        auth_ttl  = optional(number)
        client_id = optional(string)
        iat_ttl   = optional(number)
        issuer    = string
      }))
      user_pool_config = optional(object({
        app_id_client_regex = optional(string)
        aws_region          = optional(string)
        user_pool_id        = string
      }))
    })))
    enhanced_metrics_config = optional(object({
      data_source_level_metrics_behavior = string
      operation_level_metrics_config     = string
      resolver_level_metrics_behavior    = string
    }))
    lambda_authorizer_config = optional(object({
      authorizer_result_ttl_in_seconds = optional(number)
      authorizer_uri                   = string
      identity_validation_expression   = optional(string)
    }))
    log_config = optional(object({
      cloudwatch_logs_role_arn = string
      exclude_verbose_content  = optional(bool)
      field_log_level          = string
    }))
    openid_connect_config = optional(object({
      auth_ttl  = optional(number)
      client_id = optional(string)
      iat_ttl   = optional(number)
      issuer    = string
    }))
    user_pool_config = optional(object({
      app_id_client_regex = optional(string)
      aws_region          = optional(string)
      default_action      = string
      user_pool_id        = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.appsync_graphql_apis : (
        v.query_depth_limit == null || (v.query_depth_limit >= 0 && v.query_depth_limit <= 75)
      )
    ])
    error_message = "must be between 0 and 75"
  }
  validation {
    condition = alltrue([
      for k, v in var.appsync_graphql_apis : (
        v.resolver_count_limit == null || (v.resolver_count_limit >= 0 && v.resolver_count_limit <= 10000)
      )
    ])
    error_message = "must be between 0 and 10000"
  }
  # Note: 14 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

