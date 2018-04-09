require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
  new_data = {}
  data.each do |feat, values|
    values.each do |sub_feat, pigeons|
      pigeons.each do |pigeon|
        
        if !new_data.has_key?(pigeon)
          new_data[pigeon] = {}
        end  
        if !new_data[pigeon].has_key?(feat)
          new_data[pigeon][feat] = []
          #binding.pry
        end
        new_data[pigeon][feat] << sub_feat.to_s
      end
    end
  end
  new_data
end