console.log('Client-side code running');

const db_bttn = document.getElementById('db_button');

db_bttn.addEventListener('click', async () => {
    fetch('/clicked', {method: 'POST'}).then((res) =>{
        if(res.ok) return res.json();
        throw new Error('Request failed');
    }).then((data) => {
        document.getElementById('db_list').innerHTML = ` `;
        for(let i = 0; i< data.length;i++){    
            document.getElementById('db_list').innerHTML += `${data[i].name}`+"<br>";
        }
        document.getElementById('db_list').innerHTML += `\n`;
    }).catch((error) => { 
        console.log(error); 
    });
});
