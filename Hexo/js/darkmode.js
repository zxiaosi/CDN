const mode = getComputedStyle(document.documentElement).getPropertyValue('content');
if(document.cookie.replace(/(?:(?:^|.*;\s*)dark\s*\=\s*([^;]*).*$)|^.*$/, "$1") == ''){
    if(mode == '"dark"' || new Date().getHours() > 22 || new Date().getHours() < 6){
        document.querySelector('link[title="dark"]').disabled = true;
        document.querySelector('link[title="dark"]').disabled = false;
    }
}else{
    if(document.cookie.replace(/(?:(?:^|.*;\s*)dark\s*\=\s*([^;]*).*$)|^.*$/, "$1") == '1'){
        document.querySelector('link[title="dark"]').disabled = true;
        document.querySelector('link[title="dark"]').disabled = false;
    }
}

function switchDarkMode(){
    var night = document.cookie.replace(/(?:(?:^|.*;\s*)dark\s*\=\s*([^;]*).*$)|^.*$/, "$1") || '0';
    if(night == '0'){
        document.querySelector('link[title="dark"]').disabled = true;
        document.querySelector('link[title="dark"]').disabled = false;
        document.cookie = "dark=1;path=/"
    }else{
        document.querySelector('link[title="dark"]').disabled = true;
        document.cookie = "dark=0;path=/"
    }
}
