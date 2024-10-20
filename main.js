if(!process.env.TOTP_SECRET) throw 'NO SECRET SET!';

const express = require('express');
const speakeasy = require('speakeasy');

const app = express();

const PORT = process.env.PORT || 3000;
const SECRET = process.env.TOTP_SECRET

// TOTP Endpoint
app.get('/totp', (req, res) => {
    const token = speakeasy.totp({
        secret: SECRET,
        encoding: 'base32',
    });

    res.json({ totp: token });
});

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});