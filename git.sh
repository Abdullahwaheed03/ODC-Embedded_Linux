#! /bin/bash

echo "# ODC-Embedded_Linux" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/Abdullahwaheed03/ODC-Embedded_Linux.git
git push -u origin main