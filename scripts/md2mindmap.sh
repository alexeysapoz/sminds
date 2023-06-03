#!/bin/sh

# Find and convert markdown files to html
find src -name "*.md" -exec sh -c "
  filepath=\$1
  newpath=\${filepath#src/}
  mkdir -p docs/\$(dirname \$newpath)
  markmap \$filepath -o docs/\${newpath%.md}.html
" sh {} \;
