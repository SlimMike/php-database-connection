# Copy .env.example as .env
# There is Makefile ;)
# Test results available in /images
## local -> cli and database in separate docker containers on same machine
## fargate -> cli running in fargate container, rds in same AZ
### fargate container/task:
#### 2vCPU -> should equal one physical core
#### 4G of ram -> minimum required for CPU
### rds
#### db.m5.large
#### disabled public access, so hopefully it's routed internally
### AZ
#### us-east-a1, both in same VPC
# Example output

![Example Output](images/local.png)

# Fargate CLI results (first entry is most significant)
## Worst case
![Worst case](images/fargate_cli_worst_case.png)
## Average case
![Average case](images/fargate_cli_average_case.png)
## Best case
![Best case](images/fargate_cli_best_case.png)