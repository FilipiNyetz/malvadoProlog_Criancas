# Puzzle Prolog

Solucionando problema de lógica com Prolog para a matéria de Inteligência Artificial, Malvezzi..

---

## Sobre o Problema

O objetivo é determinar a configuração correta de **5 crianças**, onde cada uma possui:

* Mochila
* Nome
* Mês de nascimento
* Jogo favorito
* Matéria preferida
* Suco favorito

Todas essas informações devem satisfazer um conjunto de **restrições lógicas**, como:

* Relações de vizinhança (ex: "está ao lado de")
* Posições fixas (ex: "está na terceira posição")
* Associações diretas (ex: "quem gosta de X também gosta de Y")
* Exclusividade (todos os elementos são diferentes)

---

## Estrutura do Projeto

* `modelo/1`
  Define a estrutura da solução e aplica todas as restrições.

* `all_different/1`
  Garante que não haja valores repetidos em cada categoria.

* `imprime_lista/1`
  Exibe a solução formatada no terminal.

* `main/0`
  Executa o programa, mede o tempo de execução e imprime as soluções.

---

## Como Executar

### 1. Abrir um Compilador Online

Link: https://swish.swi-prolog.org

### 3. Criar um Programa

Clique em "Program" para criar um programa Prolog Vazio e Cole o Programa do GitHub.

### 3. Executar o programa

```prolog
?- main.
```

---

## Saída

O programa irá:

* Exibir a(s) solução(ões) encontrada(s)
* Mostrar os dados de cada criança formatados
* Informar o tempo de execução

Exemplo:

```
=== SOLUCAO ===
-------------------------------
Mochila: ...
Nome: ...
...
Tempo de execucao: X segundos
```

---

## Autores

Desenvolvido por Grupo 13: Filipi Martins, Daniel Leal, Pedro Henrique, Ana Júlia Borges, Estevao Lins.

---

