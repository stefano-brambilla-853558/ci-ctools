FROM ubuntu:18.04

# * -> dependency should already be installed in ubuntu18.04

RUN apt-get update -y

# enable ssh
RUN apt-get install -y gnupg2 openssh-client
RUN mkdir -p ~/.ssh
COPY bin/ssh-config.sh /usr/bin
RUN chmod 700 /usr/bin/ssh-config.sh

# enable wget *
RUN apt-get install -y wget

# enable cURL *
RUN apt-get install -y curl

# enable git 
RUN apt-get install -y git

# enable CMake
RUN apt-get install -y cmake

# enable GCC *
RUN apt-get install -y gcc

# enable CLANG
RUN apt-get install -y clang
      
# enable Valgrind
RUN apt-get install -y valgrind

#enable cppcheck
RUN apt install -y cppcheck

#enable clang-tidy
RUN apt install -y clang-tidy 





