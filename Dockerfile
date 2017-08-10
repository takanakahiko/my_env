FROM ubuntu:latest
LABEL maintainer "takanakahiko <takanakahiko@gmail.com>"

CMD /bin/bash

RUN set -vx \
 && apt-get update \
 && apt-get install -y git vim python pip make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils \
 && apt-get clean \
 && git clone https://github.com/yyuu/pyenv.git ~/.pyenv \
 && echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile \
 && echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile \
 && echo 'eval "$(pyenv init -)"' >> ~/.bash_profile \
 && exec $SHELL
 && pyenv install 3.6.2
 && pyenv install 2.7.13
