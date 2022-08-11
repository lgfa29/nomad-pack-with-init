variable "job_name" {
  description = "The name to use as the job name which overrides using the pack name"
  type        = string
}

variable "version" {
  type = string
}

variable "count" {
  type    = number
  default = 1
}
