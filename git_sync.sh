#!/bin/bash
github_token="${GITHUB_TOKEN}"
github_username="aaa464681925gmail"
repo_name="cfnb"
branch="main"
cd "$(dirname "$0")" || exit 1
git pull origin "$branch"
git add ip.txt
commit_msg="Update ip.txt on $(date '+%Y-%m-%d %H:%M:%S')"
git commit -m "$commit_msg"
git push "https://${github_token}@github.com/${github_username}/${repo_name}.git" "$branch" --force
