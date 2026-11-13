#!/usr/bin/env bash

# TODO: architecture detection and use package manager for the specific distribution

echo "Installing dependencies for linux..."
apt update
apt install -y git bash dirmngr gpg curl gawk golang make

echo "Installing asdf..."
go install github.com/asdf-vm/asdf/cmd/asdf@v0.18.0
ln -s "$(go env GOPATH)/bin/asdf" /usr/local/bin/asdf

echo "Installing asdf plugins..."
"$(go env GOPATH)/bin/asdf" plugin add nodejs
"$(go env GOPATH)/bin/asdf" plugin add python
"$(go env GOPATH)/bin/asdf" plugin add task
"$(go env GOPATH)/bin/asdf" plugin add shfmt
"$(go env GOPATH)/bin/asdf" plugin add shellcheck
"$(go env GOPATH)/bin/asdf" plugin add pre-commit
