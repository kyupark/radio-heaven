require 'date'

def url(d)
  year = d.year
  month = d.month
  day = d.day
  url = "http://down-drm.kbs.gscdn.com/mp3/2fm/heaven_#{year}#{month}#{day}_down.mp3"
end

d = Date.new(2011,11,06)

until d < Date.new(2008,4,21)
  `curl #{url(d)}`
  d -= 1
end

