const nodemailer = require("nodemailer");
// Import NodeMailer (after npm install)

async function send() {
// Async function enables allows handling of promises with await

  // First, define send settings by creating a new transporter: 
  let transporter = nodemailer.createTransport({
    host: "smtp.gmail.com", // SMTP server address (usually mail.your-domain.com)
    port: 465, // Port for SMTP (usually 465)
    secure: true, // Usually true if connecting to port 465
    auth: {
      user: "lancewrt@gmail.com", // Your email address
      pass: "bmbe dauz hjxo nqwu", // Password (for gmail, your app password)
      // ⚠️ For better security, use environment variables set on the server for these values when deploying
    },
  });
  
  // Define and send message inside transporter.sendEmail() and await info about send from promise:
  let info = await transporter.sendMail({
    from: '"Lance Test" <lancewrt@gmail.com>',
    to: "wrt.lance@gmail.com",
    subject: "Testing, testing, 123",
    html: `
    <h1>Hello there</h1>
    <p>Isn't NodeMailer useful?</p>
    `,
  });

  console.log(info.messageId); // Random ID generated after successful send (optional)
}

send()
.catch(err => console.log(err));