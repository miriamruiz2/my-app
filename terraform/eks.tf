resource "aws_eks_cluster" "hello_world" {
  name     = var.cluster-name
  role_arn = "arn:aws:iam::741208424656:role/LabRole"
  version  = "1.27"
  
  vpc_config {
    security_group_ids = [aws_security_group.k8s_cluster.id]
    subnet_ids         = aws_subnet.k8s_cluster[*].id
  }
}


