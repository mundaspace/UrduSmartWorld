#!/bin/bash

echo "🚀 Urdu Smart World - Production Deployment Script"
echo "=================================================="

# Check if config.env exists
if [ ! -f "backend/config.env" ]; then
    echo "❌ Error: backend/config.env not found!"
    echo "Please follow the SETUP_GUIDE.md to configure your environment variables."
    exit 1
fi

echo "📦 Installing dependencies..."
npm install
cd backend && npm install && cd ..

echo "🔧 Building frontend..."
npm run build

echo "✅ Build completed!"
echo ""
echo "🌐 Next steps for deployment:"
echo "1. Upload the 'dist' folder to your hosting provider"
echo "2. Deploy the 'backend' folder to your server"
echo "3. Set environment variables on your hosting platform"
echo "4. Update OAuth redirect URIs to your domain"
echo ""
echo "📖 See SETUP_GUIDE.md for detailed instructions"
echo "🔗 Your site will be ready for Google AdSense!" 