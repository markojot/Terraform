variable "mg-names" {
  description = "List of management group names to be created "
  type    = map
  default = {for x in ["TEST1", "TEST2", "TEST3"] : x => x
  }
}

variable "mg-child-names" {
  description = "List of management group names to be created "
  type    = map
  default = {for x in ["child1", "child2", "child4"] : x => x
  }
}

variable "parent-mg" {
    description = "Name of the parent management group"
    type    = string
    default = "parent-mg"
  
}