# n8n Development Container

סביבת פיתוח מלאה לn8n עם PostgreSQL database.

## 🚀 התחלה מהירה

### 1. פתיחת הפרויקט
```bash
git clone <your-repo>
cd n8n
code .
```

### 2. פתיחה בContainer
- Cursor יציע: "Reopen in Container"
- או ידנית: `Ctrl+Shift+P` → "Reopen in Container"

### 3. המתנה לsetup
- הcontainer יבנה אוטומטית
- Dependencies יותקנו
- Project יבנה

### 4. התחלת פיתוח
```bash
pnpm dev
```

## 🎯 מה כלול?

- **Node.js 20** עם pnpm
- **PostgreSQL 16** - database לפיתוח
- **VS Code Extensions** - TypeScript, Prettier, Vue
- **Port forwarding** - 5678 (n8n), 5432 (postgres)

## 📋 פקודות שימושיות

```bash
# התחלת dev server
pnpm dev

# build מלא
pnpm build

# tests
pnpm test

# כניסה לdatabase
docker exec -it devcontainer_postgres_1 psql -U n8n -d n8n
```

## 🔄 סנכרון עם השותף

### לפני push:
```bash
git add .devcontainer/
git commit -m "Update dev container"
git push
```

### אחרי pull:
```bash
git pull
# אם יש שינויים בdevcontainer → rebuild
```

## 🌐 Access Points

- **n8n UI**: http://localhost:5678
- **Database**: localhost:5432
- **Logs**: בterminal של הcontainer

## 🐛 Troubleshooting

### Container לא עולה?
```bash
# Rebuild מחדש
Ctrl+Shift+P → "Rebuild Container"
```

### Database connection issues?
```bash
# בדוק שהdatabase עלה
docker ps
# אמור לראות postgres container
```

### Port conflicts?
```bash
# שנה ports ב-.devcontainer/docker-compose.yml
``` 