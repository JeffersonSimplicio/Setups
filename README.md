# Setups Typescript para Node.js
 
Este script foi desenvolvido para automatizar a configuração inicial de um projeto Node.js utilizando TypeScript.

## Principais Recursos
 - **Configuração Rápida**: Execute o script para criar automaticamente os arquivos de configuração necessários.
 - **Personalização Simples**: Forneça um nome personalizado para o projeto ou aceite o nome padrão "project".
 - **Remoção Automática do Script** (*opcional*): Utilize a opção `-d` para remover o script após a conclusão da configuração.

## Dependências
 - Node.js
 - npm

## Como Usar
1. Baixe o script correspondente ao seu sistema operacional
2. Salve o script no diretório onde irar criar seu projeto
3. Execute o script
  - Windows
    ```
    .\ts-setup-win.bat
    ```
  - Linux
    ```
    chmod +x ./ts-setup-linux.sh
    ./ts-setup-linux.sh
    ```
  - Caso esteja usando uma interface gráfica, basta dar um clique duplo sobre arquivo. No Linux, pode ser necessário alterar as permissões do arquivo.
4. (Opcional)Responda qual nome do seu projeto, caso não queira, basta clicar com _Enter_
5. Caso necessário, personalize os arquivos para os requisitos do seu projeto
   
## Opções Adicionais
  - **Remover Script Após a Execução**: Use -d para remover o script após a configuração. Disponível em ambos os SO.
    ```
    .\ts-setup-win.bat
    ```
