# t検定を地道に行う結果とt.testの結果の比較
# 2017/11/25

# 下記が、平均170の母集団から抽出した無作為標本と考えてよいか？
# 有意水準5%でt検定
meanOfPopulation <- 170
# 有意水準(両側)
sigLevel = 0.05
# データ
data <- c(165,150,170,168,159,170,167,178,155,159,161,162,166,171,155,160,168,172,155,167)

# ------------------------

# 検定統計量
t = (mean(data) - meanOfPopulation) / (sqrt(var(data))/sqrt(length(data)))
print(paste("t:",t))
# [1] "t: -3.8502858588966"

# 自由度
df = length(data)-1
# 棄却域
rangeMin <- qt(sigLevel/2, df)
#rangeMax <- qt(1-sigLevel/2, df)
rangeMax <- qt(sigLevel/2, df, lower.tail=FALSE)	# 上側確率0.025となるtの値を求める
print(paste("棄却域:", rangeMin, "以下 または ", rangeMin, "以上")){
if ( (rangeMin<t) && (t<rangeMax) ) {
	print("t検定の結果:採択域")
}else{
	print("t検定の結果:棄却域")
}
# -----------------------------------
print("----------------")
t.test( data, mu=170 )