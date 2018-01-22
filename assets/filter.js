// shamelessly copied from: https://www.w3schools.com/howto/howto_js_filter_lists.asp
function filterTerms() {
    // Declare variables
    var input, filter, ul, li, a, h3, i;
    input = document.getElementById("termSearch");
    filter = input.value.toLowerCase();
    ul = document.getElementById("termsList");
    li = ul.getElementsByTagName("li");
    // Loop through all list items, and hide those who don't match the search query
    for (i = 0; i < li.length; i++) {
        h3 = li[i].getElementsByTagName("h3")[0];
        a = h3.getElementsByTagName("a")[0];
        if (a.innerHTML.toLowerCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
    }
}
