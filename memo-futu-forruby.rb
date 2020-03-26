#example decbv("147411C7Es")
#example decbv("bv147411C7Es")
#example decbv("BV147411C7Es")
def decbv(bv_id)
	av_id=0
	bv_id=bv_id[2...bv_id.size] if ['bv','BV'].include?(bv_id[0...2])
	6.times{|i| av_id+=bv_id.split("").map{|str_chr| "fZodR9XQDSUm21yCkr6zBqiveYah8bt4xsWpHnJE7jL5VG3guMTKNPAwcF".split("").index(str_chr)}["124689".split("").map{|s| s.to_i}[i]]*58**("245310".split("").map{|s| s.to_i}[i])}
	return (av_id-8728348608)^177451812
end


#example encav(99399599)
#example encav("av99399599")
#example encav("AV99399599")
def encav(av_id)
	av_id=av_id[2...av_id.size] if ['av','AV'].include?av_id[0...2] if av_id.class.to_s == "String"
	av_id=av_id.to_i
	bv_id="1  4 1 7  ".split("")
	6.times{|i| bv_id["124689".split("").map{|s| s.to_i}[i]]="fZodR9XQDSUm21yCkr6zBqiveYah8bt4xsWpHnJE7jL5VG3guMTKNPAwcF".split("")[((av_id^177451812)+8728348608)/58**("245310".split("").map{|s| s.to_i}[i])%58]}
	return bv_id.join
end