#base OS
FROM ubuntu:17.10

# setup
RUN apt update && \
    apt upgrade && \
    apt install -y rbenv ruby-build ruby-dev
    echo 'eval "$(rbenv init -)"' >> $HOME/.bashrc
    . $HOME/.bashrc
    hash -r
    rbenv install 2.2.3
    rbenv global 2.2.3
    gem install itamae