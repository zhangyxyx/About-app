const express = require('express');
const router = express.Router();
const connection = require('./db');

connection.connect();
// var query=connection.query('SELECT * FROM book where mark="房源"  AND belong="有趣房东"',function(error, results, fields){
//     console.log(results[0].id)
// });
router.get('/book', (req, res) => {
    var mark=req.query.mark;
    var belong=req.query.belong;
    var query=connection.query('SELECT * FROM book where mark="'+mark+'"  AND belong="'+belong+'"',function(error, results, fields){
        res.send(results)
    });
})
router.get('/home', (req, res) => {
    var mark=req.query.mark;
    var address=req.query.address;
    var query=connection.query('SELECT * FROM home where mark="'+mark+'"  AND address="'+address+'"',function(error, results, fields){
        res.send(results)
    });
})
//心愿单
router.get('/heart', (req, res) => {
    var mark=req.query.mark;
    var query=connection.query('SELECT * FROM heart',function(error, results, fields){
        var cityArr=[];
        var city=[];
        if(mark==='home'){
            for(var i=0;i<results.length;i++){
                if(cityArr.indexOf(results[i].city)===-1){
                    cityArr.push(results[i].city)
                }
            }
            for(var i=0;i<cityArr.length;i++){
                var json={};
                var key=cityArr[i];
                json={
                    'city':key,
                    'totalArrF':0,
                    'totalArrT':0,
                };
                city.push(json)
            }
            for(var j=0;j<city.length;j++){
                for(var key in city[j]){
                    for(var i=0;i<results.length;i++){
                        if(city[j]['city']===results[i].city&&results[i].belong==='房源'){
                            city[j]['totalArrF']++;
                        }else if(city[j]['city']===results[i].city&&results[i].belong==='体验'){
                            city[j]['totalArrT']++;
                        }
                    }    
                } 
            }
            res.send(city)
        }
        
    });
})

module.exports = router;