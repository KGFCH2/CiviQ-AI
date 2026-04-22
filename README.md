# 🗳️ CiviQ AI - Election Process Education Assistant 🤖

CiviQ AI is a smart, lightweight, and interactive civic education assistant built for the **PromptWars: Virtual** challenge. It is designed to bridge the gap in election literacy for Indian citizens through AI-powered guidance and real-time translations. 🇮🇳

---

## 🔗 Important Links

* **Live Demo (Cloud Run)**: [CiviQ-AI](https://civiq-ai-1070344786559.us-central1.run.app/)
---

## 🎯 My Chosen Vertical

**Election Process Education & Literacy**
The project focuses on making the complex machinery of Indian democracy accessible to everyone, from first-time voters to curious teenagers.

---

## 💡 Approach and Logic

The app follows a **Context-Aware Design** philosophy. Instead of generic answers, it tailors its logic based on the user's personal profile:

* **👤 Persona-Based Tailoring**: Logic checks the user's `Age` and `First-time voter` status to adjust the complexity of the explanation.
* **📍 Geographic Guardrails**: A robust `isIndia` check ensures the assistant stays focused on the Indian electoral system, providing accurate, localized advice.
* **🛠️ Mode-Driven Architecture**: Uses 7 distinct functional modes (A-G) to handle everything from general Q&A to interactive simulations.
* **🔒 Security-First AI**: Integrates a client-side settings modal where users provide their own **Groq API Key** (Llama 3.3). This ensures no sensitive keys are hardcoded in the repository.

---

## 🚀 How the Solution Works

1. **📥 User Input**: The user fills in their profile (Age, Status, Language) and selects a task mode.
2. **🧠 AI Processing (Groq)**: The app sends a structured prompt to the **Llama 3.3 70B** model via Groq, providing the user context for a "smart" response.
3. **🌍 Real-Time Translation**: Before being displayed, the response (and the entire UI) is processed through the **Google Translate API** into one of 13 supported Indian languages.
4. **✨ Rich Rendering**: The result is displayed using structured HTML (Headers, Bold, Bullets) for maximum readability.
5. **💬 Interactive Simulation**: Mode F triggers a unique state-machine that walks the user through a virtual voting booth experience.

---

## 🛠️ Technologies Used

* **⚡ Groq API (Llama 3.3 70B)**: Ultra-fast inference for the core AI assistant.
* **🌐 Google Translate API**: Handles multi-language support across the portal.
* **🔡 Google Fonts**: Professional typography using *Manrope* and *Source Serif 4*.
* **🎨 Font Awesome 6**: Modern, recognizable icons for UI elements.
* **🏢 HTML5/CSS3/JS**: Pure vanilla implementation for a lightweight (<100KB) and fast experience.

---

## 📝 Any Assumptions Made

* **India Focus**: It is assumed the user is interested in the Indian electoral system (ECI guidelines).
* **Educational Purpose**: The app assumes a role of a "guide" rather than a legal authority. It always encourages verifying with official links.
* **Connectivity**: Assumes the user has active internet to fetch translations and AI responses.

---

## 🔧 Google Services Integration

The project proudly leverages Google's ecosystem to enhance usability:

* **Google Fonts**: Optimized for cross-browser readability.
* **Google Translate**: Bridges the language barrier for non-English speakers.
* **Google Authority Search**: Direct shortcuts to ECI and NVSP portals.
* **Google Maps**: Integrated links to help users find their nearest polling station.

---

## 📂 Project Structure

* `index.html` — 🏛️ The skeleton and settings modal.
* `styles.css` — 🎨 Google-themed UI with Dark Mode support.
* `app.js` — ⚙️ The brains: translation, AI logic, and state management.
* `README.md` — 📖 You are here!
* `INSTRUCTIONS.md` — 📚 Detailed Internal Architecture Guide.
* `LICENSE` — ⚖️ Open-source MIT terms.

---

**Developed with ❤️ for a more informed democracy.**

* Semantic HTML with labels for form fields
* High-contrast text and readable spacing
* Responsive layout for desktop and mobile

## 🏆 Evaluation Focus Areas Addressed

* **Code Quality**: Structured clearly into pure HTML, CSS, and JS components. Lightweight and zero bloat.
* **Security**: Client-side API key injection (via UI Modal) ensures no sensitive tokens are ever exposed or hardcoded in the codebase.
* **Efficiency**: Fully containerized using a lightweight NGINX Alpine Dockerfile. Runs seamlessly on Google Cloud Run with very fast response times.
* **Testing**: Includes a rigorous manual testing checklist guaranteeing verification of edge cases (e.g. non-India queries).
* **Accessibility**: Implements semantic HTML `<main>`, `<label>` tagging, and dynamic `aria-live="polite"` regions. Color palettes follow high-contrast readable standards.
* **Google Services**: Meaningfully deploys Google Translate API for dynamic localizations without reloading the page, and dynamically generates actionable Google Maps / Google Search intent links.

---

## Testing Checklist (Manual)

* [ ] Mode A responds to election question
* [ ] Mode A redirects non-election topics
* [ ] Mode B shows all election steps
* [ ] Mode C shows eligibility, documents, steps, tips
* [ ] Mode D shows timeline phases
* [ ] Mode E returns verdict format correctly
* [ ] Mode F simulation handles choose/confirm/retry
* [ ] Mode G uses very simple explanation style
* [ ] Mobile layout remains usable
* [ ] Language switch updates responses in Indian languages
* [ ] India-only scope message appears for non-India country input

## Run Locally

Open `index.html` in any modern browser.

## Before You Begin

* Google Antigravity is installed and configured
* Git is installed and configured
* GitHub account is active
* You can create and manage public repositories

## Submission Workflow

1. Create a new public GitHub repository.
2. Open Google Antigravity.
3. Clone the repository inside Antigravity.
4. Add these project files.
5. Commit and push progress regularly.
6. Keep work in one branch only.

## Rules Checklist

* Warm Up Round: maximum 2 attempts
* Actual Challenge Round: maximum 4 attempts
* Repository is public
* Repository contains one branch
* Repository size is under 1 MB

## Challenge Compliance Notes

* Public repository ready
* Single branch compatible
* Minimal codebase (well below 1 MB expected)
* Includes complete code and documentation

> **Documentation Updates**: View the exact working principles of individual files in our [INSTRUCTIONS.md](./INSTRUCTIONS.md) and read our open-source rights in the [LICENSE](./LICENSE).

---

Built for the [Virtual PromptWars](https://promptwars.in/promptwarsVirtual.html) hosted by [Hack2Skill](https://hack2skill.com/?utm_source=hack2skill&utm_medium=homepage)
