const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,haml,html,slim}",
  ],
  theme: {
    extend: {
      fontFamily: {
        // sans: ["Inter var", ...defaultTheme.fontFamily.sans],
        sans: ["'Roboto'", ...defaultTheme.fontFamily.sans],
      },
      colors: {
        theme: {
          gray: "#6c757d",
          red: "#df2a30",
          sky: "#ecf2f9",
        },
      },
    },
  },
  plugins: [
    require("@tailwindcss/forms"),
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/typography"),
    require("@tailwindcss/container-queries"),
  ],
};
