variable "storage accounts" {
  type        = map(object({
    rg_name = string
    storage_accounts = string
    description = "name of storage account"
}))
}
