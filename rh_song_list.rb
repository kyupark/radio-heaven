require 'nokogiri'
require 'open-uri'

start_url="http://kbbs.kbs.co.kr/board/message/list.do?boardName=2fm_heaven_song01"

page_url="http://kbbs.kbs.co.kr/board/message/view.do?boardName=2fm_heaven_song01&messageId=24173466&messageCategoryId=0&startId=1fLPB~&startPage=81&curPage=87&searchType=title&searchText=&searchDays=0&lastPageFlag=&currentPage=1"

class page
  def initiate(url)
    doc = Nokogiri::HTML(open(url))
    doc.at_css("div#DocCont")
  end
  
end