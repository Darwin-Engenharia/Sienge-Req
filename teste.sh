#!/bin/bash

# Defina o TOKEN corretamente
TOKEN=""

# Defina o corpo da requisição
BODY='{
  "no_default": "",
  "name": "Nicolas Bourbaki",
  "age": 42,
  "obj": {
    "even": "dicts"
  },
  "l": [
    "or",
    "lists!"
  ],
  "file_": "<function call>"
}'

# URL base
URL="https://windmill.darwincloud.com.br/api/w/teste/jobs/run_wait_result/p/u/admin/realizable_script?token=$TOKEN"

# Executa o curl e armazena o resultado
RESULT=$(curl -s -H "Content-Type: application/json" -X POST -d "$BODY" "$URL")

# Exibe o resultado formatado com jq
echo -E "$RESULT" | jq
