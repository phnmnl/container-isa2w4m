# Make sure this Docker file follow the PhenoMeNal Docker file guide at https://github.com/phnmnl/phenomenal-h2020/wiki/Dockerfile-Guide.
# Don't forget to update resource (CPU and memory) usage specifications in PhenoMeNal Galaxy container (see https://github.com/phnmnl/phenomenal-h2020/wiki/Setting-up-Galaxy-wrappers-on-PhenoMeNal-Galaxy-Container#tool-cpu-and-memory-usage-requests-and-limits) if necessary.

FROM ubuntu:16.04

MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

ENV TOOL_NAME=isa2w4m
ENV TOOL_VERSION=1.0.0
ENV CONTAINER_VERSION=1.0
ENV CONTAINER_GITHUB=https://github.com/phnmnl/container-isa2w4m

LABEL version="${CONTAINER_VERSION}"
LABEL software.version="${TOOL_VERSION}"
LABEL software="${TOOL_NAME}"
LABEL base.image="ubuntu:16.04"
LABEL description="A converter from ISA dataset to W4M 3 datasets format."
LABEL website="${CONTAINER_GITHUB}"
LABEL documentation="${CONTAINER_GITHUB}"
LABEL license="${CONTAINER_GITHUB}"
LABEL tags="Metabolomics"

# Update, install dependencies, clone repos and clean
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y software-properties-common git python3-pip && \
    git clone --depth 1 --single-branch -b release/${TOOL_VERSION} https://github.com/workflow4metabolomics/mtbls-dwnld /files/mtbls-dwnld && \
    glit clone --depth 1 --single-branch -b feat/w4m-tests https://github.com/pkrog/isa-api /files/isa-api && \
    pip3 install -e /files/isa-api && \
    apt-get purge -y git software-properties-common && \
    apt-get clean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/ /tmp/* /var/tmp/*

# Make tool accessible through PATH
ENV PATH=$PATH:/files/isa2w4m

# Define Entry point script
ENTRYPOINT ["/files/isa2w4m/isa2w4m.py"]
