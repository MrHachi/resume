#!/usr/bin/env bash
set -euo pipefail


# Usage:
#   ./render.sh values.yml resume.md [style.css]
#
# Produces:
#   rendered/resume.pdf

VALUES="${1:?Usage: $0 <resume.md> [<style.css>]}"
MD_TPL="${2:?Usage: $0 <resume.md> [<style.css>]}"
CSS_FILE="${3:-main.css}"

if [[ ! -f "$VALUES" ]]; then
    echo "Error: file not found: $VALUES" >&2
    exit 1
fi

if [[ ! -f "$MD_TPL" ]]; then
    echo "Error: file not found: $MD_TPL" >&2
    exit 1
fi

if [[ ! -f "$CSS_FILE" ]]; then
    echo "Error: file not found: $CSS_FILE" >&2
    exit 1
fi

# Get the realpath for values passed to the Go template renderer
VALUES="$(realpath "$VALUES")"
MD_TPL="$(realpath "$MD_TPL")"

if ! npx --no-install @tailwindcss/cli --version >/dev/null 2>&1; then
    echo "Error: @tailwindcss/cli is not installed." >&2
    exit 1
fi

DIR="$(cd "$(dirname "$MD_TPL")" && pwd)"
BASE="$(basename "$MD_TPL" .md)"

BUILD_DIR="$DIR/.build"
TAILWIND_CSS="$BUILD_DIR/$CSS_FILE"

OUT_DIR="$DIR/rendered"
MD_FILE="$OUT_DIR/$BASE.md"
PDF="$OUT_DIR/$BASE.pdf"

mkdir -p "$(dirname "$TAILWIND_CSS")"
mkdir -p "$OUT_DIR"

build_css() {
    echo "→ Building CSS..."

    npx --no-install @tailwindcss/cli \
        -i "$CSS_FILE" \
        -o "$TAILWIND_CSS" \
        --minify
}

render_template() {
    echo "→ Rendering template..."

    go -C tpl run . \
        "$VALUES" "$MD_TPL" \
        > "$MD_FILE"

    echo "✓ $PDF"
}

render_markdown() {
    echo "→ Rendering Markdown..."

    npx md-to-pdf \
        "$MD_FILE" \
        --stylesheet "$TAILWIND_CSS"

    echo "✓ $PDF"
}

build_css
render_template
render_markdown
