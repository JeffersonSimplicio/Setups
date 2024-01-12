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


REM Cria o package-lock.json
if "%1" neq "npl" (
echo {
echo   "name": "testes",
echo   "version": "1.0.0",
echo   "lockfileVersion": 3,
echo   "requires": true,
echo   "packages": {
echo     "": {
echo       "name": "testes",
echo       "version": "1.0.0",
echo       "license": "ISC",
echo       "devDependencies": {
echo         "@tsconfig/node20": "^20.1.2",
echo         "@types/node": "^20.11.0",
echo         "ts-node": "^10.9.2",
echo         "typescript": "^5.3.3"
echo       }
echo     },
echo     "node_modules/@cspotcode/source-map-support": {
echo       "version": "0.8.1",
echo       "resolved": "https://registry.npmjs.org/@cspotcode/source-map-support/-/source-map-support-0.8.1.tgz",
echo       "integrity": "sha512-IchNf6dN4tHoMFIn/7OE8LWZ19Y6q/67Bmf6vnGREv8RSbBVb9LPJxEcnwrcwX6ixSvaiGoomAUvu4YSxXrVgw==",
echo       "dev": true,
echo       "dependencies": {
echo         "@jridgewell/trace-mapping": "0.3.9"
echo       },
echo       "engines": {
echo         "node": ">=12"
echo       }
echo     },
echo     "node_modules/@jridgewell/resolve-uri": {
echo       "version": "3.1.1",
echo       "resolved": "https://registry.npmjs.org/@jridgewell/resolve-uri/-/resolve-uri-3.1.1.tgz",
echo       "integrity": "sha512-dSYZh7HhCDtCKm4QakX0xFpsRDqjjtZf/kjI/v3T3Nwt5r8/qz/M19F9ySyOqU94SXBmeG9ttTul+YnR4LOxFA==",
echo       "dev": true,
echo       "engines": {
echo         "node": ">=6.0.0"
echo       }
echo     },
echo     "node_modules/@jridgewell/sourcemap-codec": {
echo       "version": "1.4.15",
echo       "resolved": "https://registry.npmjs.org/@jridgewell/sourcemap-codec/-/sourcemap-codec-1.4.15.tgz",
echo       "integrity": "sha512-eF2rxCRulEKXHTRiDrDy6erMYWqNw4LPdQ8UQA4huuxaQsVeRPFl2oM8oDGxMFhJUWZf9McpLtJasDDZb/Bpeg==",
echo       "dev": true
echo     },
echo     "node_modules/@jridgewell/trace-mapping": {
echo       "version": "0.3.9",
echo       "resolved": "https://registry.npmjs.org/@jridgewell/trace-mapping/-/trace-mapping-0.3.9.tgz",
echo       "integrity": "sha512-3Belt6tdc8bPgAtbcmdtNJlirVoTmEb5e2gC94PnkwEW9jI6CAHUeoG85tjWP5WquqfavoMtMwiG4P926ZKKuQ==",
echo       "dev": true,
echo       "dependencies": {
echo         "@jridgewell/resolve-uri": "^3.0.3",
echo         "@jridgewell/sourcemap-codec": "^1.4.10"
echo       }
echo     },
echo     "node_modules/@tsconfig/node10": {
echo       "version": "1.0.9",
echo       "resolved": "https://registry.npmjs.org/@tsconfig/node10/-/node10-1.0.9.tgz",
echo       "integrity": "sha512-jNsYVVxU8v5g43Erja32laIDHXeoNvFEpX33OK4d6hljo3jDhCBDhx5dhCCTMWUojscpAagGiRkBKxpdl9fxqA==",
echo       "dev": true
echo     },
echo     "node_modules/@tsconfig/node12": {
echo       "version": "1.0.11",
echo       "resolved": "https://registry.npmjs.org/@tsconfig/node12/-/node12-1.0.11.tgz",
echo       "integrity": "sha512-cqefuRsh12pWyGsIoBKJA9luFu3mRxCA+ORZvA4ktLSzIuCUtWVxGIuXigEwO5/ywWFMZ2QEGKWvkZG1zDMTag==",
echo       "dev": true
echo     },
echo     "node_modules/@tsconfig/node14": {
echo       "version": "1.0.3",
echo       "resolved": "https://registry.npmjs.org/@tsconfig/node14/-/node14-1.0.3.tgz",
echo       "integrity": "sha512-ysT8mhdixWK6Hw3i1V2AeRqZ5WfXg1G43mqoYlM2nc6388Fq5jcXyr5mRsqViLx/GJYdoL0bfXD8nmF+Zn/Iow==",
echo       "dev": true
echo     },
echo     "node_modules/@tsconfig/node16": {
echo       "version": "1.0.4",
echo       "resolved": "https://registry.npmjs.org/@tsconfig/node16/-/node16-1.0.4.tgz",
echo       "integrity": "sha512-vxhUy4J8lyeyinH7Azl1pdd43GJhZH/tP2weN8TntQblOY+A0XbT8DJk1/oCPuOOyg/Ja757rG0CgHcWC8OfMA==",
echo       "dev": true
echo     },
echo     "node_modules/@tsconfig/node20": {
echo       "version": "20.1.2",
echo       "resolved": "https://registry.npmjs.org/@tsconfig/node20/-/node20-20.1.2.tgz",
echo       "integrity": "sha512-madaWq2k+LYMEhmcp0fs+OGaLFk0OenpHa4gmI4VEmCKX4PJntQ6fnnGADVFrVkBj0wIdAlQnK/MrlYTHsa1gQ==",
echo       "dev": true
echo     },
echo     "node_modules/@types/node": {
echo       "version": "20.11.0",
echo       "resolved": "https://registry.npmjs.org/@types/node/-/node-20.11.0.tgz",
echo       "integrity": "sha512-o9bjXmDNcF7GbM4CNQpmi+TutCgap/K3w1JyKgxAjqx41zp9qlIAVFi0IhCNsJcXolEqLWhbFbEeL0PvYm4pcQ==",
echo       "dev": true,
echo       "dependencies": {
echo         "undici-types": "~5.26.4"
echo       }
echo     },
echo     "node_modules/acorn": {
echo       "version": "8.11.3",
echo       "resolved": "https://registry.npmjs.org/acorn/-/acorn-8.11.3.tgz",
echo       "integrity": "sha512-Y9rRfJG5jcKOE0CLisYbojUjIrIEE7AGMzA/Sm4BslANhbS+cDMpgBdcPT91oJ7OuJ9hYJBx59RjbhxVnrF8Xg==",
echo       "dev": true,
echo       "bin": {
echo         "acorn": "bin/acorn"
echo       },
echo       "engines": {
echo         "node": ">=0.4.0"
echo       }
echo     },
echo     "node_modules/acorn-walk": {
echo       "version": "8.3.2",
echo       "resolved": "https://registry.npmjs.org/acorn-walk/-/acorn-walk-8.3.2.tgz",
echo       "integrity": "sha512-cjkyv4OtNCIeqhHrfS81QWXoCBPExR/J62oyEqepVw8WaQeSqpW2uhuLPh1m9eWhDuOo/jUXVTlifvesOWp/4A==",
echo       "dev": true,
echo       "engines": {
echo         "node": ">=0.4.0"
echo       }
echo     },
echo     "node_modules/arg": {
echo       "version": "4.1.3",
echo       "resolved": "https://registry.npmjs.org/arg/-/arg-4.1.3.tgz",
echo       "integrity": "sha512-58S9QDqG0Xx27YwPSt9fJxivjYl432YCwfDMfZ+71RAqUrZef7LrKQZ3LHLOwCS4FLNBplP533Zx895SeOCHvA==",
echo       "dev": true
echo     },
echo     "node_modules/create-require": {
echo       "version": "1.1.1",
echo       "resolved": "https://registry.npmjs.org/create-require/-/create-require-1.1.1.tgz",
echo       "integrity": "sha512-dcKFX3jn0MpIaXjisoRvexIJVEKzaq7z2rZKxf+MSr9TkdmHmsU4m2lcLojrj/FHl8mk5VxMmYA+ftRkP/3oKQ==",
echo       "dev": true
echo     },
echo     "node_modules/diff": {
echo       "version": "4.0.2",
echo       "resolved": "https://registry.npmjs.org/diff/-/diff-4.0.2.tgz",
echo       "integrity": "sha512-58lmxKSA4BNyLz+HHMUzlOEpg09FV+ev6ZMe3vJihgdxzgcwZ8VoEEPmALCZG9LmqfVoNMMKpttIYTVG6uDY7A==",
echo       "dev": true,
echo       "engines": {
echo         "node": ">=0.3.1"
echo       }
echo     },
echo     "node_modules/make-error": {
echo       "version": "1.3.6",
echo       "resolved": "https://registry.npmjs.org/make-error/-/make-error-1.3.6.tgz",
echo       "integrity": "sha512-s8UhlNe7vPKomQhC1qFelMokr/Sc3AgNbso3n74mVPA5LTZwkB9NlXf4XPamLxJE8h0gh73rM94xvwRT2CVInw==",
echo       "dev": true
echo     },
echo     "node_modules/ts-node": {
echo       "version": "10.9.2",
echo       "resolved": "https://registry.npmjs.org/ts-node/-/ts-node-10.9.2.tgz",
echo       "integrity": "sha512-f0FFpIdcHgn8zcPSbf1dRevwt047YMnaiJM3u2w2RewrB+fob/zePZcrOyQoLMMO7aBIddLcQIEK5dYjkLnGrQ==",
echo       "dev": true,
echo       "dependencies": {
echo         "@cspotcode/source-map-support": "^0.8.0",
echo         "@tsconfig/node10": "^1.0.7",
echo         "@tsconfig/node12": "^1.0.7",
echo         "@tsconfig/node14": "^1.0.0",
echo         "@tsconfig/node16": "^1.0.2",
echo         "acorn": "^8.4.1",
echo         "acorn-walk": "^8.1.1",
echo         "arg": "^4.1.0",
echo         "create-require": "^1.1.0",
echo         "diff": "^4.0.1",
echo         "make-error": "^1.1.1",
echo         "v8-compile-cache-lib": "^3.0.1",
echo         "yn": "3.1.1"
echo       },
echo       "bin": {
echo         "ts-node": "dist/bin.js",
echo         "ts-node-cwd": "dist/bin-cwd.js",
echo         "ts-node-esm": "dist/bin-esm.js",
echo         "ts-node-script": "dist/bin-script.js",
echo         "ts-node-transpile-only": "dist/bin-transpile.js",
echo         "ts-script": "dist/bin-script-deprecated.js"
echo       },
echo       "peerDependencies": {
echo         "@swc/core": ">=1.2.50",
echo         "@swc/wasm": ">=1.2.50",
echo         "@types/node": "*",
echo         "typescript": ">=2.7"
echo       },
echo       "peerDependenciesMeta": {
echo         "@swc/core": {
echo           "optional": true
echo         },
echo         "@swc/wasm": {
echo           "optional": true
echo         }
echo       }
echo     },
echo     "node_modules/typescript": {
echo       "version": "5.3.3",
echo       "resolved": "https://registry.npmjs.org/typescript/-/typescript-5.3.3.tgz",
echo       "integrity": "sha512-pXWcraxM0uxAS+tN0AG/BF2TyqmHO014Z070UsJ+pFvYuRSq8KH8DmWpnbXe0pEPDHXZV3FcAbJkijJ5oNEnWw==",
echo       "dev": true,
echo       "bin": {
echo         "tsc": "bin/tsc",
echo         "tsserver": "bin/tsserver"
echo       },
echo       "engines": {
echo         "node": ">=14.17"
echo       }
echo     },
echo     "node_modules/undici-types": {
echo       "version": "5.26.5",
echo       "resolved": "https://registry.npmjs.org/undici-types/-/undici-types-5.26.5.tgz",
echo       "integrity": "sha512-JlCMO+ehdEIKqlFxk6IfVoAUVmgz7cU7zD/h9XZ0qzeosSHmUJVOzSQvvYSYWXkFXC+IfLKSIffhv0sVZup6pA==",
echo       "dev": true
echo     },
echo     "node_modules/v8-compile-cache-lib": {
echo       "version": "3.0.1",
echo       "resolved": "https://registry.npmjs.org/v8-compile-cache-lib/-/v8-compile-cache-lib-3.0.1.tgz",
echo       "integrity": "sha512-wa7YjyUGfNZngI/vtK0UHAN+lgDCxBPCylVXGp0zu59Fz5aiGtNXaq3DhIov063MorB+VfufLh3JlF2KdTK3xg==",
echo       "dev": true
echo     },
echo     "node_modules/yn": {
echo       "version": "3.1.1",
echo       "resolved": "https://registry.npmjs.org/yn/-/yn-3.1.1.tgz",
echo       "integrity": "sha512-Ux4ygGWsu2c7isFWe8Yu1YluJmqVhxqK2cLXNQA5AcC3QfbGNpM7fu0Y8b/z16pXLnFxZYvWhd3fhBY9DLmC6Q==",
echo       "dev": true,
echo       "engines": {
echo         "node": ">=6"
echo       }
echo     }
echo   }
echo }
) > %currentDirectory%\package-lock.json

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
npm i
