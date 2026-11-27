import pool from "./db.mjs";

try {
  const [rows] = await pool.query("SELECT DATABASE() AS database_name");
  console.log(rows[0]);
} catch (error) {
  console.error("Query failed:", error.message);
  process.exitCode = 1;
} finally {
  await pool.end();
}
