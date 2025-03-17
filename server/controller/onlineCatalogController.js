import { db } from "../config/db.js";


export const featuredBooks = (req, res) => {
    const q = `
    SELECT 
        resources.resource_title, 
        resources.resource_id, 
        book.filepath, 
        GROUP_CONCAT(CONCAT(author.author_fname, ' ', author.author_lname) SEPARATOR ', ') AS authors
    FROM resourceauthors
    JOIN resources ON resourceauthors.resource_id = resources.resource_id
    JOIN author ON resourceauthors.author_id = author.author_id
    JOIN book ON book.resource_id = resources.resource_id
    WHERE resources.type_id = '1'
    GROUP BY resources.resource_id, resources.resource_title, book.filepath
    ORDER BY RAND()
    LIMIT 10
    `;

    db.query(q, (err, results) => {
        if (err) {
            console.error(err);
            return res.status(500).send({ error: 'Database query failed' });
        }

        console.log(results)
        return res.json(results); // Send the response as JSON
    });
}

export const mostBorrowed = (req,res)=>{
    let q = `
    SELECT 
            r.resource_id,
            r.resource_title, 
            (SELECT CONCAT(a.author_fname, ' ', a.author_lname) 
            FROM resourceauthors ra 
            JOIN author a ON a.author_id = ra.author_id 
            WHERE ra.resource_id = r.resource_id 
            ORDER BY ra.author_id ASC 
            LIMIT 1) AS authors,
            r.resource_published_date,
            r.type_id,
            COUNT(r.resource_id) AS borrowed_times,
            b.filepath
        FROM 
            resources r
        JOIN book b ON b.resource_id = r.resource_id
        JOIN checkout cout ON cout.resource_id = r.resource_id
        GROUP BY r.resource_title, r.resource_published_date, r.resource_id
        ORDER BY borrowed_times DESC
        LIMIT 8`

        db.query(q, (err, results) => {
            if (err) {
                console.error(err);
                return res.status(500).send({ error: 'Database query failed' });
            }
    
            console.log(results)
            return res.json(results); // Send the response as JSON
        });
}

export const featuredDepartment = (req,res)=>{
    const q = `
    SELECT 
        resources.resource_title, 
        resources.resource_id, 
        book.filepath, 
        GROUP_CONCAT(CONCAT(author.author_fname, ' ', author.author_lname) SEPARATOR ', ') AS authors
    FROM resourceauthors
    JOIN resources ON resourceauthors.resource_id = resources.resource_id
    JOIN author ON resourceauthors.author_id = author.author_id
    JOIN book ON book.resource_id = resources.resource_id
    WHERE resources.dept_id = '4'
    GROUP BY resources.resource_id, resources.resource_title, book.filepath
    ORDER BY RAND()
    LIMIT 10
    `;

    db.query(q, (err, results) => {
        if (err) {
            console.error(err);
            return res.status(500).send({ error: 'Database query failed' });
        }

        console.log(results)
        return res.json(results); // Send the response as JSON
    });
}

export const getSearch = (req,res)=>{
    const { search} = req.query;

    // Ensure dept, type, and topic are always arrays and split if comma-separated
    const dept = req.query.dept ? req.query.dept.split(",") : [];
    const type = req.query.type ? req.query.type.split(",") : [];
    const topic = req.query.topic ? req.query.topic.split(",") : [];

    console.log("Search Query:", search);
    console.log("Type Array:", type);
    console.log("Department Array:", dept);
    console.log("Topic Array:", topic);


    const q = `
        SELECT 
            resources.resource_title,
            resources.resource_id, 
            resources.type_id,
            CASE
                WHEN resources.type_id = '1' THEN book.filepath
                WHEN resources.type_id IN ('2', '3') THEN journalnewsletter.filepath
                ELSE NULL
            END AS filepath,
            (SELECT CONCAT(author.author_fname, ' ', author.author_lname) 
            FROM resourceauthors 
            JOIN author ON resourceauthors.author_id = author.author_id
            WHERE resourceauthors.resource_id = resources.resource_id
            ORDER BY author.author_id ASC
            LIMIT 1) AS authors 
        FROM resources
        LEFT JOIN book ON book.resource_id = resources.resource_id
        LEFT JOIN journalnewsletter ON journalnewsletter.resource_id = resources.resource_id
        WHERE resources.resource_title LIKE '%${search}%'
        GROUP BY resources.resource_id, resources.resource_title, resources.type_id;
        `;

    db.query(q, (err, results) => {
        if (err) {
            console.error(err);
            return res.status(500).send({ error: 'Database query failed' });
        }

        console.log(results)
        return res.json(results); // Send the response as JSON
    });
}