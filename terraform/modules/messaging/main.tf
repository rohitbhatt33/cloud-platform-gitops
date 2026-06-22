resource "aws_sns_topic" "notification" {
  name = var.topic_name
}

resource "aws_sqs_queue" "events" {
  name = var.queue_name
}

resource "aws_sns_topic_subscription" "queue_subscription" {
  topic_arn = aws_sns_topic.notification.arn
  protocol = "sqs"
  endpoint = aws_sqs_queue.events.arn
}