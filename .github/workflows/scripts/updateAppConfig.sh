echo">>>>>>>>>>> $1"

token=$(az account get-access-token --resource=https://management.azure.com | jq -r .accessToken)
configInput=$(cat $1)
curl -X PUT -H "Authorization: Bearer $token" -H "Content-type: application/json" https://management.azure.com/subscriptions/c00d16c7-6c1f-4c03-9be1-6934a4c49682/resourceGroups/az-pac-dev/providers/Microsoft.Web/sites/azpactestwebapp/config/web?api-version=2019-08-01 --data "$configInput"
