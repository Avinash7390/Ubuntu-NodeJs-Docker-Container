import express from "express";

const app = express();

app.get("/", (req, res, next) => {
  return res.json({ message: "This is root from docker!" });
});

app.get("/docker-check", (req, res, next) => {
  return res.json({ message: "Hey! I'm nodeJs in container" });
});

const PORT = process.env.PORT || 8000;

app.listen(PORT, () => {
  console.log(`Server is Running on PORT NO ${PORT}`);
});
