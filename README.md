# vpn-config
An Ansible powered Wireguard VPN config. This playbook installs dependencies for RHEL using the `dnf` package manager. 

This goal of this project is to quickly get a vpn up and running by installing all of the required packages and configuration. No prerequisites are required other than running RHEL (Red Hat Enterprise Linux). 

## Getting Started

1. Create an AWS EC2 instance using a RHEL Gold Image. 
    - RHEL 9.2 (Tested)
    - CentOS Stream 9 (Alternative)

2. SSH into the EC2 instance and run the following commands:

```bash
sudo subscription-manager register
sudo subscription-manager repos --enable codeready-builder-for-rhel-9-$(arch)-rpms
```

3. On your local machine (not EC2), create a ssh config entry for the remote server:

```yaml
Host vpn1
  HostName 123.456.789.012
  User username
  IdentityFile /path/to/key.pem
```

4. On your local machine (not EC2), run the playbook

```bash
ansible-playbook playbook.yaml
```

## Sources:

- [WireGuard](https://www.wireguard.com)
- [EPEL](https://docs.fedoraproject.org/en-US/epel/)