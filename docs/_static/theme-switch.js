document.addEventListener("DOMContentLoaded", function () {
  const button = document.getElementById("theme-toggle");
  if (!button) return;

  const icon = button.querySelector(".md-icon");

  function setTheme(theme) {
    document.documentElement.setAttribute("data-theme", theme);
    localStorage.setItem("ihp-theme", theme);

    if (theme === "dark") {
      icon.textContent = "light_mode";
    } else {
      icon.textContent = "dark_mode";
    }
  }

  const saved = localStorage.getItem("ihp-theme") || "light";
  setTheme(saved);

  button.addEventListener("click", function () {
    const current =
      document.documentElement.getAttribute("data-theme");

    setTheme(current === "dark" ? "light" : "dark");
  });
});
