ARG TG_IMAGE=1.0-0.29
FROM cytopia/terragrunt:$TG_IMAGE
RUN set -eux && apk add --no-cache python3 bash curl jq && \
     wget https://dl.google.com/dl/cloudsdk/release/install_google_cloud_sdk.bash && \
     chmod +x install_google_cloud_sdk.bash && \
     ./install_google_cloud_sdk.bash --disable-prompts  --install-dir /gcloud && \
     rm install_google_cloud_sdk.bash && \
     export PATH="$PATH:/gcloud/google-cloud-sdk/bin/" && \
     gcloud components install kubectl