
# 1. Introdução à Linguagem SQL

 ## 1.1  O que é SQL?
 - **SQL** significa **Structured Query Language**. O **SQL**  é uma linguagem de consulta estruturada.

 - Frequentemente é chamada de **"sequel"**

 - É a linguagem padrão universal para interagir com bancos de dados relacionais. No dia a dia, é usado para **conversar** com os dados, permitindo extrair informações valiosas e realizar cálculos complexos em segundos.


 ## 1.2 Por que aprender SQL?

- [✔️] Falar com Dados: Permite a comunicação direta com sistemas de dados.
- [✔️] Alta Demanda: Existe uma grande procura por profissionais com essa habilidade em diversas funções técnicas.
- [✔️] Caminhos de Carreira: É um conhecimento essencial para **Desenvolvedores de Software, Analistas de Dados, Cientistas de Dados e Engenheiros de Dados**.
- [✔️] Padrão da Indústria: É a linguagem padrão utilizada em ferramentas *como Power BI, Tableau, Kafka, Spark e Synapse*.


# 2 Sistema de Gerenciamento de Banco de Dados

- O **DBMS** atua como a interface principal entre o usuário e o banco de dados.
- Os bancos de dados são normalmente hospedados em *servidores* ou na *nuvem*.
- Aplicativos, ferramentas de BI (como Power BI) e usuários enviam consultas SQL ao DBMS para recuperar ou gerenciar informações.
> Geralmante funcionam 24/7 para garantir que os dados estejam sempre acessíveis.


# 2.1 Tipos de Bancos de Dados
- **Relacional:** *Microsoft SQL Server, MySQL, PostgreSQL, Amazon Redshift*
- **Documento:** *MongoDB*
- **Grafo:** *Neo4j*
- **Chave-Valor:** *Redis, Amazon DynamoDB*
- **Base de Coluna:** *Apache Cassandra (GitHub)*

# *Estrutura de Banco de Dados*
* Banco de Dados relacionais seguem uma organização hierárquico:
  * **Servidor:** O host principal contendo um ou mais bancos de dados.
  * **Banco de Dados:** Contêiner de alto nível para dados, como *"Vendas"* ou *"RH"*.
  * **Esquema:** Agrupamento lógicos dentro de um banco de dados, como "*Pedidos*" ou "*Clientes*".
  * **Tabela:** Onde os dados são fisicamente armazenados em *linhas* e *colunas*.

  # *Tipos de Dados*
 -  **Numéricos**
    * INT -Números inteiros 
    * DECIMAL - Valores numéricos com frações
 - **Texto/String**
    * CHAR - Strings de comprimento fixo
    * VARCHAR - Strings de comprimento variável
 -  **Data & Hora**
    * DATE - Formato 'YYYY-MM-DD'
    * TIME - Formato 'HH:MM:SS'

  # 2.2 Tipos de Comandos **SQL**

  ## DDL (Linguagem de Definição de Dados)
   * **CREATE** - Criar novos bancos de dados ou tabelas.
   * **ALTER** - Modificar a estrutura existente.
   * **DROP** - Deletar um banco ou tabela.

   ## DQL (Linguagem de Consulta de Dados)
 * **Usada** - para recuperar dados do banco de dados.
 * **SELECT** - O comando principal para buscar dados.

   ## DML (Linguagem de Manipelação de Dados)
 * Usada para gerenciar dados dentro das tabelas.
  * **INSERT** - Adicionar movos registros.
  * **UPDATE** - Modificar registros existentes.
  * **DELETE** - Remover registros.

   ## DCL (Linguagem de Controle de Dados)
 * Usada para gerenciar permissões e controle de acesso.
  * **GRANT** - Concede privilégios de acesso.
  * **REVOKE** - Revoga privilégios.
   
   ## TCL (linguagem de Controle de Transações)
 * Usada para gerenciar transações no banco de dados.
  * **COMMIT** - Salva mudanças permanentemente.
  * **ROLLBACK** - Desfaz mudanças se ocorrer um erro.
  * **SAVEPOINT** - Define um ponto para rollback parcial.


  # 2.3 DDL Linguagem de Definição de Dados

  * DDL significa **Data Definition Language** (Linguagem de Definição de Dados).
  * *Enquanto o DQL é usado para consultar dados e o DML é usado para manipular dados, o DDL é usado para definir a estrutura dos nossos objetos de dados (o **"esqueleto"** do banco de dados).

  ## Operações Principais de DDL 
 * O DDL permite que você gerencie a **planta estrutural (blueprint)** do seu banco de dados através de três ações principais: *CREATE, ALTER E DROP*

  ## Criando Objetos (CREATE )
  * CREATE DATABASE Sales; - Para começar um novo projeto, primeiro criamos um contêiner para nossas tabelas.
  * **CREATE TABLE** - Ao criar uma tabela, devemos definir as Colunas e seus Tipos de Dados associados.

 ```sql
  CREATE TABLE Products (
    ProductID INT,
    ProductName VARCHAR(100),
    Price DECIMAL
  );
  ```

  ## Modificando Objetos (ALTER)
  * Se os requisitos mudarem, usamos o comando ALTER para atualizar a estrutura sem excluir a tabela. 

  * **Adcionar uma Coluna**
  ```sql
    ALTER TABLE Products
    ADD Category VARCHAR(50);
  ```
   * **Remover uma Coluna**
   ```sql
    ALTER TABLE Products
     DROP COLUMN Price; 
   ```
 
 ## Tabela Resumo de DDL 
| Comando | Ação | Objeto Afetado |
| :--- | :--- | :--- |
| **CREATE** | Construir novo | *Banco de Dados, Tabela, Schema* |
| **ALTER** | Modificar existente | *Colunas, Tipos de Dados* |
| **DROP** | Excluir | *Banco de Dados, Tabela, Schema* |


# 3 Anatomia de uma Declaração *SQL*
* Uma instrução **SQL** é composta de elementos específicos que dizem ao banco como processar o pedido:
 * Comentários (---) - Documentam o código.
 * Palavras-chave - Reservadas e com significado especial.
 * Cláusulas - Blocos que constroem a instrução.
 * Funções - Ferramentas internas que transformam dados.
 * Identificadores - Nomes de objetos de banco como tabelas ou colunas.
 * Operadores - Usados paracomparações.
 * Literais - Valores constantes ou strings.

 ## Estrutura Básica de Consulta
 * SELECT
    * column_name
 * FROM
    * table_name;

  ## Filtragem e Ordenação
  * ´WHERE´ Filtra registros com condições específicas.
  * ´ORDER BY´ - Ordena resultados em ordem ascendente ou descendente.

  ## Ferramnetas Avançadas de Seleção
  * ´DISTINCT´ - Remove duplicatas.
  * ´TOP/´´LIMIT´ - Especificanúmero de registros retornados.

  ## Aliases (AS)
  * Usados para dar nome temporário a tabelas ou colunas para tornar os resultados mais legíveis.

  ## Ordem Lógica de Avaliação
  * *SQL* não processa cláusulas na ordem escrita.
  * A execução padrão lógica é:
   1. ´FROM´
   2. ´WHERE´
   3. ´SELECT´
   4. ´ORDER BY´


  # 3.1 DML - Linguagem de Manipulação de Dados
  ## DDL (Linguagem de Definição de Dados)
  * Nós usamos **DML (Data Manipulation Language)** para alterar os dados reais armazenados dentro de nossas tabelas. Enquanto a DDL define o *"recipiente"*, a DML nos permite gerenciar o conteúdo interno.

  ## Operações Principais de DML 
  * Nós contamos com três comandos primários para manipular nossos dados:
   * INSERT: Nós usamos para adcionar novas linhas de dados em uma tabela.
   * UPDATE: Nós usamos para modificar informações existentesdentro de uma tabela.
   * DELETE: Nós usamos para remover regidtros específicos de uma tabela.
   
   ## Adicionando Dados (INSERT)
  * Quando queremos popular nossas tabelas, temos dois métodos principais para inserir dados:
  *  * Método 1: Entrada Manual (VALUES)
   * Nós especificamos manualmente os valores que queremos adicionar a colunas específicas.
   * INSERT INTO Products  (productID, ProductName, Price)
   * VALUES (1, ´Laptop´, 1200.00);

  * * Método 2: INSERT usando SELECT
   * Nós também podemos inserir dados em uma tabela de destino consultando-os de uma tabela de origem.
   * INSERT INTO TargetTable
   * SELECT * FROM SourceTable
   * WHERE condition;

   ## Modificando Dados (UPDATE)
   * Quando precisamos editar registros existentes,usamos a instrução UPDATE.Devemos ser muito cuidadosos ao incluir uma claúsula WHWRW; caso contrario, atualizaremos todas as linhas tabela.

   * UPDATE table_name
   * Set column1 = value1, column2, ==value2
   * WEHRE <condition>;

   ***Regra:** Sempre use WHERE para evitar atualizações em massa não intencionais.

   ## Removendo Dados (DELETE)
  * Quando os dados não são mais necessários, usamos o comando DELETE. De forma semelhante ao update, usamos uma cláusula WHERE para filtrar linhas especificas.

```sql
  DELETE FROM table_name
  WHERE <condition>;
  ```
  
## Tabela de Resumo de DDL
| Comando | Ação que tomamos | Efeito nos Dados|
| :--- | :--- | :--- |
| **INSERT** | Adicionar | *Novas linhas são criadas* |
| **UPDATE** | Editar | *Valores existentes são alterados* |
| **DELETE** | Remover | *Linhas selecionadas são apagadas* |


# Anatomia de uma Declaração SQL
* Uma instrução SQL é composta de elementos específicos que dizem ao banco como processar
o pedido:
* Comentários (--) – Documentam o código.
* Palavras-chave – Reservadas e com significado especial.
* Cláusulas – Blocos que constroem a instrução.
* Funções – Ferramentas internas que transformam dados.
* Identificadores – Nomes de objetos de banco como tabelas ou colunas.
* Operadores – Usados para comparações.
* Literais – Valores constantes ou strings.

## Estrutura Básica de Consulta
* SELECT
  * column_name
 * FROM
   * table_name;

## Filtragem e Ordenação
* `WHERE` – Filtra registros com condições específicas.
* `ORDER BY` – Ordena resultados em ordem ascendente ou descendente.

## Ferramentas Avançadas de Seleção
* `DISTINCT` – Remove duplicatas.
* `TOP` / `LIMIT` – Especifica número de registros retornados.

## Aliases (AS)
* Usados para dar nome temporário a tabelas ou colunas para tornar os resultados mais
legíveis.

## Ordem Lógica de Avaliação
*  SQL não processa cláusulas na ordem escrita.
*  A execução padrão lógica é:
1. `FROM`
2. `WHERE`
3. `SELECT`
4. `ORDER BY`

# Linguagem SQL

## Chave Estrangeira
*  O que é **Chave Estrangeira (Foreign Key)?**
*  A *chave estrangeira* é um campo de uma tabela que *aponta para a chave primária de outra*
tabela.
*  Ela serve para **criar relacionamento entre tabelas.**
*  Em outras palavras:
    * A chave estrangeira é o que “liga” uma tabela à outra em um banco de dados relacional.

## Por que precisamos dela?
* Sem chave estrangeira:
  * As tabelas ficam **isoladas**
  *  Não há garantia de que os dados combinam
  *  Podem existir registros “órfãos” (sem relação real)
* Com chave estrangeira:
  *  O banco **garante integridade dos dados**
  * Evita erros e inconsistências
  * Representa relações do mundo real (cliente → pedido, aluno → matrícula, etc.)

  ## Exemplo prático - Tabela de Clientes
| Id (PK) | Nome |
| :--- | :--- |
| 1 | Ana Silva |
| 2 | João Souza |

## Exemplo prático - Tabela de Pedidos
| Id (PK) | clienteId (FK) | Total|
|  :--- |   :--- |  :--- |
| 1001 |1 | 3500 |
| 1002 |2 | 200  |
| 1003 |1 | 1200 |

# Linguagem SQL

## Normalização
* Normalizar um banco de dados é **organizar as informações para que cada dado exista apenas
uma vez**, evitando repetição, erros e bagunça nas tabelas.

## Forma Não Normalizada (UNF)
| OrderID | CustomerName | CustomerPhone | Products | Total |
|  :--- |  :--- |  :--- |  :--- | :---  | 
| 1001 | Ana Silva | 9999-1111 | Notebook, Mouse | 3500
| 1002 | João Souza | 9888-2222 | Teclado |  200
| 1003 | Ana Silva | 9999-1111 | Monitor, Cabo HDMI, Mouse | 1200 | 

### Forma Não Normalizada (UNF)
*  Todos os dados estão misturados em uma única tabela, com grupos repetidos.
*  Dados do cliente repetidos.
*  Difícil de consultar e manter. 

## Primeira Forma Normal (1FN)
* Os campos devem ser **atômicos** (um único valor por célula).

| OrderID | CustomerName | CustomerPhone | Product | Total | 
| :---    | :---  | :---   | :---  | :---  |  
| 1001 | Ana Silva |  9999-1111 | Notebook | 3500 | 
| 1001 | Ana Silva |  9999-1111 | Mouse | 3500 | 
| 1002 |João Souza | 9888-2222 | Teclado | 200 | 
| 1003 | Ana Silva | 9999-1111 | Monitor | 1200 | 
| 1003 | Ana Silva | 9999-1111 | Cabo HDMI | 1200 | 
| 1003 | Ana Silva | 9999-1111 | Mouse |  1200 | 

## Primeira Forma Normal (1FN)
* Problema: Dados do cliente continuam duplicados.
* Total pertece *APENAS* ao pedido.
* Ainda existem dependências (responsabilidades) na mesma tabela.

## Segunda Forma Normal (2FN)
* Regras:
* Deve estar na 1FN.
* Removemos dependências parciais.
* Cada entidade passa a ter sua própria tabela e ter sua própria
chave primária.

## Segunda Forma Normal (2FN)
| CustomerID | Nome | Telefone |
| :---  | :---  | :---  |
| 1 | Ana Silva | 9999-1111 |
| 2 | João Souza | 9888-2222 |

| OrderID | CustomerID | Total |
| :---  | :---  | :---  |
| 1001 | 1 | 3500 |
| 1002 | 2 | 200 |
| 1003 | 1 | 1200 |

## Segunda Forma Normal (2FN)
| OrderID  | Produto  |
| :---  | :---  |    
| 1001  | Notebook  |
| 1001  | Mouse  |
| 1002  |Teclado  |
| 1003  | Monitor  |
| 1003  | Cabo HDMI  |
| 1003  | Mouse  |

## Segunda Forma Normal (2FN)
* Problema:
*  Produto é um texto livre... está "solto".

## Terceira Forma Normal (3FN)
* Regras:
* Deve estar na 2FN.
* Remover dependências transitivas.
* Campos não-chave *DEVEM* depender apenas da chave.

## Terceira Forma Normal (3FN)
| CustomerID | Nome | Telefone |
| :--- | :---  | :---  | 
| 1 | Ana Silva |  9999-1111 | 
| 2 | João Souza | 9888-2222 | 

| ProductID | NomeProduto | 
| :---  | :---  | 
| 10 |  Notebook |
| 11 | Mouse |
| 12 | Teclado | 
| 13 | Monitor | 
| 14 | Cabo HDMI | 

## Resultado
*  **O banco de dados agora possui**
*  Ausência de redundância.
 *  Relacionamentos claros (Chaves Estrangeiras)
   *  Estrutura relacional correta.                                    
 *  Melhor desempenho.
 *  Manutenção facilitada.
*  **Isso torna os bancos de dados**
 *  Mais eficientes.
 *  Mais confiáveis.
 *  Mais fáceis de escalar.
 *  Mais fáceis de entender.

## Linguagem SQL -Métodos de Combinação

## JOINS (Adição de Colunas - Horizontal)
* Conectamos tabelas lateralmente através de uma coluna comum (Chave).
   *  Inner Join: Apenas o que existe em ambas as tabelas.
   *   Left Join: Mantemos tudo da tabela à esquerda e trazemos o que houver da direita.
   *   Right Join: Mantemos tudo da direita e trazemos o que houver da esquerda.
o Full Join: Trazemos tudo de ambos os lados, independentemente de haver correspondência.

## Como Usamos Joins
*  Ao escrevermos um JOIN, devemos especificar a relação:
* SELECT
  * TabelaA.Nome,
  * TabelaB.Pais
* FROM
  * TabelaA INNER JOIN TabelaB ON TabelaA.id = TabelaB.id;

## Operadores SET (Adição de Linhas - Vertical)
*  Empilhamos resultados de consultas diferentes, desde que tenham a mesma estrutura de
colunas.
    *  `UNION`: Combina os resultados e remove duplicados.
    *  `UNION ALL`: Combina tudo, incluindo duplicados (é mais rápido).
    *  `EXCEPT / MINUS`: Mostra o que existe no primeiro conjunto mas não no segundo.
    *   `INTERSECT`: Mostra apenas o que é comum a ambos os conjuntos.

## Como Usamos Operadores SET
 * SELECT
   * Nome
* FROM
   * Clientes
* UNION
* SELECT
   *  Nome
* FROM
    * Funcionarios;