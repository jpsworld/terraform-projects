#vpc variables
variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "vpc cidr block"
  type        = string
}


variable "public_subnet_az1_cidr" {
  default     = "10.0.0.0/24"
  description = "public subnet az1 cidr block"
  type        = string
}

variable "public_subnet_az2_cidr" {
  default     = "10.0.1.0/24"
  description = "public subnet az2 cidr block"
  type        = string
}

variable "private_app_subnet_az1" {
  default     = "10.0.2.0/24"
  description = "private app subnet az1 cidr block"
  type        = string
}

variable "private_app_subnet_az2" {
  default     = "10.0.3.0/24"
  description = "private app subnet az2 cidr block"
  type        = string
}

variable "private_data_subnet_az1" {
  default     = "10.0.4.0/24"
  description = "private data subnet az1 cidr block"
  type        = string
}

variable "private_data_subnet_az2" {
  default     = "10.0.5.0/24"
  description = "private data subnet az2 cidr block"
  type        = string
}

#security group variables
variable "ssh_location" {
  default     = "0.0.0.0/0"
  description = "IP address that can ssh into EC2 instances"
  type        = string
}

#rds variables
#get ARN from db snapshots for default value
variable "database_snapshot_identifier" {
  default     = ""
  description = "database snapshot arn"
  type        = string
}

variable "database_instance_class" {
  default     = "db.t2.micro"
  description = "database instance type"
  type        = string
}

#get instance identifier from db snapshots for default value
variable "database_instance_identifier" {
  default     = "dev-rds-db"
  description = "database instance identifier"
  type        = string
}

variable "multi_az_deployment" {
  default     = false
  description = "create a stanby db instance"
  type        = bool
}

#application load balancer variables
#get the ARN value from the certificate manager
variable "ssl_certificate_arn" {
  default = ""
  description = "SSL certificate arn"
  type = string
}
