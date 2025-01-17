#!/bin/sh

 /app/decrypter env:decrypt --key "$KEY" --env "$ENVIRONMENT"

 mv /github/workspace/.env.testing /github/workspace/.env
