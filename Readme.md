# There is Makefile ;)
# Copy .env.example as .env
# Test results available in /images
# Configuration
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

# Fargate CLI (DNS Endpoint) results (first entry is most significant)
## Worst case
![Worst case](images/dns_endpoint/worst_case.png)
## Average case
![Average case](images/dns_endpoint/average_case.png)
## Best case
![Best case](images/dns_endpoint/best_case.png)

# Fargate CLI (Private DNS) -> Similar to DNS Endpoint

# Fargate CLI (Private IP) results (first entry is most significant)
## Worst case
![Worst case](images/private_ip/worst_case.png)
## Average case
![Average case](images/private_ip/average_case.png)
## Best case
![Best case](images/private_ip/best_case.png)

# Fargate CLI (DNS Endpoint) with sleep to wait out DNS cache TTL
## DNS TTL seems to be about 5-6 seconds, resolve time starts at about 3ms, usually under 40, in rare instances takes much longer.
![DNS cache](images/dns_cache/dns_ttl.png)

# Extras
## this doesn't make too much sense
![Query spike](images/extras/query_spike.png)
## latency across subnets in same region (1a to 1b)
![Subnet 1a to 1b](images/extras/1a_to_1b_across_subnets.png)
## Running tests against a cheap RDS (T3 micro)
![Cheap RDS](images/extras/cheap_rds.png)