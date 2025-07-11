# 🚀 Quick Setup for Real Authentication

## Step 1: Set Up Gmail (5 minutes)

1. Go to your Google Account: https://myaccount.google.com/
2. Security → 2-Step Verification → Turn on
3. Security → App passwords → Generate
4. Select "Mail" → Name it "UrduSmartWorld"
5. Copy the 16-character password

## Step 2: Update Email Settings

Edit `backend/config.env`:
```env
EMAIL_USER=your-gmail@gmail.com
EMAIL_PASS=your-16-character-app-password
EMAIL_FROM=Urdu Smart World <your-gmail@gmail.com>
```

## Step 3: Set Up Google OAuth (10 minutes)

1. Go to: https://console.cloud.google.com/
2. Create new project: "UrduSmartWorld"
3. APIs & Services → Library → Search "Google+ API" → Enable
4. Credentials → Create Credentials → OAuth client ID
5. Web application
6. Authorized origins: `http://localhost:5173`
7. Authorized redirect: `http://localhost:5000/api/auth/google/callback`
8. Copy Client ID and Secret

## Step 4: Update Google OAuth

Edit `backend/config.env`:
```env
GOOGLE_CLIENT_ID=your-client-id-here
GOOGLE_CLIENT_SECRET=your-client-secret-here
```

## Step 5: Test Everything

```bash
# Terminal 1 - Backend
cd backend
npm run dev

# Terminal 2 - Frontend  
npm run dev
```

## Step 6: Test Features

1. Go to http://localhost:5173
2. Click Login → Register with email
3. Check your email for verification
4. Login with Google → Should work!
5. Logout → Should work!

## 🎯 For Production (When you have a domain)

1. Update `FRONTEND_URL` to your domain
2. Update OAuth redirect URIs to your domain
3. Deploy backend to hosting (Heroku/Railway)
4. Deploy frontend to hosting (Netlify/Vercel)

## 📧 Email Verification Flow

1. User registers → Email sent
2. User clicks link → Account verified
3. User can now login
4. User stays logged in until logout

## 🔐 Security Features

- ✅ JWT tokens (30 days)
- ✅ Email verification required
- ✅ Password hashing
- ✅ Google OAuth
- ✅ Persistent sessions
- ✅ Secure logout

---

**Need help?** Follow the detailed SETUP_GUIDE.md 