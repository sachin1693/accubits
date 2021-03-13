variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "project_name" {
  description = "Name of the project. Used in resource names and tags."
  type        = string
  default     = "client-webapp"
}

variable "environment" {
  description = "Value of the 'Environment' tag."
  type        = string
  default     = "dev"
}

variable "public_subnets_per_vpc" {
  description = "Number of public subnets. Maximum of 16."
  type        = number
  default     = 2
}

variable "private_subnets_per_vpc" {
  description = "Number of private subnets. Maximum of 16."
  type        = number
  default     = 2
}

variable "instance_type" {
  description = "Type of EC2 instance to use."
  type        = string
  default     = "t2.micro"
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_blocks" {
  description = "Available cidr blocks for public subnets"
  type        = list(string)
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24",
    "10.0.4.0/24",
    "10.0.5.0/24",
    "10.0.6.0/24",
    "10.0.7.0/24",
    "10.0.8.0/24",
    "10.0.9.0/24",
    "10.0.10.0/24",
    "10.0.11.0/24",
    "10.0.12.0/24",
    "10.0.13.0/24",
    "10.0.14.0/24",
    "10.0.15.0/24",
    "10.0.16.0/24"
  ]
}

variable "private_subnet_cidr_blocks" {
  description = "Available cidr blocks for private subnets"
  type        = list(string)
  default = [
    "10.0.101.0/24",
    "10.0.102.0/24",
    "10.0.103.0/24",
    "10.0.104.0/24",
    "10.0.105.0/24",
    "10.0.106.0/24",
    "10.0.107.0/24",
    "10.0.108.0/24",
    "10.0.109.0/24",
    "10.0.110.0/24",
    "10.0.111.0/24",
    "10.0.112.0/24",
    "10.0.113.0/24",
    "10.0.114.0/24",
    "10.0.115.0/24",
    "10.0.116.0/24"
  ]
}

# RDS

variable "identifier" {
  description = " RDS Identifier for DB"
  type        = string
  default     = "demodb"
}

variable "engine" {
  description = " RDS SQL Engine"
  type        = string
  default     = "mysql"
}

variable "engine_version" {
  description = " RDS SQL Engine"
  type        = string
  default     = "8.0.15"
}

variable "instance_class" {
  description = "RDS SQL Instance"
  type        = string
  default     = "db.t2.micro"
}

variable "allocated_storage" {
  description = "RDS SQL Storage"
  type        = number
  default     = "5"
}

variable "storage_encrypted" {
  description = "RDS SQL Storage"
  type        = string
  default     = "false" # not supported for db.t2.micro instance
}

variable "rds_name" {
  description = "RDS SQL database name"
  type        = string
  default     = "demodb" 
}

variable "rds_username" {
  description = "RDS SQL Username"
  type        = string
  default     = "user1" 
}

variable "rds_password" {
  description = "RDS SQL Username"
  type        = string
  default     = "YourPwdShouldBeLongAndSecure!" 
}

variable "rds_port" {
  description = "RDS SQL Port"
  type        = number
  default     = "3306" 
}

variable "rds_maintenance_window" {
  description = "SQL Server Maintenance window"
  type        = string
  default     = "Mon:00:00-Mon:03:00" 
}

variable "rds_backup_window" {
  description = "SQL Server backup window"
  type        = string
  default     = "10:46-11:16" 
}

variable "rds_backup_retention_period" {
  description = "SQL Server backup window"
  type        = number
  default     = "7" 
}

variable "rds_publicly_accessible" {
  description = "SQL Server publis acceess"
  type        = string
  default     = "false" 
}

variable "rds_final_snapshot_identifier" {
  description = "SQL Server Snapshot "
  type        = string
  default     = "demodb-snapshot"   # Snapshot name upon DB deletion
}

