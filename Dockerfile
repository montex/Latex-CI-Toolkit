FROM debian:bullseye-slim

RUN printf 'deb http://deb.debian.org/debian/ bullseye main contrib non-free\n\
deb http://deb.debian.org/debian bullseye-updates main contrib non-free\n\
deb http://deb.debian.org/debian bullseye-backports main contrib non-free\n\
deb http://security.debian.org/debian-security/ bullseye-security main contrib non-free' > /etc/apt/sources.list
RUN apt-get update && apt-get install -y \
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
	texlive-font-utils \
	texlive-fonts-extra \
	ttf-xfree86-nonfree\
	biber \
	git \
	latexmk \
	latexdiff \
	inkscape && \
	apt-get --purge remove -y .\*-doc$ && apt-get clean -y
COPY latex-commit-diff /usr/local/bin
