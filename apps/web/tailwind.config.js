/** @type {import('tailwindcss').Config} */
export default {
  content: ['./index.html', './src/**/*.{ts,tsx}'],
  theme: {
    extend: {
      colors: {
        navy: {
          DEFAULT: '#00186C',
          50: '#EEF1FB',
          100: '#D6DEF4',
          200: '#A4B3E5',
          300: '#7388D6',
          400: '#3D58BD',
          500: '#1A36A2',
          600: '#0A2A8A',
          700: '#00186C',
          800: '#001354',
          900: '#000D3B',
        },
        gold: { DEFAULT: '#FFC72C' },
        pitch: { DEFAULT: '#1E8E3E' },
      },
      fontFamily: {
        sans: ['Inter', 'Segoe UI', 'system-ui', 'sans-serif'],
        display: ['"Bebas Neue"', 'Inter', 'sans-serif'],
      },
    },
  },
  plugins: [],
};
