# scenarion 1  
![](../../ZImages/01/001.png)  
let create project: `routing-demo`  & clean src folder  
![](../../ZImages/01/002.png)  
here we cleaned the entire `/src` folder.  
now lets create `/app` directory & create `page.tsx` inside it.  
`/src` -----> `/app` -----> `page.tsx`  
```typescript
export default function Home(){
    return <h1>Home Page</h1>
}
```    
```bash
npm run dev
```  
![](../../ZImages/01/003.png)  
it creates `layout.tsx` automatically  
![](../../ZImages/01/004.png)  


# scenarion 2  
![](../../ZImages/01/005.png)  
easy peasy lemon squeazyy  
create 2 folder 1. `about` then 2. `profile` & create `page.tsx` for wach component  
1. `/src` -----> `/app` -----> `/about` -----> `page.tsx`  
```typescript
export default function About(){
    return <h1>About Page</h1>
}
```  
2. `/src` -----> `/app` -----> `/profile` -----> `page.tsx`  
```typescript
export default function Profile(){
    return <h1>Profile Page</h1>
}
```  
![](../../ZImages/01/006.png)  
```bash
npm run dev
```  
at `/about`  
![](../../ZImages/01/007.png)  
at `/profile`  
![](../../ZImages/01/008.png)  

## lets summarize this again  
at `localhost:3000/`  
![](../../ZImages/01/009.png)  
at `localhost:3000/about`  
![](../../ZImages/01/010.png)  
at `localhost:3000/profile`  
![](../../ZImages/01/011.png)  

## `if we try to reach unassigned url string, it gives us 404 error`  
![](../../ZImages/01/012.png)  

this file base routing doesn't need add routing dependancy explicitly  