# 🚀 Railway Deployment Guide - Conejo Negro Café

Your PHP site is now ready for Railway deployment!

## ✅ What's Been Set Up

- **Dockerfile**: PHP 8.2 with Apache web server
- **.htaccess**: URL rewriting, caching, and optimization
- **railway.toml**: Railway deployment configuration
- **Git repository**: Initialized and ready to push

## 📋 Deployment Steps

### 1. Install Railway CLI (if not installed)

```bash
npm install -g @railway/cli
```

### 2. Login to Railway

```bash
railway login
```

This will open your browser to authenticate.

### 3. Create a New Railway Project

```bash
railway init
```

- Choose "Empty Project" or create a new project
- Give it a name like "conejo-negro-cafe"

### 4. Link This Directory to Railway

```bash
railway link
```

Select the project you just created.

### 5. Deploy to Railway

```bash
railway up
```

This will:
- Build your Docker container
- Deploy it to Railway
- Give you a deployment URL

### 6. Generate a Public Domain

```bash
railway domain
```

This creates a public URL like: `conejo-negro-cafe.up.railway.app`

## 🌐 Alternative: Deploy via GitHub

1. **Push to GitHub:**
   ```bash
   gh repo create conejo-negro-cafe --private --source=. --push
   ```

   Or manually:
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/conejo-negro-cafe.git
   git push -u origin master
   ```

2. **Connect to Railway:**
   - Go to [railway.app](https://railway.app)
   - Click "New Project"
   - Choose "Deploy from GitHub repo"
   - Select your repository
   - Railway will auto-detect the Dockerfile and deploy

## 🔧 Environment Variables (if needed)

If you need to add any environment variables:

```bash
railway variables set KEY=value
```

Or use the Railway dashboard.

## 📊 Monitoring

View logs:
```bash
railway logs
```

Check deployment status:
```bash
railway status
```

## 🎯 Your Site URLs

After deployment, your site will be accessible at:
- Railway domain: `https://YOUR_PROJECT.up.railway.app`
- Custom domain: (configure in Railway dashboard)

## 🔄 Future Updates

To deploy changes:

```bash
git add .
git commit -m "Your update message"
railway up
```

Or if using GitHub:
```bash
git push
```
(Railway will auto-deploy)

## 📝 Notes

- **PHP Version**: 8.2
- **Web Server**: Apache
- **Port**: Automatically configured by Railway
- **SSL**: Automatically provided by Railway
- **Images**: Already included in deployment

## ⚡ Quick Deploy (All-in-One)

```bash
railway login
railway init
railway up
railway domain
```

Your site will be live! 🎉
