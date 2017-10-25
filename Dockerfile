#docker file
FROM  node:7-onbuild

MAINTAINER Rahul Varghese

HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:3000 || exit 1

# Tell Docker what ports to expose
EXPOSE 3000
