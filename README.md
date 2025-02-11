# Cloudflare-Terraform

1. get resources already defined in your cloudflare context via cf-terraforming
2. manage terraform cloudflare resources to update your context

## Usage


Get cf-terraforming
```
wget https://github.com/cloudflare/cf-terraforming/releases/download/v0.23.3/cf-terraforming_0.23.3_linux_amd64.tar.gz
tar -xzf cf-terraforming_0.23.3_linux_amd64.tar.gz -C cf-terraforming

cat > ~/.cf-terraforming.yaml <<EOF
email: "john.doe@domain.org"
key: "XXXXPpPP"
EOF

# install provider, needed by cf-terraforming
terraform init -upgrade

export CLOUDFLARE_ZONE_ID='EEPPPFFPPgretretert4324'
./cf-terraforming/cf-terraforming generate --resource-type cloudflare_dns_record --zone $CLOUDFLARE_ZONE_ID
```


Test the token

```
curl -X GET "https://api.cloudflare.com/client/v4/user/tokens/verify" \
     -H "Authorization: Bearer XXXTOKENXXX" \
     -H "Content-Type:application/json"
```
