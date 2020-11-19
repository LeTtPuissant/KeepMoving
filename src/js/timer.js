var min=00,sec=03,dse=0;
var tmp=(min*60+sec)*10+dse;
 
var chrono=setInterval(function (){
     min=Math.floor(tmp/600);
     sec=Math.floor((tmp-min*600)/10);
     dse=tmp-((min*60)+sec)*10;
     tmp--;
     if(min==0 && sec==0 && dse==0){
         $('#reveil').show()
         tmp=0;
     }
     $('.timer').text(min+':'+sec+':'+dse);
},100);


