output "sns_topic_arn" {
  value = aws_sns_topic.notification.arn
}

output "sqs_queue_url" {
  value = aws_sqs_queue.events.url
}