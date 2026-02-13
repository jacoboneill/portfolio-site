document.querySelectorAll(".project").forEach((p) => {
  const preview = p.querySelector("img");

  p.addEventListener("mouseenter", () => {
    preview.src =
      preview.src.split("_static")[0] + "_dynamic.webp?t=" + Date.now();
  });

  p.addEventListener("mouseleave", () => {
    preview.src = preview.src.split("_dynamic")[0] + "_static.webp";
  });
});
