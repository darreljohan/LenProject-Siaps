export function tableNameHandler(params){
    switch(params){
        case "len":
            return "len_kapabilitas"
        case "dahana":
            return "dahana_kapabilitas"
        case "di":
            return "di_kapabilitas"
        case "pal":
            return "pal_kapabilitas"
        case "pindad":
            return "pindad_kapabilitas"
        default:
            return "notfound"
    }
}
