# kubernetes-flask-service
Ansible delivered clustered Flask web service ran through Kubernetes on AWS


## Service diagram
![Anagram_app](https://user-images.githubusercontent.com/48926225/56869980-4283f800-6a00-11e9-846a-3d8e047daf08.JPG)


## Notes
This code is designed to be run from a blank Centos7 EC2 Bastion instance. Before running ./controller.sh to spin up the service, there are a number of values that will need to be supplemented with your AWS credentials. Please see below for details.

## Usage
`./controller.sh`

## Prerequisites 
### ./controller.sh
Line 21: export AWS_ACCESS_KEY_ID= **AWS_ACCESS_KEY_HERE** (This value needs to be changed for your AWS IAM Access Key)
Line 22: export AWS_SECRET_KEY_ID= **AWS_SECRET_KEY_HERE** (This value needs to be changed for your AWS IAM Secret Key)

### ./roles/init_ec2/vars
Line 5: image: **CENTOS7_AMI_ID_HERE** (This value will need to be changed for an ami holding a blank Centos7 image)
Line 6: keypair: **EC2_KEYPAIR_HERE** (This value will need to be changed for the keypair to be used on your EC2s)
Line 9: export AWS_ACCESS_KEY_ID= **AWS_ACCESS_KEY_HERE** (This value needs to be changed for your AWS IAM Access Key)
Line 10: export AWS_SECRET_KEY_ID= **AWS_SECRET_KEY_HERE** (This value needs to be changed for your AWS IAM Secret Key)

### ssh-agent bash & ssh-add {keypair_pem}
For Ansible to access the newly provisioned EC2 instances for configuration, you will need to run `ssh-agent bash` & `ssh-add /path/to/your/keypair.pem`. This will enable your Bastion host to automatically connect out to remote servers using the key file when using ssh. 

### chmod 
Once project files exist on Bastion host, you will need to change a couple of permissions. Run `chmod +x ./controller` & `chmod +x inventory/ec2.py`

## Areas of improvement - to-do
This project does not set-up an Ingress controller for load balanced access to the K8s cluster. As it stands, the flask app can be accessed through `<worker_ec2_public_ip>:<k8s_service_nodeport_port>`
