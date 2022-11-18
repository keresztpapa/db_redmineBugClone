console.log('Client-side code running');

function load_devs(){
    fetch('/list_devs', {method: 'POST'}).then((res) =>{
        if(res.ok) return res.json();
        throw new Error('Request failed');
    }).then((data) => {
        let select = document.getElementById("developers_load");
        
        for(let i = 0; i< data.length;i++){
            let opt = document.createElement('option');
            opt.value = `${data[i].name}`;
            opt.innerHTML = `${data[i].name}`;
            select.appendChild(opt);
        }
    }).catch((error) => {
        console.log(error);
    });
};

function send_dev_name(){
    let select = document.querySelector('#developers_load');
    
    let xhr = new XMLHttpRequest();
    let url = "/dev_pos_tickets";
    xhr.open("POST", url, true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send(JSON.stringify({ "name": select.value }));

    fetch('/get_user', {method: 'POST'}).then((res) =>{
        if(res.ok) return res.json();
        throw new Error('Request failed');
    }).then((data) => {
        console.log(data);
    }).catch((error) => {
        console.log(error);
    });
}

function load_db(){
    fetch('/load_tables', {method: 'POST'}).then((res) =>{
        if(res.ok) return res.json();
        throw new Error('Request failed');
    }).then((data) => {
        let select = document.getElementById("database_load");
        
        for(let i = 0; i< data.length;i++){
            let opt = document.createElement('option');
            opt.value = `${data[i].Tables_in_bugzilla}`;
            opt.innerHTML = `${data[i].Tables_in_bugzilla}`;
            select.appendChild(opt);
        }
    }).catch((error) => {
        console.log(error);
    });
};

function send_table_content(){
    let select = document.querySelector('#database_load');
    
    let xhr = new XMLHttpRequest();
    let url = "/load_table_content";
    xhr.open("POST", url, true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send(JSON.stringify({ "table": select.value }));

    fetch('/get_table_content_to_cells', {method: 'POST'}).then((res) =>{
        if(res.ok) return res.json();
        throw new Error('Request failed');
    }).then((data) => {

        console.log(data);

        let table = document.getElementById("db_table");
        
        for(let i = 0; i< data.length;i++){

            /*
            let row = table.insertRow(); 
            let cell1 = row.insertCell();
            cell1.setAttribute("name","cim");

            let cell2 = row.insertCell();
            cell2.setAttribute("name","ticketSorszam");
            
            let cell3 = row.insertCell();
            cell3.setAttribute("name","prioritas");
            
            let cell_dell = row.insertCell();
            let mod_cell = row.insertCell();
            
            cell1.innerHTML = `${data[i].cim}`;
            cell2.innerHTML = `${data[i].ticketSorszam}`;
            cell3.innerHTML = `${data[i].prioritas}`;
            cell_dell.innerHTML = `<button type="submit" id="xbutton" onclick=""> X </button>`;
            mod_cell.innerHTML = `<button type="submit" id="mbutton" onclick=""> Modify </button>`;
            */
        }
    }).catch((error) => {
        console.log(error);
    });
}

/*
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
*/