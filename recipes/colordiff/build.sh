#!/bin/bash

set -xe

sed -i.bak 's,/usr/bin/perl,/usr/bin/env perl,' colordiff.pl

make INSTALL_DIR= DESTDIR=$PREFIX install

which perl

which env

/usr/bin/env perl -V
/usr/bin/env perl -V -w

colordiff
