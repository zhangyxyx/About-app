// 引入编写好的api
const api = require('./api'); 
// 引入文件模块
const fs = require('fs');
// 引入处理路径的模块
const path = require('path');
// 引入处理post数据的模块
const bodyParser = require('body-parser')
// 引入Express
const express = require('express');
const app = express();
const busboy=require('connect-busboy');

app.use(busboy()); 
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));

app.use(api);
app.use(express.static(__dirname+'/lib'));
app.listen(8081);
console.log('开始监听');