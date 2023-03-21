#!/bin/bash

echo "[INFO] Create a new version"
read -p "Give the targeted version: " -r VERSION

mkdir "$VERSION"
cat <<EOF >> "$VERSION/Dockerfile"
ARG VERSION=${VERSION}

FROM pockost/scrapy:onbuild
EOF

rm latest
ln -s "$VERSION" latest

git add "${VERSION}"
git add latest
git commit -m "feat(release): Add ${VERSION}"
git tag "${VERSION}"

git push gitlab master
git push origin master
git push gitlab "${VERSION}"
git push origin "${VERSION}"
