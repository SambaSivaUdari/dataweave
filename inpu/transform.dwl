%dw 2.0
import * from dw::core::Arrays
output application/json
var a = ([] << payload)
var b = ([] << ((payload splitBy "")[0 to 2] reduce ($$ ++ $)))
---
//([] << 
//(((payload splitBy "") [0 to 2]) reduce ($$ ++ $))  //-- payload

//([] << payload) -- ([] << ((payload splitBy "")[0 to 2] reduce ($$ ++ $)))
//"result" : a -- b
//("abcdefqwe" scan {3})

(payload splitBy '' divideBy  "3") map ((item, index) -> item reduce ($$ ++ $ ))