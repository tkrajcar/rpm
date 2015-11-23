#!/bin/bash
set -e

echo "BUNDLE_PATH set to: $BUNDLE_PATH"
if [ "$TYPE" = "UNIT" ]; then
  bundle exec rake test:env[$ENVIRONMENT]
elif [ "$TYPE" = "FUNCTIONAL" ]; then
#  bundle exec rake test:multiverse:prime[group=$GROUP,verbose] &&
  bundle exec rake test:multiverse[group=$GROUP,verbose,nocache]
fi
