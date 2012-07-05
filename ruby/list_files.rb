require 'find'
Find.find('./') do |f|
  p "#{f} size: #{File.size? f}"
end

#p Dir['**/*.*']