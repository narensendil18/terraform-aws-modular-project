# Terraform AWS Modular Infrastructure Project

## Overview

This project demonstrates a modular Terraform setup for deploying AWS infrastructure.

The infrastructure includes:

* A reusable **VPC module** (network layer)
* A reusable **EC2 module** (compute layer)
* A **remote S3 backend** for Terraform state management
* A scalable EC2 deployment using **for_each**

---

## Architecture

The infrastructure is structured as follows:

* **VPC Module**

  * Creates VPC, subnet, internet gateway, route table, and associations
* **EC2 Module**

  * Creates EC2 instances and security groups
* **Root Module**

  * Connects modules together

---

## Features

* Modular Terraform design
* Reusable infrastructure components
* Separation of network and compute layers
* Dynamic EC2 creation using `for_each`
* Remote backend using AWS S3

---

## Outputs

After deployment, Terraform outputs:

* VPC ID
* Subnet ID
* EC2 Instance IDs
* EC2 Public IP addresses

---

## Key Learnings

* Infrastructure as Code using Terraform
* Modular design patterns
* AWS networking fundamentals (VPC, subnet, routing)
* Remote state management with S3
* Scalable deployments using multile instances
