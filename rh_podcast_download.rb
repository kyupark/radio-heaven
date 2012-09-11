require 'date'

def argument(d)
  date = d.strftime('%Y%m%d')
  "http://down-drm.kbs.gscdn.com/mp3/2fm/heaven_#{date}_down.mp3"
end

d = Date.new(2011,11,05)

until d < Date.new(2008,4,21)
  `wget -o /182482/radio-heaven/log.txt -P /podcast/ #{argument(d)}`
  d -= 1
end


=begin
  podcast download pattern before Feb 2009
  http://danpod.nefficient.co.kr/danpod/mp3/2fm/heaven_20090211_down.mp3
  http://data.danpod.com/cast1/heaven/media/20090202/RADIOHEAVEN090201.mp3
=end