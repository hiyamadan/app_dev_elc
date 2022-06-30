    // * Utils
    const { check, validationResult } = require('express-validator');
    // *NPM Packages
    const jwt = require('jsonwebtoken');
    const bcrypt = require('bcryptjs');

    // * Models
    module.exports.breathing = async (req,res) =>{
        console.log('breathing route');
        res.sendFile(__dirname+'/breathing.html');
    }

    //Route to register User
    //matching passwords handled on the frontend
    module.exports.music = async (req, res) => {
        console.log('music route');
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
        return res.status(400).send('error occured');
        }
        else
        {
                
            var req = unirest("GET", "https://shazam.p.rapidapi.com/songs/list-recommendations");
            
            req.query({
                "key": "484129036",
                "locale": "en-US"
            });
            
            req.headers({
                "x-rapidapi-key": "fb31ae1b9bmsh02d85f7094a7dd0p1a15dbjsne615da4b83d2",
                "x-rapidapi-host": "shazam.p.rapidapi.com",
                "useQueryString": true
            });
            
            req.end(async (res) =>{
              try{
                
                //console.log(res.body);
                var tracks = await (res.body.tracks);
                
                for (var i = 0; i < tracks.length; i++){
                  
                //message.send.channel(`${tracks[i].title}`);
                lst.push(tracks[i].title);
                //console.log(tracks[i].title);
                }
                console.log(lst); 
                message.channel.send(lst)
            
              }
              catch(e)
              {
                 console.log(e.message);
              }
                
    })
}
    }


    //Route to register User
    //matching passwords handled on the frontend
    module.exports.quote = async (req, res) => {
        console.log('quote route');
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
        return res.status(400).send('error occured');
        }
        else

        try{
            var req = unirest("GET", "https://quotes.rest/qod?language=en" );
            console.log(req);
            return res.send(req.contents.quote).status(200)
        }catch(err){
            console.log(err)
            return res.send('error').status(400)
        }
            
            
            
        }
 
              

                
        
      
    

        
  
