#!/bin/bash

if [[ "$APP_NAME" = "dev" ]]; then
  cp {{etc_dir}}/php/dev_php.ini {{etc_dir}}/php/php.ini
  ln -sf {{etc_dir}}/php/php.dev.d {{etc_dir}}/php/php.d
else
  cp {{etc_dir}}/php/prod_php.ini {{etc_dir}}/php/php.ini
  ln -sf {{etc_dir}}/php/php.prod.d {{etc_dir}}/php/php.d
fi
