@echo off
chcp 65001 >nul
echo ========================================================
echo   MISE A JOUR DE LA CONFIGURATION POUR LE DEVELOPPEMENT...
echo ========================================================

node -e "const fs=require('fs'); fs.writeFileSync('vite.config.ts', 'import path from \"path\";\nimport { defineConfig } from \"vite\";\nimport react from \"@vitejs/plugin-react-swc\";\n\nexport default defineConfig({\n  plugins: [react()],\n  resolve: {\n    alias: {\n      \"@\": path.resolve(__dirname, \"./src\"),\n    },\n  },\n  build: {\n    target: \"esnext\",\n    outDir: \"dist\",\n    sourcemap: false,\n  },\n  esbuild: {\n    target: \"esnext\"\n  }\n});\n', 'utf8');"

echo.
echo Lancement de l'application en mode developpement...
npm run dev