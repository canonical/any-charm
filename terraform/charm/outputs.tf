# Copyright 2026 Canonical Ltd.
# See LICENSE file for licensing details.

output "application" {
  description = "The deployed application object."
  value       = juju_application.any_charm
}

output "provides" {
  description = "Map of the provided integration endpoints."
  value = {
    provide_aar = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-aar"
    }
    provide_agent_auth = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-agent-auth"
    }
    provide_airbyte_server = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-airbyte-server"
    }
    provide_alertmanager_dispatch = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-alertmanager-dispatch"
    }
    provide_alertmanager_remote_configuration = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-alertmanager-remote-configuration"
    }
    provide_anbox_stream_gateway = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-anbox-stream-gateway"
    }
    provide_any = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-any"
    }
    provide_apache_vhost_config = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-apache-vhost-config"
    }
    provide_apache_website = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-apache-website"
    }
    provide_arangodb = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-arangodb"
    }
    provide_auth_proxy = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-auth-proxy"
    }
    provide_autoscaling = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-autoscaling"
    }
    provide_aws_iam = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-aws-iam"
    }
    provide_aws_integration = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-aws-integration"
    }
    provide_azure_integration = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-azure-integration"
    }
    provide_barbican_hsm = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-barbican-hsm"
    }
    provide_barbican_secrets = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-barbican-secrets"
    }
    provide_baremetal = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-baremetal"
    }
    provide_bgp = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-bgp"
    }
    provide_bind_rndc = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-bind-rndc"
    }
    provide_block_storage = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-block-storage"
    }
    provide_cassandra = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-cassandra"
    }
    provide_catalogue = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-catalogue"
    }
    provide_ceilometer = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ceilometer"
    }
    provide_ceph_admin = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ceph-admin"
    }
    provide_ceph_bootstrap = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ceph-bootstrap"
    }
    provide_ceph_client = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ceph-client"
    }
    provide_ceph_dashboard = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ceph-dashboard"
    }
    provide_ceph_iscsi_admin_access = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ceph-iscsi-admin-access"
    }
    provide_ceph_mds = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ceph-mds"
    }
    provide_ceph_osd = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ceph-osd"
    }
    provide_ceph_radosgw = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ceph-radosgw"
    }
    provide_ceph_rbd_mirror = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ceph-rbd-mirror"
    }
    provide_certificate_transfer = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-certificate-transfer"
    }
    provide_cinder = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-cinder"
    }
    provide_cinder_backend = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-cinder-backend"
    }
    provide_cinder_backup = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-cinder-backup"
    }
    provide_cinder_ceph_key = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-cinder-ceph-key"
    }
    provide_cinder_gw = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-cinder-gw"
    }
    provide_cinder_nedge = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-cinder-nedge"
    }
    provide_cloudflared_route = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-cloudflared-route"
    }
    provide_config_server = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-config-server"
    }
    provide_container_runtime = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-container-runtime"
    }
    provide_containerd = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-containerd"
    }
    provide_containers = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-containers"
    }
    provide_cos_agent = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-cos-agent"
    }
    provide_cos_k8s_tokens = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-cos-k8s-tokens"
    }
    provide_dashboard = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-dashboard"
    }
    provide_dashboard_plugin = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-dashboard-plugin"
    }
    provide_db = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-db"
    }
    provide_db2 = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-db2"
    }
    provide_debug_ssh = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-debug-ssh"
    }
    provide_designate = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-designate"
    }
    provide_dex_oidc_config = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-dex-oidc-config"
    }
    provide_dns_record = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-dns-record"
    }
    provide_dns_transfer = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-dns-transfer"
    }
    provide_docker_registry = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-docker-registry"
    }
    provide_dockerhost = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-dockerhost"
    }
    provide_elastic_beats = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-elastic-beats"
    }
    provide_elasticsearch = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-elasticsearch"
    }
    provide_elasticsearch_datastore = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-elasticsearch-datastore"
    }
    provide_ephemeral_backend = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ephemeral-backend"
    }
    provide_etcd = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-etcd"
    }
    provide_etcd_proxy = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-etcd-proxy"
    }
    provide_event_service = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-event-service"
    }
    provide_external_cloud_provider = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-external-cloud-provider"
    }
    provide_external_provider = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-external-provider"
    }
    provide_fiveg_core_gnb = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-fiveg-core-gnb"
    }
    provide_fiveg_n2 = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-fiveg-n2"
    }
    provide_fluentbit = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-fluentbit"
    }
    provide_forward_auth = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-forward-auth"
    }
    provide_ftn_compiler = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ftn-compiler"
    }
    provide_gcp_integration = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-gcp-integration"
    }
    provide_generic_ip_port_user_pass = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-generic-ip-port-user-pass"
    }
    provide_giraph = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-giraph"
    }
    provide_github_runner_image_v0 = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-github-runner-image-v0"
    }
    provide_github_runner_planner_v0 = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-github-runner-planner-v0"
    }
    provide_glance = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-glance"
    }
    provide_glance_backend = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-glance-backend"
    }
    provide_glance_simplestreams_sync = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-glance-simplestreams-sync"
    }
    provide_glauth_auxiliary = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-glauth-auxiliary"
    }
    provide_gnocchi = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-gnocchi"
    }
    provide_grafana_auth = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-grafana-auth"
    }
    provide_grafana_cloud_config = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-grafana-cloud-config"
    }
    provide_grafana_dashboard = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-grafana-dashboard"
    }
    provide_grafana_datasource = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-grafana-datasource"
    }
    provide_grafana_datasource_exchange = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-grafana-datasource-exchange"
    }
    provide_grafana_metadata = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-grafana-metadata"
    }
    provide_grafana_source = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-grafana-source"
    }
    provide_guacd = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-guacd"
    }
    provide_hacluster = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-hacluster"
    }
    provide_haproxy_route = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-haproxy-route"
    }
    provide_heat_plugin_subordinate = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-heat-plugin-subordinate"
    }
    provide_http = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-http"
    }
    provide_http_proxy = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-http-proxy"
    }
    provide_httpd = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-httpd"
    }
    provide_hydra_endpoints = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-hydra-endpoints"
    }
    provide_influxdb_api = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-influxdb-api"
    }
    provide_infoblox = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-infoblox"
    }
    provide_ingress = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ingress"
    }
    provide_ingress_auth = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ingress-auth"
    }
    provide_ingress_per_unit = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ingress-per-unit"
    }
    provide_irc_bridge = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-irc-bridge"
    }
    provide_istio_gateway_info = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-istio-gateway-info"
    }
    provide_java = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-java"
    }
    provide_jenkins_agent_v0 = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-jenkins-agent-v0"
    }
    provide_jenkins_extension = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-jenkins-extension"
    }
    provide_jenkins_slave = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-jenkins-slave"
    }
    provide_k8s_cluster = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-k8s-cluster"
    }
    provide_k8s_service = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-k8s-service"
    }
    provide_kafka = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-kafka"
    }
    provide_kafka_client = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-kafka-client"
    }
    provide_kapacitor = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-kapacitor"
    }
    provide_karma_dashboard = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-karma-dashboard"
    }
    provide_keystone = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-keystone"
    }
    provide_keystone_admin = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-keystone-admin"
    }
    provide_keystone_credentials = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-keystone-credentials"
    }
    provide_keystone_domain_backend = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-keystone-domain-backend"
    }
    provide_keystone_fid_service_provider = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-keystone-fid-service-provider"
    }
    provide_keystone_middleware = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-keystone-middleware"
    }
    provide_keystone_notifications = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-keystone-notifications"
    }
    provide_kratos_info = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-kratos-info"
    }
    provide_kube_control = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-kube-control"
    }
    provide_kube_dns = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-kube-dns"
    }
    provide_kubeflow_dashboard_links = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-kubeflow-dashboard-links"
    }
    provide_kubernetes_cni = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-kubernetes-cni"
    }
    provide_kubernetes_info = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-kubernetes-info"
    }
    provide_landscape_hosted = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-landscape-hosted"
    }
    provide_ldap = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ldap"
    }
    provide_livepatch_pro_airgapped_server = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-livepatch-pro-airgapped-server"
    }
    provide_lldp = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-lldp"
    }
    provide_loadbalancer = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-loadbalancer"
    }
    provide_local_monitors = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-local-monitors"
    }
    provide_login_ui_endpoints = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-login-ui-endpoints"
    }
    provide_logs = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-logs"
    }
    provide_logstash_client = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-logstash-client"
    }
    provide_loki_push_api = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-loki-push-api"
    }
    provide_lte_core = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-lte-core"
    }
    provide_lxd = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-lxd"
    }
    provide_lxd_bgp = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-lxd-bgp"
    }
    provide_lxd_dns = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-lxd-dns"
    }
    provide_lxd_https = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-lxd-https"
    }
    provide_lxd_metrics = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-lxd-metrics"
    }
    provide_magma_orchestrator = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-magma-orchestrator"
    }
    provide_manila_plugin = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-manila-plugin"
    }
    provide_matrix_auth = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-matrix-auth"
    }
    provide_memcache = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-memcache"
    }
    provide_midonet = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-midonet"
    }
    provide_mongodb = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-mongodb"
    }
    provide_mongodb_client = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-mongodb-client"
    }
    provide_monitor = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-monitor"
    }
    provide_monitors = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-monitors"
    }
    provide_mount = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-mount"
    }
    provide_munin_node = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-munin-node"
    }
    provide_mysql = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-mysql"
    }
    provide_mysql_async = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-mysql-async"
    }
    provide_mysql_async_replication = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-mysql-async-replication"
    }
    provide_mysql_client = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-mysql-client"
    }
    provide_mysql_monitor = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-mysql-monitor"
    }
    provide_mysql_root = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-mysql-root"
    }
    provide_mysql_router = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-mysql-router"
    }
    provide_mysql_shared = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-mysql-shared"
    }
    provide_nats = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-nats"
    }
    provide_nedge = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-nedge"
    }
    provide_neutron_api = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-neutron-api"
    }
    provide_neutron_load_balancer = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-neutron-load-balancer"
    }
    provide_neutron_plugin = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-neutron-plugin"
    }
    provide_neutron_plugin_api = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-neutron-plugin-api"
    }
    provide_neutron_plugin_api_subordinate = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-neutron-plugin-api-subordinate"
    }
    provide_nginx_route = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-nginx-route"
    }
    provide_nova = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-nova"
    }
    provide_nova_ceilometer = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-nova-ceilometer"
    }
    provide_nova_cell = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-nova-cell"
    }
    provide_nova_compute = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-nova-compute"
    }
    provide_nova_vgpu = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-nova-vgpu"
    }
    provide_nova_vmware = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-nova-vmware"
    }
    provide_nrpe = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-nrpe"
    }
    provide_nrpe_external_master = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-nrpe-external-master"
    }
    provide_ntp = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ntp"
    }
    provide_oathkeeper_info = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-oathkeeper-info"
    }
    provide_oauth = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-oauth"
    }
    provide_object_storage = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-object-storage"
    }
    provide_odl_controller_api = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-odl-controller-api"
    }
    provide_oidc_client = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-oidc-client"
    }
    provide_openfga = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-openfga"
    }
    provide_opensearch_client = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-opensearch-client"
    }
    provide_openstack_integration = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-openstack-integration"
    }
    provide_openstack_loadbalancer = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-openstack-loadbalancer"
    }
    provide_ovsdb = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ovsdb"
    }
    provide_ovsdb_cluster = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ovsdb-cluster"
    }
    provide_ovsdb_cms = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ovsdb-cms"
    }
    provide_ovsdb_manager = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ovsdb-manager"
    }
    provide_ovsdb_subordinate = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ovsdb-subordinate"
    }
    provide_pacemaker_remote = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-pacemaker-remote"
    }
    provide_parca_scrape = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-parca-scrape"
    }
    provide_parca_store = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-parca-store"
    }
    provide_peer_cluster = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-peer-cluster"
    }
    provide_pgsql = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-pgsql"
    }
    provide_placement = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-placement"
    }
    provide_pod_defaults = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-pod-defaults"
    }
    provide_postfix_metrics = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-postfix-metrics"
    }
    provide_postgresql_async = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-postgresql-async"
    }
    provide_postgresql_client = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-postgresql-client"
    }
    provide_prolog_epilog = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-prolog-epilog"
    }
    provide_prometheus = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-prometheus"
    }
    provide_prometheus_manual = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-prometheus-manual"
    }
    provide_prometheus_remote_write = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-prometheus-remote-write"
    }
    provide_prometheus_rules = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-prometheus-rules"
    }
    provide_prometheus_scrape = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-prometheus-scrape"
    }
    provide_public_address = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-public-address"
    }
    provide_quantum = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-quantum"
    }
    provide_rabbitmq = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-rabbitmq"
    }
    provide_radosgw_multisite = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-radosgw-multisite"
    }
    provide_radosgw_user = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-radosgw-user"
    }
    provide_ranger_client = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ranger-client"
    }
    provide_redis = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-redis"
    }
    provide_register_application = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-register-application"
    }
    provide_rest = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-rest"
    }
    provide_s3 = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-s3"
    }
    provide_saml = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-saml"
    }
    provide_script_provider = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-script-provider"
    }
    provide_sdcore_config = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-sdcore-config"
    }
    provide_sdn_plugin = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-sdn-plugin"
    }
    provide_secrets = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-secrets"
    }
    provide_sentry_metrics = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-sentry-metrics"
    }
    provide_service_control = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-service-control"
    }
    provide_service_mesh = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-service-mesh"
    }
    provide_shards = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-shards"
    }
    provide_slurmd = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-slurmd"
    }
    provide_slurmdbd = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-slurmdbd"
    }
    provide_slurmrestd = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-slurmrestd"
    }
    provide_smtp = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-smtp"
    }
    provide_squid_auth_helper = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-squid-auth-helper"
    }
    provide_ssl_termination = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ssl-termination"
    }
    provide_statistics = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-statistics"
    }
    provide_stun_server = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-stun-server"
    }
    provide_swift = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-swift"
    }
    provide_swift_global_cluster = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-swift-global-cluster"
    }
    provide_swift_gw = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-swift-gw"
    }
    provide_swift_proxy = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-swift-proxy"
    }
    provide_syslog = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-syslog"
    }
    provide_telegraf_exec = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-telegraf-exec"
    }
    provide_temporal = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-temporal"
    }
    provide_thruk_agent = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-thruk-agent"
    }
    provide_tls_certificates = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-tls-certificates"
    }
    provide_tokens = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-tokens"
    }
    provide_tracing = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-tracing"
    }
    provide_traefik_route = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-traefik-route"
    }
    provide_trino_client = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-trino-client"
    }
    provide_ubuntu = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-ubuntu"
    }
    provide_udldap_userdata = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-udldap-userdata"
    }
    provide_untrusted_container_runtime = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-untrusted-container-runtime"
    }
    provide_user_group = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-user-group"
    }
    provide_vault_autounseal = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-vault-autounseal"
    }
    provide_vault_kv = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-vault-kv"
    }
    provide_vsd_rest_api = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-vsd-rest-api"
    }
    provide_vsphere_integration = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-vsphere-integration"
    }
    provide_web_publish = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-web-publish"
    }
    provide_websso_fid_service_provider = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-websso-fid-service-provider"
    }
    provide_websso_trusted_dashboard = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-websso-trusted-dashboard"
    }
    provide_xlc_compiler = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-xlc-compiler"
    }
    provide_zookeeper = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-zookeeper"
    }
    provide_zuul = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "provide-zuul"
    }
  }
}

output "requires" {
  description = "Map of the required integration endpoints."
  value = {
    dns_record = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "dns-record"
    }
    ingress = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "ingress"
    }
    ldap = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "ldap"
    }
    nginx_route = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "nginx-route"
    }
    redis = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "redis"
    }
    require_aar = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-aar"
    }
    require_agent_auth = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-agent-auth"
    }
    require_airbyte_server = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-airbyte-server"
    }
    require_alertmanager_dispatch = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-alertmanager-dispatch"
    }
    require_alertmanager_remote_configuration = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-alertmanager-remote-configuration"
    }
    require_anbox_stream_gateway = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-anbox-stream-gateway"
    }
    require_any = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-any"
    }
    require_apache_vhost_config = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-apache-vhost-config"
    }
    require_apache_website = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-apache-website"
    }
    require_arangodb = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-arangodb"
    }
    require_auth_proxy = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-auth-proxy"
    }
    require_autoscaling = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-autoscaling"
    }
    require_aws_iam = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-aws-iam"
    }
    require_aws_integration = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-aws-integration"
    }
    require_azure_integration = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-azure-integration"
    }
    require_barbican_hsm = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-barbican-hsm"
    }
    require_barbican_secrets = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-barbican-secrets"
    }
    require_baremetal = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-baremetal"
    }
    require_bgp = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-bgp"
    }
    require_bind_rndc = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-bind-rndc"
    }
    require_block_storage = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-block-storage"
    }
    require_cassandra = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-cassandra"
    }
    require_catalogue = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-catalogue"
    }
    require_ceilometer = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ceilometer"
    }
    require_ceph_admin = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ceph-admin"
    }
    require_ceph_bootstrap = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ceph-bootstrap"
    }
    require_ceph_client = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ceph-client"
    }
    require_ceph_dashboard = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ceph-dashboard"
    }
    require_ceph_iscsi_admin_access = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ceph-iscsi-admin-access"
    }
    require_ceph_mds = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ceph-mds"
    }
    require_ceph_osd = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ceph-osd"
    }
    require_ceph_radosgw = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ceph-radosgw"
    }
    require_ceph_rbd_mirror = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ceph-rbd-mirror"
    }
    require_certificate_transfer = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-certificate-transfer"
    }
    require_cinder = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-cinder"
    }
    require_cinder_backend = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-cinder-backend"
    }
    require_cinder_backup = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-cinder-backup"
    }
    require_cinder_ceph_key = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-cinder-ceph-key"
    }
    require_cinder_gw = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-cinder-gw"
    }
    require_cinder_nedge = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-cinder-nedge"
    }
    require_cloudflared_route = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-cloudflared-route"
    }
    require_config_server = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-config-server"
    }
    require_container_runtime = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-container-runtime"
    }
    require_containerd = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-containerd"
    }
    require_containers = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-containers"
    }
    require_cos_agent = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-cos-agent"
    }
    require_cos_k8s_tokens = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-cos-k8s-tokens"
    }
    require_dashboard = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-dashboard"
    }
    require_dashboard_plugin = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-dashboard-plugin"
    }
    require_db = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-db"
    }
    require_db2 = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-db2"
    }
    require_designate = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-designate"
    }
    require_dex_oidc_config = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-dex-oidc-config"
    }
    require_dns_record = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-dns-record"
    }
    require_dns_transfer = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-dns-transfer"
    }
    require_docker_registry = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-docker-registry"
    }
    require_dockerhost = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-dockerhost"
    }
    require_elastic_beats = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-elastic-beats"
    }
    require_elasticsearch = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-elasticsearch"
    }
    require_elasticsearch_datastore = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-elasticsearch-datastore"
    }
    require_ephemeral_backend = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ephemeral-backend"
    }
    require_etcd = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-etcd"
    }
    require_etcd_proxy = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-etcd-proxy"
    }
    require_event_service = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-event-service"
    }
    require_external_cloud_provider = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-external-cloud-provider"
    }
    require_external_provider = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-external-provider"
    }
    require_fiveg_core_gnb = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-fiveg-core-gnb"
    }
    require_fiveg_n2 = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-fiveg-n2"
    }
    require_fluentbit = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-fluentbit"
    }
    require_forward_auth = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-forward-auth"
    }
    require_ftn_compiler = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ftn-compiler"
    }
    require_gcp_integration = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-gcp-integration"
    }
    require_generic_ip_port_user_pass = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-generic-ip-port-user-pass"
    }
    require_giraph = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-giraph"
    }
    require_github_runner_image_v0 = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-github-runner-image-v0"
    }
    require_github_runner_planner_v0 = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-github-runner-planner-v0"
    }
    require_glance = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-glance"
    }
    require_glance_backend = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-glance-backend"
    }
    require_glance_simplestreams_sync = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-glance-simplestreams-sync"
    }
    require_glauth_auxiliary = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-glauth-auxiliary"
    }
    require_gnocchi = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-gnocchi"
    }
    require_grafana_auth = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-grafana-auth"
    }
    require_grafana_cloud_config = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-grafana-cloud-config"
    }
    require_grafana_dashboard = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-grafana-dashboard"
    }
    require_grafana_datasource = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-grafana-datasource"
    }
    require_grafana_datasource_exchange = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-grafana-datasource-exchange"
    }
    require_grafana_metadata = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-grafana-metadata"
    }
    require_grafana_source = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-grafana-source"
    }
    require_guacd = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-guacd"
    }
    require_hacluster = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-hacluster"
    }
    require_haproxy_route = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-haproxy-route"
    }
    require_haproxy_route_policy = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-haproxy-route-policy"
    }
    require_haproxy_route_tcp = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-haproxy-route-tcp"
    }
    require_heat_plugin_subordinate = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-heat-plugin-subordinate"
    }
    require_http = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-http"
    }
    require_http_proxy = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-http-proxy"
    }
    require_httpd = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-httpd"
    }
    require_hydra_endpoints = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-hydra-endpoints"
    }
    require_influxdb_api = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-influxdb-api"
    }
    require_infoblox = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-infoblox"
    }
    require_ingress = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ingress"
    }
    require_ingress_auth = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ingress-auth"
    }
    require_ingress_per_unit = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ingress-per-unit"
    }
    require_irc_bridge = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-irc-bridge"
    }
    require_istio_gateway_info = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-istio-gateway-info"
    }
    require_java = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-java"
    }
    require_jenkins_agent_v0 = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-jenkins-agent-v0"
    }
    require_jenkins_extension = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-jenkins-extension"
    }
    require_jenkins_slave = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-jenkins-slave"
    }
    require_k8s_cluster = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-k8s-cluster"
    }
    require_k8s_service = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-k8s-service"
    }
    require_kafka = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-kafka"
    }
    require_kafka_client = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-kafka-client"
    }
    require_kapacitor = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-kapacitor"
    }
    require_karma_dashboard = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-karma-dashboard"
    }
    require_keystone = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-keystone"
    }
    require_keystone_admin = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-keystone-admin"
    }
    require_keystone_credentials = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-keystone-credentials"
    }
    require_keystone_domain_backend = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-keystone-domain-backend"
    }
    require_keystone_fid_service_provider = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-keystone-fid-service-provider"
    }
    require_keystone_middleware = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-keystone-middleware"
    }
    require_keystone_notifications = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-keystone-notifications"
    }
    require_kratos_info = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-kratos-info"
    }
    require_kube_control = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-kube-control"
    }
    require_kube_dns = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-kube-dns"
    }
    require_kubeflow_dashboard_links = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-kubeflow-dashboard-links"
    }
    require_kubernetes_cni = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-kubernetes-cni"
    }
    require_kubernetes_info = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-kubernetes-info"
    }
    require_landscape_hosted = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-landscape-hosted"
    }
    require_ldap = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ldap"
    }
    require_livepatch_pro_airgapped_server = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-livepatch-pro-airgapped-server"
    }
    require_lldp = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-lldp"
    }
    require_loadbalancer = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-loadbalancer"
    }
    require_local_monitors = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-local-monitors"
    }
    require_login_ui_endpoints = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-login-ui-endpoints"
    }
    require_logs = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-logs"
    }
    require_logstash_client = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-logstash-client"
    }
    require_loki_push_api = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-loki-push-api"
    }
    require_lte_core = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-lte-core"
    }
    require_lxd = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-lxd"
    }
    require_lxd_bgp = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-lxd-bgp"
    }
    require_lxd_dns = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-lxd-dns"
    }
    require_lxd_https = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-lxd-https"
    }
    require_lxd_metrics = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-lxd-metrics"
    }
    require_magma_orchestrator = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-magma-orchestrator"
    }
    require_manila_plugin = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-manila-plugin"
    }
    require_matrix_auth = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-matrix-auth"
    }
    require_memcache = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-memcache"
    }
    require_midonet = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-midonet"
    }
    require_mongodb = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-mongodb"
    }
    require_mongodb_client = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-mongodb-client"
    }
    require_monitor = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-monitor"
    }
    require_monitors = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-monitors"
    }
    require_mount = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-mount"
    }
    require_munin_node = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-munin-node"
    }
    require_mysql = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-mysql"
    }
    require_mysql_async = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-mysql-async"
    }
    require_mysql_async_replication = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-mysql-async-replication"
    }
    require_mysql_client = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-mysql-client"
    }
    require_mysql_monitor = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-mysql-monitor"
    }
    require_mysql_root = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-mysql-root"
    }
    require_mysql_router = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-mysql-router"
    }
    require_mysql_shared = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-mysql-shared"
    }
    require_nats = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-nats"
    }
    require_nedge = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-nedge"
    }
    require_neutron_api = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-neutron-api"
    }
    require_neutron_load_balancer = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-neutron-load-balancer"
    }
    require_neutron_plugin = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-neutron-plugin"
    }
    require_neutron_plugin_api = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-neutron-plugin-api"
    }
    require_neutron_plugin_api_subordinate = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-neutron-plugin-api-subordinate"
    }
    require_nginx_route = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-nginx-route"
    }
    require_nova = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-nova"
    }
    require_nova_ceilometer = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-nova-ceilometer"
    }
    require_nova_cell = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-nova-cell"
    }
    require_nova_compute = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-nova-compute"
    }
    require_nova_vgpu = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-nova-vgpu"
    }
    require_nova_vmware = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-nova-vmware"
    }
    require_nrpe = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-nrpe"
    }
    require_nrpe_external_master = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-nrpe-external-master"
    }
    require_ntp = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ntp"
    }
    require_oathkeeper_info = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-oathkeeper-info"
    }
    require_oauth = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-oauth"
    }
    require_object_storage = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-object-storage"
    }
    require_odl_controller_api = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-odl-controller-api"
    }
    require_oidc_client = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-oidc-client"
    }
    require_opencti_connector = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-opencti-connector"
    }
    require_openfga = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-openfga"
    }
    require_opensearch_client = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-opensearch-client"
    }
    require_openstack_integration = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-openstack-integration"
    }
    require_openstack_loadbalancer = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-openstack-loadbalancer"
    }
    require_ovsdb = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ovsdb"
    }
    require_ovsdb_cluster = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ovsdb-cluster"
    }
    require_ovsdb_cms = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ovsdb-cms"
    }
    require_ovsdb_manager = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ovsdb-manager"
    }
    require_ovsdb_subordinate = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ovsdb-subordinate"
    }
    require_pacemaker_remote = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-pacemaker-remote"
    }
    require_parca_scrape = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-parca-scrape"
    }
    require_parca_store = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-parca-store"
    }
    require_peer_cluster = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-peer-cluster"
    }
    require_pgsql = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-pgsql"
    }
    require_placement = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-placement"
    }
    require_pod_defaults = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-pod-defaults"
    }
    require_postfix_metrics = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-postfix-metrics"
    }
    require_postgresql_async = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-postgresql-async"
    }
    require_postgresql_client = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-postgresql-client"
    }
    require_prolog_epilog = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-prolog-epilog"
    }
    require_prometheus = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-prometheus"
    }
    require_prometheus_manual = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-prometheus-manual"
    }
    require_prometheus_remote_write = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-prometheus-remote-write"
    }
    require_prometheus_rules = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-prometheus-rules"
    }
    require_prometheus_scrape = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-prometheus-scrape"
    }
    require_public_address = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-public-address"
    }
    require_quantum = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-quantum"
    }
    require_rabbitmq = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-rabbitmq"
    }
    require_radosgw_multisite = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-radosgw-multisite"
    }
    require_radosgw_user = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-radosgw-user"
    }
    require_ranger_client = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ranger-client"
    }
    require_redis = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-redis"
    }
    require_register_application = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-register-application"
    }
    require_rest = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-rest"
    }
    require_s3 = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-s3"
    }
    require_saml = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-saml"
    }
    require_script_provider = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-script-provider"
    }
    require_sdcore_config = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-sdcore-config"
    }
    require_sdn_plugin = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-sdn-plugin"
    }
    require_secrets = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-secrets"
    }
    require_sentry_metrics = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-sentry-metrics"
    }
    require_service_control = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-service-control"
    }
    require_service_mesh = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-service-mesh"
    }
    require_shards = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-shards"
    }
    require_slurmd = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-slurmd"
    }
    require_slurmdbd = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-slurmdbd"
    }
    require_slurmrestd = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-slurmrestd"
    }
    require_smtp = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-smtp"
    }
    require_squid_auth_helper = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-squid-auth-helper"
    }
    require_ssl_termination = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ssl-termination"
    }
    require_statistics = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-statistics"
    }
    require_stun_server = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-stun-server"
    }
    require_swift = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-swift"
    }
    require_swift_global_cluster = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-swift-global-cluster"
    }
    require_swift_gw = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-swift-gw"
    }
    require_swift_proxy = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-swift-proxy"
    }
    require_syslog = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-syslog"
    }
    require_telegraf_exec = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-telegraf-exec"
    }
    require_temporal = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-temporal"
    }
    require_thruk_agent = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-thruk-agent"
    }
    require_tls_certificates = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-tls-certificates"
    }
    require_tokens = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-tokens"
    }
    require_tracing = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-tracing"
    }
    require_traefik_route = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-traefik-route"
    }
    require_trino_client = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-trino-client"
    }
    require_ubuntu = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-ubuntu"
    }
    require_udldap_userdata = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-udldap-userdata"
    }
    require_untrusted_container_runtime = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-untrusted-container-runtime"
    }
    require_user_group = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-user-group"
    }
    require_vault_autounseal = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-vault-autounseal"
    }
    require_vault_kv = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-vault-kv"
    }
    require_vsd_rest_api = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-vsd-rest-api"
    }
    require_vsphere_integration = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-vsphere-integration"
    }
    require_web_publish = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-web-publish"
    }
    require_websso_fid_service_provider = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-websso-fid-service-provider"
    }
    require_websso_trusted_dashboard = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-websso-trusted-dashboard"
    }
    require_xlc_compiler = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-xlc-compiler"
    }
    require_zookeeper = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-zookeeper"
    }
    require_zuul = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "require-zuul"
    }
    saml = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "saml"
    }
    send_ca_cert = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "send-ca-cert"
    }
    smtp = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "smtp"
    }
    smtp_legacy = {
      kind     = "endpoint"
      name     = juju_application.any_charm.name
      endpoint = "smtp-legacy"
    }
  }
}
