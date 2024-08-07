# AWS Data Lake with Terraform

This repository contains Terraform configurations for setting up a Data Lake on AWS. The project leverages AWS Lake Formation for data catalog and permissions management, AWS Glue for ETL operations, and S3 for data storage. The infrastructure is organized using reusable Terraform modules and environment-specific configurations.

## Project Structure

- `modules/`: Reusable Terraform modules for S3, Lake Formation, Glue, and IAM configurations.
- `environments/`: Environment-specific configurations (e.g., `dev`, `prod`).
- `scripts/`: Shell scripts for initializing, applying, and destroying the Terraform infrastructure.
- `.gitignore`: Ignore Terraform state files and directories.
- `README.md`: Project documentation.
- `versions.tf`: Specifies Terraform and provider versions.

## Getting Started

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed.
- AWS CLI configured with appropriate permissions.
- IAM user ARN to be used as Lake Formation admin.

### Setup

1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/data-lake-terraform.git
    cd data-lake-terraform
    ```

2. Navigate to the desired environment directory (e.g., `dev` or `prod`):
    ```sh
    cd environments/dev
    ```

3. Initialize Terraform:
    ```sh
    ../../scripts/init.sh
    ```

4. Apply the Terraform configuration:
    ```sh
    ../../scripts/apply.sh
    ```

### Destroying the Infrastructure

To destroy the infrastructure, run the following command in the environment directory:
```sh
../../scripts/destroy.sh
