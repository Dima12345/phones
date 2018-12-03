#!/bin/sh
bundle exec rake swagger:docs

set -o nounset # Treat unset variables as an error

sed 's/"basePath": "",/"basePath": "\/",/' public/apidocs/api-docs.json > public/apidocs/api-docs-tmp.json;
mv public/apidocs/api-docs-tmp.json public/apidocs/api-docs.json;
