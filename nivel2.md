# Nível 2: Explorando Categorias

[Voltar README](./README.md)

## Respostas

**2.1** Quantas indicações existem para cada categoria? Agrupe por categoria e ordene da mais frequente para a menos frequente.

<details>
<summary>Ver resposta</summary>

| Categoria | Quantidade de indicações |
|:----------|:------------------------:|
|DIRECTING	|479|
|FILM EDITING	|460|
|ACTOR IN A SUPPORTING ROLE	|450|
|ACTRESS IN A SUPPORTING ROLE	|450|
|BEST PICTURE	|391|
|DOCUMENTARY (Short Subject)	|378|
|CINEMATOGRAPHY	|348|
|DOCUMENTARY (Feature)	|345|
|FOREIGN LANGUAGE FILM	|315|
|ART DIRECTION	|307|
|COSTUME DESIGN	|305|
|MUSIC (Original Score)	|270|
|SOUND	|255|
|ACTOR IN A LEADING ROLE	|250|
|ACTRESS IN A LEADING ROLE	|250|
|ACTRESS	|236|
|MUSIC (Original Song)	|235|
|ACTOR	|232|
|SHORT FILM (Live Action)	|226|
|MUSIC (Song)	|215|
|SHORT FILM (Animated)	|215|
|SOUND RECORDING	|195|
|SHORT SUBJECT (Cartoon)	|169|
|VISUAL EFFECTS	|165|
|CINEMATOGRAPHY (Black-and-White)	|161|
|WRITING (Original Screenplay)	|160|
|MUSIC (Music Score of a Dramatic or Comedy Picture)	|148|
|ART DIRECTION (Black-and-White)	|138|
|CINEMATOGRAPHY (Color)	|135|
|HONORARY AWARD	|133|
|MUSIC (Scoring of a Musical Picture)	|127|
|WRITING (Screenplay Written Directly for the Screen)	|120|
|ART DIRECTION (Color)	|112|
|WRITING (Adapted Screenplay)	|110|
|ANIMATED FEATURE FILM	|109|
|WRITING (Screenplay)	|104|
|OUTSTANDING PRODUCTION	|102|
|WRITING (Screenplay--based on material from another medium)	|95|
|SPECIAL EFFECTS	|93|
|SHORT SUBJECT (One-reel)	|90|
|BEST MOTION PICTURE	|90|
|MAKEUP	|87|
|SOUND EDITING	|86|
|SOUND MIXING	|85|
|SHORT SUBJECT (Two-reel)	|81|
|COSTUME DESIGN (Black-and-White)	|77|
|COSTUME DESIGN (Color)	|77|
|PRODUCTION DESIGN	|70|
|SHORT SUBJECT (Live Action)	|68|
|WRITING (Screenplay Based on Material from Another Medium)	|65|
|MUSIC (Scoring)	|64|
|WRITING (Story and Screenplay--written directly for the screen)	|60|
|SPECIAL AWARD	|56|
|MAKEUP AND HAIRSTYLING	|56|
|WRITING (Screenplay Based on Material Previously Produced or Published)	|55|
|WRITING (Original Story)	|52|
|WRITING (Motion Picture Story)	|50|
|SOUND EFFECTS EDITING	|47|
|IRVING G. THALBERG MEMORIAL AWARD	|45|
|JEAN HERSHOLT HUMANITARIAN AWARD	|44|
|MUSIC (Original Dramatic Score)	|41|
|ASSISTANT DIRECTOR	|35|
|WRITING (Story and Screenplay)	|35|
|INTERNATIONAL FEATURE FILM	|35|
|OUTSTANDING MOTION PICTURE	|30|
|MUSIC (Scoring of Music--adaptation or treatment)	|30|
|DOCUMENTARY	|25|
|WRITING (Original Motion Picture Story)	|25|
|MUSIC (Song--Original for the Picture)	|25|
|DANCE DIRECTION	|21|
|MUSIC (Music Score of a Dramatic Picture)	|20|
|MUSIC (Music Score--substantially original)	|20|
|WRITING (Story and Screenplay--based on factual material or material not previously published or produced)	|20|
|MUSIC (Original Musical or Comedy Score)	|20|
|DOCUMENTARY FEATURE FILM	|20|
|DOCUMENTARY SHORT FILM	|20|
|WRITING (Adaptation)	|17|
|SPECIAL VISUAL EFFECTS	|16|
|SHORT SUBJECT (Comedy)	|13|
|SHORT SUBJECT (Novelty)	|12|
|WRITING	|11|
|SOUND EFFECTS	|10|
|MUSIC (Original Music Score)	|10|
|MUSIC (Original Score--for a motion picture [not a musical])	|10|
|MUSIC (Score of a Musical Picture--original or adaptation)	|10|
|WRITING (Screenplay Adapted from Other Material)	|10|
|WRITING (Screenplay Written Directly for the Screen--based on factual material or on story material not previously published or produced)	|10|
|ORIGINAL SCORE	|10|
|ADAPTED SCREENPLAY	|10|
|ORIGINAL SCREENPLAY	|10|
|ORIGINAL SONG	|10|
|LIVE ACTION SHORT FILM	|10|
|ANIMATED SHORT FILM	|10|
|SHORT SUBJECT (Animated)	|9|
|SPECIAL ACHIEVEMENT AWARD (Visual Effects)	|9|
|MUSIC (Scoring: Original Song Score and Adaptation -or- Scoring: Adaptation)	|9|
|OUTSTANDING PICTURE	|8|
|MUSIC (Original Song Score)	|8|
|MUSIC (Scoring: Adaptation and Original Song Score)	|8|
|SHORT SUBJECT (Color)	|6|
|MUSIC (Original Song Score and Its Adaptation or Adaptation Score)	|6|
|MUSIC (Original Song Score and Its Adaptation -or- Adaptation Score)	|6|
|HONORARY FOREIGN LANGUAGE FILM AWARD	|5|
|WRITING (Screenplay--Adapted)	|5|
|WRITING (Screenplay--Original)	|5|
|WRITING (Story and Screenplay--based on material not previously published or produced)	|5|
|CASTING	|5|
|SPECIAL ACHIEVEMENT AWARD (Sound Effects Editing)	|4|
|DIRECTING (Dramatic Picture)	|3|
|ENGINEERING EFFECTS	|3|
|UNIQUE AND ARTISTIC PICTURE	|3|
|WRITING (Title Writing)	|3|
|SPECIAL ACHIEVEMENT AWARD	|3|
|MUSIC (Adaptation Score)	|3|
|SHORT FILM (Dramatic Live Action)	|3|
|MUSIC (Original Song Score or Adaptation Score)	|3|
|DIRECTING (Comedy Picture)	|2|
|SPECIAL FOREIGN LANGUAGE FILM AWARD	|2|
|SPECIAL ACHIEVEMENT AWARD (Sound Effects)	|1|
|SPECIAL ACHIEVEMENT AWARD (Sound Editing)	|1|
|GORDON E. SAWYER AWARD	|1|
|AWARD OF COMMENDATION	|1|

</details>

<br>

```sql
SELECT categoria as "Categoria", COUNT(categoria) as "Quantidade de indicações" 
FROM indicados_ao_oscar 
GROUP BY categoria 
ORDER BY COUNT(categoria) DESC;
```

**2.2** Qual categoria teve mais indicações ao longo da história do Oscar?

R: Directing com 479 indicações.

```sql
SELECT categoria as "Categoria", COUNT(categoria) as "Quantidade de indicações"
FROM indicados_ao_oscar 
GROUP BY categoria 
ORDER BY COUNT(categoria) DESC;
```

**2.3** Qual categoria teve menos indicações ao longo da história?

R: AWARD OF COMMENDATION, GORDON E. SAWYER AWARD, SPECIAL ACHIEVEMENT AWARD (Sound Editing) e SPECIAL ACHIEVEMENT AWARD (Sound Effects), cada um com 1 indicação.

```sql
SELECT categoria as "Categoria", COUNT(categoria) as "Quantidade de indicações" 
FROM indicados_ao_oscar 
GROUP BY categoria 
ORDER BY COUNT(categoria) ASC, categoria ASC;
```

**2.4** A partir de que ano a categoria "ACTRESS" deixou de existir? (Dica: procure a última cerimônia com essa categoria)

R: A partir de 1977 a categoria "ACTRESS" deixou de existir, sua última cerimônia foi em 1976.

```sql
SELECT DISTINCT ano_cerimonia, categoria 
FROM indicados_ao_oscar 
WHERE categoria = 'ACTRESS' 
ORDER BY ano_cerimonia DESC;
```

**2.5** Quais categorias existiam na primeira cerimônia (1928) e não existem mais hoje?

<details>
<summary>Ver resposta</summary>

|Categoria|
|---------|
|ACTOR|
|ACTRESS|
|ART DIRECTION|
|DIRECTING (Comedy Picture)|
|DIRECTING (Dramatic Picture)|
|ENGINEERING EFFECTS|
|OUTSTANDING PICTURE|
|UNIQUE AND ARTISTIC PICTURE|
|WRITING (Adaptation)|
|WRITING (Original Story)|
|WRITING (Title Writing)|
|SPECIAL AWARD|

</details>

<br>

```sql
SELECT DISTINCT categoria, ano_cerimonia
FROM indicados_ao_oscar 
WHERE ano_cerimonia = 1928 AND categoria NOT IN (
    SELECT DISTINCT categoria
    FROM indicados_ao_oscar
    WHERE ano_cerimonia = 2026);
```

**2.6** Liste todas as categorias que contêm a palavra "DIRECTING" no nome.

R: DIRECTING (Comedy Picture), DIRECTING (Dramatic Picture) e DIRECTING.

```sql
SELECT DISTINCT categoria 
FROM indicados_ao_oscar 
WHERE categoria LIKE '%DIRECTING%';
```
