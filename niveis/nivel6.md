## Nível 6: Análise de Filmes

[Voltar README](../README.md)

## Respostas

### Toy Story

**6.1** A série de filmes Toy Story ganhou Oscars em quais anos?

R: Ganhou 2 Oscars em 2011 e 1 em 2020.

```sql
SELECT ano_cerimonia, categoria, nome_filme
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%Toy Story%'
AND vencedor = true;
```

**6.2** Quantas indicações a franquia Toy Story recebeu no total?

R: 11 indicações.

```sql
SELECT COUNT(*) AS "Quantidade de indicações"
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%Toy Story%';
```

**6.3** Em quais categorias os filmes Toy Story foram indicados?

```
ANIMATED FEATURE FILM
BEST PICTURE
MUSIC (Original Musical or Comedy Score)
MUSIC (Original Song)
SOUND EDITING
WRITING (Adapted Screenplay)
WRITING (Screenplay Written Directly for the Screen)
```

```sql
SELECT DISTINCT categoria
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%Toy Story%'
ORDER BY categoria;
```

### Crash

**6.4** Em qual edição do Oscar o filme "Crash" concorreu?

R: 78° edição.

```sql
SELECT DISTINCT edicao_cerimonia
FROM indicados_ao_oscar
WHERE nome_filme = 'Crash';
```

**6.5** Quantas indicações o filme "Crash" recebeu?

R: 6 indicações.

```sql
SELECT COUNT(*) AS "Quantidade de indicações"
FROM indicados_ao_oscar
WHERE nome_filme = 'Crash';
```

**6.6** "Crash" ganhou o Oscar de Melhor Filme?

R: Sim.

```sql
SELECT vencedor, categoria, nome_filme
FROM indicados_ao_oscar
WHERE nome_filme = 'Crash' AND categoria = 'BEST PICTURE'
AND vencedor = true;
```

### Central do Brasil

**6.7** O filme "Central do Brasil" aparece no banco de dados?

R: Sim, mas apenas com o nome em inglês: Central Station.

```sql
SELECT *
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%"Central do Brasil"%' OR nome_filme LIKE '%Central Station%';
```

**6.8** Se sim, quantas indicações "Central do Brasil" recebeu?

R: 2 indicações.

```sql
SELECT COUNT(*) AS "Quantidade de indicações"
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%"Central do Brasil"%' OR nome_filme LIKE '%Central Station%';
```