# 🚀 Azure DevOps Pipeline Practice – From Scratch

This guide walks you through creating an Azure DevOps project, connecting GitHub, and running your first Azure Pipeline with a simple Python application.

---

# Prerequisites

* Azure Account
* GitHub Account
* Git installed
* Python installed
* Visual Studio Code (Recommended)

---

# Step 1: Create an Azure DevOps Organization

Open Azure DevOps and create your organization.

**Azure DevOps Organization**

https://dev.azure.com/cloudnautic/

---

# Step 2: Create a New Project

Inside your Azure DevOps organization, create a new project.

**Project URL**

https://dev.azure.com/cloudnautic/project

---

# Step 3: Request Free Microsoft Parallelism

Azure Pipelines for public/private projects may require Microsoft approval to use hosted build agents.

Submit the request here:

https://forms.cloud.microsoft/pages/responsepage.aspx?id=v4j5cvGGr0GRqy180BHbR5zsR558741CrNi6q8iTpANURUhKMVA3WE4wMFhHRExTVlpET1BEMlZSTCQlQCN0PWcu&route=shorturl

> **Note:** Without Microsoft-hosted parallelism, your pipeline may remain queued or fail to start.

---

# Step 4: Choose Your Source Code Repository

Azure DevOps supports multiple Git providers.

You can use:

* Azure Repos
* GitHub
* Bitbucket (Atlassian)

---

# Step 5: Connect GitHub with Azure DevOps

1. Open **Azure DevOps**
2. Navigate to **Pipelines**
3. Click **New Pipeline**
4. Select **GitHub**
5. Authorize Azure DevOps
6. Choose your repository

---

# Step 6: Create a GitHub Repository

Repository:

https://github.com/atulkamble/azure-pipeline-practice

Clone it locally:

```bash
git clone https://github.com/atulkamble/azure-pipeline-practice.git

cd azure-pipeline-practice
```

---

# Step 7: Development Stage

Verify Python installation.

```bash
python --version
```

Run the application.

```bash
python helloworld.py
```

Check Git status.

```bash
git status
```

Add files.

```bash
git add helloworld.py
```

Commit changes.

```bash
git commit -m "added code"
```

Push code.

```bash
git push origin main
```

View branches.

```bash
git branch
```

---

# Step 8: Python Application

Create **helloworld.py**

```python
print("Hello World")
```

---

# Step 9: Azure Pipeline (azure-pipelines.yml)

Create a file named:

```text
azure-pipelines.yml
```

Add the following pipeline:

```yaml
trigger:
  - main

pool:
  vmImage: "ubuntu-latest"

steps:
  - script: |
      python --version
      echo "Checking Python Version"
    displayName: "Check Python Version"

  - script: |
      echo "Running Python Program"
      python3 helloworld.py
    displayName: "Run helloworld.py"
```

---

# Step 10: Commit Pipeline

```bash
git add azure-pipelines.yml

git commit -m "Added Azure Pipeline"

git push origin main
```

---

# Step 11: Create the Pipeline

In Azure DevOps:

1. Open **Pipelines**
2. Click **New Pipeline**
3. Select **GitHub**
4. Select your repository
5. Azure DevOps automatically detects **azure-pipelines.yml**
6. Click **Run**

---

# Expected Pipeline Output

The pipeline should perform the following:

* ✅ Checkout repository
* ✅ Start Ubuntu hosted agent
* ✅ Check Python version
* ✅ Execute `helloworld.py`
* ✅ Display **Hello World**
* ✅ Complete successfully

---

# Project Structure

```text
azure-pipeline-practice/
│
├── helloworld.py
└── azure-pipelines.yml
```

---

# Common Errors

### No hosted parallelism

```
No hosted parallelism has been purchased or granted.
```

**Solution**

Submit the Microsoft Hosted Parallelism request form and wait for approval.

---

### Python not found

```
python: command not found
```

**Solution**

Use:

```bash
python3 --version
```

or ensure Python is installed on the build agent.

---

### File not found

```
python3: can't open file 'helloworld.py'
```

**Solution**

* Verify the file exists.
* Ensure it has been committed and pushed.
* Check the filename for spelling.

---

# Interview Questions

### 1. What is Azure Pipelines?

Azure Pipelines is Microsoft's CI/CD service that automatically builds, tests, and deploys applications.

---

### 2. What is CI?

Continuous Integration is the practice of automatically building and testing code whenever developers commit changes.

---

### 3. What is CD?

Continuous Delivery/Deployment automates releasing applications after successful builds and tests.

---

### 4. What is `trigger` in Azure Pipelines?

It specifies which Git branches automatically start a pipeline.

Example:

```yaml
trigger:
  - main
```

---

### 5. What is `vmImage`?

It specifies the Microsoft-hosted build agent image.

Example:

```yaml
pool:
  vmImage: ubuntu-latest
```

---

### 6. What is `displayName`?

A friendly name displayed in the Azure Pipeline execution logs.

---

### 7. What happens when you push code to the `main` branch?

Azure DevOps automatically detects the push, triggers the pipeline, checks out the code, and executes the defined build steps.

---

## 🎯 Outcome

By completing this exercise, you will learn how to:

* Create an Azure DevOps organization
* Create an Azure DevOps project
* Connect GitHub with Azure DevOps
* Create a GitHub repository
* Push code using Git
* Create an Azure Pipeline using YAML
* Run a Python application in a hosted build agent
* Understand the fundamentals of CI/CD with Azure DevOps
