
// setTimeout( loadside , 111);
window.addEventListener('DOMContentLoaded', loadside )

function loadside() {
	let sidenav = document.getElementById("sidenav");
	// if ( sidenav == null ) {
		// setTimeout( loadside , 111 );
		// return;
	// }
	sidenav.addEventListener("click", portraitClickCloseBar);

	sidenav.classList.add("loaded");
	if ( window.matchMedia("(hover:hover) and (pointer:fine)").matches )
		document.querySelector("main").classList.add("smooth");

	let unfold = document.querySelectorAll(".unfoldonload");
	for (let i = 0; i < unfold.length; i++)
		toggfold( unfold[i], true );

	let cur = curlinkelem();
	if ( !cur ) return;
	toggfold(cur, true);
	const scrolltocur = function() {
		let h = cur.offsetTop - sidenav.offsetTop - (window.innerHeight/8);
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
	let url = window.location.href .split("#")[0];
	let links = document.querySelectorAll(".foldable > a");
	for (let i = 0; i < links.length; i++)
		// need fix in generated html
		// if (url == links[i].href) 
		if (url == links[i].href.split("#")[0]) 
			return links[i].parentElement;
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
	let folded = elem.classList.toggle('folded');
	let h = elem.scrollHeight;
	let par = elem.parentElement;
	let pad = parseFloat(window.getComputedStyle(par).fontSize);
	if (par.classList.contains("sidelist"))
		par.style.height = par.scrollHeight + (folded ? -h : h+pad) + "px";
	elem.style.height = (folded ? 0 : h+pad ) + "px";
	elem.addEventListener("transitionend", event => { inanim = false; });
}


var visicnt = null

fetch( "/wiki/counter/counter.php" )
	.then( ( resp ) => resp.text() )
	.then( ( text ) => visicnt = text )

window.addEventListener('DOMContentLoaded', setcount )

function setcount() {
	if ( visicnt == null ) {
		setTimeout( setcount, 33 )
		console.log( "visitor count wasnt fetched yet" )
		return
	}
	let counter = document.getElementById("visitorcount")
	if ( counter != null )
		counter.innerHTML = visicnt
}

