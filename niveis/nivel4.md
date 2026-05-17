# Nível 4: Vencedores Históricos

[Voltar README](../README.md)

## Respostas

**4.1** Quem ganhou o primeiro Oscar para Melhor Atriz (ACTRESS)? Em que ano e por qual filme?

R: Janet Gaynor	em 1928	por 7th Heaven.

```sql
SELECT nome_indicado, ano_cerimonia, nome_filme
FROM  indicados_ao_oscar
WHERE categoria = 'ACTRESS'
AND vencedor = true
ORDER BY ano_cerimonia
LIMIT 1;
```

**4.2** Quem ganhou o primeiro Oscar para Melhor Ator (ACTOR)? Em que ano e por qual filme?

R: Emil Jannings em 1928 por The Last Command.

```sql
SELECT nome_indicado, ano_cerimonia, nome_filme
FROM  indicados_ao_oscar
WHERE categoria = 'ACTOR'
AND vencedor = true
ORDER BY ano_cerimonia
LIMIT 1;
```

**4.3** Quantos vencedores existem ao todo na base de dados?

R: 2513 vencedores.

```sql
SELECT COUNT(*)
FROM indicados_ao_oscar
WHERE vencedor = true;
```

**4.4** Liste todos os filmes que ganharam o Oscar de Melhor Filme (categoria "OUTSTANDING PICTURE" ou "BEST PICTURE").

<details>
<summary>Ver resposta</summary>

```
12 Years a Slave
A Beautiful Mind
A Man for All Seasons
Amadeus
American Beauty
Annie Hall
Anora
Argo
Birdman or (The Unexpected Virtue of Ignorance)
Braveheart
Chariots of Fire
Chicago
CODA
Crash
Dances With Wolves
Driving Miss Daisy
Everything Everywhere All at Once
Forrest Gump
Gandhi
Gladiator
Green Book
In the Heat of the Night
Kramer vs. Kramer
Lawrence of Arabia
Midnight Cowboy
Million Dollar Baby
Moonlight
My Fair Lady
No Country for Old Men
Nomadland
Oliver!
One Battle After Another
One Flew over the Cuckoo's Nest
Oppenheimer
Ordinary People
Out of Africa
Parasite
Patton
Platoon
Rain Man
Rocky
Schindler's List
Shakespeare in Love
Slumdog Millionaire
Spotlight
Terms of Endearment
The Artist
The Broadway Melody
The Deer Hunter
The Departed
The English Patient
The French Connection
The Godfather
The Godfather Part II
The Hurt Locker
The King's Speech
The Last Emperor
The Lord of the Rings: The Return of the King
The Shape of Water
The Silence of the Lambs
The Sound of Music
The Sting
Titanic
Tom Jones
Unforgiven
Wings
```
</details>

<br>

```sql
SELECT nome_filme
FROM indicados_ao_oscar
WHERE categoria in ("OUTSTANDING PICTURE", "BEST PICTURE")
AND vencedor = true
ORDER BY nome_filme;
```

**4.5** Quantos filmes diferentes já ganharam o Oscar?

R: 66 fimes.

```sql
SELECT COUNT(DISTINCT nome_filme)
FROM indicados_ao_oscar
WHERE categoria in ("OUTSTANDING PICTURE", "BEST PICTURE")
AND vencedor = true
ORDER BY nome_filme;
```