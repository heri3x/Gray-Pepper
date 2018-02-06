// https://gist.github.com/founddrama/2182389

var moment = require('moment');
var result;

result = moment().add(2, 'days').fromNow();
console.log(result);

result = moment().subtract(2, 'days').fromNow();
console.log(result);

result = moment('1999/01/01', "YYYY/MM/DD");
console.log(result);

result = moment().add(2, 'days').calendar();
console.log(result);

result = moment().subtract(2, 'days').calendar();
console.log(result);

result = moment('1999/01/01', "YYYY/MM/DD").format('MMM. d, YYYY');
console.log(result);

result = moment('1999/01/01', "YYYY/MM/DD").fromNow();
console.log(result);
