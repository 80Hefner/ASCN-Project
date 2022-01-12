# ASCN-Project
Aplicações e Serviços de Computação em Nuvem [21-22]

<hr>

Para instalar dependências executar:

```bash
./dependencies.sh
```

Para correr o Playbook completo executar:

```bash
cd /etc/ansible
ansible-playbook playbook.yml
```

Para correr certas partes do Playbook executar:

```bash
cd /etc/ansible
ansible-playbook 1_vms_creation.yml
ansible-playbook 2_kubernetes_installation.yml
ansible-playbook 3_cluster_deployment.yml
ansible-playbook 4_monitoring_deployment.yml
```
