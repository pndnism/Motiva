FROM ruby:2.7.1

# ENV for RAILS_ENV / NODE_ENV
ARG ENV=development

# Set timezone to JST
ENV TZ Asia/Tokyo

# Set Language
ENV LANG C.UTF-8

# === Install packages ===
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    mariadb-client

# Install Node and Yarn
# node: https://github.com/nodesource/distributions#installation-instructions
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y nodejs yarn

# Clean up
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*


# === Build App ===
ENV RAILS_ENV=$ENV 

ENV APP_ROOT /var/app/
WORKDIR $APP_ROOT

# Store gem/yarn pacakges in shared volumes
ENV BUNDLE_PATH /var/app/vendor/bundle

# === Start App ===
COPY . $APP_ROOT

# Start up
CMD rails s
