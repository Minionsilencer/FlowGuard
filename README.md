# 🛡 FlowGuard — LSP Monitoring Tool

Monitor Orders · Statements · Scheduled Billing · Subscriptions end-to-end.

## 📁 Project Structure

```
flowguard/
├── index.html          ← Home page (current)
├── server.js           ← Local dev server (Node.js)
├── README.md
├── pages/              ← Future sub-pages (orders, billing, subs, statements)
└── assets/
    ├── css/            ← Shared stylesheets
    ├── js/             ← Shared scripts
    └── icons/          ← SVG icons
```

## 🚀 Start Local Server

### Option 1 — Node.js (recommended)
```bash
cd flowguard
node server.js
```
Open → http://localhost:3000

### Option 2 — Python (no install needed)
```bash
cd flowguard
python3 -m http.server 3000
```
Open → http://localhost:3000

## 🗺 Roadmap
- [ ] Orders detail & timeline view
- [ ] Scheduled Billing run tracker
- [ ] Subscription lifecycle drilldown
- [ ] Statements reconciliation view
- [ ] Global search & filter
- [ ] Alert management panel
