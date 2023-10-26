var isPalindrome = function(x) {
    if (x < 0){
        return(false)
    }else{
        let [...des]=x.toString()
        for (let i =0, y=des.length-1; i<=y; i++, y--){
            console.log("array "+i+""+des[i]+""+des[y])
            if (des[i] != des[y]){
                return false
            }
        }
        return true
    }
};
console.log(isPalindrome(100021))