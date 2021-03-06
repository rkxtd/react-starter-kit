#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_website_files() {
  git add .
  git commit -a -m "New UI-screenshots"
}

upload_files() {
  git remote add origin-pages https://${GH_TOKEN}@github.com:rkxtd/react-devops-kit.git > /dev/null 2>&1
  git push --quiet
}

setup_git
commit_website_files
upload_files