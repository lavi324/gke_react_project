#!/bin/bash
source config.sh

increment_version() {
    echo "$1 + 0.1" | bc | xargs printf "%.1f"
}

increment_patch_version() {
    IFS='.' read -r -a version <<< "$1"
    version[2]=$((version[2] + 1))
    echo "${version[0]}.${version[1]}.${version[2]}"
}

update_file() {
    local file_path=$1
    local search_pattern=$2
    local replace_pattern=$3
    sed -i "s/$search_pattern/$replace_pattern/" "$file_path"
}

# Update image tag in deployment.yaml
current_tag=$(awk '/image:/ {print $2}' "$DEPLOYMENT_YAML_PATH" | cut -d ':' -f 2)
new_tag=$(increment_version "$current_tag")
update_file "$DEPLOYMENT_YAML_PATH" "image: lavi324\/react_project:$current_tag" "image: lavi324\/react_project:$new_tag"

# Update image tag and helm chart version in Jenkinsfile
current_jenkins_tag=$(awk -F "'" '/TAG/ {print $2}' "$JENKINSFILE_PATH")
new_jenkins_tag=$(increment_version "$current_jenkins_tag")
update_file "$JENKINSFILE_PATH" "TAG = '$current_jenkins_tag'" "TAG = '$new_jenkins_tag'"

current_chart_version=$(awk -F '[.-]' '/helm push/ {print $4 "." $5 "." $6}' "$JENKINSFILE_PATH")
new_chart_version=$(increment_patch_version "$current_chart_version")
update_file "$JENKINSFILE_PATH" "helm push my-react-chart-$current_chart_version.tgz" "helm push my-react-chart-$new_chart_version.tgz"

# Update helm chart version in Chart.yaml
current_chart_version=$(awk '/version:/ {print $2}' "$CHART_YAML_PATH")
new_chart_version=$(increment_patch_version "$current_chart_version")
update_file "$CHART_YAML_PATH" "version: $current_chart_version" "version: $new_chart_version"

echo "Version updates complete."
