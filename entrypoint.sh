#!/bin/sh

 /app/decrypter env:decrypt --key "$KEY" --env "$ENVIRONMENT"

if [ -z "${ENVIRONMENT}" ];
then
    mv  "$GITHUB_WORKSPACE"/.env "$GITHUB_WORKSPACE"/.env
else
    mv  "$GITHUB_WORKSPACE"/.env."$ENVIRONMENT" "$GITHUB_WORKSPACE"/.env
fi
