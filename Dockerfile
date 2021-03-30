# use a node base image
#FROM node:erbium-slim
#FROM alpine:3.10

#ENV NODE_VERSION 15.12.0
FROM node:7-onbuild

#set maintainer
#LABEL maintainer "michael.johnson422@gmail.com"

# set health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            --start-period=5s \
            --retries=3 \
            CMD curl -f http://127.0.0.1:8000 || exit 1

# expose this port
EXPOSE 8000