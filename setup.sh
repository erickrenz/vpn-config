#!/bin/bash

# Verify package manager
if [[ -e /bin/dnf || -e /usr/bin/dnf ]]; then
    echo "[1/4] Updating packages..."
    dnf upgrade -yq
else
    echo "The dnf package manager is required for this script."
    exit
fi

# Install andible dependencies
echo "[2/4] Installing dependencies..."
subscription-manager repos --enable codeready-builder-for-rhel-9-$(arch)-rpms
dnf install -yq https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm
dnf install -yq git 
dnf install -yq --enablerepo epel-playground ansible