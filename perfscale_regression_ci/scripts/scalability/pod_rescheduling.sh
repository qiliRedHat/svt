#/!/bin/bash
################################################
## Auth=qili@redhat.com
## Desription: Script for pod re-scheduling at scale with node resource exhaustion
## Polarion test case: OCP-19210
## https://polarion.engineering.redhat.com/polarion/#/project/OSE/workitem?id=OCP-19210&revision=14766861
## Cluster config: 3 master (m5.2xlarge or equivalent) with 50 workers (m5.xlarge or equivalent)
## kube-burner config: perfscale_regerssion_ci/kubeburner-object-templates/descheduler-evict-pvc.yml
################################################ 

source ../pod_rescheduling_env.sh
source ../../utils/run_workload.sh
source ../common.sh

# 40 pods-per-node for node-density-cni workload
echo "======Use kube-burner to load the cluster with test objects======"
run_workload

# Find a node to add load 
loaded_worker=$(oc get nodes -l node-role.kubernetes.io/worker= --no-headers -o name | head -n 1)
#oc debug node/${loaded_worker}



# if [[ $pod_count -eq 0 ]]; then
#   echo "PASS"
#   (( ++pass_or_fail ))
# else
#   echo "FAIL, expected less than 110 pods on worker node"
# fi
