# BlueELK
Creating and launching VMs on Azure to create web vms, an elk vm, kibana, and security monitoring. 
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Network Diagram](https://github.com/Geekinagi/BlueELK/blob/main/Ansible/Elk_NetworkDiagram.PNG)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the Ansible file may be used to install only certain pieces of it, such as Filebeat.

[Ansible Container Configuration](https://github.com/Geekinagi/BlueELK/blob/main/Ansible/ansible.cfg)
[Elk Install .yml](https://github.com/Geekinagi/BlueELK/blob/main/Ansible/ElkInstall.yml)
[Filebeat Configuration .yml](https://github.com/Geekinagi/BlueELK/blob/main/Ansible/filebeat-configuration.yml)
[Filebeat Playbook .yml](https://github.com/Geekinagi/BlueELK/blob/main/Ansible/filebeat-playbook.yml)
[Metricbeat Configuration .yml](https://github.com/Geekinagi/BlueELK/blob/main/Ansible/metricbeat-configuration.yml)
[Metricbeat Playbook .yml](https://github.com/Geekinagi/BlueELK/blob/main/Ansible/metricbeat-playbook.yml)


This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the DAMN Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
The load balancer allows for equal dispersion of traffic to the two web VMS, while the Jumpbox allows for a protected and separate from the web interface access point to ssh with the Web VMs.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the web facing system and the internal system status.
Filebeat is compiling and monitoring log data that is being sent from the two web VM's this was setup during the Filebeat configuration and playbook .ymls. The logs are then forwarded to Elasticsearch for monitoring and user friendly access.
Metricbeat is focusing on system and application and sends them to Elasticsearch for monitoring.

The configuration details of each machine may be found below.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux            |
| ELK      | Kibana   | 10.2.0.4   | Linux            |
| WEBVM-1  | DVWA     | 10.1.0.4   | Linux            |
| WEBVM-2  | DVWA     | 10.1.0.5   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet.
206.85.155.160
Only the JumpBox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:

Machines within the network can only be accessed by internal network SSH.
Which machine did you allow to access your ELK VM? What was its IP address?
Allowed access to the ELK VM from both 206.85.155.160 (Host computer) and 10.0.0.4 (JumpBox)

A summary of the access policies in place can be found in the Network Diagram (https://github.com/Geekinagi/BlueELK/blob/main/Ansible/Elk_NetworkDiagram.PNG)

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. This is advantageous because of the ability to scale easily and on several virtual machines at a time. One of the fundamental limitations being the processing power of the machine that is handling the deployments, if the processor power is too low there may be issues with deploying large numbers of machines simultaneously.

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
Install docker.
Download the docker image that is used for this exercise.
Attach the docker image.
Start the docker image.
Setup the configuration files for docker.
Once in the ansible container, run the playbook files.
This should be visible through the damn vulnerable website, otherwise there has been an error with the playbooks.

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.
(https://github.com/Geekinagi/BlueELK/blob/main/Ansible/Docker_ElkMachine.PNG)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
10.0.0.5
10.0.0.6

We have installed the following Beats on these machines:
Filebeat
Metricbeat

As mentioned earlier these Beats allow use to capture logons, systems commands that have been run on the individual machines, and web access that has occurred to the systems. While also allowing for system monitoring of the hardware itself, from cpu and memory usage to hard drive space that has been occupied.
### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned:

The network diagram has a useful image of the path that takes place to access the ansible container through docker, but for sake of ease this is a bit of a step by step.
1. SSH from host computer to your JumpBox machine. This machine has the given the public key access to the JumpBox machine.
2. Launch Docker to allow starting and attaching an ansible container. The JumpBox machine has generated a public access key and provided this to Azure such that the ansible container can attach to the WEBVMs through docker.
3. Attach to the ansible container, which should be able to use the configuration file to direct that changes that need to happen through the playbook files at the two WebVMs.
4. The log data that is now being generated on the WebVMs, because of the actions taken in step 3.
5. The log data is then sent from the WebVMs to the Elk virtual machine that is accessed through the web on the host computer to use Kibana to monitor the data that is being processed.## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Network Diagram](https://github.com/Geekinagi/BlueELK/blob/main/Ansible/Elk_NetworkDiagram.PNG)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the Ansible file may be used to install only certain pieces of it, such as Filebeat.

[Ansible Container Configuration](https://github.com/Geekinagi/BlueELK/blob/main/Ansible/ansible.cfg)
[Elk Install .yml](https://github.com/Geekinagi/BlueELK/blob/main/Ansible/ElkInstall.yml)
[Filebeat Configuration .yml](https://github.com/Geekinagi/BlueELK/blob/main/Ansible/filebeat-configuration.yml)
[Filebeat Playbook .yml](https://github.com/Geekinagi/BlueELK/blob/main/Ansible/filebeat-playbook.yml)
[Metricbeat Configuration .yml](https://github.com/Geekinagi/BlueELK/blob/main/Ansible/metricbeat-configuration.yml)
[Metricbeat Playbook .yml](https://github.com/Geekinagi/BlueELK/blob/main/Ansible/metricbeat-playbook.yml)


This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the DAMN Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
The load balancer allows for equal dispersion of traffic to the two web VMS, while the Jumpbox allows for a protected and separate from the web interface access point to ssh with the Web VMs.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the web facing system and the internal system status.
Filebeat is compiling and monitoring log data that is being sent from the two web VM's this was setup during the Filebeat configuration and playbook .ymls. The logs are then forwarded to Elasticsearch for monitoring and user friendly access.
Metricbeat is focusing on system and application and sends them to Elasticsearch for monitoring.

The configuration details of each machine may be found below.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux            |
| ELK      | Kibana   | 10.2.0.4   | Linux            |
| WEBVM-1  | DVWA     | 10.1.0.4   | Linux            |
| WEBVM-2  | DVWA     | 10.1.0.5   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet.
206.85.155.160
Only the JumpBox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:

Machines within the network can only be accessed by internal network SSH.
Which machine did you allow to access your ELK VM? What was its IP address?
Allowed access to the ELK VM from both 206.85.155.160 (Host computer) and 10.0.0.4 (JumpBox)

A summary of the access policies in place can be found in the Network Diagram (https://github.com/Geekinagi/BlueELK/blob/main/Ansible/Elk_NetworkDiagram.PNG)

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. This is advantageous because of the ability to scale easily and on several virtual machines at a time. One of the fundamental limitations being the processing power of the machine that is handling the deployments, if the processor power is too low there may be issues with deploying large numbers of machines simultaneously.

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
Install docker.
Download the docker image that is used for this exercise.
Attach the docker image.
Start the docker image.
Setup the configuration files for docker.
Once in the ansible container, run the playbook files.
This should be visible through the damn vulnerable website, otherwise there has been an error with the playbooks.

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.
(https://github.com/Geekinagi/BlueELK/blob/main/Ansible/Docker_ElkMachine.PNG)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
10.0.0.5
10.0.0.6

We have installed the following Beats on these machines:
Filebeat
Metricbeat

As mentioned earlier these Beats allow use to capture logons, systems commands that have been run on the individual machines, and web access that has occurred to the systems. While also allowing for system monitoring of the hardware itself, from cpu and memory usage to hard drive space that has been occupied.
### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned:

The network diagram has a useful image of the path that takes place to access the ansible container through docker, but for sake of ease this is a bit of a step by step.
1. SSH from host computer to your JumpBox machine. This machine has the given the public key access to the JumpBox machine.
2. Launch Docker to allow starting and attaching an ansible container. The JumpBox machine has generated a public access key and provided this to Azure such that the ansible container can attach to the WEBVMs through docker.
3. Attach to the ansible container, which should be able to use the configuration file to direct that changes that need to happen through the playbook files at the two WebVMs.
4. The log data that is now being generated on the WebVMs, because of the actions taken in step 3.
5. The log data is then sent from the WebVMs to the Elk virtual machine that is accessed through the web on the host computer to use Kibana to monitor the data that is being processed.
