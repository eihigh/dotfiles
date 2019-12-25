FROM archlinux:20191105

ARG USER=dev
ARG USERID=1000
ARG GROUP=devgrp
ARG GROUPID=1000
ARG PASSWD=dev

ENV LANG="ja_JP.UTF8"
COPY mirrorlist /etc/pacman.d/mirrorlist
RUN : &&\
	: "ロケール設定" &&\
	echo ja_JP.UTF8 UTF-8 > /etc/locale.gen &&\
	locale-gen &&\
	ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime &&\
	: "最低限のパッケージをインストール" &&\
	chmod -R 755 /etc/pacman.d &&\
	pacman -Syy --noconfirm sudo which openssh ansible &&\
	: "sshホスト設定" &&\
	mkdir /var/run/sshd &&\
	ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' &&\
	: "一般ユーザーを追加" &&\
	groupadd -g ${GROUPID} ${GROUP} &&\
	useradd  -g            ${GROUP} -m -u ${USERID} ${USER} &&\
	echo ${USER}:${PASSWD} | chpasswd &&\
	: "sudoersにユーザー追加" &&\
	echo 'Defaults visiblepw' >> /etc/sudoers &&\
	echo "${USER} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers &&\
	: "END"

WORKDIR /home/${USER}
RUN rm .bashrc && mkdir /home/${USER}/.ssh
ADD https://github.com/eihigh.keys /home/${USER}/.ssh/authorized_keys
RUN chown ${USER} /home/${USER}/.ssh/authorized_keys && chmod 700 /home/${USER}/.ssh/authorized_keys
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]

