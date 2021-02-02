class Models
  def information(info, location)
   info = [{ name: "Homer Simpson",
    location: "Springfield", 
     date_of_birth: "1956-05-12"}, 

    {name: "Frank Reynolds",
      location: "Philidelphia", 
      date_of_birth: "1944-11-17"},

      {name: "Krusty the Clown",
        location: "SpringField",
        date_of_birth: "1957-10-29"
      },
      {name: 'Lisa Simpson',
        location: 'SpringField',
        date_of_birth: '1998-10-29' },
        {name: 'Bart Simpson',
          location: 'Washington',
          date_of_birth: '1996-10-29'}
   ]

   raise "No models in this location" if location == ""
   new_info=""
   naming=""

   while location != "" do
    info.each do |i|
     puts "enter location"
    location = gets.chomp.capitalize

       if location == "Springfield"
         naming << "Homer Simpson, Krusty the Clown, Lisa Simpson".upcase
         new_info << naming
         return new_info
       elsif location == "Philidelphia"
         naming << "Frank Reynolds".upcase
         new_info << naming
          return new_info
       elsif location == "Washington"
         naming << "Bart Simpson".upcase
         new_info << naming
          return new_info
       end
     end
    return new_info
   end
 end

#  while location != "" do
#    info.each do |i|
#      puts "enter location"
#    p location = gets.chomp.capitalize
#       if location == "Springfield"
#         naming << "Homer Simpson, Krusty the Clown, Lisa Simpson".upcase
#         new_info << naming
#         return new_info
#       elsif location == "Philidelphia"
#         naming << "Frank Reynolds".upcase
#         new_info << naming
#          return new_info
#       elsif location == "Washington"
#         naming << "Bart Simpson".upcase
#         new_info << naming
#          return new_info
#       end
#     end
#    return new_info
#   end
# end
end