#!/usr/bin/env bash

INPUT_DIR="Original"
BG_DIR="tmp1_png"
TMP_DIR="tmp2_png"
OUTPUT_DIR="output_avif"

mkdir -p "$TMP_DIR" "$OUTPUT_DIR" "$BG_DIR"

for img in "$INPUT_DIR"/*; do
    filename=$(basename "$img")
    name="${filename%.*}"

    echo "Processing: $filename"

    # 1. Remove background (assumes white/light background)
    backgroundremover -i "$img" -o "$BG_DIR/$name.png"
    
    # 2. Convert to black & white
    # 3. Output PNG with transparency
    convert "$BG_DIR/$name.png" \
        -colorspace Gray \
        "$TMP_DIR/$name.png"

    # 4. Convert to AVIF
    avifenc \
        "$TMP_DIR/$name.png" \
        "$OUTPUT_DIR/$name.avif"
done

echo "✅ Done. AVIF files are in $OUTPUT_DIR/"

rm -r "$TMP_DIR" "$BG_DIR"

