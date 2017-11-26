# ifキソ

nums1 <- c(10,20,30)

# }の行にelseを書かないとコンパイルエラーになるので注意
if ( mean(nums1) < 15 ) {
	print("mean(nums1)<15 !")
} else if( mean(nums1) < 25 ) {
	print("mean(nums1)<25 !")
} else {
	print("mean(nums1)>=25 !")
}

# 等しいと等しくない
nums2 <- c(40,50,60)
nums3 <- c(70,80)
if( length(nums1) == length(nums2) ){
	print("true")
}
if( length(nums1) != length(nums3) ){
	print("true")
}

# andとor
if( (1<2) && (3<4) ){
	print("true")
}
if( (1<2) || (3>4) ){
	print("true")
}
