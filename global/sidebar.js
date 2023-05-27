
setTimeout( loadside , 111);

function loadside() {
	var sidenav = document.getElementById("sidenav");
	sidenav.addEventListener("click", portraitClickCloseBar);

	sidenav.classList.add("loaded");
	if ( window.matchMedia("(hover:hover) and (pointer:fine)").matches )
		document.querySelector("main").classList.add("smooth");

	var unfold = document.querySelectorAll(".unfoldonload");
	for (var i = 0; i < unfold.length; i++)
		toggfold( unfold[i], true );

	var cur = curlinkelem();
	if ( !cur ) return;
	toggfold(cur, true);
	const scrolltocur = function() {
		var h = cur.offsetTop - sidenav.offsetTop - (window.innerHeight/8);
		sidenav.scrollTo({top:h, behavior:"smooth"});
	}
	setTimeout( scrolltocur , 333);
}

const mobilemediaquery = 
	"screen and (max-device-aspect-ratio: 2/3) and (orientation:portrait),"
	 + "screen (orientation:portrait), screen and (max-aspect-ratio: 1)";
function portraitClickCloseBar(e) {
	if (! window.matchMedia( mobilemediaquery ).matches)
		return; // only for portrait screen
	if (! e.target.closest("a"))
		return; // only for click on anchor links
	toggside();
}

function curlinkelem(){
	var url = window.location.href .split("#")[0];
	var links = document.querySelectorAll(".foldable > a");
	for (var i = 0; i < links.length; i++)
		if (url == links[i].href)
			return links[i].parentElement;
}

function nobubble(event) {
	event.stopPropagation();
}

function toggside() {
	document.getElementById("sidebar").classList.toggle('folded');
	document.getElementById("main-container").classList.toggle('folded');
}

var inanim = false;

function toggfold(elem, force) {
	if (inanim && !force) return;
	inanim = true;
	elem.classList.toggle('folded');
	elem = elem.nextElementSibling;
	var folded = elem.classList.toggle('folded');
	var h = elem.scrollHeight;
	var par = elem.parentElement;
	var pad = parseFloat(window.getComputedStyle(par).fontSize);
	if (par.classList.contains("sidelist"))
		par.style.height = par.scrollHeight + (folded ? -h : h+pad) + "px";
	elem.style.height = (folded ? 0 : h+pad ) + "px";
	elem.addEventListener("transitionend", event => { inanim = false; });
}
