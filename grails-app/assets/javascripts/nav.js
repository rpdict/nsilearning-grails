var myNav=document.getElementById("navbar").getElementsByTagName("a");
        var currenturl = document.location.href;
        for(var i=0;i<myNav.length;i++){
            var aurl=myNav[i].getAttribute("href");
            if(currenturl.indexOf(aurl)!=-1){
                myNav[i].className="active";
                myNav[0].className="";
            }
        }