# 🚀 Quick Deployment Checklist

## Before You Start
- [ ] You have a GitHub account
- [ ] You have your Gmail app password ready
- [ ] You have your Google OAuth credentials ready

## Step 1: Create GitHub Repository
- [ ] Go to GitHub.com → New repository
- [ ] Name: `urdu-smart-world`
- [ ] Public repository
- [ ] Don't initialize with README

## Step 2: Push Your Code
```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/urdu-smart-world.git
git push -u origin main
```

## Step 3: Deploy Backend (Choose One)

### Railway (Recommended)
- [ ] Go to Railway.app
- [ ] Connect GitHub account
- [ ] Create new project from GitHub
- [ ] Select your repository
- [ ] Set environment variables (see below)
- [ ] Copy your Railway domain

### Environment Variables for Railway
```
NODE_ENV=production
PORT=5000
JWT_SECRET=079acf2bbe2440bb67faef202251dfb34d72dc37bba535ed9d71fad4b5f9f848
EMAIL_USER=muhammadsamiullah308@gmail.com
EMAIL_PASS=xhxs zvgo ctfq ifwn
EMAIL_FROM=UrduSmartWorld <muhammadsamiullah308@gmail.com>
GOOGLE_CLIENT_ID=880246465451-29nn2aard2cnaisdglklo09sqk8gk1rm.apps.googleusercontent.com
GOOGLE_CLIENT_SECRET=YOUR_ACTUAL_SECRET
FRONTEND_URL=https://YOUR_USERNAME.github.io/urdu-smart-world
```

## Step 4: Update Your Code

### Update vite.config.ts
- [ ] Replace `your-repo-name` with `urdu-smart-world`

### Update src/services/api.ts
- [ ] Replace `your-backend-domain.com` with your Railway domain

### Update src/pages/Login.tsx
- [ ] Replace OAuth URLs with your Railway domain

## Step 5: Update Google OAuth
- [ ] Go to Google Cloud Console
- [ ] Add to Authorized origins: `https://YOUR_USERNAME.github.io`
- [ ] Add to Redirect URIs: `https://YOUR_RAILWAY_DOMAIN/api/auth/google/callback`

## Step 6: Deploy Frontend
- [ ] Push updated code to GitHub
- [ ] Go to repository → Settings → Pages
- [ ] Source: Deploy from branch
- [ ] Branch: `gh-pages`
- [ ] Save

## Step 7: Test Everything
- [ ] Visit: `https://YOUR_USERNAME.github.io/urdu-smart-world`
- [ ] Test email registration
- [ ] Test Google login
- [ ] Test logout

## Your URLs
- **Frontend**: `https://YOUR_USERNAME.github.io/urdu-smart-world`
- **Backend**: `https://YOUR_RAILWAY_DOMAIN`
- **Health Check**: `https://YOUR_RAILWAY_DOMAIN/api/health`

## 🎯 Ready for AdSense!
- [ ] Site is live and working
- [ ] Authentication is functional
- [ ] Professional appearance
- [ ] Ready to apply for Google AdSense

---

**Need help?** Check the detailed `GITHUB_PAGES_DEPLOYMENT.md` guide! 