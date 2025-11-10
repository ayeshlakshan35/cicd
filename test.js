// test.js — very simple test
const http = require('http');
const port = 3000;
const req = http.request({hostname:'localhost', port, path:'/'}, res => {
  if (res.statusCode === 200) {
    console.log('OK');
    process.exit(0);
  } else {
    console.error('FAIL', res.statusCode);
    process.exit(1);
  }
});
req.on('error', err => { console.error(err); process.exit(1); });
req.end();
