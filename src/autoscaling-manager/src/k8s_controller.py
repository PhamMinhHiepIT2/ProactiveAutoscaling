from kubernetes import client, config


from config import KUBECONFIG_FILE, DEPLOYMENT_NAME, K8S_NAMESPACE
config.load_kube_config(config_file=KUBECONFIG_FILE)
v1_client = client.CoreV1Api()


def scale_deployment(replicas: int):
    body = {'spec': {'replicas': replicas}}
    api_res = v1_client.patch_namespaced_replication_controller_scale(
        name=DEPLOYMENT_NAME, namespace=K8S_NAMESPACE, body=body, pretty=True)
    print(api_res)