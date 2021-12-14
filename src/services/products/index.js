import { Router } from "express";
import pool from "../../utils/db/connect.js";

const productRouter = Router();

productRouter.post("/", async (req, res, next) => {
  try {
    const { product_name, product_description } = req.body;
    const result = await pool.query(
      "INSERT INTO products (product_name, product_description) VALUES ($1, $2, $3) RETURNING *",
      [product_name, product_description]
    );
    res.status(201).send(result.rows[0]);
  } catch (error) {
    res.status(500).send({ message: error.message });
  }
});
export default productRouter