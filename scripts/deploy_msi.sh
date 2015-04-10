#!/usr/bin/env sh

env

export BUNDLE_GEMFILE=$(dirname $0)/Gemfile
mkdir -p $(dirname $0)/../vendor/cache
bundle install --path $(dirname $0)/../vendor/cache
bundle exec $(dirname $0)/deploy_msi.rb $(basename $@)
