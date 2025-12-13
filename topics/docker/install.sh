#!/bin/sh

case "$(uname -m)" in
  x86_64)         ARCH="amd64" ;; # 64‑bit Intel/AMD
  aarch64|armv8*) ARCH="arm64" ;; # 64‑bit ARM (Apple Silicon, AWS Graviton, etc.)
  *)
    echo "❌ Unsupported architecture for devpod: $(uname -m)"
    exit 0
    ;;
esac

echo "› Installing devpod..."
curl -L -o "$ZSH/bin/devpod" "https://github.com/loft-sh/devpod/releases/latest/download/devpod-linux-$ARCH" && chmod 0755 "$ZSH/bin/devpod"
echo "› Installed devpod"
echo ""

exit 0
