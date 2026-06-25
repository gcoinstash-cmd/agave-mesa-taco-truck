# 🌵 Agave & Mesa — Premium Taco Truck Production Template

Welcome to **Agave & Mesa**, an experiential, luxury-editorial dark-mode template engineered for high-end hospitality brands, cult-status street food operations, and premium digital storefronts.

## ⚡ Quick Deployment Guide (5-Minutes)

### 1. Initialize Local Project
Ensure you have Node.js installed. Install the dependencies and spin up the development environment:
```bash
npm install
npm run dev
```

### 2. Configure the Backend (Supabase)
1. Go to [Supabase](https://supabase.com/) and spin up a new free project.
2. Navigate to the **SQL Editor** tab in your Supabase dashboard.
3. Paste the contents of `supabase.sql` into the editor and hit **Run** to set up the architecture, tables, and security policies.
4. Run the contents of `seed.sql` to populate your menu with template starter assets.
5. Go to **Project Settings > API** to grab your project URL and public anon key.

### 3. Bind Environment Variables
Duplicate the `.env.example` blueprint and rename it to `.env`:
```bash
cp .env.example .env
```
Open `.env` and insert your live Supabase credentials. The **Dual-Mode Fallback Engine** will automatically detect these keys and smoothly hot-swap from local sandbox data to real-time live replication streams.

### 4. Deploy to Production
Connect your repository to **Netlify** or **Vercel**. Ensure you add `VITE_SUPABASE_URL` and `VITE_SUPABASE_ANON_KEY` as Environment Variables in your hosting dashboard configuration before triggering the production build.

---
*Brought to you by Aura & Grid Architecture.*
