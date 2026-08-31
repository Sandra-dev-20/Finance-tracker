<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [aws_db_instance.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) | resource |
| [aws_db_subnet_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group) | resource |
| [aws_security_group.rds](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_allocated_storage"></a> [allocated\_storage](#input\_allocated\_storage) | Allocated storage for the database, in GB. | `number` | n/a | yes |
| <a name="input_database_engine"></a> [database\_engine](#input\_database\_engine) | The database engine to use, e.g. postgres. | `string` | n/a | yes |
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | Name of the database to create. | `string` | n/a | yes |
| <a name="input_database_password"></a> [database\_password](#input\_database\_password) | Master password for the database. | `string` | n/a | yes |
| <a name="input_database_username"></a> [database\_username](#input\_database\_username) | Master username for the database. | `string` | n/a | yes |
| <a name="input_instance_class"></a> [instance\_class](#input\_instance\_class) | The RDS instance size/class, e.g. db.t3.micro. | `string` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of subnet IDs for the DB subnet group. | `list(string)` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | CIDR block allowed to reach the database. | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The ID of the VPC the database security group belongs to. | `string` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | The connection endpoint of the database. |
<!-- END_TF_DOCS -->