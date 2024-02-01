var express = require('express');
var mysql = require('mysql');
var db=require('./database');
var session = require('express-session');
var flash = require('express-flash');

var app = express();

var bodyParser = require('body-parser');
const { stringify } = require('querystring');
const { error } = require('console');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));


app.use(flash());

app.use(session({
   secret:'vmTlPh}asqAHekc',
   resave:false,
   saveUninitialized: true,
   cookie: {maxAge: 60000}
}))


app.get('/', function(req, res){
    res.sendFile(__dirname+'/login.html');
  });

  app.post('/auth', function(req, res){
   //res.send(JSON.stringify("Hello "+req.body.name+" "+req.body.surname));
    var name= req.body.name;
    var password=req.body.password;

   if(name && password){
      db.query(`SELECT * FROM user WHERE name = ? AND password = ?`,[name,password],function (error, result){

         if(error) throw error;

         if (result.length > 0) {
            req.session.loggedin = true;
            req.session.name = name;
                                                
            res.redirect('/register');
         }else{
            res.send('Incorrect Username and/or Password!');
         }
         res.end();
      });
   }else{
      res.send('please enter username and password!');
      res.end();
   }
});

app.get('/register',function(req,res){
   if(req.session.loggedin){
      res.sendFile(__dirname+'/register.html');
   }else{
      res.send('Please login to view this page!')
   }
});


app.post('/formsubmit', function(req, res){
   if(req.session.loggedin){
  //res.send(JSON.stringify("Hello "+req.body.name+" "+req.body.surname));
   var f_name= req.body.fname;
   var l_name=req.body.lname;
   var email=req.body.email;
   var address=req.body.address;
   

   var sql = `INSERT INTO contact (fname, lname, email, address) VALUES ("${f_name}", "${l_name}", "${email}", "${address}")`;
   db.query(sql, function(err, result){
     if (err) throw err;
     console.log('Record inserted');
     req.flash('success', 'Data added successfully!');
     res.sendFile(__dirname+'/thanks.html');
         
   });
   }
   });


   app.post('/logout',function(req,res){
      req.session.destroy((err)=>{
         if(err) throw err;
         res.sendFile(__dirname+'/login.html');
         
      })
   })

   // app.post('/thanks',function(req,res){
   //    res.redirect('/thanks.html')
   // })

app.listen(8899,()=>{
  console.log("Server is running")
})