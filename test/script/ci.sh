#!/bin/bash
set -e

if [ "$TYPE" = "UNIT" ]; then
  bundle exec rake test:env[$ENVIRONMENT]
elif [ "$TYPE" = "FUNCTIONAL" ]; then
  bundle exec rake test:multiverse:prime[group=$GROUP] &&
  bundle exec rake test:multiverse[group=$GROUP]
fi
