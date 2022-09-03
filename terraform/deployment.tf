resource "kubernetes_deployment" "nginx" {
  metadata {
    name      = "nginx-tf"
    namespace = "kube-deploy-examples"
  }
  spec {
    selector {
        match_labels = {
          "app" = "nginx-tf"
        }
    }
    replicas = 1
    template {
      metadata {
        labels = {
          "app" = "nginx-tf"
        }
      }
      spec {
        container {
          name  = "nginx"
          image = "nginx:1.23.1"
          port {
            container_port = 80
          }
        }
      }
    }
  }
}
