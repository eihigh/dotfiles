FROM archlinux:20191205

ARG USER=dev
ARG USERID=1000
ARG GROUP=devgrp
ARG GROUPID=1000
ARG PASSWD=dev

ENV LANG="ja_JP.UTF8"
COPY mirrorlist /etc/pacman.d/mirrorlist
RUN : &&\
	: "ロケール設定" &&\
	echo ja_JP.UTF8 >> /etc/locale.gen &&\
	locale-gen &&\
	ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime &&\
	: "最低限のパッケージをインストール" &&\
	chmod -R 755 /etc/pacman.d &&\
	pacman -Syy --noconfirm sudo which openssh ansible archlinux-keyring &&\
	: "sshホスト設定" &&\
	mkdir /var/run/sshd &&\
	ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' &&\
	: "一般ユーザーを追加" &&\
	groupadd -g ${GROUPID} ${GROUP} &&\
	useradd  -g            ${GROUP} -u ${USERID} ${USER} -m &&\
	echo ${USER}:${PASSWD} | chpasswd &&\
	rm /home/${USER}/.bashrc &&\
	mkdir /home/${USER}/.ssh &&\
	: "sudoersにユーザー追加" &&\
	echo 'Defaults visiblepw' >> /etc/sudoers &&\
	echo "${USER} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers &&\
	: "END"

WORKDIR /home/${USER}
ADD https://github.com/eihigh.keys .ssh/authorized_keys
RUN chown ${USER} .ssh/authorized_keys && chmod 700 .ssh/authorized_keys
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]

