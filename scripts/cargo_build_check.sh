#!/usr/bin/env bash

# check fmt, clippy, unittest

set -e
cd ..

cargo fmt -- --check
cargo clippy --workspace --all-targets --tests -- -D warnings
cargo test --all-features

exit 0
