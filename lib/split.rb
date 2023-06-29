a = ",  tama mike　pochi,kuro, shiro"

p a.gsub(/[　,]/, " ").strip.split(/[,、 　]+/)

p a.gsub(/[　,、]/, " ").strip.split(/ +/)


