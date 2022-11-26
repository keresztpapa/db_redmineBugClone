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

function load_devs_and_issues(){
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

    fetch('/list_issue', {method: 'POST'}).then((res) =>{
        if(res.ok) return res.json();
        throw new Error('Request failed');
    }).then((data) => {
        let select = document.getElementById("issue_load");
        
        for(let i = 0; i< data.length;i++){
            let opt = document.createElement('option');
            opt.value = `${data[i].id}`;
            opt.innerHTML = `${data[i].id}`;
            select.appendChild(opt);
        }
    }).catch((error) => {
        console.log(error);
    });
};

function send_dev_name(){
    let select = document.querySelector('#developers_load');
    let xhr = new XMLHttpRequest();
    xhr.open("POST", "/dev_pos_tickets", true);
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

var table_name = "";

function send_table_content(){
    let select = document.querySelector('#database_load');
    let xhr = new XMLHttpRequest();
    xhr.open("POST", '/load_table_content', true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send(JSON.stringify({ "table": select.value }));    
    table_name = select.value;
    let table = document.getElementById("db_table");
    table.innerHTML = "";

    fetch('/get_table_names', {method: 'POST'}).then((res) =>{  
        if(res.ok) return res.json();
        throw new Error('Request failed');
    }).then((data) => {
        let table = document.getElementById("db_table");
        let row = table.insertRow(); 
        for(let i = 0; i< data.length;i++){
            let cell = row.insertCell();  
            cell.innerHTML = `${data[i].Field}`;
            //table_names[i] = data[i].Field;
        }
        let cell1 = row.insertCell();  
        cell1.innerHTML = "";
        let cell2 = row.insertCell();  
        cell2.innerHTML = "";
    }).catch((error) => {
        console.log(error);
    });

    fetch('/get_table_content_to_cells', {method: 'POST'}).then((res) =>{
        if(res.ok) return res.json();
        throw new Error('Request failed');
    }).then((data) => {
            //console.log(data);
            let table = document.getElementById("db_table");
            let row = table.insertRow(); 
            for(let i = 0; i< data.length;i++){

                for (var key in data[i]){
                    let cell = row.insertCell();
                    cell.innerHTML = data[i][key];
                }                
                let cell_mod = row.insertCell();  
                cell_mod.innerHTML = `<button type="submit" id="mod_button" name="mod_button" onclick="modify(this)"> Mod </button>`;

                let cell_del = row.insertCell();
                cell_del.innerHTML = `<button type="submit" id="del_button" name="del_button" onclick="delete_cell(this)"> Del </button>`;

                row = table.insertRow();
            }
    }).catch((error) => {
        console.log(error);
    });
}

function modify(r){
    let i = r.parentNode.parentNode.rowIndex;
    let arr = [{}];
    let original_arr = [{}];
    let data = {};
    //console.log(document.getElementById("db_table").rows[i].cells.length);
    //console.log(document.getElementById("db_table").rows[i].cells[0]);

    for(let j=0;j < document.getElementById("db_table").rows[i].cells.length-2; j++){
        original_arr.push({data:document.getElementById("db_table").rows[i].cells[j].innerHTML});
        let prom = prompt(document.getElementById("db_table").rows[0].cells[j]+` modositasa:`, document.getElementById("db_table").rows[i].cells[j].innerHTML);
        if(prom == null || prom == "") alert("Nothing");
        if(prom == false) break;
        arr.push({data:prom});
    }
    
    data = JSON.stringify({table_name:table_name, arr, original_arr});

    const xhr = new XMLHttpRequest();
    xhr.open("POST", "/mod_call");
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send(data);
}


function delete_cell(r){
    let i = r.parentNode.parentNode.rowIndex;
    let arr = [{}];
    let original_arr = [{}];
    let data = {};
    //console.log(document.getElementById("db_table").rows[i].cells.length);
    //console.log(document.getElementById("db_table").rows[i].cells[0]);

    for(let j=0;j < document.getElementById("db_table").rows[i].cells.length-2; j++){
        original_arr.push({data:document.getElementById("db_table").rows[i].cells[j].innerHTML});
    }
    
    data = JSON.stringify({table_name:table_name, arr, original_arr});

    const xhr = new XMLHttpRequest();
    xhr.open("POST", "/del_call");
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send(data);
    document.getElementById("db_table").deleteRow(i);
}

function query_story(){
    var select = document.querySelector('#developers_load');
    var xhr = new XMLHttpRequest();
    xhr.open("POST", '/query_story', true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send(JSON.stringify({ "table": select.value }));    
    var table = document.getElementById("db_table");
    table.innerHTML = "";
    
    fetch('/query_story_points', {method: 'POST'}).then((res) =>{
        if(res.ok) return res.json();
        throw new Error('Request failed');
    }).then((data) => {
        let row = table.insertRow();        
        let cell_name = row.insertCell();
        cell_name.innerHTML = "Név:";
        let cell_SP = row.insertCell();
        cell_SP.innerHTML = "Gyüjtött pont:";
        let cell_ISSUE_COUNT = row.insertCell();
        cell_ISSUE_COUNT.innerHTML = "Elvégzett issue-k";
        row = table.insertRow();

        console.log(data);
            for(let i = 0; i< data.length;i++){

                for (var key in data[i]){
                    let cell = row.insertCell();
                    cell.innerHTML = data[i][key];
                }                

                row = table.insertRow();
            }

            if(data.length == 0){
                let cell_1 = row.insertCell();
                cell_1.innerHTML = select.value;
                let cell_2 = row.insertCell();
                cell_2.innerHTML = 0;
                let cell_3 = row.insertCell();
                cell_3.innerHTML = 0;
                row = table.insertRow();
            }

    }).catch((error) => {
        console.log(error);
    });
}

function query_issue_role(){
    var select = document.querySelector('#developers_load');
    var xhr = new XMLHttpRequest();
    xhr.open("POST", '/query_role', true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send(JSON.stringify({ "table": select.value }));    
    var table = document.getElementById("db_table");
    table.innerHTML = "";
    
    fetch('/query_role_issue', {method: 'POST'}).then((res) =>{
        if(res.ok) return res.json();
        throw new Error('Request failed');
    }).then((data) => {
        let row = table.insertRow();        
        let cell_code = row.insertCell();
        cell_code.innerHTML = "Issue kódja:";
        let cell_admin = row.insertCell();
        cell_admin.innerHTML = "ADMIN:";
        let cell_sudoer = row.insertCell();
        cell_sudoer.innerHTML = "SUDOER:";
        let cell_editor = row.insertCell();
        cell_editor.innerHTML = "EDITOR:";
        row = table.insertRow();

        console.log(data);
            for(let i = 0; i< data.length;i++){

                for (var key in data[i]){
                    let cell = row.insertCell();
                    cell.innerHTML = data[i][key];
                }                

                row = table.insertRow();
            }

            if(data.length == 0){
                let cell_1 = row.insertCell();
                cell_1.innerHTML = " No issue solved "
                let cell_2 = row.insertCell();
                cell_2.innerHTML = 0;
                let cell_3 = row.insertCell();
                cell_3.innerHTML = 0;
                let cell_4 = row.insertCell();
                cell_4.innerHTML = 0;
                row = table.insertRow();
            }

    }).catch((error) => {
        console.log(error);
    });
}

function get_reports_from_devs_querry(){ 
    let select = document.querySelector('#developers_load');
    let xhr = new XMLHttpRequest();
    xhr.open("POST", "/devs_working_on_reports", true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send(JSON.stringify({ "name": select.value }));
    var table = document.getElementById("db_table");
    table.innerHTML = "";

    fetch('/devs_working_on_reports_query', {method: 'POST'}).then((res) =>{
        if(res.ok) return res.json();
        throw new Error('Request failed');
    }).then((data) => {
        let row = table.insertRow();        
        console.log(data);
        for(let i = 0; i< data.length;i++){

            for (var key in data[i]){
                let cell = row.insertCell();
                cell.innerHTML = data[i][key];
            }                

            row = table.insertRow();
        }

    }).catch((error) => {
        console.log(error);
    });
}