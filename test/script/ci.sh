#!/bin/bash
set -e

echo "NEW_RELIC_ENV set to: $NEW_RELIC_ENV"
echo "RUBY_ENV set to: $RUBY_ENV"
echo "RACK_ENV set to: $RACK_ENV"
echo "RAILS_ENV set to: $RAILS_ENV"
if [ "$TYPE" = "UNIT" ]; then
  bundle exec rake test:env[$ENVIRONMENT]
elif [ "$TYPE" = "FUNCTIONAL" ]; then
#  bundle exec rake test:multiverse:prime[group=$GROUP,verbose] &&
  bundle exec rake test:multiverse[group=$GROUP,verbose,nocache]
fi
