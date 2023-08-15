#!/bin/bash

apt-get install -y mailutils || true

wget example.com/big_file.tar.gz && mail -s "Success!" your.mail@example.com <<<"" || mail -s "Failed!" your.mail@example.com <<<""
