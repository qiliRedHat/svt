# WORKLOAD_TEMPLATE for custom workload of kube-burner
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export WORKLOAD_TEMPLATE=${WORKLOAD_TEMPLATE:-"${DIR}/../../kubeburner-object-templates/pod-reschedule.yaml"}
# ENVs to overwrite the kube-burner configuration file
export NAME=${NAME:-"pod-reschedule"}
export NAMESPACE=${NAMESPACE:-"pod-reschedule"}
export JOB_ITERATION=${JOB_ITERATION:-1}
export QPS=${QPS:-50}
export BURST=${BURST:-50}
# Other ENV needed by the test case script