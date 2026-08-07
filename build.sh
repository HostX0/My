#!/usr/bin/env bash
set -euo pipefail

ARCHIVE="site.tar.gz"
PUBLISH_DIR="dist"
EXPECTED_SHA256="cb2f119af836d023b216950c9e9ba3b96d054c8582e06eb567f7208f30fc30e8"

rm -rf "$PUBLISH_DIR" "$ARCHIVE"
mkdir -p "$PUBLISH_DIR"

cat payload/part-*.b64 | tr -d '\r\n' | base64 --decode > "$ARCHIVE"
echo "$EXPECTED_SHA256  $ARCHIVE" | sha256sum --check --status

tar -xzf "$ARCHIVE" -C "$PUBLISH_DIR"
test -f "$PUBLISH_DIR/index.html"

echo "THE THIRD ACT Business OS build completed successfully."
