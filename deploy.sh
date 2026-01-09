#!/bin/bash

# Quick deployment script for GitHub Pages
# This script helps you deploy the static HTML site to GitHub Pages

echo "🚀 DoingNow.AI - GitHub Pages Deployment Helper"
echo "==============================================="
echo ""

# Check if we're in the html directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: Please run this script from the html directory"
    exit 1
fi

echo "✅ Found index.html - ready to deploy!"
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing git repository..."
    git init
    echo "✅ Git initialized"
else
    echo "✅ Git already initialized"
fi

echo ""
echo "📝 Next steps:"
echo ""
echo "1. Create a new repository on GitHub (if you haven't already)"
echo "   → Go to https://github.com/new"
echo ""
echo "2. Add your GitHub repository as remote:"
echo "   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git"
echo ""
echo "3. Stage and commit all files:"
echo "   git add ."
echo "   git commit -m 'Initial commit of static HTML site'"
echo ""
echo "4. Push to GitHub:"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "5. Enable GitHub Pages:"
echo "   → Go to your repository on GitHub"
echo "   → Settings > Pages"
echo "   → Source: Deploy from branch 'main' and folder '/ (root)'"
echo "   → Save"
echo ""
echo "6. Your site will be available at:"
echo "   https://YOUR_USERNAME.github.io/YOUR_REPO/"
echo ""
echo "📚 For more details, see README.md"
echo ""

read -p "Would you like to add and commit all files now? (y/n) " -n 1 -r
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]
then
    git add .
    git commit -m "Initial commit of static HTML site"
    echo "✅ Files committed successfully!"
    echo ""
    echo "Now run: git remote add origin YOUR_REPO_URL"
    echo "Then: git push -u origin main"
fi
