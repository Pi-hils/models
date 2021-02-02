# Summary

Contact holds a lot of data on the talent we work with – think their locations, ages, hair colour, eye colour, etc. We often need to filter a big list of talent based on certain criteria – for example, the location they're based in.

We'd like you to build a program that accepts two inputs:

- A JSON array of talent, containing objects with `name`, `location` and `date_of_birth` attributes
- A location to filter by

The program should then filter the array of supplied talent, and output the names of talent whose location matches the location supplied. The supplied location should be consider case-insensitive, and the order in which names are outputted is not important.

2 arguement. 1st to be model info (constant),2nd location
## Example
input                                         |   Output
[
  {                                           
    "name": "Homer Simpson",
    "location": "Springfield",
    "date_of_birth": "1956-05-12"
  },
  {
    "name": "Frank Reynolds",
    "location": "Philidelphia",
    "date_of_birth": "1944-11-17"
  },
  {
    "name": "Diane Nguyen",
    "location": "Los Angeles",
    "date_of_birth": "1980-03-19"
  },
  {
    "name": "Krusty the Clown",
    "location": "SpringField",
		"date_of_birth": "1957-10-29"
  }
]
- A location of `Springfield`                 | Homer Simpson, 
                                                Krusty the clown


## Language
- Ruby

## Testing tool
- Rspec