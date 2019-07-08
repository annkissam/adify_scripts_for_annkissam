<p float="left">
<img src="https://github.com/aditya7iyengar/adify/raw/master/logo/logo.png" height="50">
<img src="http://pngimg.com/uploads/plus/plus_PNG53.png" height="50">
<img src="https://www.annkissam.com/sites/default/files/Mark%20unlocked%20%281%29.jpg" height="50">
<img src="http://pngimg.com/uploads/equals/equals_PNG35.png" height="50">
<img src="https://clipart.info/images/ccovers/1484772652Heart-png-black-transparent.png" height="50">
</p>

----


[![Build Status](https://travis-ci.com/annkissam/adify_scripts_for_annkissam.svg?branch=master)](https://travis-ci.com/annkissam/adify_scripts_for_annkissam)
[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/annkissam/adify_scripts_for_annkissam/master/LICENSE)


This repo provides scripts to be used with Adify at Annkissam to set up a
new computer.

These tools are different from native adify tools; They're specific to
annkissam.

## Usage

Just curl bash the `prelude.sh` script

```sh
$ bash <(wget -qO- https://raw.githubusercontent.com/annkissam/adify_scripts_for_annkissam/master/prelude.sh)

OR

$ bash <(curl -s https://raw.githubusercontent.com/annkissam/adify_scripts_for_annkissam/master/prelude.sh)
```

This is an extension of `aditya7iyengar/adify` and relies on the hex package
[`adify`](https://hexdocs.pm/adify/Adify.html). For more information on
maintenance, refer the documentation for `adify`.


## Development

### CI

- CI is set for OSX (Latest version as of 7/2019) and Ubuntu
- By default CI runs in Mock mode, where it doesn't test everything. This is done
  to keep the test suite from taking 30 minutes. In order to override it, add
  `[FULL_TEST_CI]` to the commit message


## TODO List:

- [X] Add CI independent of aditya7iyengar/adify
- [X] Add CI for mac and ubuntu
- [X] Add more tools
    * `ruby` 2.3.8 + `bundler`
    * `ruby` 2.4.2 + `bundler`
    * `ruby` 2.4.3 + `bundler`
    * `ruby` 2.4.5 + `bundler`
    * `ruby` 2.5.3 + `bundler`
    * `ruby` 2.6.0 + `bundler`
    * `redis` as `docker`
    * add "eval `docker-machine env 2>/dev/null`" to zshrc
    * `mysql-client` for OSX (brew install mysql-client) and add "PATH=/usr/local/opt/mysql-client/bin:$PATH" to zshrc
    * `openssl` (brew install openssl) and add "LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/" to zshrc
    * `libpq` (brew install libpq) and add "export PATH="/usr/local/opt/libpq/bin:$PATH"" to zshrc
    * `pg` gem `gem install pg -- --with-opt-dir="/usr/local/opt/libpq"`
    * `phamtomjs` (brew install phantomjs)
    * `spectacle` for OSX (brew cask install spectacle)
    * add `rails` 5
