variable "storage accounts" {
  type        = map(object({
    rg_name = string
    storage_name = string
    description = "name of storage account"
}))
}
