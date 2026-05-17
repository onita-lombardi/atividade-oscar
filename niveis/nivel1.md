# Nível 1: Primeiros Passos

[Voltar README](../README.md)

## Respostas

**1.1** Quantos registros existem na tabela de indicados ao Oscar?

R: 10889 registros

```sql
SELECT COUNT(*) FROM indicados_ao_oscar;
```

**1.2.1** Quais são as diferentes categorias de premiação que existem no banco de dados? Liste todas as categorias únicas.

<details>
<summary>Ver resposta</summary>

```
ACTOR
ACTOR IN A LEADING ROLE
ACTOR IN A SUPPORTING ROLE
ACTRESS
ACTRESS IN A LEADING ROLE
ACTRESS IN A SUPPORTING ROLE
ANIMATED FEATURE FILM
ART DIRECTION
ART DIRECTION (Black-and-White)
ART DIRECTION (Color)
ASSISTANT DIRECTOR
AWARD OF COMMENDATION
BEST MOTION PICTURE
BEST PICTURE
CINEMATOGRAPHY
CINEMATOGRAPHY (Black-and-White)
CINEMATOGRAPHY (Color)
COSTUME DESIGN
COSTUME DESIGN (Black-and-White)
COSTUME DESIGN (Color)
DANCE DIRECTION
DIRECTING
DIRECTING (Comedy Picture)
DIRECTING (Dramatic Picture)
DOCUMENTARY
DOCUMENTARY (Feature)
DOCUMENTARY (Short Subject)
DOCUMENTARY FEATURE FILM
DOCUMENTARY SHORT FILM
ENGINEERING EFFECTS
FILM EDITING
FOREIGN LANGUAGE FILM
GORDON E. SAWYER AWARD
HONORARY AWARD
HONORARY FOREIGN LANGUAGE FILM AWARD
INTERNATIONAL FEATURE FILM
IRVING G. THALBERG MEMORIAL AWARD
JEAN HERSHOLT HUMANITARIAN AWARD
MAKEUP
MAKEUP AND HAIRSTYLING
MUSIC (Adaptation Score)
MUSIC (Music Score of a Dramatic or Comedy Picture)
MUSIC (Music Score of a Dramatic Picture)
MUSIC (Music Score--substantially original)
MUSIC (Original Dramatic Score)
MUSIC (Original Music Score)
MUSIC (Original Musical or Comedy Score)
MUSIC (Original Score)
MUSIC (Original Score--for a motion picture [not a musical])
MUSIC (Original Song Score and Its Adaptation -or- Adaptation Score)
MUSIC (Original Song Score and Its Adaptation or Adaptation Score)
MUSIC (Original Song Score or Adaptation Score)
MUSIC (Original Song Score)
MUSIC (Original Song)
MUSIC (Score of a Musical Picture--original or adaptation)
MUSIC (Scoring of a Musical Picture)
MUSIC (Scoring of Music--adaptation or treatment)
MUSIC (Scoring)
MUSIC (Scoring: Adaptation and Original Song Score)
MUSIC (Scoring: Original Song Score and Adaptation -or- Scoring: Adaptation)
MUSIC (Song)
MUSIC (Song--Original for the Picture)
OUTSTANDING MOTION PICTURE
OUTSTANDING PICTURE
OUTSTANDING PRODUCTION
PRODUCTION DESIGN
SHORT FILM (Animated)
SHORT FILM (Dramatic Live Action)
SHORT FILM (Live Action)
SHORT SUBJECT (Animated)
SHORT SUBJECT (Cartoon)
SHORT SUBJECT (Color)
SHORT SUBJECT (Comedy)
SHORT SUBJECT (Live Action)
SHORT SUBJECT (Novelty)
SHORT SUBJECT (One-reel)
SHORT SUBJECT (Two-reel)
SOUND
SOUND EDITING
SOUND EFFECTS
SOUND EFFECTS EDITING
SOUND MIXING
SOUND RECORDING
SPECIAL ACHIEVEMENT AWARD
SPECIAL ACHIEVEMENT AWARD (Sound Editing)
SPECIAL ACHIEVEMENT AWARD (Sound Effects Editing)
SPECIAL ACHIEVEMENT AWARD (Sound Effects)
SPECIAL ACHIEVEMENT AWARD (Visual Effects)
SPECIAL AWARD
SPECIAL EFFECTS
SPECIAL FOREIGN LANGUAGE FILM AWARD
SPECIAL VISUAL EFFECTS
UNIQUE AND ARTISTIC PICTURE
VISUAL EFFECTS
WRITING
WRITING (Adaptation)
WRITING (Adapted Screenplay)
WRITING (Motion Picture Story)
WRITING (Original Motion Picture Story)
WRITING (Original Screenplay)
WRITING (Original Story)
WRITING (Screenplay Adapted from Other Material)
WRITING (Screenplay Based on Material from Another Medium)
WRITING (Screenplay Based on Material Previously Produced or Published)
WRITING (Screenplay Written Directly for the Screen)
WRITING (Screenplay Written Directly for the Screen--based on factual material or on story material not previously published or produced)
WRITING (Screenplay)
WRITING (Screenplay--Adapted)
WRITING (Screenplay--based on material from another medium)
WRITING (Screenplay--Original)
WRITING (Story and Screenplay)
WRITING (Story and Screenplay--based on factual material or material not previously published or produced)
WRITING (Story and Screenplay--based on material not previously published or produced)
WRITING (Story and Screenplay--written directly for the screen)
WRITING (Title Writing)
```
</details>

<br>   

```sql
SELECT DISTINCT categoria 
FROM indicados_ao_oscar 
ORDER BY categoria;
```

**1.3** Qual foi o primeiro ano de cerimônia do Oscar registrado na base?

R: 1928

```sql
SELECT DISTINCT ano_cerimonia 
FROM indicados_ao_oscar 
ORDER BY ano_cerimonia;
```

**1.4** Qual foi o último ano de cerimônia registrado na base?

R: 2024

```sql
SELECT DISTINCT ano_cerimonia 
FROM indicados_ao_oscar 
ORDER BY ano_cerimonia DESC;
```

**1.5** Quantas cerimônias do Oscar estão registradas no total?

R: 96 cerimônias

```sql
SELECT DISTINCT edicao_cerimonia 
FROM indicados_ao_oscar 
ORDER BY edicao_cerimonia DESC;
```


**1.6** Atualize os registros da tabela com os dados do Oscar 2025 e 2026 (pesquise os vencedores e adicione-os).

<details>
<summary>Ver resposta</summary>

```sql
-- Dados 2025
INSERT INTO indicados_ao_oscar 
(ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES
-- BEST PICTURE 2025
(2024, 2025, 97, 'BEST PICTURE', NULL, 'Anora', TRUE),
(2024, 2025, 97, 'BEST PICTURE', NULL, 'The Brutalist', FALSE),
(2024, 2025, 97, 'BEST PICTURE', NULL, 'A Complete Unknown', FALSE),
(2024, 2025, 97, 'BEST PICTURE', NULL, 'Conclave', FALSE),
(2024, 2025, 97, 'BEST PICTURE', NULL, 'Dune: Part Two', FALSE),
(2024, 2025, 97, 'BEST PICTURE', NULL, 'Emilia Pérez', FALSE),
(2024, 2025, 97, 'BEST PICTURE', NULL, 'I’m Still Here', FALSE),
(2024, 2025, 97, 'BEST PICTURE', NULL, 'Nickel Boys', FALSE),
(2024, 2025, 97, 'BEST PICTURE', NULL, 'The Substance', FALSE),
(2024, 2025, 97, 'BEST PICTURE', NULL, 'Wicked', FALSE),

-- ACTRESS IN A LEADING ROLE
(2024, 2025, 97, 'ACTRESS IN A LEADING ROLE', 'Mikey Madison', 'Anora', TRUE),
(2024, 2025, 97, 'ACTRESS IN A LEADING ROLE', 'Cynthia Erivo', 'Wicked', FALSE),
(2024, 2025, 97, 'ACTRESS IN A LEADING ROLE', 'Karla Sofía Gascón', 'Emilia Pérez', FALSE),
(2024, 2025, 97, 'ACTRESS IN A LEADING ROLE', 'Demi Moore', 'The Substance', FALSE),
(2024, 2025, 97, 'ACTRESS IN A LEADING ROLE', 'Fernanda Torres', 'I’m Still Here', FALSE),

-- DIRECTING
(2024, 2025, 97, 'DIRECTING', 'Sean Baker', 'Anora', TRUE),
(2024, 2025, 97, 'DIRECTING', 'Brady Corbet', 'The Brutalist', FALSE),
(2024, 2025, 97, 'DIRECTING', 'James Mangold', 'A Complete Unknown', FALSE),
(2024, 2025, 97, 'DIRECTING', 'Jacques Audiard', 'Emilia Pérez', FALSE),
(2024, 2025, 97, 'DIRECTING', 'Coralie Fargeat', 'The Substance', FALSE),

-- ACTOR IN A LEADING ROLE
(2024, 2025, 97, 'ACTOR IN A LEADING ROLE', 'Adrien Brody', 'The Brutalist', TRUE),
(2024, 2025, 97, 'ACTOR IN A LEADING ROLE', 'Timothée Chalamet', 'A Complete Unknown', FALSE),
(2024, 2025, 97, 'ACTOR IN A LEADING ROLE', 'Colman Domingo', 'Sing Sing', FALSE),
(2024, 2025, 97, 'ACTOR IN A LEADING ROLE', 'Ralph Fiennes', 'Conclave', FALSE),
(2024, 2025, 97, 'ACTOR IN A LEADING ROLE', 'Sebastian Stan', 'The Apprentice', FALSE),

-- ACTOR IN A SUPPORTING ROLE
(2024, 2025, 97, 'ACTOR IN A SUPPORTING ROLE', 'Yura Borisov', 'Anora', FALSE),
(2024, 2025, 97, 'ACTOR IN A SUPPORTING ROLE', 'Kieran Culkin', 'A Real Pain', TRUE),
(2024, 2025, 97, 'ACTOR IN A SUPPORTING ROLE', 'Edward Norton', 'A Complete Unknown', FALSE),
(2024, 2025, 97, 'ACTOR IN A SUPPORTING ROLE', 'Guy Pearce', 'The Brutalist', FALSE),
(2024, 2025, 97, 'ACTOR IN A SUPPORTING ROLE', 'Jeremy Strong', 'The Apprentice', FALSE),

-- ACTRESS IN A SUPPORTING ROLE
(2024, 2025, 97, 'ACTRESS IN A SUPPORTING ROLE', 'Monica Barbaro', 'A Complete Unknown', FALSE),
(2024, 2025, 97, 'ACTRESS IN A SUPPORTING ROLE', 'Ariana Grande', 'Wicked', FALSE),
(2024, 2025, 97, 'ACTRESS IN A SUPPORTING ROLE', 'Felicity Jones', 'The Brutalist', FALSE),
(2024, 2025, 97, 'ACTRESS IN A SUPPORTING ROLE', 'Isabella Rossellini', 'Conclave', FALSE),
(2024, 2025, 97, 'ACTRESS IN A SUPPORTING ROLE', 'Zoe Saldaña', 'Emilia Pérez', TRUE),

-- ORIGINAL SCORE
(2024, 2025, 97, 'ORIGINAL SCORE', NULL, 'The Brutalist', TRUE),
(2024, 2025, 97, 'ORIGINAL SCORE', NULL, 'Conclave', FALSE),
(2024, 2025, 97, 'ORIGINAL SCORE', NULL, 'Emilia Pérez', FALSE),
(2024, 2025, 97, 'ORIGINAL SCORE', NULL, 'Wicked', FALSE),
(2024, 2025, 97, 'ORIGINAL SCORE', NULL, 'The Wild Robot', FALSE),

-- INTERNATIONAL FEATURE FILM
(2024, 2025, 97, 'INTERNATIONAL FEATURE FILM', NULL, 'I’m Still Here', TRUE),
(2024, 2025, 97, 'INTERNATIONAL FEATURE FILM', NULL, 'The Girl with the Needle', FALSE),
(2024, 2025, 97, 'INTERNATIONAL FEATURE FILM', NULL, 'Emilia Pérez', FALSE),
(2024, 2025, 97, 'INTERNATIONAL FEATURE FILM', NULL, 'The Seed of the Sacred Fig', FALSE),
(2024, 2025, 97, 'INTERNATIONAL FEATURE FILM', NULL, 'Flow', FALSE),

-- CINEMATOGRAPHY
(2024, 2025, 97, 'CINEMATOGRAPHY', NULL, 'The Brutalist', TRUE),
(2024, 2025, 97, 'CINEMATOGRAPHY', NULL, 'Dune: Part Two', FALSE),
(2024, 2025, 97, 'CINEMATOGRAPHY', NULL, 'Emilia Pérez', FALSE),
(2024, 2025, 97, 'CINEMATOGRAPHY', NULL, 'Maria', FALSE),
(2024, 2025, 97, 'CINEMATOGRAPHY', NULL, 'Nosferatu', FALSE),

-- VISUAL EFFECTS
(2024, 2025, 97, 'VISUAL EFFECTS', NULL, 'Alien: Romulus', FALSE),
(2024, 2025, 97, 'VISUAL EFFECTS', NULL, 'Better Man', FALSE),
(2024, 2025, 97, 'VISUAL EFFECTS', NULL, 'Dune: Part Two', TRUE),
(2024, 2025, 97, 'VISUAL EFFECTS', NULL, 'Kingdom of the Planet of the Apes', FALSE),
(2024, 2025, 97, 'VISUAL EFFECTS', NULL, 'Wicked', FALSE),

-- SOUND
(2024, 2025, 97, 'SOUND', NULL, 'A Complete Unknown', FALSE),
(2024, 2025, 97, 'SOUND', NULL, 'Dune: Part Two', TRUE),
(2024, 2025, 97, 'SOUND', NULL, 'Emilia Pérez', FALSE),
(2024, 2025, 97, 'SOUND', NULL, 'Wicked', FALSE),
(2024, 2025, 97, 'SOUND', NULL, 'The Wild Robot', FALSE),

-- FILM EDITING
(2024, 2025, 97, 'FILM EDITING', NULL, 'Anora', TRUE),
(2024, 2025, 97, 'FILM EDITING', NULL, 'The Brutalist', FALSE),
(2024, 2025, 97, 'FILM EDITING', NULL, 'Conclave', FALSE),
(2024, 2025, 97, 'FILM EDITING', NULL, 'Emilia Pérez', FALSE),
(2024, 2025, 97, 'FILM EDITING', NULL, 'Wicked', FALSE),

-- MAKEUP AND HAIRSTYLING
(2024, 2025, 97, 'MAKEUP AND HAIRSTYLING', NULL, 'A Different Man', FALSE),
(2024, 2025, 97, 'MAKEUP AND HAIRSTYLING', NULL, 'Emilia Pérez', FALSE),
(2024, 2025, 97, 'MAKEUP AND HAIRSTYLING', NULL, 'Nosferatu', FALSE),
(2024, 2025, 97, 'MAKEUP AND HAIRSTYLING', NULL, 'The Substance', TRUE),
(2024, 2025, 97, 'MAKEUP AND HAIRSTYLING', NULL, 'Wicked', FALSE),

-- ADAPTED SCREENPLAY
(2024, 2025, 97, 'ADAPTED SCREENPLAY', NULL, 'A Complete Unknown', FALSE),
(2024, 2025, 97, 'ADAPTED SCREENPLAY', NULL, 'Conclave', TRUE),
(2024, 2025, 97, 'ADAPTED SCREENPLAY', NULL, 'Emilia Pérez', FALSE),
(2024, 2025, 97, 'ADAPTED SCREENPLAY', NULL, 'Nickel Boys', FALSE),
(2024, 2025, 97, 'ADAPTED SCREENPLAY', NULL, 'Sing Sing', FALSE),

-- ORIGINAL SCREENPLAY
(2024, 2025, 97, 'ORIGINAL SCREENPLAY', NULL, 'Anora', TRUE),
(2024, 2025, 97, 'ORIGINAL SCREENPLAY', NULL, 'The Brutalist', FALSE),
(2024, 2025, 97, 'ORIGINAL SCREENPLAY', NULL, 'A Real Pain', FALSE),
(2024, 2025, 97, 'ORIGINAL SCREENPLAY', NULL, 'September 5', FALSE),
(2024, 2025, 97, 'ORIGINAL SCREENPLAY', NULL, 'The Substance', FALSE),

-- COSTUME DESIGN
(2024, 2025, 97, 'COSTUME DESIGN', NULL, 'A Complete Unknown', FALSE),
(2024, 2025, 97, 'COSTUME DESIGN', NULL, 'Conclave', FALSE),
(2024, 2025, 97, 'COSTUME DESIGN', NULL, 'Gladiator II', FALSE),
(2024, 2025, 97, 'COSTUME DESIGN', NULL, 'Nosferatu', FALSE),
(2024, 2025, 97, 'COSTUME DESIGN', NULL, 'Wicked', TRUE),

-- PRODUCTION DESIGN
(2024, 2025, 97, 'PRODUCTION DESIGN', NULL, 'The Brutalist', FALSE),
(2024, 2025, 97, 'PRODUCTION DESIGN', NULL, 'Conclave', FALSE),
(2024, 2025, 97, 'PRODUCTION DESIGN', NULL, 'Dune: Part Two', FALSE),
(2024, 2025, 97, 'PRODUCTION DESIGN', NULL, 'Nosferatu', FALSE),
(2024, 2025, 97, 'PRODUCTION DESIGN', NULL, 'Wicked', TRUE),

-- ORIGINAL SONG
(2024, 2025, 97, 'ORIGINAL SONG', 'El Mal', 'Emilia Pérez', TRUE),
(2024, 2025, 97, 'ORIGINAL SONG', 'The Journey', 'The Six Triple Eight', FALSE),
(2024, 2025, 97, 'ORIGINAL SONG', 'Like a Bird', 'Sing Sing', FALSE),
(2024, 2025, 97, 'ORIGINAL SONG', 'Mi Camino', 'Emilia Pérez', FALSE),
(2024, 2025, 97, 'ORIGINAL SONG', 'Never Too Late', 'Elton John: Never Too Late', FALSE),

-- DOCUMENTARY FEATURE FILM
(2024, 2025, 97, 'DOCUMENTARY FEATURE FILM', NULL, 'No Other Land', TRUE),
(2024, 2025, 97, 'DOCUMENTARY FEATURE FILM', NULL, 'Black Box Diaries', FALSE),
(2024, 2025, 97, 'DOCUMENTARY FEATURE FILM', NULL, 'Porcelain War', FALSE),
(2024, 2025, 97, 'DOCUMENTARY FEATURE FILM', NULL, 'Soundtrack to a Coup d''Etat', FALSE),
(2024, 2025, 97, 'DOCUMENTARY FEATURE FILM', NULL, 'Sugarcane', FALSE),

-- DOCUMENTARY SHORT FILM
(2024, 2025, 97, 'DOCUMENTARY SHORT FILM', NULL, 'The Only Girl in the Orchestra', TRUE),
(2024, 2025, 97, 'DOCUMENTARY SHORT FILM', NULL, 'Death by Numbers', FALSE),
(2024, 2025, 97, 'DOCUMENTARY SHORT FILM', NULL, 'I Am Ready, Warden', FALSE),
(2024, 2025, 97, 'DOCUMENTARY SHORT FILM', NULL, 'Incident', FALSE),
(2024, 2025, 97, 'DOCUMENTARY SHORT FILM', NULL, 'Instruments of a Beating Heart', FALSE),

-- LIVE ACTION SHORT FILM
(2024, 2025, 97, 'LIVE ACTION SHORT FILM', NULL, 'A Lien', FALSE),
(2024, 2025, 97, 'LIVE ACTION SHORT FILM', NULL, 'Anuja', FALSE),
(2024, 2025, 97, 'LIVE ACTION SHORT FILM', NULL, 'I''m Not a Robot', TRUE),
(2024, 2025, 97, 'LIVE ACTION SHORT FILM', NULL, 'The Last Ranger', FALSE),
(2024, 2025, 97, 'LIVE ACTION SHORT FILM', NULL, 'The Man Who Could Not Remain Silent', FALSE),

-- ANIMATED SHORT FILM
(2024, 2025, 97, 'ANIMATED SHORT FILM', NULL, 'Beautiful Men', FALSE),
(2024, 2025, 97, 'ANIMATED SHORT FILM', NULL, 'In the Shadow of the Cypress', TRUE),
(2024, 2025, 97, 'ANIMATED SHORT FILM', NULL, 'Magic Candies', FALSE),
(2024, 2025, 97, 'ANIMATED SHORT FILM', NULL, 'Wander to Wonder', FALSE),
(2024, 2025, 97, 'ANIMATED SHORT FILM', NULL, 'Yuck!', FALSE),

-- ANIMATED FEATURE FILM
(2024, 2025, 97, 'ANIMATED FEATURE FILM', NULL, 'Flow', TRUE),
(2024, 2025, 97, 'ANIMATED FEATURE FILM', NULL, 'Inside Out 2', FALSE),
(2024, 2025, 97, 'ANIMATED FEATURE FILM', NULL, 'Memoir of a Snail', FALSE),
(2024, 2025, 97, 'ANIMATED FEATURE FILM', NULL, 'Wallace & Gromit: Vengeance Most Fowl', FALSE),
(2024, 2025, 97, 'ANIMATED FEATURE FILM', NULL, 'The Wild Robot', FALSE);

-- Dados 2026
INSERT INTO indicados_ao_oscar 
(ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor)
VALUES
-- BEST PICTURE 2026
(2025, 2026, 98, 'BEST PICTURE', NULL, 'Bugonia', FALSE),
(2025, 2026, 98, 'BEST PICTURE', NULL, 'F1: The Movie', FALSE),
(2025, 2026, 98, 'BEST PICTURE', NULL, 'Frankenstein', FALSE),
(2025, 2026, 98, 'BEST PICTURE', NULL, 'Hamnet', FALSE),
(2025, 2026, 98, 'BEST PICTURE', NULL, 'Marty Supreme', FALSE),
(2025, 2026, 98, 'BEST PICTURE', NULL, 'One Battle After Another', TRUE),
(2025, 2026, 98, 'BEST PICTURE', NULL, 'The Secret Agent', FALSE),
(2025, 2026, 98, 'BEST PICTURE', NULL, 'Sentimental Value', FALSE),
(2025, 2026, 98, 'BEST PICTURE', NULL, 'Sinners', FALSE),
(2025, 2026, 98, 'BEST PICTURE', NULL, 'Train Dreams', FALSE),

-- ACTRESS IN A LEADING ROLE
(2025, 2026, 98, 'ACTRESS IN A LEADING ROLE', 'Jessie Buckley', 'Hamnet', TRUE),
(2025, 2026, 98, 'ACTRESS IN A LEADING ROLE', 'Rose Byrne', 'If I Had Legs I''d Kick You', FALSE),
(2025, 2026, 98, 'ACTRESS IN A LEADING ROLE', 'Kate Hudson', 'Song Sung Blue', FALSE),
(2025, 2026, 98, 'ACTRESS IN A LEADING ROLE', 'Renate Reinsve', 'Sentimental Value', FALSE),
(2025, 2026, 98, 'ACTRESS IN A LEADING ROLE', 'Emma Stone', 'Bugonia', FALSE),

-- ACTOR IN A LEADING ROLE
(2025, 2026, 98, 'ACTOR IN A LEADING ROLE', 'Timothée Chalamet', 'Marty Supreme', FALSE),
(2025, 2026, 98, 'ACTOR IN A LEADING ROLE', 'Leonardo DiCaprio', 'One Battle After Another', FALSE),
(2025, 2026, 98, 'ACTOR IN A LEADING ROLE', 'Ethan Hawke', 'Blue Moon', FALSE),
(2025, 2026, 98, 'ACTOR IN A LEADING ROLE', 'Michael B. Jordan', 'Sinners', TRUE),
(2025, 2026, 98, 'ACTOR IN A LEADING ROLE', 'Wagner Moura', 'The Secret Agent', FALSE),

-- DIRECTING
(2025, 2026, 98, 'DIRECTING', 'Chloé Zhao', 'Hamnet', FALSE),
(2025, 2026, 98, 'DIRECTING', 'Josh Safdie', 'Marty Supreme', FALSE),
(2025, 2026, 98, 'DIRECTING', 'Paul Thomas Anderson', 'One Battle After Another', TRUE),
(2025, 2026, 98, 'DIRECTING', 'Joachim Trier', 'Sentimental Value', FALSE),
(2025, 2026, 98, 'DIRECTING', 'Ryan Coogler', 'Sinners', FALSE),

-- ORIGINAL SONG
(2025, 2026, 98, 'ORIGINAL SONG', 'Dear Me', 'Diane Warren: Relentless', FALSE),
(2025, 2026, 98, 'ORIGINAL SONG', 'Golden', 'K-Pop Demon Hunters', TRUE),
(2025, 2026, 98, 'ORIGINAL SONG', 'I Lied to You', 'Sinners', FALSE),
(2025, 2026, 98, 'ORIGINAL SONG', 'Sweet Dreams of Joy', 'Viva Verdi!', FALSE),
(2025, 2026, 98, 'ORIGINAL SONG', 'Train Dreams', 'Train Dreams', FALSE),

-- INTERNATIONAL FEATURE FILM
(2025, 2026, 98, 'INTERNATIONAL FEATURE FILM', NULL, 'It Was Just an Accident', FALSE),
(2025, 2026, 98, 'INTERNATIONAL FEATURE FILM', NULL, 'The Secret Agent', FALSE),
(2025, 2026, 98, 'INTERNATIONAL FEATURE FILM', NULL, 'Sentimental Value', TRUE),
(2025, 2026, 98, 'INTERNATIONAL FEATURE FILM', NULL, 'The Voice of Hind Rajab', FALSE),
(2025, 2026, 98, 'INTERNATIONAL FEATURE FILM', NULL, 'Sirât', FALSE),

-- CINEMATOGRAPHY
(2025, 2026, 98, 'CINEMATOGRAPHY', NULL, 'Sinners', TRUE),
(2025, 2026, 98, 'CINEMATOGRAPHY', NULL, 'One Battle After Another', FALSE),
(2025, 2026, 98, 'CINEMATOGRAPHY', NULL, 'Train Dreams', FALSE),
(2025, 2026, 98, 'CINEMATOGRAPHY', NULL, 'Frankenstein', FALSE),
(2025, 2026, 98, 'CINEMATOGRAPHY', NULL, 'Marty Supreme', FALSE),

-- FILM EDITING
(2025, 2026, 98, 'FILM EDITING', NULL, 'F1: The Movie', FALSE),
(2025, 2026, 98, 'FILM EDITING', NULL, 'Marty Supreme', FALSE),
(2025, 2026, 98, 'FILM EDITING', NULL, 'One Battle After Another', TRUE),
(2025, 2026, 98, 'FILM EDITING', NULL, 'Sentimental Value', FALSE),
(2025, 2026, 98, 'FILM EDITING', NULL, 'Sinners', FALSE),

-- SOUND
(2025, 2026, 98, 'SOUND', NULL, 'F1: The Movie', TRUE),
(2025, 2026, 98, 'SOUND', NULL, 'Frankenstein', FALSE),
(2025, 2026, 98, 'SOUND', NULL, 'One Battle After Another', FALSE),
(2025, 2026, 98, 'SOUND', NULL, 'Sinners', FALSE),
(2025, 2026, 98, 'SOUND', NULL, 'Sirât', FALSE),

-- ORIGINAL SCORE
(2025, 2026, 98, 'ORIGINAL SCORE', NULL, 'Bugonia', FALSE),
(2025, 2026, 98, 'ORIGINAL SCORE', NULL, 'Frankenstein', FALSE),
(2025, 2026, 98, 'ORIGINAL SCORE', NULL, 'Hamnet', FALSE),
(2025, 2026, 98, 'ORIGINAL SCORE', NULL, 'One Battle After Another', FALSE),
(2025, 2026, 98, 'ORIGINAL SCORE', NULL, 'Sinners', TRUE),

-- DOCUMENTARY FEATURE FILM
(2025, 2026, 98, 'DOCUMENTARY FEATURE FILM', NULL, 'Mr. Nobody Against Putin', TRUE),
(2025, 2026, 98, 'DOCUMENTARY FEATURE FILM', NULL, 'Alabama: Life Sentences', FALSE),
(2025, 2026, 98, 'DOCUMENTARY FEATURE FILM', NULL, 'Under Neon Lights', FALSE),
(2025, 2026, 98, 'DOCUMENTARY FEATURE FILM', NULL, 'Breaking Rocks', FALSE),
(2025, 2026, 98, 'DOCUMENTARY FEATURE FILM', NULL, 'The Perfect Neighbor', FALSE),

-- DOCUMENTARY SHORT FILM
(2025, 2026, 98, 'DOCUMENTARY SHORT FILM', NULL, 'Empty Rooms', TRUE),
(2025, 2026, 98, 'DOCUMENTARY SHORT FILM', NULL, 'Armed with a Camera', FALSE),
(2025, 2026, 98, 'DOCUMENTARY SHORT FILM', NULL, 'Children No More', FALSE),
(2025, 2026, 98, 'DOCUMENTARY SHORT FILM', NULL, 'The Devil Never Rests', FALSE),
(2025, 2026, 98, 'DOCUMENTARY SHORT FILM', NULL, 'Perfectly a Strangeness', FALSE),

-- VISUAL EFFECTS
(2025, 2026, 98, 'VISUAL EFFECTS', NULL, 'Avatar: Fire and Ash', TRUE),
(2025, 2026, 98, 'VISUAL EFFECTS', NULL, 'F1: The Movie', FALSE),
(2025, 2026, 98, 'VISUAL EFFECTS', NULL, 'Jurassic World: Rebirth', FALSE),
(2025, 2026, 98, 'VISUAL EFFECTS', NULL, 'The Lost Bus', FALSE),
(2025, 2026, 98, 'VISUAL EFFECTS', NULL, 'Sinners', FALSE),

-- PRODUCTION DESIGN
(2025, 2026, 98, 'PRODUCTION DESIGN', NULL, 'Frankenstein', TRUE),
(2025, 2026, 98, 'PRODUCTION DESIGN', NULL, 'Hamnet', FALSE),
(2025, 2026, 98, 'PRODUCTION DESIGN', NULL, 'Marty Supreme', FALSE),
(2025, 2026, 98, 'PRODUCTION DESIGN', NULL, 'One Battle After Another', FALSE),
(2025, 2026, 98, 'PRODUCTION DESIGN', NULL, 'Sinners', FALSE),

-- ORIGINAL SCREENPLAY
(2025, 2026, 98, 'ORIGINAL SCREENPLAY', NULL, 'Blue Moon', FALSE),
(2025, 2026, 98, 'ORIGINAL SCREENPLAY', NULL, 'It Was Just an Accident', FALSE),
(2025, 2026, 98, 'ORIGINAL SCREENPLAY', NULL, 'Marty Supreme', FALSE),
(2025, 2026, 98, 'ORIGINAL SCREENPLAY', NULL, 'Sentimental Value', FALSE),
(2025, 2026, 98, 'ORIGINAL SCREENPLAY', NULL, 'Sinners', TRUE),

-- ADAPTED SCREENPLAY
(2025, 2026, 98, 'ADAPTED SCREENPLAY', NULL, 'One Battle After Another', TRUE),
(2025, 2026, 98, 'ADAPTED SCREENPLAY', NULL, 'Hamnet', FALSE),
(2025, 2026, 98, 'ADAPTED SCREENPLAY', NULL, 'Bugonia', FALSE),
(2025, 2026, 98, 'ADAPTED SCREENPLAY', NULL, 'Train Dreams', FALSE),
(2025, 2026, 98, 'ADAPTED SCREENPLAY', NULL, 'Frankenstein', FALSE),

-- ACTOR IN A SUPPORTING ROLE
(2025, 2026, 98, 'ACTOR IN A SUPPORTING ROLE', 'Benicio Del Toro', 'One Battle After Another', FALSE),
(2025, 2026, 98, 'ACTOR IN A SUPPORTING ROLE', 'Jacob Elordi', 'Frankenstein', FALSE),
(2025, 2026, 98, 'ACTOR IN A SUPPORTING ROLE', 'Delroy Lindo', 'Sinners', FALSE),
(2025, 2026, 98, 'ACTOR IN A SUPPORTING ROLE', 'Sean Penn', 'One Battle After Another', TRUE),
(2025, 2026, 98, 'ACTOR IN A SUPPORTING ROLE', 'Stellan Skarsgård', 'Sentimental Value', FALSE),

-- LIVE ACTION SHORT FILM (TIE)
(2025, 2026, 98, 'LIVE ACTION SHORT FILM', NULL, 'Butcher''s Stain', FALSE),
(2025, 2026, 98, 'LIVE ACTION SHORT FILM', NULL, 'A Friend of Dorothy', FALSE),
(2025, 2026, 98, 'LIVE ACTION SHORT FILM', NULL, 'Jane Austen''s Period Drama', FALSE),
(2025, 2026, 98, 'LIVE ACTION SHORT FILM', NULL, 'The Singers', TRUE),
(2025, 2026, 98, 'LIVE ACTION SHORT FILM', NULL, 'Two People Exchanging Saliva', TRUE),

-- CASTING (categoria nova)
(2025, 2026, 98, 'CASTING', NULL, 'Hamnet', FALSE),
(2025, 2026, 98, 'CASTING', NULL, 'Marty Supreme', FALSE),
(2025, 2026, 98, 'CASTING', NULL, 'One Battle After Another', TRUE),
(2025, 2026, 98, 'CASTING', NULL, 'The Secret Agent', FALSE),
(2025, 2026, 98, 'CASTING', NULL, 'Sinners', FALSE),

-- MAKEUP AND HAIRSTYLING
(2025, 2026, 98, 'MAKEUP AND HAIRSTYLING', NULL, 'Frankenstein', TRUE),
(2025, 2026, 98, 'MAKEUP AND HAIRSTYLING', NULL, 'Kokuho', FALSE),
(2025, 2026, 98, 'MAKEUP AND HAIRSTYLING', NULL, 'Sinners', FALSE),
(2025, 2026, 98, 'MAKEUP AND HAIRSTYLING', NULL, 'The Smashing Machine', FALSE),
(2025, 2026, 98, 'MAKEUP AND HAIRSTYLING', NULL, 'The Ugly Stepsister', FALSE),

-- COSTUME DESIGN
(2025, 2026, 98, 'COSTUME DESIGN', NULL, 'Avatar: Fire and Ash', FALSE),
(2025, 2026, 98, 'COSTUME DESIGN', NULL, 'Frankenstein', TRUE),
(2025, 2026, 98, 'COSTUME DESIGN', NULL, 'Hamnet', FALSE),
(2025, 2026, 98, 'COSTUME DESIGN', NULL, 'Marty Supreme', FALSE),
(2025, 2026, 98, 'COSTUME DESIGN', NULL, 'Sinners', FALSE),

-- ANIMATED SHORT FILM
(2025, 2026, 98, 'ANIMATED SHORT FILM', NULL, 'Butterfly', FALSE),
(2025, 2026, 98, 'ANIMATED SHORT FILM', NULL, 'Forevergreen', FALSE),
(2025, 2026, 98, 'ANIMATED SHORT FILM', NULL, 'The Girl Who Cried Pearls', TRUE),
(2025, 2026, 98, 'ANIMATED SHORT FILM', NULL, 'Retirement Plan', FALSE),
(2025, 2026, 98, 'ANIMATED SHORT FILM', NULL, 'The Three Sisters', FALSE),

-- ANIMATED FEATURE FILM
(2025, 2026, 98, 'ANIMATED FEATURE FILM', NULL, 'K-Pop Demon Hunters', TRUE),
(2025, 2026, 98, 'ANIMATED FEATURE FILM', NULL, 'Zootopia 2', FALSE),
(2025, 2026, 98, 'ANIMATED FEATURE FILM', NULL, 'Arco', FALSE),
(2025, 2026, 98, 'ANIMATED FEATURE FILM', NULL, 'Elio', FALSE),
(2025, 2026, 98, 'ANIMATED FEATURE FILM', NULL, 'Little Amélie', FALSE),

-- ACTRESS IN A SUPPORTING ROLE
(2025, 2026, 98, 'ACTRESS IN A SUPPORTING ROLE', 'Elle Fanning', 'Sentimental Value', FALSE),
(2025, 2026, 98, 'ACTRESS IN A SUPPORTING ROLE', 'Inga Ibsdotter Lilleaas', 'Sentimental Value', FALSE),
(2025, 2026, 98, 'ACTRESS IN A SUPPORTING ROLE', 'Amy Madigan', 'The Hour of Evil', TRUE),
(2025, 2026, 98, 'ACTRESS IN A SUPPORTING ROLE', 'Wunmi Mosaku', 'Sinners', FALSE),
(2025, 2026, 98, 'ACTRESS IN A SUPPORTING ROLE', 'Teyana Taylor', 'One Battle After Another', FALSE);
```
</details>
