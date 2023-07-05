a = ",  tama mike　pochi,kuro, shiro tama"

p a.gsub(/[　,]/, " ").strip.split(/[,、 　]+/)

p a.gsub(/[　,、]/, " ").strip.split(/ +/).uniq


