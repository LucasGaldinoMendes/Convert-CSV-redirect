# Conversor de planilhas em regras de redirecionamento

Os scripts foram criados para automatizar a criação de redirecionamentos com base em planilhas, tarefa que é comum em hospedagem de sites, onde os clientes solicitam redirecionamentos de diversas URLs.

O script funciona para planilhas em formato .csv criando redirecionamentos para servidores apache ou nginx

# Como utilizar

- Substitua o nome do arquivo csv na variável `inputFile`.
- Substitua o nome do domínio em que serão realizadas os redirecionamentos, da mesma forma em que estão na coluna "De" da planilha.
- Substitua o número da linha em que os redirecionamentos são iniciados na planilha na variável `lineBeginRedirect`.
- Salve o arquivo.
- No terminal dê a permissão de execução para o script, por exemplo:
  ```
  chmod +x convert_csv_htaccess.sh
  ```
- Execute o script:
  ```
  ./convert_csv_htaccess.sh
  ```

# Observações

- O arquivo planilha.csv pode ser utilizado como modelo de planilha e pode ser utilizado para testar a conversão.
- Na planilha a coluna "De" está na coluna 2 e "Para" na coluna 3, caso sua planilha seja utilizado outras colunas, basta ajustar a coluna correta nas variáveis `$oldUrl` e `$newUrl`.
- Para conversões em servidores apache, utilizar o script `convert_csv_htaccess.sh`
- Para conversões em servidores nginx, utilizar o script `convert_csv_nginx.sh`  

