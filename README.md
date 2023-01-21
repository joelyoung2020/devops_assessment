## devops_assessment
Assessment given as doctorly interview

#Task1
- The playbook to deploy on multiple remote servers that have to configured in the /etc/ansible/host file
- first made a directory on the remote node
- copied the docker-compose file from the local node to the remote node in the directory created
- cd into the directory
- run docker-compose up to deploy the stack


# Task2
- Create a provider.tf file which will contain all the required providers include version constraints if needed
- Create a main.tf which will contain the resources to be deployed for the terraform project. You can create TERRAFORM WORKSPACE for each enviroment and deploy the resources on them. With terraform workspace each enviroment is independent and isolated.
  If you using the same configuration to deploy different resources in each enviroment, you can use a map type variable to ensure each environment get the desired type of resource.
  
- Deploying aws_instance resource and aws_key_pair resource
- used provsioner block to copy docker-compose file into the ec2
- used user_data block in thside the aws_instance resource to install ansible 



# Task3
- If they are AWS ec2 instances, then installing AmazonCloudWatch agent on them  
- If they arent on the cloud then install and configure PROMETHEUS to scrap metrics from the endpoint of the various ubuntu instance using NODE EXPORTER installed on them, make sure you allows access to the port from the security groups on ec2 instances
- use grafana for better visualization
