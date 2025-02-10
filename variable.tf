variable "location" {

}

variable "project_name" {

}

variable "environment" {

}

variable "sg_name" {

}
variable "description" {

}

variable "vpc_id" {

}

variable "commn_tags" {
  default = {}
}

variable "mysql_sg_tags" {
    default = {}
}

variable "backend_sg_tags" {
    default = {}
}

variable "frontend_sg_tags" {
    default = {}
}

variable "bastion_sg_tags" {
    default = {}
}