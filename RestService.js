import express from 'express';

const app = express();
const PORT = '8888';

app.get('/', (req, res) => {
    return res.send('Received a GET HTTP method');
});
   
app.post('/', (req, res) => {
    return res.send('Received a POST HTTP method');
});

app.put('/', (req, res) => {
    return res.send('Received a PUT HTTP method');
});

app.delete('/', (req, res) => {
    return res.send('Received a DELETE HTTP method');
});


app.listen(PORT, () => {
    console.log(`Server is up ! Listening on port : ${PORT}`);
});