resource "aws_instance" "web" {
  ami           = "ami-0fff1b9a61dec8a5f"
  instance_type = local.instance_type[terraform.workspace]
}