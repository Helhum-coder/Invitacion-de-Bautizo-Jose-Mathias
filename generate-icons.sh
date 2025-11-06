#!/bin/bash

# Script to generate PWA icons for the Bautizo invitation
# This creates simple icons using ImageMagick

# Colors
BG_COLOR="#87CEEB"
CROSS_COLOR="#FFD700"
TEXT_COLOR="#2c3e50"

# Sizes for PWA icons
SIZES=(72 96 128 144 152 192 384 512)

echo "Generating PWA icons..."

# Check if ImageMagick is installed
if ! command -v convert &> /dev/null; then
    echo "ImageMagick not found. Installing..."
    sudo apt-get update -qq && sudo apt-get install -y -qq imagemagick
fi

# Generate icons for each size
for SIZE in "${SIZES[@]}"; do
    echo "Generating ${SIZE}x${SIZE} icon..."
    
    # Create icon with cross and text
    convert -size ${SIZE}x${SIZE} \
        xc:"$BG_COLOR" \
        -gravity center \
        -font DejaVu-Sans-Bold \
        -pointsize $((SIZE / 6)) \
        -fill "$CROSS_COLOR" \
        -draw "text 0,$((SIZE / -8)) '✝'" \
        -pointsize $((SIZE / 12)) \
        -fill "$TEXT_COLOR" \
        -draw "text 0,$((SIZE / 4)) 'Jose'" \
        -draw "text 0,$((SIZE / 3)) 'Mathias'" \
        icons/icon-${SIZE}x${SIZE}.png
    
    echo "✓ Created icons/icon-${SIZE}x${SIZE}.png"
done

echo "All icons generated successfully!"
