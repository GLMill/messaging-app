// get form hide form 
window.onload = () => {
  var edit_form = document.getElementById('edit_form');
  edit_form.style.display = 'none';

  // button for showing form
  var edit_button = document.getElementById('edit_button');
  edit_button.addEventListener('click', show_form);

  function show_form(){
    edit_form.style.display = 'block';
    console.log('im connected')
  }
}