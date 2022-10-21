import os
import times

const dateFormat: string = "yyyy-MM-dd"
var firstSober: string = ""

# 最初のSoberを引数で設定する.
# 引数が設定されていなければ自分のSoberで計算する
if (paramCount() == 0):
    # 自分の最初のSober
    firstSober = "2022-08-13"
else:
    firstSober = commandLineParams()[0]

let firstSoberDate = parse(firstSober, dateFormat)
let nowDate = now()

echo "FirstSober : ", firstSoberDate
echo "NowDate : ", nowDate
# 時差対策で+1日する
echo "Sober history : ", (nowDate - firstSoberDate).inDays + 1