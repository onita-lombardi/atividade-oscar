# Nível 5: Análise de Indicações

[Voltar README](./README.md)

## Respostas

**5.1** Quais atores/atrizes foram indicados mais de uma vez? Liste o nome e o número de indicações.

```sql
SELECT nome_indicado, COUNT(*) AS "Quantidade de indicações"
FROM indicados_ao_oscar
WHERE categoria LIKE '%ACTRESS%' OR categoria LIKE '%ACTOR%'
GROUP BY nome_indicado
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC;
```

**5.2** Qual ator ou atriz tem o maior número de indicações na história do Oscar?

R: Meryl Streep	com 21 indicações.

```sql
SELECT nome_indicado, COUNT(*) AS "Quantidade de indicações"
FROM indicados_ao_oscar
WHERE categoria LIKE '%ACTRESS%' OR categoria LIKE '%ACTOR%'
GROUP BY nome_indicado
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC
LIMIT 1;
```

**5.3** Quais atores foram indicados mais de 3 vezes, mas nunca ganharam?

<details>
<summary>Ver resposta</summary>

|nome_indicado |Quantidade de indicações|
|--------------|:----------------------:|
|Peter O'Toole	|8|
|Glenn Close	|8|
|Richard Burton	|7|
|Deborah Kerr	|6|
|Thelma Ritter	|6|
|Amy Adams	|6|
|Irene Dunne	|5|
|Arthur Kennedy	|5|
|Albert Finney	|5|
|Annette Bening	|5|
|Michelle Williams	|5|
|Bradley Cooper	|5|
|Charles Boyer	|4|
|Barbara Stanwyck	|4|
|Mickey Rooney	|4|
|Claude Rains	|4|
|Rosalind Russell	|4|
|Agnes Moorehead	|4
|Montgomery Clift	|4|
|Warren Beatty	|4|
|Jane Alexander	|4|
|Marsha Mason	|4|
|Willem Dafoe	|4|
|Ed Harris	|4|
|Edward Norton	|4|
|Saoirse Ronan	|4|
|Mark Ruffalo	|4|

</details>

<br>

```sql
SELECT nome_indicado, COUNT(*) AS "Quantidade de indicações"
FROM indicados_ao_oscar
WHERE categoria LIKE '%ACTRESS%' OR categoria LIKE '%ACTOR%'
GROUP BY nome_indicado
HAVING COUNT(*) > 3
AND SUM(CASE WHEN vencedor = true THEN 1 ELSE 0 END) = 0
ORDER BY COUNT(*) DESC;
```

**5.4** Encontre todos os artistas que foram indicados em categorias diferentes (ex: ator e diretor).

```sql
SELECT nome_indicado, COUNT(DISTINCT categoria) AS quantidade_categorias
FROM indicados_ao_oscar
GROUP BY nome_indicado
HAVING COUNT(DISTINCT categoria) > 1
ORDER BY quantidade_categorias DESC;
```

**5.5** Quantos indicados têm exatamente 1 indicação na história?

R: 5618 indicados.

```sql
SELECT COUNT(*)
FROM (
    SELECT nome_indicado
    FROM indicados_ao_oscar
    GROUP BY nome_indicado
    HAVING COUNT(*) = 1
) tabela_temporaria;
```

**5.6** Qual o maior números de indicados em um único ano? Essa é uma pergunta franca.

R: 186 indicações em 1943.

```sql
SELECT ano_cerimonia, COUNT(*)
FROM indicados_ao_oscar
GROUP BY ano_cerimonia
ORDER BY COUNT(*) DESC
LIMIT 1;
```
