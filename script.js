title = document.getElementById("title1");
title2 = document.getElementById("title2");
clickme = document.getElementById("clickme");
title.onclick = function() {
    title.innerHTML = "You found the easter egg!";
    setTimeout(function() {
        title.innerHTML = "iPig's Website";
    }, 2000);
}
clickme.onclick = function() {
    location.href = "https://www.youtube.com/watch?v=dQw4w9WgXcQ";
}
