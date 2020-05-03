FROM debian:stable-slim
RUN apt-get update &&\
    apt-get -y --no-install-recommends install texlive-full git latexdiff &&\
    apt-get --purge remove -y .\*-doc$ &&\
    # Remove more unnecessary stuff
    apt-get clean -y

