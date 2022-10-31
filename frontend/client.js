console.log('Client-side code running');

const button = document.getElementById('db_button');

button.addEventListener('click', async () => {
    fetch('/clicked', {method: 'POST'})
    .then(function(response) {
      if(response.ok) {
        console.log('Click was recorded');
        return;
      }
      throw new Error('Request failed.');
    })
    .catch(function(error) {
      console.log(error);
    });
});