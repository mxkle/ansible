# ansible
ansible playbooks for testing/leaning purpose

# directory layout
```
ansible/
├── ansible.cfg
├── hosts
├── base
│   ├── base.yml
│   └── roles
│       └── base
│           ├── handlers
│           ├── tasks
│           └── vars
├── graylog
│   ├── graylog.yml
│   └── roles
│       ├── elasticsearch
│       │   ├── handlers
│       │   │   └── main.yml
│       │   ├── tasks
│       │   │   └── main.yml
│       │   └── vars
│       │       └── main.yml
│       ├── graylog
│       │   ├── handlers
│       │   │   └── main.yml
│       │   ├── tasks
│       │   │   └── main.yml
│       │   └── vars
│       │       └── main.yml
│       ├── ...
│       │   ├── ...
| ...
...
```

# usage
```
#to get every playbook + config files
git clone git://github.com/mxkle/ansible
#to get specifig playbooks, use snv

```
