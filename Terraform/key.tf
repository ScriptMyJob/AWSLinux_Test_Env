resource "aws_key_pair" "Development" {
    key_name   = "Development"
    public_key = "${file("../Resources/id_rsa.pub")}"
}
