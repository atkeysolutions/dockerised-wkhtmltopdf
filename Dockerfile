FROM --platform=linux/amd64 archlinux:20191205

RUN pacman-key --init
RUN pacman-key --populate archlinux
RUN pacman -Sy --noconfirm  archlinux-keyring && pacman --noconfirm -Syyu
RUN pacman -Syu --noconfirm wget fontconfig libjpeg libpng libxrender libxext libx11 openssl-1.1 icu
RUN mkdir wkhtmltopdf
RUN wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-3/wkhtmltox-0.12.6-3.archlinux-x86_64.pkg.tar.xz
RUN tar -xf wkhtmltox-0.12.6-3.archlinux-x86_64.pkg.tar.xz -C wkhtmltopdf
RUN mv wkhtmltopdf/usr/bin/wkhtmltopdf /usr/local/bin/wkhtmltopdf
RUN chmod +x /usr/local/bin/wkhtmltopdf

RUN mkdir /var/tmp/fonts
COPY fonts/* /usr/share/fonts/
RUN fc-cache

ENTRYPOINT ["wkhtmltopdf"]
