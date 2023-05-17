# vpn-config
An Ansible powered Wireguard VPN config. This playbook installs dependencies for RHEL using the `dnf` package manager. 

This goal of this project is to quickly get a vpn up and running by installing all of the required packages and configuration. No prerequisites are required other than running RHEL (Red Hat Enterprise Linux). 

## Getting Started

1. Create an AWS EC2 instance using a RHEL Gold Image. 
    - [RHEL](https://access.redhat.com/articles/3692431) 9.2 (Tested)
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

## PiVPN Quick Start

1. Create a new Debain/Ubuntu Instance.

2. Edit EC2 > Security Group > Inbound Rules
```
Add rule > Custom UDP > port 51820 > Create
```

3. Install PiVPN on server
```bash
sudo apt-get update -y && sudo apt-get upgrade -y
curl -L https://install.pivpn.io | bash
```

4. Complete PiVPN interactive config
  - Leave default options
  - Select Cloudflare for DNS

5. `pivpn add` devices and start using the vpn


Resources:
- [PiVPN](https://pivpn.io)
- [PiVPN WireGuard](https://docs.pivpn.io/wireguard/)

## Sources:

- [WireGuard](https://www.wireguard.com)
- [EPEL](https://docs.fedoraproject.org/en-US/epel/)