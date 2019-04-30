# Dockerfile for Synonym

# OS image
FROM ubuntu:18.04

RUN \
apt-get update -qq && \
apt-get upgrade -qq && \
apt-get install bridge-utils && \
apt-get install -qq build-essential clang-3.6 && \
apt-get install -qq software-properties-common && \
apt-get install -qq curl git ninja-build man subversion vim wget cmake && \
apt-get install -qq libboost-program-options-dev && \
apt-get install python2.7 python2.7-dev -y && \
apt-get install --yes libgmp-dev && \
apt-get install --yes python-pip

RUN \
# build z3 4.5.0
apt install git && \
mkdir z3-4.5.0 && \
git clone https://github.com/Z3Prover/z3.git z3-4.5.0 && \
cd z3-4.5.0 && \
git checkout d57a2a6dce9291acf9c71a561252f3e133f0c894 && \
mkdir build && \
python scripts/mk_make.py --prefix=/usr/local && \
cd build/ && \
make -j9

RUN \
cd z3-4.5.0/build && \
make install

RUN \
# install haskell platform
apt install haskell-platform -y && \
cabal update
RUN \
cabal install z3-4.1.2

RUN \
# install synonym
git clone https://github.com/lmpick/synonym.git && \
cd synonym/dependencies/language-java-0.2.7/ && \
cabal install && \
cd ../../synonym && \
cabal install && \
cp ~/.cabal/bin/synonym /usr/local/bin/synonym