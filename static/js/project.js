const getName = (img) => {
  return img.src.split("/").pop().replace(".webp", "");
};

const newPreviewImage = (name) => {
  const img = document.createElement("img");
  img.className = "preview";
  img.src = `/static/img/${name}.webp`;
  img.alt = `${name} preview`;
  img.addEventListener("mouseenter", () => {
    img.replaceWith(newPreviewVideo(name));
  });
  return img;
};

const newPreviewVideo = (name) => {
  const video = document.createElement("video");
  video.className = "preview";
  video.autoplay = true;
  video.loop = true;
  video.muted = true;
  video.playsInline = true;
  video.src = `/static/video/${name}.webm`;
  video.addEventListener("mouseleave", () => {
    video.replaceWith(newPreviewImage(name));
  });
  return video;
};

document.querySelectorAll(".project").forEach((p) => {
  const preview = p.querySelector(".preview");
  const name = getName(preview);
  preview.addEventListener("mouseenter", () => {
    preview.replaceWith(newPreviewVideo(name));
  });
});
