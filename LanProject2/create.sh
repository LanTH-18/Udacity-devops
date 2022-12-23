aws cloudformation create-stack --stack-name $1 --template-body file://$2  --parameters file://$3 --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1

#create network
aws cloudformation create-stack --stack-name Demo-NetWork --template-body file://network.yaml --parameters file://network-parameters.json  --region=us-east-1

#create server
aws cloudformation create-stack --stack-name Demo-Servers --template-body file://servers.yaml --parameters file://servers-parameters.json  --region=us-east-1

#delete stack
# aws cloudformation delete-stack --stack-name Demo-Servers

# aws cloudformation delete-stack --stack-name Demo-NetWork