okta_org_name    = "dev-82763613"          # Your Okta org shortname
okta_base_url    = "okta.com"              # Usually "okta.com" or "oktapreview.com"
okta_client_id   = "0oaof5ci5zIzH5Ul65d7"  # Your Okta OAuth 2.0 Client ID
okta_private_key = <<EOF
-----BEGIN PRIVATE KEY-----
MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDRtTztT5+aAM/M
KkW4K8bxeoltM5oQMQ7tSt6gufrif39SOqTP7aJV62v0d0yLP8u7LkNTVYQ3vSVI
7p/zpLM9WrCk7r10QIl8/oiYKRsB7dlBDIr7CJnf38l/vtxeumc2llVv9hWUXWeb
xUJBBeE4nBgtxmbcIA57XGbwyBtkV+jP/u3gj7skfEo8kJUcBX0A84E4Ku25o9Di
zkNWf35UWYpyJcvmMiXCYdpmoCOYcEFsp+B6osUdBl/SA1xnJmtLx3w28Hc4De9I
tr+vAz1oS/LT3fmuQDhCENBx74ESXgZM6Vejz08UZJQblSOHZdYGgm9+KyyXhalM
UP71nxRHAgMBAAECggEAIiYRNdOxebKIJAb+M29thgUeO9obTGewtpNqjWG7qQZ6
BTnnfLSFqtgbTEPhAwvwcRqne/qA/VKfr7Cr+1DmnycVfMYjs7qOqPwJ4j1PWJES
v7T7LMXJyNr4RQUffY19ITZ50zGPcgmDxanpkA0VD9LbXRjhxxaxRQVW/f6X907N
7Y30+sd2+jQQL3G1RAy9MLDKxRm44cuOypa5jWlNtRQzXAhC+BFhmK9XnPAxYo+5
4mlOY/119+BBFETk2ZH7cxf4PoqJTZtWPdubvR93pt5SVQ43aDzThkh2aQPLoRJN
i5XoNFHNLtwywNeyqqWGLGFXndR6KjD1gAs+SwXQAQKBgQDuAUvR7++ZL96md49c
o0hDWbGH/64ongiJT7DtRIj9dGa40EXUFegiync9hrs4hudmTQ0Re34IixC/Ir91
/Er0q40Ikrb9A43X0o9YjyGdMXKMJtrBIYn+6VyOH3HqKCPUsOXjOLXIFsivD420
/7H5Upbn5yZ4QMLvE5brQBSegQKBgQDhkDzV4JdDTou8P8cnD+lVWWSgCSvVuBgA
znj3jd1KB29apW8nA51zLsdLmLPUvdZ4bvn5R8hiP0qeRfVibJzIQViAJqcO7WJy
NBg0QJ66i4cLod51zduOF+/UIkUO7h1w/Qi8tnhKt4fl4rX68pasTByPq3QzaUzn
3uXe+iTexwKBgQDmNxq/1vZLlqInIz7ovIgJnZi7k/VCFJrtNshMuR5JC27RFaR1
oTsJbA4q1UgDRXpO2fjqECm42cs5FsNbvM5EHCwvPrsBwY5SVLmTT9+TzWCfcHXo
miiBCfkdAA2QEYOXGAVF5HTxNhioPMM1cJ8WK20Mo+nyJ7JmzuwMYc+QAQKBgBms
9X/TBOTgd/+BswW7RfA1MMMWyCqXvgO5fQOQ3nOizQYgdrqWKsIFvSHZy/6XbWZg
G4xIo4Krea7yf7AodOBGr/BGdhW458/gJjEseeT6JPEqB8yZFjjieKZJEFtWt3s5
ElmI28CFi66bU+Ow4X3TXBzug1em0N5D/R6YksHZAoGBAI34d0KJ2BJ9Hkq1pbPh
HMElH0kPsMdIGYdJ18vjkEQ1YQBTN635iKuzUXHq6CKC7AHDqzCXmXFdUSchYY+D
R89irbl9xVfSbF6MvDd/pz100DdcisLsqcVHaaf8Rc8srjQq9blSxLn3NryuCycv
mcL1wFOgjrZj2WEIX6E/MCua
-----END PRIVATE KEY-----
EOF

okta_groups = [
  { name = "Developers", description = "Development team" },
  { name = "Admins", description = "Administrators" },
  { name = "Admins2", description = "Administrators2" },
  { name = "Admins2", description = "Administrators2" }
]
