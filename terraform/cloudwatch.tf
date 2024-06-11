resource "aws_cloudwatch_log_group" "lb_log_group" {
  name              = "/aws/elasticloadbalancing/${data.aws_lb.k8s_lb.name}"
  retention_in_days = 7
}

resource "aws_cloudwatch_metric_alarm" "alarm" {
  alarm_name          = "${var.cluster-name}-5xx-alarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "HTTPCode_ELB_5XX_Count"
  namespace           = "AWS/ApplicationELB"
  period              = "60"
  statistic           = "Sum"
  threshold           = "1"
  alarm_description   = "This metric monitors 5XX errors"
  dimensions = {
    LoadBalancer = data.aws_lb.k8s_lb.name
  }
  alarm_actions = var.alarm_actions
}
