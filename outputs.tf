output "deadletter_arn" {
  value = "${aws_sqs_queue.deadletter.arn}"
}

output "deadletter_url" {
  value = "${aws_sqs_queue.deadletter.id}"
}

output "queue_arn" {
  value = "${aws_sqs_queue.default.arn}"
}

output "queue_url" {
  value = "${aws_sqs_queue.default.id}"
}
