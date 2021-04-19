FROM debian:stable-slim

RUN echo 'deb http://ftp.br.debian.org/debian/ buster main contrib non-free' > /etc/apt/sources.list.d/backports.list && \
	apt-get update && apt-get install -y \
	texlive-base \
	texlive-science \
	texlive-publishers \
	texlive-pictures \
	texlive-extra-utils \
	texlive-bibtex-extra \
	texlive-xetex \
	texlive-lang-english \
	texlive-lang-italian \
	texlive-lang-portuguese \
	texlive-fonts-extra \
	ttf-xfree86-nonfree\
	biber \
	git \
	latexmk \
	latexdiff \
	inkscape && \
	apt-get --purge remove -y .\*-doc$ && apt-get clean -y
COPY latex-commit-diff /usr/local/bin
