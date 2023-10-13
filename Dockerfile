ARG OWNER=jupyter
ARG BASE_CONTAINER=$OWNER/scipy-notebook:2023-09-25
FROM $BASE_CONTAINER

LABEL maintainer="PeterBean <moi@peterbean.net>"

# Fix: https://github.com/hadolint/hadolint/wiki/DL4006
# Fix: https://github.com/koalaman/shellcheck/wiki/SC3014
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER ${NB_UID}

# Install Python 3 packages
RUN mamba install --yes 'python-graphviz'
