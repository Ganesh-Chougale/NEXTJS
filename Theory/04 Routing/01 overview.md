Next.js has a **file-based routing system**, meaning your folder and file structure defines your app’s routes.  

---

## **📂 1. App Router vs. Pages Router**  

| Feature | **App Router (`app/`)** | **Pages Router (`pages/`)** |
|---------|------------------|------------------|
| **Introduced in** | Next.js 13+ | Default before Next.js 13 |
| **Uses Server Components?** | ✅ Yes (by default) | ❌ No (only Client Components) |
| **File Structure** | Uses `app/` directory | Uses `pages/` directory |
| **API Routes** | `/app/api/route.js` (Route Handlers) | `/pages/api/route.js` |
| **Dynamic Routes** | `(folder)/page.js` | `[file].js` |
| **Layout Handling** | `layout.js` (persists layouts) | No built-in support |

For **new projects**, use the **App Router (`app/`)**.

---

## **📌 2. Basic Routing (App Router - `app/`)**  

### **🗂️ Folder Structure → Routes**
```plaintext
app/
 ├── page.js        → `/`
 ├── about/
 │   ├── page.js    → `/about`
 ├── products/
 │   ├── page.js    → `/products`
 │   ├── details/
 │   │   ├── page.js → `/products/details`
 ├── layout.js      → Layout for all pages
```
- **Each folder = a route**  
- **Each `page.js` = a page**  

```jsx
// app/page.js → Home Page
export default function Home() {
  return <h1>Welcome to Next.js</h1>;
}
```

---

## **📌 3. Dynamic Routes (App Router)**  
**Use `[param]` to create dynamic routes.**  

📂 **Folder Structure**  
```plaintext
app/
 ├── blog/
 │   ├── [id]/      → Dynamic Route `/blog/:id`
 │   │   ├── page.js
```
```jsx
// app/blog/[id]/page.js
export default function BlogPost({ params }) {
  return <h1>Blog ID: {params.id}</h1>;
}
```
📝 Visiting `/blog/123` → **"Blog ID: 123"**  

---

## **📌 4. Catch-All Routes (`[...slug]`)**  
📂 **Folder Structure**
```plaintext
app/
 ├── docs/
 │   ├── [...slug]/
 │   │   ├── page.js → `/docs/a/b/c`
```
```jsx
// app/docs/[...slug]/page.js
export default function Docs({ params }) {
  return <h1>Docs: {params.slug.join(" / ")}</h1>;
}
```
📝 Visiting `/docs/setup/install` → **"Docs: setup / install"**  

---

## **📌 5. Link Navigation (`next/link`)**  
Instead of `<a>`, use `<Link>` to navigate without reloading.  
```jsx
import Link from "next/link";

export default function Home() {
  return (
    <div>
      <Link href="/about">Go to About Page</Link>
    </div>
  );
}
```

---

## **📌 6. API Routes (Server-Side)**
📂 **Folder Structure**
```plaintext
app/
 ├── api/
 │   ├── hello/route.js → `/api/hello`
```
```js
// app/api/hello/route.js
export async function GET() {
  return Response.json({ message: "Hello API!" });
}
```

---

## **📌 7. Middleware (for Auth, Redirects, etc.)**  
📂 **Folder Structure**
```plaintext
middleware.js
```
```js
// middleware.js
import { NextResponse } from "next/server";

export function middleware(req) {
  if (!req.cookies.get("auth")) {
    return NextResponse.redirect("/login");
  }
}
```
---

## **📌 8. Layouts (Persistent UI)**
📂 **Folder Structure**
```plaintext
app/
 ├── layout.js      → Applies layout to all pages
```
```jsx
// app/layout.js
export default function Layout({ children }) {
  return (
    <div>
      <header>Header</header>
      {children}
      <footer>Footer</footer>
    </div>
  );
}
```

---

## **🚀 Summary**
✅ **File-based routing** – Each folder = route  
✅ **Dynamic routes** – `[param]` for `/route/:param`  
✅ **API routes** – `app/api/route.js`  
✅ **Middleware** – Secure pages & handle redirects  
✅ **Layouts** – Persistent UI across pages  

---