resource "helm_release" "gitea" {
  name      = "${var.env}-${var.region}-${var.app}-release"
  namespace = kubernetes_namespace.gitea.metadata[0].name

  repository = "gitea-repo"
  chart      = "gitea"
  version    = "0.0.2"
}
