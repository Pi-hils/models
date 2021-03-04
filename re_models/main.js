// const ul = document.querySelector('.items');


// // ul.remove
// ul.firstElementChild.textContent ='Hello';
// ul.children[1].innerText = 'Hils';
// ul.lastElementChild.innerHTML = '<h4>Hello</</h4>';

// const button = document.querySelector(".btn");
// // button.style.background = 'green';

// button.addEventListener('click', (e) => {
//   e.preventDefault();
//   document.querySelector('#my-form').style.background = 'green';
//   // document.querySelector('ul') 
//   ul.firstElementChild.textContent =`${emails}`;
//   document.querySelector('#emails').textContent =`${'.emails'}`;
// });


const myForm = document.querySelector('#my-form');
const nameInput = document.querySelector('#name');
const emailInput = document.querySelector('#email');
const message = document.querySelector('.msg');
const usersInput = document.querySelector('#users');

myForm.addEventListener('submit', onSubmit);

function onSubmit(e) {
  e.preventDefault();
   if(nameInput.value === '' || emailInput === ''){
     message.classList.add('error');
    message.innerHTML ='Please enter fields';
    message.setTimeOut(() => message.remove(), 1000);
   }else {
  const li = document.createElement('li');
  li.appendChild(document.createTextNode(`${nameInput.value} : ${emailInput.value}`));
    // append the li to the user cler(from index.html) 
    usersInput.appendChild(li);
    // clearing the field
    // nameInput.value = '';
    // emailInput.value = '';
   }
}



// const btn = document.

// Single element
//  console.log(document.getElementById('my-form'));
// console.log(document.querySelector('.container'));

// Multiple element
// console.log(document.querySelectorAll('.items'));
// console.log(document.ElementByClassName('item'));

// const details = [
//   {
//     "name": "Homer Simpson",
//     "location": "Springfield",
//     "date_of_birth": "1956-05-12"
//   },
//   {
//     "name": "Frank Reynolds",
//     "location": "Philidelphia",
//     "date_of_birth": "1944-11-17"
//   },
//   {
//     "name": "Diane Nguyen",
//     "location": "Los Angeles",
//     "date_of_birth": "1980-03-19"
//   },
//   {
//     "name": "Krusty the Clown",
//     "location": "SpringField",
// 		"date_of_birth": "1957-10-29"
//   }
// ];

// // for loop
// for(let i=0; i < details.length; i++){
//   console.log(details[i].name);
// };