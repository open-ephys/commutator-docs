function fallbackCopyTextToClipboard(text) {
    var textArea = document.createElement("textarea");
    textArea.value = text;

    // Avoid scrolling to bottom
    textArea.style.top = "0";
    textArea.style.left = "0";
    textArea.style.position = "fixed";

    document.body.appendChild(textArea);
    textArea.focus();
    textArea.select();
    try { document.execCommand('copy'); }
    finally { document.body.removeChild(textArea); }
}

function copyTextToClipboard(text) {
    if (!navigator.clipboard) {
        fallbackCopyTextToClipboard(text);
        return;
    }

    navigator.clipboard.writeText(text);
}

function downloadText(name, text) {
    var bb = new Blob([text], { type: 'text/plain' });
    var a = document.createElement('a');
    a.download = name;
    a.href = window.URL.createObjectURL(bb);
    a.click();
}

function getFileFromURL(url)
{
    fetch(url)
        .then((res) => { return res.blob(); })
        .then((data) => {
          var a = document.createElement("a");
          var name = url.substring(url.lastIndexOf('/')+1)
          a.href = window.URL.createObjectURL(data);
          a.download = name;
          a.click();
        });
}

function getTextFromURL(url) {
    http = new XMLHttpRequest();
    http.open("GET", url, true);
    http.onreadystatechange = function () {
        // console.log("state changed!");
        if (http.readyState === XMLHttpRequest.DONE) {
            var status = http.status;
            if (status === 0 || (status >= 200 && status < 400)) {
                copyTextToClipboard(http.responseText);
            }
        }
    }
    http.send(null);
}