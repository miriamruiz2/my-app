# Data source para obtener información del Load Balancer
data "aws_lb" "k8s_lb" {
  name = "hello-kubernetes"
}
