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



   new_info=[]
   raise "No models in this location" if location == ""

  #  info.each do |i|
   if location == "Springfield"
    "Homer Simpson, Krusty the Clown, Lisa Simpson".upcase
   elsif location == "Philidelphia"
     "Frank Reynolds".upcase
   elsif location == "Washington"
    "Bart Simpson".upcase
   end
  # end
end
end