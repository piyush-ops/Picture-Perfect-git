//auto typing text
let typed = new Typed(".auto-type", {
  strings: ["Happiness", "Memories"],
  typeSpeed: 100,
  backSpeed: 100,
  loop: true,
});

// fade in fade out animation of page
AOS.init({
  offset: 100,
  duration: 500,
  // once: true,
});

// gallery slider
$("#Gallery").flipster({
  itemContainer: "#image-track",
  itemSelector: ".gallery-image",
  start: "center",
  style: "flat",
  scrollwheel: false,
  spacing: 0.01,
  autoplay: 2000,
  loop: true,
});
