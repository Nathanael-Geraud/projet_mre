/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.res.mjs"],
  theme: {
    extend: {
      backgroundImage: {
        "slider1": "url('./src/assets/img/3.jpg')"
      }
    },
  },
  plugins: [],
};
