FROM python

WORKDIR /root

# python and pip
RUN apt-get update
RUN pip install pipx

# ghunt
RUN pipx install ghunt --python $(which python3.11)

# PATH
RUN pipx ensurepath

ENTRYPOINT [ "/bin/bash" ]
