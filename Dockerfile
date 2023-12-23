FROM archlinux

ENV APP vim

ENV DISPLAY :0

WORKDIR /app

# update
RUN	pacman -Syy

# install
RUN pacman -S --noconfirm $APP

CMD "${APP}"
