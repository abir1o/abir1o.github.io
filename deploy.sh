#!/bin/bash

# A simple script to quickly deploy changes to GitHub Pages

# Check if a commit message was provided
if [ -z "$1" ]; then
  COMMIT_MSG="no-commit"
else
  COMMIT_MSG="$1"
fi

echo "🚀 Adding changes..."
git add .

echo "📝 Committing with message: '$COMMIT_MSG'..."
git commit -m "$COMMIT_MSG"

echo "☁️ Pushing to GitHub..."
git push origin master

echo " deploying. Give it 1-2 minutes to go live on https://abir1o.github.io"
