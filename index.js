const express=require('express');
const app=express();

app.get('/',(req,res)=>{
    res.send("hello docker")
})
app.get("/api", (req, res) => {
    res.json({ message: "Hello from server!" });
  });

app.listen(3001,()=>{
    console.log(`the app is running on http://localhost:3001`)
})