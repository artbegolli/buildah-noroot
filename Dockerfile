FROM ocibuilder/ocictl:0.1.2-beta
COPY . .
# ENTRYPOINT [ "ocictl build" ]