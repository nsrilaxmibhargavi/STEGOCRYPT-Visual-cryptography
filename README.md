# STEGOCRYPT-Visual-cryptography


### 📘 Definition

This project implements a secure image encryption and sharing system by combining **AES-256 GCM encryption**, **digital watermarking**, and **K-out-of-N visual cryptography**.  
The goal is to ensure that images remain confidential, tamper-proof, and accessible only to authorized users who possess the minimum required number of shares. A MATLAB-based graphical user interface (GUI) is used to simplify interaction.

---

### 🎯 Objective

The objectives of this project are:

- To protect image confidentiality using AES-256 GCM encryption
- To ensure data integrity and authenticity through digital watermarking
- To implement a K-out-of-N visual cryptography scheme for secure image sharing
- To restrict image reconstruction unless at least K valid shares are provided
- To provide a user-friendly MATLAB GUI for encryption and decryption
- To evaluate performance using PSNR and entropy analysis

---

### 🧠 System Overview

The system follows a layered security approach:

1. Watermark embedding for ownership verification  
2. AES-256 GCM encryption for confidentiality and authentication  
3. K-out-of-N visual cryptography for controlled access and reconstruction  

Only users with the required number of shares can reconstruct the original image and verify its authenticity.

---

### 🧰 Libraries / Toolboxes Used

The project is developed using **MATLAB** with the following toolboxes:

- Image Processing Toolbox  
- Cryptography / Communications Toolbox  
- MATLAB GUI tools (GUIDE / App Designer)  

These libraries are used for image manipulation, encryption and decryption operations, GUI development, and performance analysis.

---

### ▶️ Steps to Run the Project

### Prerequisites
- MATLAB (R2020a or later recommended)
- Required MATLAB toolboxes installed

### Execution Steps

1. Download or clone the repository by writing the command:
 

    git clone https://github.com/nsrilaxmibhargavi/STEGOCRYPT-Visual-cryptography


2. Navigate into the project directory:

    cd STEGOCRYPT-Visual-cryptography
   
3. Open MATLAB and set the project folder as the current directory
4. Navigate to the GUI folder
5. Run the encryption interface:
   `matlab`
   `encryptgui`
6. Using the GUI:
    - Select an input image
    - Enter the encryption key
    - Specify values for K and N
    - Perform watermarking, encryption, and share generation

7. For image reconstruction and decryption, run:

`decryptgui`

8. Provide at least K valid shares to reconstruct the original image and extract the watermark
   
---

### 📊 Results

- Encrypted images appear completely random and reveal no visual information
- Successful reconstruction occurs only when the minimum required number of shares is provided
- PSNR results indicate minimal loss in image quality after reconstruction
- High entropy values confirm strong encryption
- Extracted watermark verifies image integrity and ownership

---

### 🔐 Security Highlights

- AES-256 GCM ensures confidentiality and tamper detection
- Watermarking adds authenticity and ownership protection
- K-out-of-N scheme prevents unauthorized access
- No sensitive runtime encryption data is stored permanently

---

### ✅ Conclusion

This project demonstrates an effective and secure image encryption and sharing mechanism by integrating cryptography with visual cryptography techniques.
The combination of AES-256 GCM, digital watermarking, and K-out-of-N visual cryptography provides strong security while maintaining usability through a graphical interface.
The system is suitable for applications requiring secure image transmission and controlled access.

---

### 🚀 Applications

- Secure image sharing
- Medical image protection
- Confidential document transmission
- Cloud-based secure image storage

---

### 📜 License

This project is licensed under the MIT License.
Free to use, modify, and distribute with proper attribution.
