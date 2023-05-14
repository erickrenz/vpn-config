# vpn-config
An Ansible powered Wireguard VPN config. This playbook installs dependencies for Fedora/CentOS/RHEL based Linux distros using the `dnf` package manager. 

This goal of this project is to quickly get a vpn up and running by installing all of the required packages and configuration. No prerequisites are required other than running a RHEL (Red Hat Enterprise Linux) based Linux distro. 

## Getting Started

### Download and Install

```bash
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/erickrenz/vpn-config/main/setup.sh)"
```