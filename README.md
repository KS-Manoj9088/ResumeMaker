# 📝 Resume Builder Application

An interactive and secure web application to help users **build, view, and download professional resumes** in PDF format.

Built with **PHP, MySQL**, and deployed using **AWS infrastructure** to ensure scalability, performance, and security.

---

## 🚀 Key Features

- 🧾 Dynamic resume generation from user-submitted data  
- 📄 One-click PDF download using **Dompdf**  
- 🔐 Credentials managed securely via **AWS Secrets Manager**  
- 🌐 High-availability deployment using **EC2 + CloudFront**  
- 📦 Resume storage on **Amazon S3**  
- 🗄️ Centralized relational database using **AWS RDS (MySQL)**  
- 🧰 Print-optimized HTML/CSS resume layout  

---

## 🛠️ Tech Stack

| Feature                    | Technology           |
|---------------------------|----------------------|
| Backend                   | PHP (8.x)            |
| Database                  | AWS RDS (MySQL)      |
| PDF Generation            | Dompdf               |
| Secrets Management        | AWS Secrets Manager  |
| File Storage              | Amazon S3            |
| Web Server                | EC2 (Apache)         |
| CDN & HTTPS               | AWS CloudFront       |
| Environment Config        | `vlucas/phpdotenv`   |

---

## 🧩 System Architecture

```text
+-------------------+       +-------------------------+
|   Client (User)   +<----->+  AWS CloudFront (CDN)   |
+-------------------+       +-----------+-------------+
                                        |
                              +---------v---------+
                              |   EC2 (Apache)     |
                              |  PHP Application   |
                              +---------+----------+
                                        |
                    +-------------------+-------------------+
                    |                   |                   |
            +-------v-----+     +-------v------+    +-------v----------------+
            | phpdotenv   |     |  Dompdf Lib  |    |  AWS Secrets Manager  |
            +-------------+     +--------------+    +------------------------+
                                        |
                                 +------v------+
                                 | DB Connector|
                                 +------+------+
                                        |
                                 +------v------+
                                 | AWS RDS     |
                                 | (MySQL DB)  |
                                 +-------------+
                                        |
                                 +------v------+
                                 | HTML to PDF |
                                 |  Renderer   |
                                 +-------------+
                                        |
                                 +------v------+
                                 | Upload to   |
                                 |   S3 Bucket |
                                 +-------------+
```

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