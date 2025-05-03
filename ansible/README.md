# Ansible Project for Managing GCP Compute Instances

This project uses Ansible to manage and automate the deployment of services on GCP Compute Engines, including:
- GitLab Server
- GitLab Runners
- Harbor Registry

## Directory Structure
```
ansible/
├── inventory/
│   ├── inventory.ini                 # Inventory file defining target servers
├── playbooks/
│   ├── deploy_gitlab.yml             # Playbook to deploy GitLab Server
│   ├── deploy_gitlab_runners.yml     # Playbook to deploy GitLab Runners
│   ├── deploy_harbor.yml             # Playbook to deploy Harbor Registry
│   ├── backup.yml                    # Playbook to backup server data
│   ├── restore.yml                   # Playbook to restore server data
├── templates/
│   ├── gitlab.rb.j2                  # Template for GitLab configuration
│   ├── harbor.yml.j2                 # Template for Harbor configuration
├── roles/
│   ├── gitlab/
│   │   ├── tasks/
│   │   │   ├── main.yml              # Tasks for GitLab deployment
│   │   ├── templates/
│   │       ├── gitlab.rb.j2          # Template for GitLab configuration (role-specific)
│   ├── gitlab_runners/
│   │   ├── tasks/
│   │       ├── main.yml              # Tasks for GitLab Runners deployment
│   ├── harbor/
│       ├── tasks/
│           ├── main.yml              # Tasks for Harbor Registry deployment
├── group_vars/
│   ├── all.yml                       # Global variables for all hosts
│   ├── gitlab.yml                    # Variables specific to GitLab Server
│   ├── gitlab_runners.yml            # Variables specific to GitLab Runners
│   ├── harbor.yml                    # Variables specific to Harbor Registry
├── ansible.cfg                       # Ansible configuration file
└── README.md                         # Documentation for the Ansible project
```

## Usage

### Prerequisites
1. Install Ansible on your control node:
   ```bash
   sudo apt update
   sudo apt install ansible -y
   ```

2. Set up SSH access to all GCP instances.

### Running Playbooks
1. **Deploy GitLab Server**:
   ```bash
   ansible-playbook playbooks/deploy_gitlab.yml
   ```

2. **Deploy GitLab Runners**:
   ```bash
   ansible-playbook playbooks/deploy_gitlab_runners.yml
   ```

3. **Deploy Harbor Registry**:
   ```bash
   ansible-playbook playbooks/deploy_harbor.yml
   ```

4. **Backup Data**:
   ```bash
   ansible-playbook playbooks/backup.yml
   ```

5. **Restore Data**:
   ```bash
   ansible-playbook playbooks/restore.yml
   ```

## Variables
- Variables are defined in `group_vars/` and can be customized for each group of servers.

## License
MIT License

## Author
**@dinhcam89**