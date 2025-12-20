
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# fonts
RUN sudo mkdir -p /usr/share/fonts/ && \
	sudo curl 'https://raw.githubusercontent.com/trueroad/HaranoAjiFonts/master/HaranoAjiMincho-Regular.otf' -o /usr/share/fonts/HaranoAjiMincho-Regular.otf && \
	sudo curl 'https://raw.githubusercontent.com/trueroad/HaranoAjiFonts/master/HaranoAjiGothic-Regular.otf' -o /usr/share/fonts/HaranoAjiGothic-Regular.otf && \
	sudo curl 'https://raw.githubusercontent.com/trueroad/HaranoAjiFonts/master/HaranoAjiGothic-Bold.otf' -o /usr/share/fonts/HaranoAjiGothic-Bold.otf
# RUN sudo apt update && sudo apt install -y fontconfig fonts-adobe-sourcesans3 fonts-noto-cjk
