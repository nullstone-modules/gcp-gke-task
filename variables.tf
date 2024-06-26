variable "cpu" {
  type        = string
  default     = "0.5"
  description = <<EOF
The amount of CPUs to request and limit the service.
You can also specify milliCPU with a "m" suffix. For example, "0.5" equals "500m".
By default, this is set to 0.5 CPU.
EOF
}

variable "memory" {
  type        = string
  default     = "512Mi"
  description = <<EOF
The amount of memory to reserve and cap the service.
If the service exceeds this amount, the service will be killed with exit code 127 representing "Out-of-memory".
Memory is measured in Mi, or megabytes.
This means the default is 512 Mi or 0.5 Gi.
EOF
}

variable "command" {
  type        = list(string)
  default     = []
  description = <<EOF
This overrides the `CMD` specified in the image.
Specify a blank list to use the image's `CMD`.
Each token in the command is an item in the list.
For example, `echo "Hello World"` would be represented as ["echo", "\"Hello World\""].
EOF
}


