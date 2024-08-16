set -e

wally install

rojo build --output createpackages.rbxl

lune run convert.luau

rm createpackages.rbxl