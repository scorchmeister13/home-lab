# DEBAIN TO UBUNTU MAPPING
# DEBIAN 12 (BOOKWORM) --> UBUNTU 22.04 (JAMMY)
# DEBIAN 11 (BULLSEYE) --> UBUNTU 20.03 (FOCAL)
# DEBAIN 10 (BUSTER)   --> UBUNTU 18.03 (BIONIC)

UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible
