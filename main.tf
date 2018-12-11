resource "aws_sqs_queue" "default" {
  delay_seconds              = "${var.delay_seconds}"
  max_message_size           = "${var.max_message_size}"
  message_retention_seconds  = "${var.message_retention_seconds}"
  name                       = "${var.queue_name}"
  receive_wait_time_seconds  = "${var.receive_wait_time_seconds}"
  redrive_policy             = "{\"deadLetterTargetArn\":\"${aws_sqs_queue.deadletter.arn}\",\"maxReceiveCount\":${var.max_receive_count_for_dead_letter}}"
  visibility_timeout_seconds = "${var.visibility_timeout_seconds}"
  tags                       = "${var.tags}"
}

resource "aws_sqs_queue" "deadletter" {
  delay_seconds             = "${var.delay_seconds}"
  max_message_size          = "${var.max_message_size}"
  message_retention_seconds = "${var.message_retention_seconds}"
  name                      = "${var.queue_name}-deadletter"
  receive_wait_time_seconds = "${var.receive_wait_time_seconds}"
  tags                      = "${var.tags}"
}
