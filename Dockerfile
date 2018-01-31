FROM jupyter/base-notebook

MAINTAINER Dima Koskin <dmksknn@gmail.com>


# install bash
# https://github.com/takluyver/bash_kernel
RUN /opt/conda/bin/pip install --no-cache-dir bash_kernel --user && \
    /opt/conda/bin/python -m bash_kernel.install --user


# install scheme
# https://github.com/Calysto/calysto_scheme
RUN /opt/conda/bin/pip install --no-cache-dir \
    metakernel calysto_scheme --user && \
    python -m calysto_scheme install --user
