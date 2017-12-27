variable "delay_seconds" {
  default     = 0
  description = "Delay in seconds for the delivery of the message"
}

variable "max_message_size" {
  # 256 KiB
  default     = 262144
  description = "Maximum message size in KiB"
}

variable "max_receive_count_for_dead_letter" {
  default     = 7
  description = "Number of deliveries before a message is sent to a dead letter queue"
}

variable "message_retention_seconds" {
  # 14 days
  default     = 1209600
  description = "Maximum time a message will be available in the queue"
}

variable "queue_name" {}

variable "receive_wait_time_seconds" {
  default     = 0
  description = "Time to wait for long polling"
}

variable "visibility_timeout_seconds" {
  default = 14400
}
