import { db } from "../config/db.js";

export const inactivePatron = (req,res)=>{
    const q = `
    SELECT * 
    FROM patrons 
    WHERE (CAST(SUBSTRING(tup_id, 6, 2) AS UNSIGNED) + 2000) = YEAR(CURDATE()) - 4;
    `

    db.query(q, (err, result) => {
        if (err) {
          return console.error('Error fetching patron data:', err);
        }

        // update every patron here..antoq na q
    })
}