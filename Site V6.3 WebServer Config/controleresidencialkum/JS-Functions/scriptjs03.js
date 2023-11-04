
const http='http://'
const ip='192.168.0.0';
const palavraon='/RELAY2ON';
const palavraOFF='/RELAY2OFF';

function comandos1(){
    let situacaos1 = document.getElementById('st01');
    situacaos1.style.backgroundColor = '#00ff40';
    window.open(http+ip+palavraon,
                    "", "width=300, height=300");
    alert("ativando a irrigação");
}
function comandon1(){
    let situacaon1 = document.getElementById('st01');
    situacaon1.style.backgroundColor = 'red';
    window.open("http+ip+palavraoff",
                    "", "width=300, height=300");
    alert("Desativando a irrigação");
}