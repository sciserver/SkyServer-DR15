function showLink(thelink) {
    document.getElementById(thelink).style.display = "inline";
}
function hideLink(thelink) {
    document.getElementById(thelink).style.display = "none";
}

function showSection(thediv) {
    document.getElementById(thediv).className += "shown ";
    document.getElementById(thediv).className =
            document.getElementById(thediv).className.replace
                  (/(?:^|\s)hidden(?!\S)/g, '')
    /* code wrapped for readability - above is all one statement */
}
function hideSection(thediv) {
    document.getElementById(thediv).className += "hidden ";
    document.getElementById(thediv).className =
            document.getElementById(thediv).className.replace
                (/(?:^|\s)shown(?!\S)/g, '')
    /* code wrapped for readability - above is all one statement */
}