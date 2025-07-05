
---

## 🔐 Secure Configuration

- All environment-sensitive values (DB host, username, password, etc.) are loaded from a `.env` file using [`vlucas/phpdotenv`](https://github.com/vlucas/phpdotenv)
- AWS Secrets Manager is optionally used to fetch credentials dynamically for production deployments

---

## 📄 Resume Download Flow

1. User submits roll number
2. Resume is dynamically rendered using HTML + data from RDS
3. Dompdf converts the HTML to PDF
4. PDF is:
   - Streamed to the browser for download
   - Optionally uploaded to S3 for future reference

---

## 🧪 Local Setup

```bash
# Clone the repo
git clone https://github.com/yourusername/resume-builder.git

cd resume-builder

# Install dependencies
composer install

# Create .env file
cp .env.example .env
# Add your DB credentials

# Start local server (if using built-in PHP server)
php -S localhost:8000