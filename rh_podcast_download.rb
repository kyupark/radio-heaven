require 'date'

def argument(d)
  date = d.strftime('%Y%m%d')
  
  puts "http://down-drm.kbs.gscdn.com/mp3/2fm/heaven_#{date}_down.mp3"
  "http://down-drm.kbs.gscdn.com/mp3/2fm/heaven_#{date}_down.mp3 > podcast/heaven_#{date}_down.mp3"
end

d = Date.new(2011,11,06)

until d < Date.new(2008,4,21)
  `curl -C - #{argument(d)}`
  d -= 1
end

