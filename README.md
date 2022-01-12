# ASCN-Project
Aplicações e Serviços de Computação em Nuvem [21-22]

Para instalar dependências executar:

```bash
./dependencies.sh
```

Para correr o Playbook completo executar:

```bash
ansible-playbook playbook.yml
```

Para correr certas partes do Playbook executar:

```bash
ansible-playbook 1_vms_creation.yml
ansible-playbook 2_kubernetes_installation.yml
ansible-playbook 3_cluster_deployment.yml
ansible-playbook 3_cluster_deployment.yml
```
