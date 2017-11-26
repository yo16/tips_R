# t検定を地道に行う結果とt.testの結果の比較
# 2017/11/25

# 下記が、平均170の母集団から抽出した無作為標本と考えてよいか？
# 有意水準5%でt検定
meanOfPopulation = 170
# 有意水準(両側)
sigLevel = 0.05
# データ
data <- c(165,150,170,168,159,170,167,178,155,159,161,162,166,171,155,160,168,172,155,167)

# ------------------------

# 標本平均
meanOfSample = mean(data)
print(paste("mean of sample:", meanOfSample, sep=""))

# 検定統計量
t = (mean(data) - meanOfPopulation) / (sqrt(var(data))/sqrt(length(data)))
print(paste("t:",t, sep=""))
# [1] "t: -3.8502858588966"

# 自由度
df = length(data)-1
print(paste("df:",df, sep=""))

# 棄却域(critical region)
rangeMin <- qt(sigLevel/2, df)
#rangeMax <- qt(1-sigLevel/2, df)
rangeMax <- qt(sigLevel/2, df, lower.tail=FALSE)	# 上側確率0.025となるtの値を求める
print(paste("critical region: t<", rangeMin, " or ", rangeMin, "<t", sep=""))
if ( (rangeMin<t) && (t<rangeMax) ) {
	print("t-test result: SAITAKU")
}else{
	print("t-test result: REJECT!")
}
# -----------------------------------
print("----------------")
t.test( data, mu=170 )


