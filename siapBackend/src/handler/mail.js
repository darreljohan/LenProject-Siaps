export function tableNameHandler(params){
    switch(params){
        case "in":
            return "global_mail-in"
        case "out":
            return "global_mail-out"
        default:
            return "notfound"
    }
}
