resource "aws_eks_node_group" "hello_world" {
  cluster_name    = aws_eks_cluster.hello_world.name
  node_group_name = "hello_world"
  node_role_arn   = "arn:aws:iam::741208424656:role/LabRole"
  subnet_ids      = aws_subnet.k8s_cluster[*].id
 
  scaling_config {
    desired_size = 3
    max_size     = 3
    min_size     = 3
  }

  instance_types = [ "t3.medium" ]
}