#!/data/data/com.termux/files/usr/bin/bash

# Lmka Script - More powerful than Hydra
# Created for Termux

# Install figlet and display a banner
pkg install figlet -y > /dev/null 2>&1
clear
figlet "power Copyright"

echo "🔵 Lmka Script - Starting..."

# Check dependencies
echo "🔍 Checking dependencies..."
pkg update -y && pkg upgrade -y
pkg install git wget curl python hydra nmap sqlmap metasploit -y

# Main Menu
while true; do
    clear
    figlet "Lmka Script"
    echo "🔵 MAIN MENU - Choose an option:"
    echo "-------------------------------------"
    echo "💀 [01-20] Hydra Attacks"
    echo "🛠️ [21-40] Security Tools"
    echo "🕵️ [41-60] Scanners & Recon"
    echo "🔗 [61-80] Network Attacks & Exploits"
    echo "🎭 [81-100] Anonymity, Proxy & System"
    echo "❌ [00] Exit"
    echo "-------------------------------------"
    
    read -p "👉 Choose: " option

    case $option in
        1) read -p "Target: " target; hydra -L users.txt -P passwords.txt ssh://$target -V ;;
        2) read -p "Target: " target; hydra -L users.txt -P passwords.txt ftp://$target -V ;;
        3) read -p "Target: " target; hydra -L users.txt -P passwords.txt telnet://$target -V ;;
        4) read -p "Target: " target; hydra -L users.txt -P passwords.txt mysql://$target -V ;;
        5) read -p "Target: " target; hydra -L users.txt -P passwords.txt rdp://$target -V ;;
        6) read -p "Target: " target; hydra -L users.txt -P passwords.txt postgresql://$target -V ;;
        7) read -p "Target: " target; hydra -L users.txt -P passwords.txt http-form://$target -V ;;
        8) read -p "Target: " target; hydra -L users.txt -P passwords.txt smtp://$target -V ;;
        9) read -p "Target: " target; hydra -L users.txt -P passwords.txt pop3://$target -V ;;
        10) read -p "Target: " target; hydra -L users.txt -P passwords.txt imap://$target -V ;;
        11) hydra -h ;;
        12) hydra -U ;;
        13) hydra -R ;;
        14) hydra -F ;;
        15) hydra -d ;;
        16) hydra -w 5 ;;
        17) hydra -t 4 ;;
        18) hydra -V ;;
        19) hydra -s 22 ;;
        20) hydra -o results.txt ;;

        21) echo "🔧 Installing Metasploit..."; pkg install metasploit -y ;;
        22) echo "🔧 Installing SQLmap..."; pkg install sqlmap -y ;;
        23) echo "🔧 Installing Nmap..."; pkg install nmap -y ;;
        24) echo "🔧 Installing John The Ripper..."; pkg install john -y ;;
        25) echo "🔧 Installing Aircrack-ng..."; pkg install aircrack-ng -y ;;
        26) echo "🔧 Installing Wireshark..."; pkg install wireshark -y ;;
        27) echo "🔧 Installing Netcat..."; pkg install netcat -y ;;
        28) echo "🔧 Installing Reaver..."; pkg install reaver -y ;;
        29) echo "🔧 Installing Hashcat..."; pkg install hashcat -y ;;
        30) echo "🔧 Installing Dirb..."; pkg install dirb -y ;;
        31) echo "🕵️ Scanning ports..."; nmap -p- -T4 -A ;;
        32) echo "🕵️ Finding subdomains..."; amass enum -d example.com ;;
        33) echo "🕵️ Gathering DNS info..."; dnsenum example.com ;;
        34) echo "🕵️ Testing SQL Injection..."; sqlmap -u "http://example.com?id=1" --dbs ;;
        35) echo "🕵️ Identifying web tech..."; whatweb example.com ;;
        36) echo "🕵️ Running Nikto scan..."; nikto -h example.com ;;
        37) echo "🕵️ Bruteforcing directories..."; dirb http://example.com ;;
        38) echo "🕵️ Detecting CMS..."; wpscan --url example.com ;;
        39) echo "🕵️ Capturing packets..."; tcpdump ;;
        40) echo "🕵️ Checking HTTP headers..."; curl -I example.com ;;
        
        41) echo "🔗 Running DoS attack..."; hping3 --flood ;;
        42) echo "🔗 Attempting ARP Spoofing..."; arpspoof ;;
        43) echo "🔗 Performing MITM Attack..."; ettercap -G ;;
        44) echo "🔗 Sniffing traffic..."; driftnet ;;
        45) echo "🔗 Cracking hashes..."; hashcat ;;
        46) echo "🔗 Fuzzing for vulnerabilities..."; wfuzz ;;
        47) echo "🔗 Phishing attack..."; setoolkit ;;
        48) echo "🔗 Creating payloads..."; msfvenom ;;
        49) echo "🔗 Testing SSH credentials..."; hydra -l root -P rockyou.txt ssh ;;
        50) echo "🔗 Cloning websites..."; httrack ;;
        
        51) echo "🎭 Using VPN for anonymity..."; openvpn ;;
        52) echo "🎭 Changing IP with Tor..."; tor ;;
        53) echo "🎭 Creating a reverse proxy..."; ngrok ;;
        54) echo "🎭 Browsing anonymously..."; proxychains ;;
        55) echo "🎭 Changing Tor identity..."; service tor restart ;;
        56) echo "🎭 Testing socks proxies..."; tsocks ;;
        57) echo "🎭 Checking system logs..."; dmesg ;;
        58) echo "🎭 Monitoring processes..."; htop ;;
        59) echo "🎭 Detecting keyloggers..."; chkrootkit ;;
        60) echo "🎭 Hiding files..."; steghide ;;
        
        61) echo "💾 Checking disk usage..."; df -h ;;
        62) echo "💾 Listing files..."; ls -lah ;;
        63) echo "💾 Searching for files..."; find / -name example.txt ;;
        64) echo "💾 Viewing system info..."; uname -a ;;
        65) echo "💾 Editing files..."; nano example.txt ;;
        66) echo "💾 Creating backups..."; tar -czvf backup.tar.gz * ;;
        67) echo "💾 Encrypting files..."; gpg -c file.txt ;;
        68) echo "💾 Decrypting files..."; gpg file.txt.gpg ;;
        69) echo "💾 Managing processes..."; ps aux ;;
        70) echo "💾 Killing processes..."; kill -9 PID ;;
        
        71) echo "💻 Displaying running services..."; service --status-all ;;
        72) echo "💻 Restarting network service..."; systemctl restart network ;;
        73) echo "💻 Checking memory usage..."; free -h ;;
        74) echo "💻 Displaying active users..."; who ;;
        75) echo "💻 Viewing system uptime..."; uptime ;;
        76) echo "💻 Checking SSH status..."; systemctl status ssh ;;
        77) echo "💻 Running a performance test..."; stress-ng ;;
        78) echo "💻 Showing open ports..."; ss -tulnp ;;
        79) echo "💻 Displaying CPU info..."; lscpu ;;
        80) echo "💻 Viewing system logs..."; journalctl -xe ;;

        00) echo "❌ Exiting..."; exit ;;
        
        *) echo "❌ Invalid option!" ;;
    esac
    read -p "Press ENTER to return..."
done
