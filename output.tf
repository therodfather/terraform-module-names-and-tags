output "upper_resource_name" {
  value       = local.upper_name
  description = "The Uppercase name prefix for the resource"
}

output "lower_resource_name" {
  value       = local.lower_name
  description = "The Lowercase name prefix for the resource"
}

output "upper_short_name" {
  value       = local.upper_short_name
  description = "The Short, Uppercase name prefix for the resource"
}

output "lower_short_name" {
  value       = local.lower_short_name
  description = "The Short, Lowercase name prefix for the resource"
}

output "tags" {
  value       = local.tags
  description = "A map of tags to be used on most resources"
}

output "tags_list" {
  value       = local.tags_list
  description = "A list of tags VALUES to be used on most resources where map types aren't supported"
}

output "short_tags" {
  value      = local.short_tags
 description = "A map of ONLY required tags to be used on resources with a lower number of allowed tags"
}
