#!/bin/sh

echo "$KEY"
 /app/decrypter env:decrypt --key "$KEY" --env "$ENVIRONMENT"
