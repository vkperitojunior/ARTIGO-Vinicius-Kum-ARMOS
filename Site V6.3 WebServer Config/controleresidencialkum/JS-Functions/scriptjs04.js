
const http='http://'
const ip='192.168.0.0';
const palavraon1='/RELAY3ON';
const palavraOFF1='/RELAY3OFF';
const palavraon2='/RELAY4ON';
const palavraOFF2='/RELAY4OFF';

function comandos1(){
    let situacaos1 = document.getElementById('st01');
    situacaos1.style.backgroundColor = '#00ff40';
    window.open(http+ip+palavraon1,
                    "", "width=300, height=300");
    alert("ativando a irrigação");
}
function comandon1(){
    let situacaon1 = document.getElementById('st01');
    situacaon1.style.backgroundColor = 'red';
    window.open(http+ip+palavraoff1,
                    "", "width=300, height=300");
    alert("Desativando a irrigação");
}

function comandos2(){
    let situacaos2 = document.getElementById('st02');
    situacaos2.style.backgroundColor = '#00ff40';
    window.open(http+ip+palavraon2,
                    "", "width=300, height=300");
    alert("Ativando a luz da cozinha");
}
function comandon2(){
    let situacaon2 = document.getElementById('st02');
    situacaon2.style.backgroundColor = 'red';
    window.open(http+ip+palavraoff2,
                    "", "width=300, height=300");
    alert("Desativando a luz da cozinha");
}