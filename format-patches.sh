echo "============ Formatting patches from repo"

cd BungeeCord

git format-patch -k -o ../patches origin/master

cd ..

echo "============ Done formatting patches."
