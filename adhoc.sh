ansible all -b -m user -a "name=automation" -u root
ansible all -b -m file -a "path=/home/automation/.ssh/ state=directory owner=automation" -u root
ansible all -b -m copy -a "src=/home/automation/.ssh/id_rsa.pub dest=/home/automation/.ssh/authorized_keys" -u root
ansible all -b -m lineinfile -a "path=/etc/sudoers line='automation    ALL=(ALL)       NOPASSWD:ALL'" -u root

