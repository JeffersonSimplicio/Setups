@echo off
chcp 65001 > nul

set currentDirectory=%cd%

REM Pergunta nome do projeto
set /p project_name=Nome do projeto?(default: project): 
if "%project_name%"=="" set "project_name=project"

REM Cria o package.json
(
echo {
echo   "name": "%project_name%",
echo   "version": "1.0.0",
echo   "description": "",
echo   "main": "index.js",
echo   "scripts": {
echo     "build": "npx tsc",
echo     "prestart": "npm run build",
echo     "start": "node ./dist/index.js",
echo     "dev": "ts-node index.ts",
echo     "test": "echo \"Error: no test specified\" && exit 1"
echo   },
echo   "keywords": [],
echo   "author": "",
echo   "license": "ISC"
echo }
) > %currentDirectory%\package.json

REM Cria o tsconfig.json
(
echo {
echo   "$schema": "https://json.schemastore.org/tsconfig",
echo   "display": "Node 20",
echo   "_version": "20.1.0",
echo.
echo   "compilerOptions": {
echo     "lib": ["es2023"],
echo     "module": "node16",
echo     "target": "es2022",
echo.
echo     "rootDir": "./",
echo     "outDir": "./dist",
echo.
echo     "strict": true,
echo     "esModuleInterop": true,
echo     "skipLibCheck": true,
echo     "forceConsistentCasingInFileNames": true,
echo     "moduleResolution": "node16"
echo   }
echo }
) > %currentDirectory%\tsconfig.json

REM Instala as bibliotecas
call npm i -D typescript @tsconfig/node20 @types/node ts-node

REM Deleta o arquivo caso o usuario deseje
if "%1" == "-d" (
  del ts-setup-win.bat
)
