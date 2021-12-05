#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://api.stackbit.com/project/61ac2f824c1f1300c924cec0/webhook/build/pull > /dev/null
curl -s -X POST https://api.stackbit.com/project/61ac2f824c1f1300c924cec0/webhook/build/ssgbuild > /dev/null
jekyll build
curl -s -X POST https://api.stackbit.com/project/61ac2f824c1f1300c924cec0/webhook/build/publish > /dev/null
