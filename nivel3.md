# Nível 3: Atores e Atrizes Famosos

[Voltar README](./README.md)

## Respostas

### Natalie Portman

**3.1** Quantas vezes Natalie Portman foi indicada ao Oscar?

R: 3 vezes

```sql
SELECT COUNT(*) FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Natalie Portman%";
```

**3.2** Quantos Oscars Natalie Portman ganhou?

R: 1

```sql
SELECT COUNT(*) FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Natalie Portman%"
AND vencedor = true;
```

**3.3** Em quais anos e por quais filmes Natalie Portman foi indicada?

R: Em 2005 por Closer, em 2011 por Black Swan e em 2017 por Jackie.

```sql
SELECT nome_indicado, ano_cerimonia, nome_filme
FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Natalie Portman%";
```

**3.4** Liste todas as indicações de Natalie Portman mostrando: ano, categoria, filme e se venceu.

| ano_cerimonia | categoria | nome_filme | vencedor |
|:-------------:|:---------:|:----------:|:--------:|
|2005	|ACTRESS IN A SUPPORTING ROLE	|Closer	|0|
|2011	|ACTRESS IN A LEADING ROLE	|Black Swan	|1|
|2017	|ACTRESS IN A LEADING ROLE	|Jackie	|0|

```sql
SELECT ano_cerimonia, categoria, nome_filme, vencedor
FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Natalie Portman%";
```

### Viola Davis

**3.5** Quantas vezes Viola Davis foi indicada ao Oscar?

R: 4

```sql
SELECT COUNT(*) FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Viola Davis%";
```

**3.6** Quantos Oscars Viola Davis ganhou?

R: 1

```sql
SELECT COUNT(*) FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Viola Davis%"
AND vencedor = true;
```

**3.7** Por quais filmes Viola Davis foi indicada?

R: Doubt, The Help, Fences e Ma Rainey's Black Bottom.

```sql
SELECT nome_filme
FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Viola Davis%";
```

### Amy Adams

**3.8** Amy Adams já ganhou algum Oscar?

R: Não.

```sql
SELECT * 
FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Amy Adams%" 
AND vencedor = true;
```

**3.9** Quantas vezes Amy Adams foi indicada sem ganhar?

R: 6 vezes.

```sql
SELECT COUNT(*) 
FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Amy Adams%" 
AND vencedor = FALSE;
```

### Denzel Washington

**3.10** Denzel Washington já ganhou algum Oscar?

R: Sim.

```sql
SELECT * 
FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Denzel Washington%" 
AND vencedor = true;
```

**3.11** Quantas vezes Denzel Washington foi indicado ao Oscar?

R: 10 vezes.

```sql
SELECT COUNT(*)
FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Denzel Washington%";
```

**3.12** Liste todos os Oscars que Denzel Washington ganhou (ano, categoria, filme).

| ano_cerimonia | categoria | nome_filme | vencedor |
|:-------------:|-----------|------------|:--------:|
|1990	|ACTOR IN A SUPPORTING ROLE	|Glory	|1|
|2002	|ACTOR IN A LEADING ROLE	|Training Day	|1|


```sql
SELECT ano_cerimonia, categoria, nome_filme, vencedor
FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Denzel Washington%"
AND vencedor = true;
```
