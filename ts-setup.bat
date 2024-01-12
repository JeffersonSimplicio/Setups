@echo off
set currentDirectory=%cd%

REM Cria o package.json
(
echo {
echo   "name": "project",
echo   "version": "1.0.0",
echo   "description": "",
echo   "main": "index.js",
echo   "scripts": {
echo     "comp": "npx tsc",
echo     "prestart": "npm run comp",
echo     "start": "node ./dist/index.js",
echo     "dev": "ts-node index.ts"
echo   },
echo   "keywords": [],
echo   "author": "",
echo   "license": "ISC",
echo   "devDependencies": {
echo     "@tsconfig/node20": "^20.1.2",
echo     "@types/node": "^20.11.0",
echo     "ts-node": "^10.9.2",
echo     "typescript": "^5.3.3"
echo   }
echo }
) > %currentDirectory%\package.json
