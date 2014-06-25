## move-decimal-point

Move the decimal point of numbers to the right or left, operating on the number
as a string.
In other words, a lightweight way to perform accurate division/multiplication with
powers of 10 without needing a library for arbitrary-precision decimal arithmetic.

### Install

    npm install move-decimal-point

### Use
```js
var move_decimal = require('move-decimal-point');

// Move to the right
move_decimal('123.456', 1); // '1234.56'
move_decimal('123.456', 3); // '123456'
move_decimal('123.456', 5); // '12345600'

// Move to the left
move_decimal('123.456', -1); // '12.3456'
move_decimal('123.456', -3); // '0.123456'
move_decimal('123.456', -5); // '0.00123456'
```

### Test

    git clone git@github.com:shesek/move-decimal-point.git &&
    cd move-decimal-point &&
    npm install &&
    npm test

### License
MIT
