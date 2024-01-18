#!/bin/sh

# Verifica se o Node está instalado
if ! command -v node &> /dev/null
then
  echo "Node não está instalado. Por favor, instale o Node antes de prosseguir."
  exit
fi

# Verifica se o npm está instalado
if ! command -v npm &> /dev/null
then
  echo "npm não está instalado. Por favor, instale o npm antes de prosseguir."
  exit
fi

# Define uma variável para o diretório atual
currentDirectory=$(pwd)

# Pergunta nome do projeto
echo -n "Nome do projeto?(default: project): "
read project_name
if [ -z "$project_name" ]
then
  project_name="project"
fi

# Cria o package.json
cat << EOF > $currentDirectory/package.json
{
  "name": "$project_name",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "build": "npx tsc",
    "prestart": "npm run build",
    "start": "node ./dist/index.js",
    "dev": "ts-node index.ts",
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC"
}
EOF

# Cria o tsconfig.json
cat << EOF > $currentDirectory/tsconfig.json
{
  "$schema": "https://json.schemastore.org/tsconfig",
  "display": "Node 20",
  "_version": "20.1.0",

  "compilerOptions": {
    "lib": ["es2023"],
    "module": "node16",
    "target": "es2022",

    "rootDir": "./",
    "outDir": "./dist",

    "strict": true,
    "esModuleInterop": true,
    "skipLibCheck": true,
    "forceConsistentCasingInFileNames": true,
    "moduleResolution": "node16"
  }
}
EOF

# Instala as bibliotecas
npm i -D typescript @tsconfig/node20 @types/node ts-node

# Deleta o arquivo caso o usuario deseje
if [ "$1" == "-d" ]
then
  rm ts-setup-linux.sh
fi
