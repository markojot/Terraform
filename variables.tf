variable "tier-1-mgs" {
  description = "List of Tier 1 Management group names"
  type        = list(any)
  default     = ["mg-abcbs", "mg-sandbox"]

}

variable "tier-2-mgs" {
  description = "List of Tier 2 Management group names "
  type        = list(any)
  default     = ["mg-platform", "mg-production", "mg-staging", "mg-development"]
}

variable "tier-3-mgs" {
  description = "List of Tier 3 Management group names"
  type        = list(any)
  default     = ["mg-prod-hr", "mg-prod-marketing", "mg-IT", "mg-shared"]
}

