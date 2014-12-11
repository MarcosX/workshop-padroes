# Workshop de Padrões de Projeto

Este repositório contém exemplos de códigos para serem refatorados utilizando um determinado padrão.

Existem pasta para cada padrão (```lib/```) e dentro delas está o código que deve ser refatorado.

Também existem testes (```spec/```) para cada um dos exemplos.

Nos testes existem TODOs com extensões do problema, que motivarão a refatoração com padrões.

## Requisitos

Foi utilizado rspec 3.1.7 e ruby 2.1.2. Opcionalmente pode se utilizar rake (versão utilizada 10.4.1) para rodar os testes.

## Instruções

Tente extender o problema seguindo a ideia nos TODOs descritos nos arquivos de testes. Alguns exemplos possuem mais de uma classe, que também podem ser utilizadas durante o processo de refatoração. É esperado que novas classes sejam criadas, bem como novos casos de testes.

Para executar todos os testes, basta rodar ```rake``` ou ```rspec spec```. Para executar um arquivo específico use ```rspec spec/arquivo_spec.rb```.
