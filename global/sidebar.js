

var vctxt, vcele;

fetch("/wiki/counter/counter.php")
	.then((resp) => resp.text())
	.then((text) => { vctxt = text; set_visitor_count(); })

function set_visitor_count() { if (vctxt && vcele) vcele.innerHTML = vctxt; }


window.onload = () => {

	// set visitor count text if home page
	if (window.location.pathname == '/wiki/' || window.location.pathname == '/wiki/index.html') {
		vcele = document.getElementById("visitorcount")
		set_visitor_count()
	}

	// set smooth scroll in page content for pc only,
	// not mobile as it break on mine, not sure why
	if (window.matchMedia("(hover:hover) and (pointer:fine)").matches)
		document.querySelector("main").classList.add("smooth")

	let navbar = document.getElementById("sidenav")

	// auto close navbar when clicking section on portrait screen
	navbar.addEventListener("click", if_portrait_close_navbar)

	// init fold states for each dropdown
	let unfold = document.querySelectorAll(".unfoldonload")
	for (let i = 0, lgt = unfold.length; i < lgt; i++)
		toggfold( unfold[i], true )
	// fade in navbar to hide construction from last for loop
	// navbar.classList.add("loaded")

	// open and scroll to dropdown of current page, 
	let cur = curpage_navbar_section()
	if (cur) setTimeout(() => {
		toggfold(cur, true)
		let scrollpos = cur.offsetTop - sidenav.offsetTop - window.innerHeight / 8
		sidenav.scrollTo({ top: scrollpos, behavior: "smooth" })
	}, 256)

}


function curpage_navbar_section() {
	let phref = window.location.href.split("#")[0]
	let links = document.querySelectorAll(".foldable > a");
	for (let i = 0; i < links.length; i++)
		// need fix in generated html
		// if (url == links[i].href) 
		if (phref == links[i].href.split("#")[0])
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
	elem.addEventListener("transitionend", event => inanim = false);
}


const mobilemediaquery = 
	`screen and (max-device-aspect-ratio: 2/3) and (orientation:portrait)," +
	screen (orientation:portrait), screen and (max-aspect-ratio: 1)`

function if_portrait_close_navbar(event) {
	if (!window.matchMedia(mobilemediaquery).matches)
		return // only for portrait screen
	if (! event.target.closest("a"))
		return // only for click on anchor links
	toggside()
}


