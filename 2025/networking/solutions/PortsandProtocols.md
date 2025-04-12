#🌐 Protocols & Ports Every DevOps Engineer Should Know

Understanding network protocols and their associated port numbers is crucial for anyone in DevOps. Whether you're configuring firewalls, setting up CI/CD pipelines, or deploying apps in cloud environments, you’ll encounter these protocols daily.

##🔐 1. SSH (Secure Shell)
• Port: 22
• Protocol: SSH
• Purpose in DevOps:
o Securely access remote servers
o Run automation scripts over SSH
o Key-based authentication for CI/CD tools
• Example: ssh user@yourserver.com

##🌍 2. HTTP (HyperText Transfer Protocol)
• Port: 80
• Protocol: HTTP
• Purpose in DevOps:
o Basic web traffic (non-encrypted)
o API endpoints for testing in development environments
o Communication between microservices (internal)
• Example: http://localhost:3000/healthcheck

##🔒 3. HTTPS (HTTP Secure)
• Port: 443
• Protocol: HTTPS (HTTP + TLS/SSL)
• Purpose in DevOps:
o Secure communication for production services
o TLS termination in NGINX/Apache load balancers
o Managing SSL certificates (Let’s Encrypt, Certbot)
• Example: https://yourdomain.com

##📂 4. FTP (File Transfer Protocol)
• Port: 21 (Control), 20 (Data)
• Protocol: FTP
• Purpose in DevOps:
o Rare in modern DevOps due to security issues
o Sometimes used for transferring legacy data or backups
• Alternative: Use SFTP (uses SSH) or scp

##🌐 5. DNS (Domain Name System)
• Port: 53
• Protocol: DNS (UDP/TCP)
• Purpose in DevOps:
o Resolves domain names to IP addresses
o Used in container orchestration (Kubernetes DNS)
o DNS management in cloud platforms (Route 53, Cloudflare)
• Example: ping google.com (uses DNS under the hood)

##📦 6. SMTP / POP3 / IMAP (Email Protocols)
• SMTP: 25 / 587 / 465
• POP3: 110
• IMAP: 143 / 993
• Purpose in DevOps:
o Email notifications in CI/CD pipelines (Jenkins, GitHub Actions)
o Monitoring alerts and system logs via email
• Note: Often integrated with services like SendGrid or Mailgun



##🧠 7. SNMP (Simple Network Management Protocol)
• Port: 161
• Purpose in DevOps:
o Used in monitoring tools (Nagios, Zabbix, Prometheus)
o Collecting metrics from servers and network devices

##🔄 8. RDP (Remote Desktop Protocol)
• Port: 3389
• Protocol: RDP
• Purpose in DevOps:
o Remote management of Windows servers
o GUI access when SSH is not applicable

##🔧 9. Docker & Kubernetes Specific Ports
• Docker API: 2375 (non-TLS), 2376 (TLS)
• Kubernetes API Server: 6443
• Purpose in DevOps:
o Container orchestration and automation
o Managing pods, services, and deployments programmatically


##🛠 Why This Matters for DevOps
✅ Infrastructure as Code – Managing ports and firewall rules in Terraform, Ansible, or AWS security groups
✅ Automation – Interacting with remote systems and APIs
✅ Monitoring – Using SNMP, DNS, and HTTPS for health checks
✅ Security – Understanding what’s exposed on which port is critical for audits and compliance


