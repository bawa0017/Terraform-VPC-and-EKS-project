output "cluster-name" {
    value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "cluster_certificate_authority" {
  value = module.eks.cluster_certificate_authority_data
}

output "cluster_arn" {
  value = module.eks.cluster_arn
}

output "cluster_oidc_issuer" {
  value = module.eks.cluster_oidc_issuer_url
}
