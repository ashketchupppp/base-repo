const express = require('express')

app = express()

app.get('/', (req, res) => {
    console.log('Serving "/"')
    res.json({ 'hello': 'world' })
})

app.listen(9000, () => {
    console.log('Listening on 9000')
})