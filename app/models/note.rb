class Note < ApplicationRecord
belongs_to :aunty

# auntys_ids = [2,3]
# doc = Nokogiri::HTML(open("http://www.futurescopes.com/romance/romantic-ideas/3945/50-text-messages-send-cheer-someone/"))
# messages = doc.css('div.field-item.even p')
# messages.each do |msg|
#   Note.create(message: msg.text, aunty_id: auntys_ids.sample)
# end



end
