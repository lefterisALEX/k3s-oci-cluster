resource "time_sleep" "wait_5_seconds" {
  depends_on = [
    oci_load_balancer_backend.k3s_kube_api_backend,
    oci_network_load_balancer_backend.k3s_http_backend,
    
  ]

  create_duration = "30s"
}