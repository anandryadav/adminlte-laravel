#!/bin/bash
if ! type "laravel" > /dev/null; then
    composer global require "laravel/installer"
fi
if ! type "adminlte-laravel" > /dev/null; then
    composer global require "acacha/adminlte-laravel-installer=dev-master"
fi
rm -rf sandbox
if [ -e ~/.composer/vendor/bin/laravel ]
then
    ~/.composer/vendor/bin/laravel new sandbox
fi
if [ -e ~/.config/composer/vendor/bin/laravel ]
then
  ~/.config/composer/vendor/bin/laravel new sandbox
fi
cd sandbox
if [ -e ~/.composer/vendor/bin/adminlte-laravel ]
then
  ~/.composer/vendor/bin/adminlte-laravel install
fi
if [ -e ~/.config/composer/vendor/bin/adminlte-laravel ]
then
  ~/.config/composer/vendor/bin/adminlte-laravel install
fi
touch database/database.sqlite


