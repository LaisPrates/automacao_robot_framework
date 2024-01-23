# automacao_robot_framework
Automação de testes feita para estudo com Robot Framework


Estrutura do Projeto:

Este projeto utiliza o Robot Framework para automação de testes. A estrutura do projeto é organizada de acordo com boas práticas para facilitar a manutenção e escalabilidade.

-
Pasta resources

Contém recursos utilizados nos testes, como dados de teste (arquivos CSV, Excel, etc.) e palavras-chave personalizadas (Keywords).

Exemplo de Conteúdo:
Keywords: Palavras-chave personalizadas para reutilização nos testes.

-
Pasta pages

Segue o conceito de Page Object, onde as interações com as páginas do aplicativo são encapsuladas em objetos reutilizáveis.

-
Pasta features

Centraliza as funcionalidades e testes, orquestrando o uso de Page Objects e recursos.
Exemplo de Conteúdo:

login_feature_test.robot: Suite de testes relacionados à funcionalidade de login.

-------------------------

Como Executar os Testes
Pré-requisitos:

1- Python instalado.
2- Robot Framework instalado (pip install robotframework).
3- Executar comando robot -d results .\features\login_feature_test.robot

