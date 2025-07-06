# Enterprise Multi-Region IaC with Security

This project demonstrates a secure, scalable, production-grade multi-region AWS infrastructure using Terraform and Ansible. The design includes hardened networking, bastion access, security monitoring, and best practices across the stack.

## Features

✅ Infrastructure as Code with Terraform  
✅ Automated configuration with Ansible  
✅ Secure multi-region AWS architecture  
✅ GuardDuty, Security Hub, Inspector for threat detection  
✅ KMS-managed encryption for data at rest  
✅ Modular, reusable, and production-ready code  

## Project Structure

enterprise-multiregion-iac-security/
├── terraform/
│ ├── main.tf
│ ├── variables.tf
│ ├── outputs.tf
│ ├── providers.tf
│ └── modules/
│ ├── security/
│ │ └── security.tf
│ └── network/
│ └── network.tf
├── ansible/
│ ├── playbook.yml
│ ├── inventory.ini
│ └── roles/
│ └── common/
│ └── tasks/
│ └── main.yml
├── docs/
│ ├── architecture.md
│ └── diagrams/
│ └── network-diagram.png
├── README.md
├── LICENSE
└── .gitignore


## Author

**M. Sulaiman Amir**  
- [LinkedIn](https://www.linkedin.com/in/m-sulaiman-amir-ab043632b/)  
- [Credly Badges](https://www.credly.com/users/m-sulaiman-amir/badges#credly)  
- [Website](https://sulaimanamir.com)  
- Discord: sulle_amir  
- Email: SulleMaan007@gmail.com

## License

All Rights Reserved. This code is for educational and demonstration purposes only. No permission is granted to use, copy, modify, or distribute without explicit consent.  

---

✅ **Commit message:**  

