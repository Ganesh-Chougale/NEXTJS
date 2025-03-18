---

## **📂 Next.js Project Folder Structure**
```css
/my-nextjs-app
│── /public
│── /src
│   │── /components
│   │── /layouts
│   │── /pages
│   │   │── /api
│   │   │── index.js
│   │   │── about.js
│   │── /styles
│   │── /hooks
│   │── /context
│   │── /utils
│   │── /config
│   │── /lib
│── .env
│── next.config.js
│── package.json
│── README.md
```

---

### **📁 public/** (Static Assets)
- This folder stores **static files** like images, icons, and fonts.  
- Next.js automatically serves files from here, so you can use `/logo.png` instead of an import.  

🔹 **Example files:**  
```css
/public
│── logo.png
│── favicon.ico
│── banner.jpg
```

---

### **📁 src/** (Main Source Code)
- The **heart of your Next.js project**, containing all core logic.  

#### **📁 components/** (Reusable UI Components)
- Store **reusable components** like buttons, modals, or cards.  
- Helps in keeping your code DRY (Don’t Repeat Yourself).  

🔹 **Example files:**  
```css
/components
│── Button.js
│── Card.js
│── Navbar.js
```

---

#### **📁 layouts/** (Page Layouts)
- Stores **layout components** like headers, footers, or wrappers.  
- Ensures consistency across pages.  

🔹 **Example files:**  
```css
/layouts
│── MainLayout.js
│── AuthLayout.js
```
👉 Example usage in a page:
```jsx
import MainLayout from '@/layouts/MainLayout';

export default function Home() {
  return (
    <MainLayout>
      <h1>Welcome to My Next.js App</h1>
    </MainLayout>
  );
}
```

---

#### **📁 pages/** (Next.js Routes)
- Each file inside `/pages` **automatically becomes a route**.  
- Example:  
  - `pages/index.js` → **http://localhost:3000/**  
  - `pages/about.js` → **http://localhost:3000/about**  

##### **📁 pages/api/** (Backend API Routes)
- This folder contains **serverless API functions** (runs on the server, not the browser).  

🔹 **Example API file (`hello.js`)**  
```js
export default function handler(req, res) {
  res.status(200).json({ message: "Hello from API!" });
}
```
👉 Access it at **http://localhost:3000/api/hello**  

---

#### **📁 styles/** (CSS & Styling)
- Manages global and module-based styles.  
- **CSS Modules** (`Home.module.css`) allow scoped styles for each component.  

🔹 **Example files:**  
```css
/styles
│── globals.css  # Global styles
│── Home.module.css  # Page-specific styles
```

---

#### **📁 hooks/** (Custom React Hooks)
- Stores **custom hooks** for better reusability.  

🔹 **Example hook (`useDarkMode.js`)**  
```js
import { useState, useEffect } from "react";

export default function useDarkMode() {
  const [darkMode, setDarkMode] = useState(false);

  useEffect(() => {
    setDarkMode(localStorage.getItem("theme") === "dark");
  }, []);

  return [darkMode, setDarkMode];
}
```
👉 Now, any component can use `useDarkMode()` instead of rewriting the logic.

---

#### **📁 context/** (Global State Management)
- Stores **React Context API** logic to manage state globally.  
- Useful for themes, authentication, user data, etc.  

🔹 **Example (`ThemeContext.js`)**  
```js
import { createContext, useState } from "react";

export const ThemeContext = createContext();

export function ThemeProvider({ children }) {
  const [theme, setTheme] = useState("light");

  return (
    <ThemeContext.Provider value={{ theme, setTheme }}>
      {children}
    </ThemeContext.Provider>
  );
}
```
👉 Wrap your app with `<ThemeProvider>` to use global theme state.

---

#### **📁 utils/** (Helper Functions)
- Stores **utility functions** that make the code cleaner.  
- Example: Formatting dates, API calls, or authentication helpers.  

🔹 **Example (`formatDate.js`)**  
```js
export function formatDate(date) {
  return new Date(date).toLocaleDateString();
}
```
👉 Now, use `formatDate(date)` anywhere in your project.

---

#### **📁 config/** (Configuration Files)
- Stores environment variables, API URLs, and app settings.  

🔹 **Example (`apiConfig.js`)**  
```js
const API_BASE_URL = "https://api.example.com";
export default API_BASE_URL;
```
👉 Helps in centralizing API configurations.

---

#### **📁 lib/** (External Libraries & Services)
- Stores files related to **external libraries** like database connections.  

🔹 **Example (`db.js` for MongoDB connection)**  
```js
import mongoose from "mongoose";

const connectDB = async () => {
  if (mongoose.connections[0].readyState) return;
  await mongoose.connect(process.env.MONGO_URI);
};

export default connectDB;
```

---

### **📄 Other Important Files**
📌 **.env** – Stores environment variables (like API keys).  
📌 **next.config.js** – Custom Next.js configurations (optional).  
📌 **package.json** – Lists dependencies and scripts.  
📌 **README.md** – Documentation for your project.  

---

## **🔥 Summary**
| Folder/File  | Purpose |
|-------------|---------|
| **📁 public/** | Stores static assets (images, icons, etc.). |
| **📁 src/** | Main source code of the project. |
| **📁 components/** | Reusable UI components (e.g., buttons, modals). |
| **📁 layouts/** | Page layouts (e.g., header, footer). |
| **📁 pages/** | Next.js pages (each file = a route). |
| **📁 pages/api/** | Backend API routes (serverless functions). |
| **📁 styles/** | Global and module-specific CSS. |
| **📁 hooks/** | Custom React hooks for better reusability. |
| **📁 context/** | Context API for global state management. |
| **📁 utils/** | Helper functions (e.g., date formatting, API calls). |
| **📁 config/** | Configuration files (e.g., API URLs, app settings). |
| **📁 lib/** | External services (e.g., database connections). |
| **📄 .env** | Stores environment variables. |
| **📄 next.config.js** | Next.js configuration settings. |
| **📄 package.json** | Dependencies and scripts. |
| **📄 README.md** | Documentation for your project. |

---

### **Key Points:**
✅ **Separation of concerns** – Pages, components, and utilities are well organized.  
✅ **Scalability** – Works for both small and large projects.  
✅ **Easier maintenance** – Everything has a dedicated place.  