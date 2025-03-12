#!/bin/bash

TIMESTAMP=$(date +"%d-%m-%Y / %I:%M%p")

git add .
git commit -m "$TIMESTAMP"
git push origin main