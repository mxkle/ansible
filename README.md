# ansible
ansible playbooks for testing/leaning purpose

# directory layout
```
.
├── ansible.cfg
├── base.yml
├── elasticsearch.yml
├── hosts
├── init_ansible.sh
├── README.md
└── roles
    ├── base
    │   ├── handlers
    │   │   └── main.yml
    │   ├── tasks
    │   │   └── main.yml
    │   └── vars
    │       └── main.yml
    ├── elasticsearch
    │   ├── handlers
    │   │   └── main.yml
    │   ├── tasks
    │   │   └── main.yml
    │   ├── templates
    │   │   └── elasticsearch.yml.j2
    │   └── vars
    │       └── main.yml
    ...
```

# usage
```
#to get every playbook + config files
git clone git://github.com/mxkle/ansible
#to get specific playbooks, use svn
svn export https://github.com/mxkle/ansible/trunk/<role>
```
