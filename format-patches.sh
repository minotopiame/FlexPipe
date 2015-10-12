echo "============ Formatting patches from repo"

git format-patch -o ../patches origin/master

echo "============ Done formatting patches."
