# 🧪 Networking Commands Cheat Sheet (DevOps Edition)


## 1. 🟢 ping -Check Network Connectivity

Purpose: Test if a host is reachable and measure round-trip time (RTT).
Basic Usage:

```bash
ping google.com
```
Options:

- c 4: Send 4 packets only

- i 2: Wait 2 seconds between pings

## 2. 🌍 traceroute / tracert — Trace Route to Host
Purpose: Show the path packets take to reach a destination.

```bash
traceroute google.com
```
Use Case: Diagnose where a network delay or failure occurs (e.g., hops between routers).


## 3. 📊 netstat — View Network Connections & Stats
Purpose: Display active connections, routing tables, interface stats.

Basic Usage:

```bash
netstat -tuln
```
Options:

- t: TCP

- u: UDP

- l: Listening ports

- n: Show numerical addresses/ports


## 4. 🌐 curl — Make HTTP Requests from Terminal
Purpose: Interact with APIs and test HTTP services.

Basic Usage:

```bash
curl https://api.github.com
```
Common Flags:

- I: Fetch headers only

- X POST: Send POST request

- d: Send data with request

- H: Add custom headers

Example:

```bash
curl -X POST -H "Content-Type: application/json" \
-d '{"name":"test"}' https://api.example.com/create
```

## 5. 🔍 dig / nslookup — DNS Query Tools
🧠 dig (Linux/macOS):
Purpose: Query DNS nameservers for host addresses, MX records, etc.

Usage:

```bash
dig openai.com
```
To get just the IP:

```bash
dig +short openai.com
``` 

## 🖥 nslookup (Cross-platform):
Usage:

```bash

nslookup openai.com
```

## 🛠 Bonus: Quick Troubleshooting Flow

✅ Is it online? → ping

🚧 Where is it breaking? → traceroute

🔌 Are ports open/listening? → netstat or ss

🌐 Is the API or web server responding? → curl

🌍 Is the domain resolving correctly? → dig or nslookup

