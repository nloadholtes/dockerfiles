#
# Based on https://registry.hub.docker.com/u/dimitrisjim/pycharm_ultimate/dockerfile/
#
FROM ubuntu:14.04
MAINTAINER Nick Loadholtes <nick@ironboundsoftware.com>

RUN apt-get -yqq update && apt-get -yqq install \
 wget \
 git \
 mercurial \
 subversion \
 openjdk-7-jdk

WORKDIR $IDE_PATH

# Install python 2.7.9 & 3.4.3
COPY py_setup.sh $IDE_PATH
RUN ./py_setup.sh

# Get pycharm tarball.
RUN wget http://download.jetbrains.com/python/pycharm-professional-4.0.6.tar.gz \
 && tar -xf pycharm-professional-4.0.6.tar.gz \
 && rm -rf *.tar.gz \
 && mv pycharm* pycharm

RUN apt-get clean

VOLUME $IDE_PATH
WORKDIR $HOME/projects

ENV PATH $IDE_PATH/pycharm/bin:$PATH
CMD ["pycharm.sh"]
