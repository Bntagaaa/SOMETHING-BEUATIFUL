#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
tool_dir="$repo_root/.cache/tools"
apktool_version=2.12.1
apktool_sha256=66cf4524a4a45a7f56567d08b2c9b6ec237bcdd78cee69fd4a59c8a0243aeafa
apktool_jar="$tool_dir/apktool_${apktool_version}.jar"
mkdir -p "$tool_dir" "$repo_root/out"

if [[ ! -f "$apktool_jar" ]]; then
  curl --fail --location --retry 3 --proto '=https' --proto-redir '=https' \
    "https://github.com/iBotPeaches/Apktool/releases/download/v${apktool_version}/apktool_${apktool_version}.jar" \
    --output "$apktool_jar.download"
  printf '%s  %s\n' "$apktool_sha256" "$apktool_jar.download" | sha256sum --check --status
  mv "$apktool_jar.download" "$apktool_jar"
fi
printf '%s  %s\n' "$apktool_sha256" "$apktool_jar" | sha256sum --check --status

java -jar "$apktool_jar" build \
  --frame-path "$repo_root/.cache/framework" \
  --output "$repo_root/out/examcipus1-unsigned.apk" "$repo_root/apk"
printf 'Unsigned APK: %s\n' "$repo_root/out/examcipus1-unsigned.apk"
