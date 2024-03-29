#!/bin/bash


echo 'Region:'$region
echo 'security group name:'$name
echo 'from port:'$ib_from_port
echo 'to port:'$ib_to_port
echo 'protocol:'$ib_protocol
echo 'cidr:'$ib_cidr_block
echo 'from port:'$ob_from_port
echo 'to port:'$ob_to_port
echo 'protocol:'$ob_protocol
echo 'cidr:'$ob_cidr_block


echo $AWS_ACCESS_KEY ':' $AWS_SECRET_KEY





./terraform init

./terraform apply -auto-approve -var 'region='$region -var 'name='$name -var 'aws_access_key='$AWS_ACCESS_KEY -var 'aws_secret_key='$AWS_SECRET_KEY -var 'from_port='$ib_from_port -var 'to_port='$ib_to_port -var 'protocol='$ib_protocol -var 'cidr_block='$ib_cidr_block -var 'from_port='$ob_from_port -var 'to_port='$ob_to_port -var 'protocol='$ob_protocol -var 'cidr_block='$ob_cidr_block                                                     
