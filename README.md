# mathjax-docker

This repository provides a simple docker image for [MathJax](https://www.mathjax.org) for use in conjunction with systems like ILIAS or Moodle.

This repository clones the [Mathjax source code](https://github.com/mathjax/MathJax) and packages it in an Apache HTTPD docker container.

# Usage

First, clone the repository:

```sh
git clone https://github.com/urrz-lehre/mathjax-docker
cd mathjax-docker/
```

Then, simply build the image and create a new container with it:

```sh
docker buildx build -t mathjax-docker .
docker run -p 80:80 mathjax-docker
```

After that, MathJax should be served at `http://0.0.0.0:80`.

## Licensing & Attribution

This project combines MathJax (Apache 2.0 License) and Apache HTTPD (Apache 2.0 License).  
All original copyright notices are preserved. See `NOTICE` for the full details.
