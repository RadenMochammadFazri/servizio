/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['./dist/*.{html,js}', './php/*.{php}'],
  theme: {
    extend: {
      screens: {
        sm: '576px',
        md: '768px',
        lg: '992px',
        xl: '1200px',
      },
      container: {
        center: true,
        padding: '1rem',
      },
      colors: {
        primary: '#00ADB5',
        darkest: '#222831',
        dark: '#29313D',
        textcolor: '#1E1E1E',
      },
      fontFamily: {
        poppins: ['Poppins'],
      },
    },
  },
  plugins: [],
};
