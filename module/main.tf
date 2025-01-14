module rds {
    source = "Edwardmd10/rdsinstance/aws"
    region               = "us-east-1"
    allocated_storage    = 20
    engine               = "mysql"
    engine_version       = "5.7"
    instance_class       = "db.t3.micro"
    db_name              = "mydb"
    username             = "foo"
    publicly_accessible  = true
    tags = {
        Name = "main"
    }
}
output endpoint {
    value = module.rds.endpoint
}