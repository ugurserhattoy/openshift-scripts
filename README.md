# openshift-scripts
OpenShift Scripts


## find-operator-related-job-configmap.sh
The script is useful while troubleshooting openshift operators & their installation. 

When the time comes, the script will save you from searching more than one hundred jobs and configmaps.

### How to Use

```bash
# Download the sh file to local
wget https://raw.githubusercontent.com/ugurserhattoy/openshift-scripts/main/find_operator_related_job_configmap/find-operator-related-job-configmap.sh

# Make it executable
chmod +x find-operator-job-configmap.sh

# Execute script with the operator name (or a unique part of it) as following
./find-operator-related-job-configmap.sh <operator_name>

# After execution script will create 2 files for the list of jobs and configmaps
# Files are include-job.list configmap-job.list
```
