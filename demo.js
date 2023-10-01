// let number = 1;
// function demo() {
//     function aaa() {
//         number += 1;
//         return number;
//     }
//     return aaa
// }

// let increament = demo()

// console.log(increament())
// console.log(increament())
// console.log(increament())
// console.log(increament())
// console.log("======")
// console.log(number)

function a(b) {
    b();
}

a(function e(){
    console.log(123);
})