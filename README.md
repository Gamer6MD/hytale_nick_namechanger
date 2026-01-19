# Hytale Name Changer (OnlineFix)

A lightweight Batch-based utility designed to quickly change the display name in the Hytale OnlineFix configuration file. Created for players who want to swap usernames without manually editing `.ini` files.

## 🚀 Features
* **Path Validation:** Automatically checks if the Hytale OnlineFix path exists before proceeding.
* **Integrity Check:** Verifies if the `Name =` parameter exists within the configuration file.
* **Safe Execution:** Uses a temporary file method to prevent data loss or corruption during the write process.
* **User Friendly:** Simple command-line interface with clear error messages.

## 🛠️ Requirements
* **OS:** Windows 10/11
* **Game:** Hytale with OnlineFix installed.
* **Permissions:** May require **Administrator privileges** to modify files in `C:\Users\Public\`.

## 📂 Configuration Path
By default, the script targets:
`C:\Users\Public\Documents\OnlineFix\Hytale\OnlineFix.ini`

## 📖 How to Use
1.  **Download** the `change_name.bat` file.
2.  Double click `change_name.bat`
2.1 (If need it) **Right-click** the file and select **Run as Administrator**.
3.  The script will verify the installation (if the `OnlineFix.ini` file exists).
4.  Enter your desired new username when prompted.
5.  Press **Enter** and you are ready to play!

## ⚠️ Important Note
This script only modifies the `Name =` parameter. It **does not** change your `UUID`, ensuring your save data or identity tied to that ID remains intact.

---
**Created by:** GamerMD  
**Version:** 1.0  
**Language:** English
