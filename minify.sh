#!/usr/bin/env bash

echo "minify image process initialized"
npm i easy-image-resizer --global

if [ ! -d "./assets/min" ]; then
  mkdir assets/min
fi

echo "logo"
if [ ! -d "./assets/min/logo" ]; then
  mkdir assets/min/logo
fi
resize-image -i ./assets/logo/brand-logo.png -o ./assets/min/logo/brand-logo.min.png -h 200

echo "logo"
if [ ! -d "./assets/min/logo/light" ]; then
  mkdir assets/min/logo/light
fi
resize-image -i ./assets/logo/light/inline.png -o ./assets/min/logo/light/inline.min.png -h 400

echo "logo"
if [ ! -d "./assets/min/logo/dark" ]; then
  mkdir assets/min/logo/dark
fi
resize-image -i ./assets/logo/dark/inline.png -o ./assets/min/logo/dark/inline.min.png -h 400

echo "wallpaper"
if [ ! -d "./assets/min/wallpaper" ]; then
  mkdir assets/min/wallpaper
fi

echo "wallpaper"
if [ ! -d "./assets/min/wallpaper/inline" ]; then
  mkdir assets/min/wallpaper/inline
fi

echo "wallpaper"
if [ ! -d "./assets/min/wallpaper/inline/branches" ]; then
  mkdir assets/min/wallpaper/inline/branches
fi
resize-image -i ./assets/wallpaper/inline/branches/color.png -o ./assets/min/wallpaper/inline/branches/color.min.png -h 400
resize-image -i ./assets/wallpaper/inline/branches/dark.png -o ./assets/min/wallpaper/inline/branches/dark.min.png -h 400
resize-image -i ./assets/wallpaper/inline/branches/light.png -o ./assets/min/wallpaper/inline/branches/light.min.png -h 400

echo "wallpaper"
if [ ! -d "./assets/min/wallpaper/logo" ]; then
  mkdir assets/min/wallpaper/logo
fi

echo "wallpaper"
if [ ! -d "./assets/min/wallpaper/logo/branches" ]; then
  mkdir assets/min/wallpaper/logo/branches
fi

echo "wallpaper"
if [ ! -d "./assets/min/wallpaper/logo/branches/mobile" ]; then
  mkdir assets/min/wallpaper/logo/branches/mobile
fi
resize-image -i ./assets/wallpaper/logo/branches/mobile/color.png -o ./assets/min/wallpaper/logo/branches/mobile/color.min.png -h 400
resize-image -i ./assets/wallpaper/logo/branches/mobile/dark.png -o ./assets/min/wallpaper/logo/branches/mobile/dark.min.png -h 400
resize-image -i ./assets/wallpaper/logo/branches/mobile/light.png -o ./assets/min/wallpaper/logo/branches/mobile/light.min.png -h 400

echo "badges"
if [ ! -d "./assets/min/badge" ]; then
  mkdir assets/min/badge
fi
resize-image -i ./assets/badge/business-partner-light.png -o ./assets/min/badge/business-partner-light.min.png -h 200
resize-image -i ./assets/badge/business-partner-dark.png -o ./assets/min/badge/business-partner-dark.min.png -h 200


echo "minify image process completed"
