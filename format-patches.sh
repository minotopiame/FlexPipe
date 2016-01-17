echo "============ Formatting patches from repo"

cd BungeeCord

git format-patch -o ../patches origin/master

cd ..

echo "============ Done formatting patches."
