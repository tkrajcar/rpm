#!/bin/bash
set -e

unset MERB_ENV
unset RUBY_ENV
unset RACK_ENV
unset RAILS_ENV

echo "RUBY_ENV set to: $RUBY_ENV"
echo "RACK_ENV set to: $RACK_ENV"
echo "RAILS_ENV set to: $RAILS_ENV"
if [ "$TYPE" = "UNIT" ]; then
  bundle exec rake test:env[$ENVIRONMENT]
elif [ "$TYPE" = "FUNCTIONAL" ]; then
#  bundle exec rake test:multiverse:prime[group=$GROUP,verbose] &&
  bundle exec rake test:multiverse[group=$GROUP,verbose,nocache]
fi
