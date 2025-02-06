ARG VERSION=latest
FROM ghcr.io/actions/actions-runner:$VERSION

RUN sudo apt-get update && \
    sudo apt-get install -y --no-install-recommends \
    gettext \
    jq

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && sudo ./aws/install \
    && curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb" \
    && sudo dpkg -i session-manager-plugin.deb

RUN curl -s https://raw.githubusercontent.com/sikso1892/dotfiles/main/bin/awstools \
    | sudo tee /usr/local/bin/awstools > /dev/null \
    && sudo chmod a+x /usr/local/bin/awstools




