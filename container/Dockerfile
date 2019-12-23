FROM archlinux:20191105

ARG USER=dev
ARG USERID=1000
ARG GROUP=devgrp
ARG GROUPID=1000
ARG PASSWD=dev

ENV EDITOR=vim
ENV LANG="ja_JP.UTF8"
COPY mirrorlist /etc/pacman.d/mirrorlist
RUN : "ロケール設定" &&\
		echo ja_JP.UTF8 UTF-8 > /etc/locale.gen &&\
		locale-gen &&\
		ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime &&\

		: "最低限のパッケージをインストール" &&\
		chmod -R 755 /etc/pacman.d &&\
		pacman -Syy --noconfirm git openssh base-devel vim ansible &&\

		: "一般ユーザーを追加" &&\
		groupadd -g ${GROUPID} ${GROUP} &&\
		useradd  -g            ${GROUP} -m -u ${USERID} ${USER} &&\
		echo ${USER}:${PASSWD} | chpasswd &&\

		: "sudoersにユーザー追加" &&\
		echo 'Defaults visiblepw' >> /etc/sudoers &&\
		echo "${USER} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers &&\

		: "--RUN--"

USER ${USER}
WORKDIR /home/${USER}
CMD /bin/bash --login

