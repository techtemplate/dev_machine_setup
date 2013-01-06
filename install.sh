#!/bin/bash
# sh -c "git pull origin master"

if which babushka > /dev/null; then
  echo "Updating Babushka"
  babushka babushka;
else
  echo "Installing Babushka"
  sh -c "`curl https://babushka.me/up`" </dev/null;
  ln -sfhv `pwd`/deps ~/.babushka/deps;
fi

if which brew > /dev/null; then
  echo "Updating Brew";
  sh -c "brew update";
else
  echo "Installing Brew";
  babushka homebrew;
fi

babushka tech_template
