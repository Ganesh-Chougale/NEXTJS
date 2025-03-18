### **📝 React Server Component vs. React Client Component (Cheat Sheet) 🚀**  

| Feature              | **Server Component (RSC)**  | **Client Component** |
|---------------------|--------------------------|--------------------|
| **Runs on**         | 🖥️ Server (Node.js)      | 🌍 Browser (Client) |
| **JavaScript in Client?** | ❌ No JS sent to browser  | ✅ JS runs in browser |
| **Interactivity (`useState`, `useEffect`)?** | ❌ Not supported | ✅ Supported |
| **Direct DB Access?** | ✅ Yes (No API needed)  | ❌ No (Requires API) |
| **API Calls**       | ✅ Can fetch on server  | ✅ Uses `useEffect` |
| **SEO Friendly?**   | ✅ Yes (Pre-rendered HTML) | ❌ No (Needs hydration) |
| **Size Impact**     | 🟢 Small bundle (less JS) | 🔴 Larger bundle (more JS) |
| **Best For**        | Data fetching, SEO, static content | Forms, buttons, modals, user events |
| **File Placement in Next.js** | `app/` (default) | `"use client"` at the top |
| **Example Use Case** | Product list, blog posts | Search bar, login form |

---

### **💡 When to Use What?**
✅ **Use Server Components** for data-heavy operations (fetching, rendering).  
✅ **Use Client Components** for interactive elements (buttons, forms).  
✅ **Mix Both** by using `"use client"` in specific files.  

🚀 **Next.js 13+ defaults to Server Components** in the `app/` directory!  