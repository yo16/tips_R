
# 引数を受け取る
# 2017/11/7 yo16

args1 = commandArgs(trailingOnly=TRUE)[1]
args2 = commandArgs(trailingOnly=TRUE)[2]
args3 = commandArgs(trailingOnly=TRUE)[3]

paramArray = c(args1,args2,args3)

table(paramArray)


