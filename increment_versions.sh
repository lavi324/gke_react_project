#!/bin/bash

# Increment image tag
increment_image_tag() {
    local current_tag="$1"
    local incremented_tag=$(echo "$current_tag + 0.1" | bc)
    printf "%.1f" "$incremented_tag"  # Format to one decimal place
}

# Increment helm chart version
increment_helm_chart_version() {
    local current_version="$1"
    local major=$(echo "$current_version" | cut -d '.' -f 1)
    local minor=$(echo "$current_version" | cut -d '.' -f 2)
    local patch=$(echo "$current_version" | cut -d '.' -f 3)
    ((patch++))
    echo "$major.$minor.$patch"
}

# Jenkinsfile path
jenkinsfile_path="/home/doritalduby/Jenkinsfile"

# Get current image tag and increment
current_tag=$(awk -F "'" '/TAG/ {print $2}' "$jenkinsfile_path")
new_tag=$(increment_image_tag "$current_tag")

# Replace image tag in Jenkinsfile
sed -i "s/TAG = '$current_tag'/TAG = '$new_tag'/" "$jenkinsfile_path"
echo "Image tag updated from $current_tag to $new_tag."

# Get current helm chart version and increment
current_chart_version=$(awk -F '[.-]' '/helm push/ {print $4 "." $5 "." $6}' "$jenkinsfile_path")
new_chart_version=$(increment_helm_chart_version "$current_chart_version")

# Replace helm chart version in Jenkinsfile
sed -i "s/helm push my-react-chart-$current_chart_version.tgz/helm push my-react-chart-$new_chart_version.tgz/" "$jenkinsfile_path"
echo "Helm chart version updated from $current_chart_version to $new_chart_version."

echo "Image tag and helm chart version incremented."
