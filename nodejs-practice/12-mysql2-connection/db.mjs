import "dotenv/config";
import mysql from "mysql2/promise";

async function testconnection() {
  try {
    const pool = await mysql.createPool({
      host: process.env.DB_HOST,
      port: process.env.DB_PORT,
      user: process.env.DB_USERNAME,
      password: process.env.DB_PASSWORD,
      database: process.env.DB_DATABASE,
    });
    const connection = await pool.getConnection();

    console.log("Success! Connected to local MySQL database.");

    connection.release();
    await pool.end();
  } catch (err) {
    console.log(err);
  }
}

testconnection();
