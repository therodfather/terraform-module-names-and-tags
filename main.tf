locals {
  upper_name       = upper("${var.application_name}${var.delimiter}${var.service_name}${var.delimiter}${var.application_id}${var.delimiter}${var.workspace}")
  lower_name       = lower("${var.application_name}${var.delimiter}${var.service_name}${var.delimiter}${var.application_id}${var.delimiter}${var.workspace}")
  upper_short_name = upper("${var.application_name}${var.delimiter}${var.service_name}${var.delimiter}${var.workspace}")
  lower_short_name = lower("${var.application_name}${var.delimiter}${var.service_name}${var.delimiter}${var.workspace}")

  short_tags = "${merge(
    map("application_id", "${var.application_id}"),
    map("application_name", "${var.application_name}"),
    map("workspace", "${var.workspace}"),
    map("data_classification", "${var.data_classification}"),
    map("owner", "${var.owner}"),
    map("service_name", "${var.service_name}"),
    map("managed_by", "terraform"),
    map("environment", "${var.environment}"),
    map("issrcl_level", "${var.issrcl_level}"),
    )
  }"

  tags = "${merge(
    local.short_tags,
    map("scm_project", "${var.scm_project}"),
    map("scm_repo", "${var.scm_repo}"),
    map("scm_branch", "${var.scm_branch}"),
    map("scm_commit_id", "${var.scm_commit_id}"),
    var.additional_tags
    )
  }"

  tags_list = distinct(
    concat(
      [
        var.application_id,
        var.application_name,
        var.workspace,
        var.data_classification,
        var.owner,
        var.service_name,
        var.environment,
        var.scm_project,
        var.scm_repo,
        var.scm_branch,
        var.issrcl_level,
        var.scm_commit_id,
        "terraform"
      ],
      values(var.additional_tags)
    )
  )
}
