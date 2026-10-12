#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
android_sdk="${ANDROID_SDK_ROOT:-${ANDROID_HOME:-}}"
build_tools="${ANDROID_BUILD_TOOLS:-${android_sdk:+$android_sdk/build-tools/35.0.0}}"
if [[ -z "$build_tools" || ! -x "$build_tools/zipalign" || ! -x "$build_tools/apksigner" ]]; then
  echo 'Install Android Build Tools 35.0.0 and set ANDROID_HOME or ANDROID_BUILD_TOOLS.' >&2
  exit 1
fi

unsigned_apk="$repo_root/out/examcipus1-unsigned.apk"
aligned_apk="$repo_root/out/examcipus1-aligned.apk"
signed_apk="$repo_root/out/examcipus1-debug.apk"
keystore="$repo_root/.cache/debug.keystore"
[[ -f "$unsigned_apk" ]] || { echo 'Run scripts/build-apk.sh first.' >&2; exit 1; }
mkdir -p "$repo_root/.cache"

# Android's conventional debug credentials; this key is for development only.
# Reuse locally, but never commit the private key or use it for production.
if [[ ! -f "$keystore" ]]; then
  keytool -genkeypair -noprompt -keystore "$keystore" -storetype JKS \
    -storepass android -keypass android -alias androiddebugkey \
    -keyalg RSA -keysize 2048 -validity 10000 \
    -dname 'CN=Android Debug,O=Android,C=US'
fi
"$build_tools/zipalign" -f -p 4 "$unsigned_apk" "$aligned_apk"
"$build_tools/apksigner" sign --ks "$keystore" --ks-key-alias androiddebugkey \
  --ks-pass pass:android --key-pass pass:android --out "$signed_apk" "$aligned_apk"
"$build_tools/zipalign" -c -p 4 "$signed_apk"
"$build_tools/apksigner" verify --verbose "$signed_apk"
printf 'Debug APK: %s\n' "$signed_apk"
