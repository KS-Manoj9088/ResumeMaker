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


 ## 🔐 Secure Configuration
Uses vlucas/phpdotenv to manage environment variables (.env file)

AWS Secrets Manager is integrated for secure, production-grade credential management

No hardcoded sensitive data in the source code


📄 Resume Download Workflow
User submits roll number via form

Application fetches user data from AWS RDS

HTML resume is generated dynamically

PDF is generated using Dompdf

PDF is:

Streamed to the browser for immediate download

Optionally uploaded to Amazon S3 for backup or reuse



# Clone the repository
git clone https://github.com/yourusername/resume-builder.git
cd resume-builder

# Install PHP dependencies
composer install

# Copy .env template and configure
cp .env.example .env
# Edit .env to add your DB credentials

# Run the application locally
php -S localhost:8000




You can paste this content directly into your `README.md` file at the root of your project directory.

Let me know if you’d like to include a [project demo GIF](f), a [deployment script](f), or [badge integration](f) for GitHub!
