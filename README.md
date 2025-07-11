# Urdu Smart World - Complete Authentication System

A full-stack web application with comprehensive authentication, user management, and content creation features.

## Features

### 🔐 Authentication System
- **User Registration** with email verification
- **Secure Login/Logout** with JWT tokens
- **Password Reset** via email
- **Email Verification** for new accounts
- **Persistent Sessions** - users stay logged in until logout

### 👥 User Roles & Permissions
- **Regular Users** - Can view content, take quizzes, use PDF tools
- **Creators** - Can create, edit, and manage posts
- **Admins** - Full system access and user management

### 📝 Content Management
- **Create Posts** - Articles, quizzes, PDF tools
- **Edit Posts** - Update content, change status
- **Delete Posts** - Remove unwanted content
- **Post Status** - Draft, Published, Archived
- **Tags System** - Organize content with tags

### 🎨 Modern UI/UX
- **Responsive Design** - Works on all devices
- **Beautiful Animations** - Smooth transitions and effects
- **User-Friendly Interface** - Intuitive navigation
- **Real-time Feedback** - Loading states and notifications

## Tech Stack

### Frontend
- **React 18** with TypeScript
- **Vite** for fast development
- **Tailwind CSS** for styling
- **Framer Motion** for animations
- **React Router** for navigation
- **Lucide React** for icons

### Backend
- **Node.js** with Express
- **JWT** for authentication
- **bcryptjs** for password hashing
- **Nodemailer** for email sending
- **Express Validator** for input validation

## Quick Start

### Prerequisites
- Node.js 16+ 
- npm or yarn

### 1. Clone and Setup Frontend
```bash
# Install frontend dependencies
npm install

# Start frontend development server
npm run dev
```

### 2. Setup Backend
```bash
# Navigate to backend directory
cd backend

# Install backend dependencies
npm install

# Configure environment variables
cp config.env.example config.env
```

### 3. Configure Environment Variables
Edit `backend/config.env`:
```env
PORT=5000
JWT_SECRET=your-super-secret-jwt-key-change-this-in-production
JWT_EXPIRE=7d
EMAIL_USER=your-email@gmail.com
EMAIL_PASS=your-app-password
FRONTEND_URL=http://localhost:5173
```

### 4. Start Backend Server
```bash
# Start backend development server
npm run dev
```

### 5. Access the Application
- Frontend: http://localhost:5173
- Backend API: http://localhost:5000
- Health Check: http://localhost:5000/api/health

## Default Admin Account

The system comes with a default admin account:
- **Email**: admin@urdusmartworld.com
- **Password**: password
- **Role**: Admin

## API Endpoints

### Authentication
- `POST /api/auth/register` - Register new user
- `POST /api/auth/login` - User login
- `POST /api/auth/verify-email` - Verify email address
- `POST /api/auth/forgot-password` - Request password reset
- `POST /api/auth/reset-password` - Reset password
- `GET /api/auth/me` - Get current user

### User Management
- `GET /api/users/profile` - Get user profile
- `PUT /api/users/profile` - Update user profile
- `PUT /api/users/change-password` - Change password
- `GET /api/users` - Get all users (admin only)
- `PUT /api/users/:userId/role` - Update user role (admin only)
- `DELETE /api/users/:userId` - Delete user (admin only)

### Posts
- `GET /api/posts` - Get all published posts
- `GET /api/posts/:postId` - Get single post
- `POST /api/posts` - Create new post (creator only)
- `PUT /api/posts/:postId` - Update post (creator only)
- `DELETE /api/posts/:postId` - Delete post (creator only)
- `GET /api/posts/my/posts` - Get user's posts (creator only)
- `POST /api/posts/:postId/like` - Like post
- `GET /api/posts/search/:query` - Search posts

## User Flow

### 1. Registration Process
1. User fills registration form
2. System creates account (unverified)
3. Verification email sent
4. User clicks email link
5. Account verified, can now login

### 2. Login Process
1. User enters credentials
2. System validates and creates JWT token
3. Token stored in localStorage
4. User redirected to dashboard
5. Token automatically included in API requests

### 3. Creator Workflow
1. Admin promotes user to creator role
2. Creator can access "Create Post" page
3. Creator creates content with tags
4. Posts start as drafts
5. Creator can publish, edit, or delete posts

### 4. Password Reset
1. User requests password reset
2. Reset email sent with token
3. User clicks email link
4. User enters new password
5. Password updated, can login

## Security Features

- **JWT Authentication** - Secure token-based auth
- **Password Hashing** - bcrypt with salt rounds
- **Email Verification** - Prevents fake accounts
- **Input Validation** - Server-side validation
- **CORS Protection** - Configured for frontend
- **Role-Based Access** - Protected routes and endpoints

## Email Configuration

To enable email functionality:

1. **Gmail Setup**:
   - Enable 2-factor authentication
   - Generate app password
   - Use app password in config

2. **Other Providers**:
   - Update email configuration in `backend/utils/email.js`
   - Configure SMTP settings

## Development

### Frontend Development
```bash
# Start development server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview
```

### Backend Development
```bash
# Start with nodemon (auto-restart)
npm run dev

# Start production server
npm start
```

### Database (Future Enhancement)
Currently using in-memory storage. For production:
- Add MongoDB/PostgreSQL
- Update data models
- Implement proper database connections

## Deployment

### Frontend (Vercel/Netlify)
1. Build the project: `npm run build`
2. Deploy `dist` folder
3. Set environment variables

### Backend (Heroku/Railway)
1. Set environment variables
2. Deploy Node.js app
3. Configure CORS for production domain

## Contributing

1. Fork the repository
2. Create feature branch
3. Make changes
4. Test thoroughly
5. Submit pull request

## License

MIT License - feel free to use this project for your own applications.

## Support

For questions or issues:
- Check the documentation
- Review the code comments
- Create an issue on GitHub

---

**Note**: This is a development setup. For production, ensure to:
- Change default admin credentials
- Use strong JWT secrets
- Configure proper email settings
- Set up a production database
- Enable HTTPS
- Configure proper CORS settings 