import times


let dateFormat: string = "yyyy-MM-dd"
let myFirstSober: string = "2022-08-13"

# FIXME 08-13 to args
let firstSober = parse(myFirstSober, dateFormat)
let nowDate = now()

echo "FirstSober : ", firstSober
echo "NowDate : ", nowDate
# 時差対策で+1日する
echo "Sober history : ", (nowDate - firstSober).inDays + 1