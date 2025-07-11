# Complete Authentication Setup Guide for Production

## 🚀 Quick Start for Real Authentication

### Step 1: Set Up Gmail for Email Verification

1. **Enable 2-Factor Authentication on your Gmail**
   - Go to your Google Account settings
   - Security → 2-Step Verification → Turn on

2. **Generate App Password**
   - Go to Google Account → Security → App passwords
   - Select "Mail" and "Other (Custom name)"
   - Name it "UrduSmartWorld"
   - Copy the 16-character password

3. **Update config.env**
   ```env
   EMAIL_USER=your-gmail@gmail.com
   EMAIL_PASS=your-16-character-app-password
   EMAIL_FROM=Urdu Smart World <your-gmail@gmail.com>
   ```

### Step 2: Set Up Google OAuth

1. **Go to Google Cloud Console**
   - Visit: https://console.cloud.google.com/
   - Create a new project or select existing

2. **Enable Google+ API**
   - Go to "APIs & Services" → "Library"
   - Search for "Google+ API" and enable it

3. **Create OAuth Credentials**
   - Go to "APIs & Services" → "Credentials"
   - Click "Create Credentials" → "OAuth client ID"
   - Choose "Web application"

4. **Configure OAuth Consent Screen**
   - App name: "Urdu Smart World"
   - User support email: your email
   - Developer contact: your email
   - Save and continue

5. **Set Authorized Origins**
   - For development: `http://localhost:5173`
   - For production: `https://yourdomain.com`

6. **Set Authorized Redirect URIs**
   - For development: `http://localhost:5000/api/auth/google/callback`
   - For production: `https://yourdomain.com/api/auth/google/callback`

7. **Copy Credentials**
   - Copy Client ID and Client Secret
   - Update config.env:
   ```env
   GOOGLE_CLIENT_ID=your-client-id-here
   GOOGLE_CLIENT_SECRET=your-client-secret-here
   ```

### Step 3: Set Up Facebook OAuth (Optional)

1. **Go to Facebook Developers**
   - Visit: https://developers.facebook.com/
   - Create a new app

2. **Configure App**
   - App name: "Urdu Smart World"
   - Contact email: your email

3. **Add Facebook Login**
   - Products → Facebook Login → Set Up
   - Choose "Web"

4. **Configure Settings**
   - Valid OAuth Redirect URIs:
     - Development: `http://localhost:5000/api/auth/facebook/callback`
     - Production: `https://yourdomain.com/api/auth/facebook/callback`

5. **Copy Credentials**
   - App ID and App Secret
   - Update config.env:
   ```env
   FACEBOOK_APP_ID=your-app-id-here
   FACEBOOK_APP_SECRET=your-app-secret-here
   ```

### Step 4: Generate Strong JWT Secret

```bash
# Generate a random 64-character string
node -e "console.log(require('crypto').randomBytes(32).toString('hex'))"
```

Update config.env:
```env
JWT_SECRET=your-generated-64-character-secret
```

### Step 5: Test Everything

1. **Start Backend**
   ```bash
   cd backend
   npm run dev
   ```

2. **Start Frontend**
   ```bash
   npm run dev
   ```

3. **Test Features**
   - Register with email → Check email verification
   - Login with Google → Should redirect to Google
   - Login with Facebook → Should redirect to Facebook
   - Logout → Should clear session

## 🌐 Production Deployment

### For GitHub Pages + Backend Hosting

1. **Update Frontend URLs**
   - Change all `localhost:5000` to your backend domain
   - Update `FRONTEND_URL` in config.env

2. **Deploy Backend**
   - Heroku, Railway, or Vercel
   - Set environment variables
   - Update OAuth redirect URIs

3. **Deploy Frontend**
   - Build: `npm run build`
   - Deploy to GitHub Pages, Netlify, or Vercel

### Environment Variables for Production

```env
NODE_ENV=production
FRONTEND_URL=https://yourdomain.com
JWT_SECRET=your-production-secret
EMAIL_USER=your-gmail@gmail.com
EMAIL_PASS=your-app-password
GOOGLE_CLIENT_ID=your-google-client-id
GOOGLE_CLIENT_SECRET=your-google-client-secret
FACEBOOK_APP_ID=your-facebook-app-id
FACEBOOK_APP_SECRET=your-facebook-app-secret
```

## 🔧 Troubleshooting

### Email Not Sending
- Check Gmail app password is correct
- Ensure 2FA is enabled
- Check spam folder

### Google OAuth Not Working
- Verify redirect URI matches exactly
- Check Client ID/Secret are correct
- Ensure Google+ API is enabled

### Facebook OAuth Not Working
- Verify app is in development mode
- Check redirect URI matches
- Ensure app is approved (if in production)

## 📱 User Flow

1. **Registration**
   - User enters email/password
   - Verification email sent
   - User clicks link to verify
   - Account activated

2. **Login**
   - Email/password or social login
   - JWT token generated
   - User stays logged in until logout

3. **Logout**
   - Token cleared from localStorage
   - User redirected to home

## 🔒 Security Features

- **JWT Tokens**: 30-day expiration
- **Email Verification**: Required for new accounts
- **Password Hashing**: bcrypt with salt
- **CORS Protection**: Configured for your domain
- **Input Validation**: Server-side validation
- **Rate Limiting**: Prevents abuse

## 📧 Email Templates

The system sends:
- **Welcome Email**: After registration
- **Verification Email**: With verification link
- **Password Reset**: With reset link

## 🎯 Google AdSense Ready

This authentication system is perfect for AdSense because:
- Real user verification
- Persistent sessions
- User engagement tracking
- Secure login/logout
- Professional user experience

---

**Need help?** Check the console logs or contact support! 