const mongoose = require('mongoose');

const {mongodb_crud_host, mongodb_crud_name} = process.env;
const mongodb_crud = `mongodb://${mongodb_crud_host}/${mongodb_crud_name}`;
mongoose.connect(mongodb_crud,{
    useUnifiedTopology: true,
    useNewUrlParser: true,
    useCreateIndex: true
})
.then(db => console.log('Database is connected'))
.catch(err => console.log(err));