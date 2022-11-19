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
    xhr.open("POST", '/load_table_content', true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send(JSON.stringify({ "table": select.value }));
    var table_names = [""];
    
    fetch('/get_table_names', {method: 'POST'}).then((res) =>{  
        if(res.ok) return res.json();
        throw new Error('Request failed');
    }).then((data) => {
        let table = document.getElementById("db_table");
        let row = table.insertRow(); 
        for(let i = 0; i< data.length;i++){
            let cell = row.insertCell();  
            cell.innerHTML = `${data[i].Field}`;
            table_names[i] = data[i].Field;
        }
        counter = data.length;
    }).catch((error) => {
        console.log(error);
    });

    fetch('/get_table_content_to_cells', {method: 'POST'}).then((res) =>{
        if(res.ok) return res.json();
        throw new Error('Request failed');
    }).then((data) => {
        console.log(data);
        let table = document.getElementById("db_table");
        let row = table.insertRow(); 
        for(let i = 0; i< data.length;i++){
            
            for (var key in data[i]){
                let cell = row.insertCell();
                cell.innerHTML = data[i][key];
                //table_names[i] = data[i][key];
            }
            
            //cell.innerHTML = data[i];
            //table_names[i] = data[i];

            row = table.insertRow();
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