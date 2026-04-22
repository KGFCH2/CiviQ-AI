# CiviQ AI - Architecture & File Instructions

Welcome to the internal architecture guide for **CiviQ AI**, an intelligent, mobile-responsive web platform designed for accessible civic education. This document outlines the working principles of every individual file powering the platform.

---

## 🏗️ Core Application Files

### 1. `public/index.html`
* **Purpose:** The structural backbone of the web app.
* **Working Principle:** It provides the semantic skeleton. It incorporates the "Settings" modal, handles viewport responsiveness via `meta` tags, enforces security rules with a strict **Content Security Policy (CSP)**, and supplies internal structured `JSON-LD` data directly to Google's Search Engine for SEO indexing.

### 2. `public/css/styles.css`
* **Purpose:** The visual engine determining the app's aesthetics.
* **Working Principle:** Designed entirely vanilla without frameworks, it utilizes CSS variables for rapid mode-switching (Light / Dark modes). It uses fluid layout techniques (`min()`, Grid, Flexbox) and `@media` queries to ensure flawless behavior on mobile screens. It also handles accessible features like `focus-visible` pseudo-classes for users parsing via the keyboard `TAB` key.

### 3. `public/js/app.js`
* **Purpose:** The intelligent client-side logic center.
* **Working Principle:** It operates independently in the browser and drives all the interactivity. It handles:
  * **Event Listeners:** Grabbing input from the UI interface.
  * **Translation System:** Rapidly formatting and caching inputs, connecting to the free-tier Google Translate API to translate the portal.
  * **AI Orchestration:** Safely managing, validating, and transferring data to the Groq/OpenAI completions endpoint dynamically based on the active API Key.
  * **Secure Delivery:** Sanitizing returned payload variables to strip XSS vectors before executing rendering them onto the DOM.
  * **Internal Testing:** Executes `selfTest()` upon startup to silently valid internal assumptions without manual input.

---

## ⚙️ Configuration & Deployment Files

### 4. `Dockerfile`
* **Purpose:** Standardizes the software into a lightweight, portable container.
* **Working Principle:** Pulls the lightweight `nginx:alpine` image. It copies our raw `public/` files into the `/usr/share/nginx/html` directory, preparing a micro-server environment capable of instantly deploying our site to Heroku, AWS, or GCP without configuration headaches. 

### 5. `nginx.conf.template`
* **Purpose:** The routing instructions for the Docker NGINX proxy.
* **Working Principle:** Determines how web-traffic is handled. It listens to port `80`, serves content appropriately, and defaults any broken links exactly back to `index.html` preventing 404 errors.

### 6. `.dockerignore`
* **Purpose:** Docker configuration exclusion.
* **Working Principle:** Similar to Gitignore, dictates which system files and markdown guides belong strictly on the developer's computer. This reduces compilation time during container builds.

### 7. `.gitignore`
* **Purpose:** Source control sanitization.
* **Working Principle:** Provides strict instructions to GitHub (or Git) telling it to completely ignore configuration parameters, potential Node Modules, and locally tuned settings (like your `.vscode/` logic) to prevent repository junk buildup.

---

## 📄 Documentation & Legal

### 8. `README.md`
* **Purpose:** The front-facing storefront of the repository.
* **Working Principle:** Explains *what* the project is to judges or public viewers, detailing the hackathon problem statement, installation instructions, and feature lists.

### 9. `LICENSE`
* **Purpose:** Project legality and distribution governance.
* **Working Principle:** Assigns structural legal rules (we chose MIT) dictating how and why users can re-use the underlying mechanics of CiviQ AI without liability.

> **Legal Information:** This platform is open-source. For detailed copyright, liability clauses, and terms of service, please visit our formal [LICENSE](./LICENSE) document.
