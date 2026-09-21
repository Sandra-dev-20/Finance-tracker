# Finance Tracker — 3-Layer Terraform Infrastructure

Infrastructure-as-code for a finance tracker app, using a 3-layer Terraform
architecture (network, data, app) to isolate blast radius between
rarely-changing infrastructure and frequent app deployments.

## Architecture

<img src="(My diagram.drawio.png)" alt="Architecture Diagram">



## Prerequisites

- Terraform >= 1.11 (uses native S3 locking, not DynamoDB)
- AWS CLI, configured with valid credentials
- An existing EC2 key pair in eu-north-1

## Remote state bootstrap (one-time, manual)

Terraform's S3 backend requires the bucket to exist before `init` can run.

\`\`\`bash
aws s3api create-bucket --bucket <your-bucket-name> --region eu-north-1
\`\`\`

## Deploying

\`\`\`bash
cd network && terraform init && terraform apply
cd ../data && terraform init && terraform apply
cd ../app && terraform init && terraform apply
\`\`\`

## Configuration

Each layer reads its inputs from `terraform.tfvars`. `database_password`
is intentionally excluded — supply it via `TF_VAR_database_password`
or a gitignored `secrets.auto.tfvars`.

## Module documentation

See each module's own README for its full inputs/outputs reference
(auto-generated with terraform-docs).

## License

MIT

