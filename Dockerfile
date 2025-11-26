# This must be the name of a tag within the mathjax/mathjax repository
ARG MATHJAX_VERSION="3.2.0"

FROM alpine/git AS build

ARG MATHJAX_VERSION
ENV MATHJAX_VERSION=$MATHJAX_VERSION

WORKDIR /app

RUN git clone https://github.com/mathjax/MathJax.git mathjax && \
    cd mathjax && \
    git checkout tags/$MATHJAX_VERSION && \
    rm -rf .git

FROM httpd:alpine

WORKDIR /usr/local/apache2/htdocs
COPY --from=build /app/mathjax .

RUN chown -R www-data:www-data /usr/local/apache2/htdocs && chmod -R 755 /usr/local/apache2/htdocs
