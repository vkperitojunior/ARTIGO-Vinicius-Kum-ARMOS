//   Esta é a função que podemos convocar para conseguir guardar as ações ralizadas dentro do site
// durante o uso do mesmo, seja por qual usuario.

const fs=require[`fs`];
// aqui requisitamos o modulo file system.

function LFS(){

    const date = new Date().toLocaleString();

    var email = "<?php echo $_SESSION['email']; ?>";

    var TextCollected = "O usuario do email: "+email+" Executou uma ação do botão valor: "+document.getElementsByTagName(button || a).value+"no dia e hora: " + date;

    appendFile("arquivocofre.txt", TextCollected, (err)=>{
        if(err){
            console.log("Erro no sistema de logs, favor falar com o proprietário do site para correções.");
        }; 
        console.log(data);
    });
    // Esta é a função para escrita dentro do arquivo cofre.
};

// -------------------------------- Informações para uso da mesma -------------------------------------- //

/* 

<script src="../Logs/function_log.js">
// Link para o arquivo de logs
</script>

onclick="LFS()"

*/
