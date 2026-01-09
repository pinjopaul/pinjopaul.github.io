# DoingNow.AI - Static HTML Version

This folder contains the static HTML version of the DoingNow.AI website, converted from the React application for deployment to GitHub Pages.

## 📁 Folder Structure

```
html/
├── index.html              # Home page
├── platform.html           # Platform Architecture page
├── solutions.html          # Solutions Catalog page
├── programs.html           # Programs page
├── case-studies.html       # Case Studies page
├── resources.html          # Resources page
├── blog.html              # Blog page
├── careers.html           # Careers page
├── contact.html           # Contact/Demo Request page
├── css/
│   └── styles.css         # Combined CSS styles
├── js/
│   └── main.js            # Navigation and form handling
└── public/
    └── o7.png             # Platform architecture diagram
```

## 🚀 Deploying to GitHub Pages

### Method 1: Deploy from this folder

1. Create a new GitHub repository (or use an existing one)
2. Initialize git in this html folder:
   ```bash
   cd html
   git init
   git add .
   git commit -m "Initial commit of static HTML site"
   ```

3. Add your GitHub repository as remote:
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
   git branch -M main
   git push -u origin main
   ```

4. Enable GitHub Pages:
   - Go to your repository on GitHub
   - Navigate to Settings > Pages
   - Under "Source", select "Deploy from a branch"
   - Select "main" branch and "/ (root)" folder
   - Click Save

5. Your site will be available at: `https://YOUR_USERNAME.github.io/YOUR_REPO/`

### Method 2: Deploy from a docs folder in your main repo

1. Copy all files from this html folder to a `docs` folder in your main repository root:
   ```bash
   mkdir -p ../docs
   cp -r * ../docs/
   ```

2. Commit and push:
   ```bash
   cd ..
   git add docs
   git commit -m "Add static HTML site for GitHub Pages"
   git push
   ```

3. Enable GitHub Pages:
   - Go to Settings > Pages
   - Select "main" branch and "/docs" folder
   - Click Save

### Method 3: Use GitHub Pages Action (Recommended)

1. Push this html folder to your repository
2. Create `.github/workflows/deploy.yml`:
   ```yaml
   name: Deploy to GitHub Pages
   
   on:
     push:
       branches: [ main ]
   
   jobs:
     deploy:
       runs-on: ubuntu-latest
       steps:
         - uses: actions/checkout@v3
         - name: Deploy to GitHub Pages
           uses: peaceiris/actions-gh-pages@v3
           with:
             github_token: ${{ secrets.GITHUB_TOKEN }}
             publish_dir: ./html
   ```

## 🎨 Customization

### Updating Content
- Edit the respective HTML files to update page content
- All pages share the same header (navbar) and footer structure
- Update `css/styles.css` for styling changes

### Updating Navigation
- Navigation is consistent across all pages
- Mobile hamburger menu is handled by `js/main.js`
- Active page highlighting is automatic based on current page

### Updating Contact Form
- The contact form uses `mailto:` to open the user's email client
- To use a real form submission service:
  1. Update the `handleContactSubmit` function in `js/main.js`
  2. Integrate with services like Formspree, Netlify Forms, or your own backend

## 🔗 Links and Assets

### Image Paths
- Images are referenced from the `public/` folder
- Example: `<img src="../public/o7.png" alt="...">`
- Update image paths if you move the public folder

### External Links
All external resource links (guides, tools, etc.) are absolute URLs and will work correctly.

## 📱 Responsive Design

The site is fully responsive with:
- Desktop navigation bar
- Mobile hamburger menu
- Responsive grid layouts (3-column and 4-column grids adapt to screen size)
- Touch-friendly navigation on mobile devices

## 🌐 Browser Compatibility

The site uses standard HTML5, CSS3, and vanilla JavaScript. It's compatible with:
- Chrome/Edge (latest)
- Firefox (latest)
- Safari (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## 📝 Notes

- All React Router links have been converted to standard HTML links
- React components (Section, Card, etc.) have been converted to static HTML
- Interactive features (form submission, menu toggle) use vanilla JavaScript
- No build process required - files can be served directly

## 🛠️ Local Development

To test locally, use a simple HTTP server:

```bash
# Using Python 3
python3 -m http.server 8000

# Using Python 2
python -m SimpleHTTPServer 8000

# Using Node.js (npx)
npx http-server

# Using PHP
php -S localhost:8000
```

Then open `http://localhost:8000` in your browser.

## ✅ Pre-deployment Checklist

- [ ] Update all email addresses (currently set to `support@doingnow.ai`)
- [ ] Review and update footer copyright year if needed
- [ ] Test all navigation links
- [ ] Verify all images load correctly
- [ ] Test contact form functionality
- [ ] Check responsive design on mobile devices
- [ ] Verify external links open in new tabs
- [ ] Test on multiple browsers

## 📄 License

Copyright © 2026 doingnow. All rights reserved.
