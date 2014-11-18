FROM dockerfile/ubuntu

# Install Ruby.
RUN \
  apt-get update && \
  apt-get install -y ruby ruby-dev ruby-bundler openjdk-7-jdk && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data
VOLUME /data

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

COPY Gemfile /data/Gemfile
RUN ["/bin/bash", "-l", "-c", "bundle install"]

CMD ["bash"]
