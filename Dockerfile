from archlinux:20191205

RUN pacman --noconfirm -Sy
RUN pacman --noconfirm -S wkhtmltopdf xorg
RUN mkdir /var/tmp/fonts
COPY fonts/* /usr/share/fonts/
RUN fc-cache

ENTRYPOINT ["wkhtmltopdf"]
