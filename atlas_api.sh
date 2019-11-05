#!/bin/bash
set -o xtrace
#https://docs.atlas.mongodb.com/reference/api/snapshots-get-all/
Programming_PublicKey=''
Programming_ApiKey=''

Project_ID=''
Cluster_Name="MongoDBCluster"

Base_Url="https://cloud.mongodb.com/api/atlas/v1.0"
#Request="/groups/$Project_ID/clusters"
#Request="/groups/$Project_ID/clusters/Cluster0/snapshots"
Request="/groups/$Project_ID/teams?pretty=true"
Team=''

api_post()
{
	curl -u "$1:$2" --digest \
	--header "Accept: application/json" \
	--header "Content-Type: application/json" \
	--request POST "$Base_Url$Request" \
	--data '[{"teamId":"","roleNames":["GROUP_OWNER", "GROUP_READ_ONLY"]}]'
}


api_post $Programming_PublicKey $Programming_ApiKey

