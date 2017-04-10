# lambda-acm-validate

Would you like to use AWS Certificate Manager (ACM) certificates in your CloudFormation stacks without having to worry about personally handling validation emails and forms? Now you can validate ACM requests with Lambda!

## Quick Start

1. Check out this repository and run `make`. This will install the necessary Python dependencies and produce a Lambda package, `acm.zip`.

2. In any region that supports SES, upload `acm.zip` to an S3 bucket, and create a CloudFormation stack based on `lambda-acm-validate.cfn.yaml`.

3. For each domain you wish to validate ACM certificates, create an SES rule that delivers `hostmaster@` to the SNS topic created in the stack above (see Outputs > Topic).
