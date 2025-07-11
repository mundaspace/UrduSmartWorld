/** @type {import('tailwindcss').Config} */
export default {
  content: ['./index.html', './src/**/*.{js,ts,jsx,tsx}'],
  theme: {
    extend: {
      colors: {
        background: '#f9fafb', // light gray background
        foreground: '#111827', // dark text
      },
    },
  },
  plugins: [],
};
