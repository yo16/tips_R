
# 文字列連結はpasteだけど
# sep=を指定しないと、デフォルトではスペースで区切るので注意


paste("abc","def","ghi")
#[1] "abc def ghi"

paste("abc","def","ghi", sep="")
#[1] "abcdefghi"

paste("abc","def","ghi", sep="-")
#[1] "abc-def-ghi"
