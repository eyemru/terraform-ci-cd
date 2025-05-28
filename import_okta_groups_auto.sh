#!/bin/bash

# --- CONFIGURE THESE ---
OKTA_DOMAIN="dev-82763613.okta.com"
OKTA_TOKEN="00_-TrYdw-4jvH2WL3SUnaQ_Kwy1wISp47eCaCRX2z"
TFVARS_FILE="terraform.tfvars"
# -----------------------

# Extract group names from terraform.tfvars
GROUPS=($(grep -oP 'name\s*=\s*"\K[^"]+' "$TFVARS_FILE"))

for GROUP in "${GROUPS[@]}"; do
  # Query Okta for the group by name
  RESPONSE=$(curl -s -H "Authorization: SSWS $OKTA_TOKEN" \
    "https://$OKTA_DOMAIN/api/v1/groups?q=$GROUP&limit=1")
  GROUP_ID=$(echo "$RESPONSE" | grep -o '"id":"[^"]*' | head -1 | cut -d':' -f2 | tr -d '"')
  if [[ -n "$GROUP_ID" ]]; then
    echo "Importing existing group '$GROUP' (ID: $GROUP_ID)..."
    terraform import "okta_group.managed[\"$GROUP\"]" $GROUP_ID
  else
    echo "Group '$GROUP' not found in Okta. Terraform will create it if needed."
  fi
done
