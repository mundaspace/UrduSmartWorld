# 🚀 GitHub Pages Deployment Guide

## Step 1: Prepare Your Repository

1. **Create a new GitHub repository**
   - Go to GitHub.com
   - Click "New repository"
   - Name it: `urdu-smart-world` (or your preferred name)
   - Make it public
   - Don't initialize with README (we'll push our code)

2. **Initialize Git and push your code**
   ```bash
   git init
   git add .
   git commit -m "Initial commit - Urdu Smart World"
   git branch -M main
   git remote add origin https://github.com/your-username/urdu-smart-world.git
   git push -u origin main
   ```

## Step 2: Update Configuration Files

### Update vite.config.ts
Replace `your-repo-name` with your actual repository name:
```typescript
base: process.env.NODE_ENV === 'production' ? '/urdu-smart-world/' : '/',
```

### Update src/services/api.ts
Replace `your-backend-domain.com` with your actual backend hosting URL:
```typescript
const API_BASE_URL = process.env.NODE_ENV === 'production' 
  ? 'https://your-backend-domain.com/api'
  : 'http://localhost:5000/api';
```

### Update src/pages/Login.tsx
Replace the OAuth URLs with your production backend:
```typescript
onClick={() => window.location.href = 'https://your-backend-domain.com/api/auth/google'}
onClick={() => window.location.href = 'https://your-backend-domain.com/api/auth/facebook'}
```

## Step 3: Deploy Backend First

You need to deploy your backend before the frontend. Choose one:

### Option A: Railway (Recommended - Free)
1. Go to [Railway.app](https://railway.app/)
2. Connect your GitHub account
3. Create new project from GitHub
4. Select your repository
5. Set environment variables:
   ```
   NODE_ENV=production
   PORT=5000
   JWT_SECRET=079acf2bbe2440bb67faef202251dfb34d72dc37bba535ed9d71fad4b5f9f848
   EMAIL_USER=muhammadsamiullah308@gmail.com
   EMAIL_PASS=xhxs zvgo ctfq ifwn
   EMAIL_FROM=UrduSmartWorld <muhammadsamiullah308@gmail.com>
   GOOGLE_CLIENT_ID=880246465451-29nn2aard2cnaisdglklo09sqk8gk1rm.apps.googleusercontent.com
   GOOGLE_CLIENT_SECRET=your-actual-secret
   FRONTEND_URL=https://your-username.github.io/urdu-smart-world
   ```

### Option B: Heroku
1. Create Heroku account
2. Install Heroku CLI
3. Deploy using Heroku CLI

### Option C: Vercel
1. Go to [Vercel.com](https://vercel.com/)
2. Import your GitHub repository
3. Set environment variables

## Step 4: Update Google OAuth Settings

1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Your project → APIs & Services → Credentials
3. Edit your OAuth client
4. Add to **Authorized JavaScript origins**:
   ```
   https://your-username.github.io
   ```
5. Add to **Authorized redirect URIs**:
   ```
   https://your-backend-domain.com/api/auth/google/callback
   ```

## Step 5: Enable GitHub Pages

1. Go to your GitHub repository
2. Settings → Pages
3. Source: Deploy from a branch
4. Branch: `gh-pages`
5. Folder: `/ (root)`
6. Click Save

## Step 6: Deploy Frontend

1. **Push your updated code**:
   ```bash
   git add .
   git commit -m "Update for production deployment"
   git push
   ```

2. **The GitHub Action will automatically**:
   - Build your project
   - Deploy to GitHub Pages
   - Create the `gh-pages` branch

3. **Wait 2-3 minutes** for deployment to complete

## Step 7: Test Your Live Site

1. Go to: `https://your-username.github.io/urdu-smart-world`
2. Test registration with email
3. Test Google login
4. Test logout

## Step 8: Custom Domain (Optional)

1. Buy a domain (GoDaddy, Namecheap, etc.)
2. In GitHub repository → Settings → Pages
3. Add your custom domain
4. Update DNS settings
5. Update all URLs in your code to use your domain

## 🔧 Troubleshooting

### Build Fails
- Check GitHub Actions tab for errors
- Ensure all dependencies are in package.json
- Check for TypeScript errors

### OAuth Not Working
- Verify redirect URIs match exactly
- Check backend is deployed and accessible
- Test backend health endpoint

### Email Not Sending
- Verify Gmail app password is correct
- Check Railway/Heroku environment variables
- Check backend logs

## 📱 Your Site URLs

- **Frontend**: `https://your-username.github.io/urdu-smart-world`
- **Backend**: `https://your-backend-domain.com`
- **Health Check**: `https://your-backend-domain.com/api/health`

## 🎯 Google AdSense Ready

Your site is now:
- ✅ Live on GitHub Pages
- ✅ Real authentication working
- ✅ Email verification active
- ✅ Google OAuth functional
- ✅ Professional and secure
- ✅ Ready for AdSense application

---

**Need help?** Check the GitHub Actions tab for build logs! 