Guia de estudos de Linguagem SQL! Esse documento reúne os principais conceitos teóricos e práticos para a construção, manipulação e consulta de dados relacionais.

Script do Repositório:

[Acessar Script](https://github.com/adriiana-dev/LinguagemSQL/blob/main/script.sql)

# 1. Introdução à Linguagem SQL

 ## **SQL** significa **Structured Query Language**. O SQL é uma linguagem de consulta estruturada. É frequentemente é chamada de **"sequel"**

 - É a linguagem padrão universal para interagir com bancos de dados relacionais. No dia a dia, é usado para **conversar** com os dados, permitindo extrair informações valiosas e realizar cálculos complexos em segundos.

## Por que aprender SQL?

- [✔️] Falar com Dados: Permite a comunicação direta com sistemas de dados.
- [✔️] Alta Demanda: Existe uma grande procura por profissionais com essa habilidade em diversas funções técnicas.
- [✔️] Caminhos de Carreira: É um conhecimento essencial para **Desenvolvedores de Software, Analistas de Dados, Cientistas de Dados e Engenheiros de Dados**.
- [✔️] Padrão da Indústria: É a linguagem padrão utilizada em ferramentas *como Power BI, Tableau, Kafka, Spark e Synapse*.


# 2. Sistema de Gerenciamento de Banco de Dados

## O **DBMS** atua como a interface principal entre o usuário e o banco de dados.
- Os bancos de dados são normalmente hospedados em *servidores* ou na *nuvem*.
- Aplicativos, ferramentas de BI (como Power BI) e usuários enviam consultas SQL ao DBMS para recuperar ou gerenciar informações.
> Geralmante funcionam 24/7 para garantir que os dados estejam sempre acessíveis.


#  Tipos de Bancos de Dados
- **Relacional:** *Microsoft SQL Server, MySQL, PostgreSQL, Amazon Redshift*
- **Documento:** *MongoDB*
- **Grafo:** *Neo4j*
- **Chave-Valor:** *Redis, Amazon DynamoDB*
- **Base de Coluna:** *Apache Cassandra (GitHub)*


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

  # 3. Tipos de Comandos **SQL**
  * O SQL divide-se nestas categorias principais:
    
| Comando | Nome Completo              | Função                                         | Exemplos                     |
|--------|--------------------------|-----------------------------------------------|-----------------------------|
| DDL    | Definição de Dados        | Cria e altera a estrutura do banco ("esqueleto") | CREATE, ALTER, DROP         |
| DQL    | Consulta de Dados         | Busca os dados armazenados                    | SELECT                      |
| DML    | Manipulação de Dados      | Gerencia o conteúdo interno das tabelas       | INSERT, UPDATE, DELETE      |
| DCL    | Controle de Dados         | Gerencia permissões de acesso                 | GRANT, REVOKE               |
| TCL    | Controle de Transações    | Gerencia alterações e transações              | COMMIT, ROLLBACK            |

## *Atenção:* Em comandos UPDATE e DELETE, utilize sempre a cláusula WHERE para evitar alterações em massa indesejadas.

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
 

# 4. Anatomia de uma Declaração *SQL*
* Uma instrução **SQL** é composta de elementos específicos que dizem ao banco como processar o pedido:
 
 ## Estrutura Básica de Consulta
 * SELECT
    * column_name
 * FROM
    * table_name;

  ## Filtragem e Ordenação
  * ´WHERE´ Filtra registros com condições específicas.
  * ´ORDER BY´ - Ordena resultados em ordem ascendente ou descendente.

  ## Ordem Lógica de Avaliação
  * *SQL* não processa cláusulas na ordem escrita.
  * A execução padrão lógica é:
   1. ´FROM´
   2. ´WHERE´
   3. ´SELECT´
   4. ´ORDER BY´

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



## 5. Chave Estrangeira
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



## 6. Normalização
* Normalizar um banco de dados é **organizar as informações para que cada dado exista apenas
uma vez**, evitando repetição, erros e bagunça nas tabelas.

## *UNF* (Não Normalizada): Dados misturados, grupos repetidos e células com múltiplos valores.

## *1FN:* Valores devem ser atómicos (um único valor por célula).

## *2FN:* Deve estar na 1FN. Remove dependências parciais (cada entidade passa a ter a sua própria tabela e chave primária).

## *3FN:* Deve estar na 2FN. Remove dependências transitivas (campos não-chave devem depender apenas da chave primária).

## 7. Métodos de Combinação

## JOINS (Adição de Colunas - Horizontal)
* Conectamos tabelas lateralmente através de uma coluna comum. *Inner Join:* Apenas o que existe em ambas as tabelas. *Left Join:* Mantemos tudo da tabela à esquerda e trazemos o que houver da direita. *Right Join:* Mantemos tudo da direita e trazemos o que houver da esquerda. *Full Join:* Trazemos tudo de ambos os lados, independentemente de haver correspondência.


## Operadores SET (Adição de Linhas - Vertical)
### Empilhamos resultados de consultas diferentes, desde que tenham a mesma estrutura de
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

##  8. O que são Funções SQL?

São conjuntos de instruções que recebem um ou mais valores de entrada, os processam e retornam um novo valor de saída (Entrada -> FUNÇÃO -> Saída).

* **Principais utilidades:** Limpeza (remoção de caracteres indesejados), Transformação (conversão de textos ou datas) e Análise (cálculos rápidos linha a linha).

* **Como aplicá-las:** Elas retornam um resultado para cada linha e podem ser utilizadas nas cláusulas `SELECT` (exibir), `WHERE` (filtrar) e `ORDER BY` (ordenar).

## *Texto:* `CONCAT`(une strings), `UPPER/LOWER` (maiúsculas/minúsculas), `TRIM` (remove espaços), `REPLACE` (substitui texto), LEN (quantidade de caracteres), `SUBSTRING` (extrai partes).

## *Data:* `DATEADD` (adiciona intervalo), `DATEDIFF` (calcula diferença), `YEAR/MONTH/DAY` (extraem partes), `FORMAT` (muda formato visual).

## *Tratamento de Nulos:* `ISNULL` (substitui nulo por outro valor), `COALESCE` (primeiro valor não-nulo da lista).

## Lógica Condicional (`CASE`):

```
CASE 
  WHEN Condição THEN Resultado
  ELSE Resultado_Padrão
END
   ```

## 9. Funções de Agregação e Agrupamento

Diferente das funções de linha única, as funções de agregação processam um **conjunto de valores** (várias linhas) e retornam um **único valor resumido**. Elas são perfeitas para criar indicadores, como totais, médias e contagens.


| Função | O que faz? | Tipos de Dados Aceitos |
| :---: | :--- | :--- |
| **`COUNT`** | Conta o número total de registros (linhas). | Qualquer tipo |
| **`SUM`** | Soma os valores de uma coluna específica. | Apenas Numéricos |
| **`AVG`** | Calcula a média aritmética dos valores. | Apenas Numéricos |
| **`MAX`** | Identifica o valor máximo (o maior). | Numéricos, Datas e Texto |
| **`MIN`** | Identifica o valor mínimo (o menor). | Numéricos, Datas e Texto |

---

##  A Cláusula `GROUP BY` (Agrupamento)
A cláusula `GROUP BY` é a principal aliada das funções de agregação. Ela serve para organizar linhas que possuem valores idênticos em **grupos**.


###  Exemplo Prático

Imagine que você tem uma tabela com milhares de vendas pelo país. Se você utilizar o `GROUP BY regiao`, o SQL vai pegar todas as vendas do "Sul", "Norte" e "Leste" e devolver apenas **uma linha para cada região** com os totais somados.

**Na prática, o código seria assim:**

```sql
SELECT 
    regiao, 
    SUM(valor_venda) AS total_vendido
FROM 
    vendas
GROUP BY 
    regiao;
   ```
