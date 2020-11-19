if("serviceWorker" in navigator){
    navigator.serviceWorker.register("../sw.js").then(registration =>{
        console.log("Service Worker Enregistré");
        console.log(registration);
    }).catch(error => {
        console.log("Service Worker Enregistrement échoué");
        console.log(error);
    });
}

let count =1

setInterval(()=>{
    CountQueuingStrategy.innerText = count;
    count++
}, 1000)