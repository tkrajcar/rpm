#!/bin/bash
set -e

if [ "$TYPE" = "UNIT" ]; then
  bundle exec rake test:env[$BRANCH]
elif [ "$TYPE" = "FUNCTIONAL" ]; then
  bundle exec rake test:multiverse[group=$GROUP]
fi
