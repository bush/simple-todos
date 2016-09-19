FROM ubuntu:16.04
ENV OS_LOCALE="en_US.UTF-8"
RUN locale-gen ${OS_LOCALE}
ENV LANG=${OS_LOCALE} \
    LANGUAGE=en_US:en \
    LC_ALL=${OS_LOCALE}
RUN echo "LS_COLORS=\$LS_COLORS:'di=0;35:' ; export LS_COLORS" >> /root/.bashrc && mkdir /root/db && apt-get update && apt-get -y install curl locales vim && curl https://install.meteor.com/ | sh
