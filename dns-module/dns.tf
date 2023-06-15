provider "aws" {
  region = "ap-south-1"
}

resource "aws_route53_zone" "vpro-53" {
  name = "kubevpro.azadibachaoandolan.com"
}

data "aws_route53_zone" "example_zone_data" {
  name = aws_route53_zone.vpro-53.name
}

output "ns_records" {
  value = data.aws_route53_zone.example_zone_data.name_servers
}
