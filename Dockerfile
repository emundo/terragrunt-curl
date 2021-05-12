ARG TG_IMAGE=0.15-0.29
FROM cytopia/terragrunt:$TG_IMAGE
RUN set -eux && apk add --no-cache bash curl jq