Linux Networking Commands Cheat Sheet
A quick reference for common Linux networking tools — includes purpose, usage, and examples.

1. 🔍 ping
Purpose: Test connectivity to a host and measure response time.

Usage:

Edit
ping <hostname or IP>
Example:

bash
Copy
Edit
ping google.com
Tip: Use -c 4 to send only 4 packets.

bash
Copy
Edit
ping -c 4 8.8.8.8
2. 🛰️ traceroute
Purpose: Display the path packets take to a network host.

Usage:

bash
Copy
Edit
traceroute <hostname or IP>
Example:

bash
Copy
Edit
traceroute openai.com
3. 📊 netstat or ss
Purpose: Show active connections and listening ports.

Usage (netstat):

bash
Copy
Edit
netstat -tuln
Usage (ss) (recommended for modern systems):

bash
Copy
Edit
ss -tuln
Flags:

-t = TCP

-u = UDP

-l = Listening ports

-n = Numeric output (no DNS lookup)

4. 🌐 curl
Purpose: Interact with URLs (HTTP, FTP, APIs, etc.)

Basic Usage:

bash
Copy
Edit
curl <url>
Examples:

bash
Copy
Edit
curl https://example.com
curl -O https://example.com/file.txt
curl -X POST -d "name=linux" https://api.site.com
5. 🧭 dig
Purpose: Query DNS servers for domain information.

Usage:

bash
Copy
Edit
dig <domain>
Example:

bash
Copy
Edit
dig google.com
6. 📞 nslookup
Purpose: Lookup DNS records (simpler than dig)

Usage:

bash
Copy
Edit
nslookup <domain>
Example:

bash
Copy
Edit
nslookup openai.com
7. 📡 ip
Purpose: View and configure network interfaces.

Common Commands:

bash
Copy
Edit
ip a         # Show IP addresses
ip link      # Show network interfaces
ip route     # Show routing table
8. 🔌 telnet
Purpose: Test connectivity to a specific IP and port.

Usage:

bash
Copy
Edit
telnet <host> <port>
Example:

bash
Copy
Edit
telnet google.com 80
9. 🔐 ssh
Purpose: Secure shell access to remote Linux servers.

Usage:

bash
Copy
Edit
ssh username@hostname_or_ip
Example:

bash
Copy
Edit
ssh alice@192.168.1.100
10. 📥 wget
Purpose: Download files from the internet.

Usage:

bash
Copy
Edit
wget <url>
Example:

bash
Copy
Edit
wget https://example.com/file.zip
