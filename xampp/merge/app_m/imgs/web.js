const http = require('http');

http.createServer((req, res) =>{
    res.setHeader('Content-Type', 'text/html');
    
    res.writeHead(200);
    res.write('<h1>Hello</h1>');
    res.end();
}).listen(3000);