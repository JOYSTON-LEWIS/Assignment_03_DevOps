# 📌 DevOps Assignment 3: System Monitoring, User Management, and Backup Configuration

## 📖 Overview
This repository contains solutions for a DevOps assignment that involves setting up system monitoring, user workspace management, and automated backup configurations for web servers. The implemented solutions include the use of monitoring tools (htop or nmon), user account configuration with security measures, and automated backups for Apache and Nginx web servers, scheduled via cron jobs. All tasks are properly documented with clear instructions and output verification.

---

## ✅ Solved Tasks

### 🚀 Task 1: System Monitoring Setup
Objective: Configure a monitoring system to ensure the development environment’s health, performance, and capacity planning.

#### Steps:
1. Installed and configured **htop** or **nmon** to monitor CPU, memory, and process usage.
2. Set up disk usage monitoring using **df** and **du** to track storage availability.
3. Copy the Content of the Scripts in Q1 folder to your linux instance
4. Make them executable with chmod +x "your_script_name.sh"command
5. Schedule them to run on cronjob with passwordless sudo execution provision

PS: Some commands inside script require sudo permissions, so ensure you have passwordless execution for the same for it to run successfully on cronjob

#### Output:
![Q1_Img_01](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q1_Img_01.png)
![Q1_Img_02](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q1_Img_02.png)
![Q1_Img_03](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q1_Img_03.png)
![Q1_Img_04](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q1_Img_04.png)
![Q1_Img_05](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q1_Img_05.png)
![Q1_Img_06](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q1_Img_06.png)
![Q1_Img_07](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q1_Img_07.png)
![Q1_Img_08](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q1_Img_08.png)
![Q1_Img_09](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q1_Img_09.png)
![Q1_Img_10](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q1_Img_10.png)
![Q1_Img_11](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q1_Img_11.png)
![Q1_Img_12](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q1_Img_12.png)
![Q1_Img_13](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q1_Img_13.png)
![Q1_Img_14](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q1_Img_14.png)
![Q1_Img_15](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q1_Img_15.png)
![Q1_Img_16](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q1_Img_16.png)
![Q1_Img_17](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q1_Img_17.png)
![Q1_Img_18](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q1_Img_18.png)
![Q1_Img_19](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q1_Img_19.png)
![Q1_Img_20](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q1_Img_20.png)
![Q1_Img_21](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q1_Img_21.png)

---

### 🚀 Task 2: User Management and Access Control
Objective: Set up user accounts and configure secure access controls for the new developers.

#### Steps:
1. Created user accounts for **Sarah** and **Mike** with secure passwords.
2. Set up isolated directories: 
   - Sarah: `/home/Sarah/workspace`
   - Mike: `/home/mike/workspace`
3. Enforced appropriate permissions to ensure only respective users can access their directories.
4. Implemented a password policy to enforce expiration and complexity (passwords expire every 30 days).

#### Output:
![Q2_Img_01](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q2_Img_01.png)
![Q2_Img_02](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q2_Img_02.png)
![Q2_Img_03](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q2_Img_03.png)
![Q2_Img_04](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q2_Img_04.png)
![Q2_Img_05](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q2_Img_05.png)
![Q2_Img_06](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q2_Img_06.png)
![Q2_Img_07](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q2_Img_07.png)
![Q2_Img_08](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q2_Img_08.png)
![Q2_Img_09](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q2_Img_09.png)
![Q2_Img_10](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q2_Img_10.png)
![Q2_Img_11](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q2_Img_11.png)

---

### 🚀 Task 3: Backup Configuration for Web Servers
Objective: Configure automated backups for Sarah’s Apache server and Mike’s Nginx server to ensure data integrity and recovery.

#### Steps:
1. Configured automated backups for **Sarah**’s Apache server:
   - Apache configuration: `/etc/httpd/`
   - Document root: `/var/www/html/`
2. Configured automated backups for **Mike**’s Nginx server:
   - Nginx configuration: `/etc/nginx/`
   - Document root: `/usr/share/nginx/html/`
3. Scheduled cron jobs to run backups every Tuesday at 12:00 AM.
4. Named the backup files according to the server name and date (e.g., `apache_backup_YYYY-MM-DD.tar.gz`).
5. Verified the integrity of backups after each run.

#### Output:
![Q3_Img_01](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q3_Img_01.png)
![Q3_Img_02](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q3_Img_02.png)
![Q3_Img_03](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q3_Img_03.png)
![Q3_Img_04](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q3_Img_04.png)
![Q3_Img_05](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q3_Img_05.png)
![Q3_Img_06](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q3_Img_06.png)
![Q3_Img_07](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q3_Img_07.png)
![Q3_Img_08](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q3_Img_08.png)
![Q3_Img_09](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q3_Img_09.png)
![Q3_Img_10](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q3_Img_10_Proof_That_Scripts_Work.png)
![Q3_Img_11](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q3_Img_11_Waiting_For_Cronjob_To_Run_On_Tuesday_And_Update_Backup_Files_Here.png)
![Q3_Img_12](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q3_Img_12.png)
![Q3_Img_13](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q3_Img_13.png)
![Q3_Img_14](https://github.com/JOYSTON-LEWIS/My-Media-Repository/blob/main/Assignment_03_DevOps_Outputs_Images/Q3_Img_14.png)

---

### 🛠️ Requirements
Ensure you have the required dependencies installed:

# Update package list
```bash
sudo apt update
```

# Install monitoring tools
```bash
sudo apt install htop
sudo apt install nmon
sudo apt install iotop
sudo apt install sysstat
```

# Install web servers
```bash
sudo apt install nginx
sudo apt install apache2
```

# Update package list (once again just for safety)
```bash
sudo apt update
```

## 📜 License
This project is licensed under the MIT License.

## 🤝 Contributing
Feel free to fork and improve the scripts! ⭐ If you find this project useful, please consider starring the repo—it really helps and supports my work! 😊

## 📧 Contact
For any queries, reach out via GitHub Issues.

---

🎯 **Thank you for reviewing this project! 🚀**

