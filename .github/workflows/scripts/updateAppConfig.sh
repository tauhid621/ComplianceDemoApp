token=$(az account get-access-token --resource=https://management.azure.com | jq -r .accessToken)
configInput=$(cat ./workflow/.github/workflows/scripts/$1)
curl -X PUT -H "Authorization: Bearer $token" -H "Content-type: application/json" https://management.azure.com/$2/config/web?api-version=2019-08-01 --data "$configInput"
