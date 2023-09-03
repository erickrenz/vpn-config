# PiVPN Quick Start

1. Create a new Debain/Ubuntu Instance.

2. Edit EC2 > Security Group > Inbound Rules
```
Add rule > Custom UDP > port 51820 > ipv4 0.0.0.0 > Create
Add rule > Custom UDP > port 51820 > ipv6 ::0 > Create
```

3. Install PiVPN on server
```bash
sudo apt-get update -y && sudo apt-get upgrade -y
curl -L https://install.pivpn.io | bash
```

4. Complete PiVPN interactive config
  - Select Wireguard (not OpenVPN)
  - Leave default options
  - Select Cloudflare for DNS

5. `pivpn add` devices and start using the vpn


## Sources:
- [PiVPN](https://pivpn.io)
- [PiVPN WireGuard](https://docs.pivpn.io/wireguard/)
- [Fedora Network Manager](https://fedoramagazine.org/configure-wireguard-vpns-with-networkmanager/)
- [WireGuard](https://www.wireguard.com)
