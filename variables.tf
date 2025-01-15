variable "availability_zone" {
  description = "Availability zone of resources"
  type        = string
  default = "eu-north-1a" 
}

variable "access_key" { #Todo: uncomment the default value and add your access key.
        description = "Access key to AWS console"
        #default = "XXXXXXXXXXXXXX" 
}

variable "secret_key" {  #Todo: uncomment the default value and add your secert key.
        description = "Secret key to AWS console"
        # default = "XXXXXXXXXXXXXXXXXXXXXXXXX" 
}

variable "ami_key_pair_name" { #Todo: uncomment the default value and add your pem key pair name. Hint: don't write '.pem' exction just the key name
  default = "kube-key6" 
}

variable "region" {
        description = "The region zone on AWS"
        default = "eu-north-1" #The zone I selected is us-east-1, if you change it make sure to check if ami_id below is correct.
}

variable "ami_id" {
        description = "The AMI to use"
        default = "ami-075449515af5df0d1" #Ubuntu 20.04
}

variable "instance_type" {
        default = "t3.micro" #the best type to start k8s with it,
}
