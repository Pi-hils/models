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
      }
   ]
   raise_error "No models in this location" if location == ""

   if location == "Springfield"
    "Homer Simpson, Krusty the Clown"
   elsif location == "Philidelphia"
     "Frank Reynolds"
   end

  end
end