use oscar_database;

-- Nível 1: Primeiros Passos
-- 1.1 Quantos registros existem na tabela de indicados ao Oscar?
SELECT COUNT(*) 
FROM indicados_ao_oscar;

-- 1.2.1 Quais são as diferentes categorias de premiação que existem no banco de dados? Liste todas as categorias únicas.
SELECT DISTINCT categoria 
FROM indicados_ao_oscar 
ORDER BY categoria;

-- 1.3 Qual foi o primeiro ano de cerimônia do Oscar registrado na base?
SELECT DISTINCT ano_cerimonia 
FROM indicados_ao_oscar 
ORDER BY ano_cerimonia;

-- 1.4 Qual foi o último ano de cerimônia registrado na base?
SELECT DISTINCT ano_cerimonia 
FROM indicados_ao_oscar 
ORDER BY ano_cerimonia DESC;

-- 1.5 Quantas cerimônias do Oscar estão registradas no total?
SELECT DISTINCT edicao_cerimonia 
FROM indicados_ao_oscar 
ORDER BY edicao_cerimonia DESC;

-- 1.6 Atualize os registros da tabela com os dados do Oscar 2025 e 2026 (pesquise os vencedores e adicione-os).
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

-- Nível 2: Explorando Categorias
-- 2.1 Quantas indicações existem para cada categoria? Agrupe por categoria e ordene da mais frequente para a menos frequente.
-- 2.2 Qual categoria teve mais indicações ao longo da história do Oscar?
SELECT categoria as 'Categoria', COUNT(categoria) as 'Quantidade de indicações' 
FROM indicados_ao_oscar 
GROUP BY categoria 
ORDER BY COUNT(categoria) DESC;

-- 2.3 Qual categoria teve menos indicações ao longo da história?
SELECT categoria as 'Categoria', COUNT(categoria) as 'Quantidade de indicações' 
FROM indicados_ao_oscar 
GROUP BY categoria 
ORDER BY COUNT(categoria) ASC, categoria ASC;

-- 2.4 A partir de que ano a categoria "ACTRESS" deixou de existir? (Dica: procure a última cerimônia com essa categoria)
SELECT DISTINCT ano_cerimonia, categoria 
FROM indicados_ao_oscar 
WHERE categoria = 'ACTRESS' 
ORDER BY ano_cerimonia DESC;

-- 2.5 Quais categorias existiam na primeira cerimônia (1928) e não existem mais hoje?
SELECT DISTINCT categoria, ano_cerimonia
FROM indicados_ao_oscar 
WHERE ano_cerimonia = 1928 AND categoria NOT IN (
    SELECT DISTINCT categoria
    FROM indicados_ao_oscar
    WHERE ano_cerimonia = 2026);

-- 2.6 Liste todas as categorias que contêm a palavra "DIRECTING" no nome.
SELECT DISTINCT categoria 
FROM indicados_ao_oscar 
WHERE categoria LIKE '%DIRECTING%';

-- Nível 3: Atores e Atrizes Famosos
-- 3.1 Quantas vezes Natalie Portman foi indicada ao Oscar?
SELECT COUNT(*) FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Natalie Portman%";

-- 3.2 Quantos Oscars Natalie Portman ganhou?
SELECT COUNT(*) FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Natalie Portman%"
AND 
vencedor = true;

-- 3.3 Em quais anos e por quais filmes Natalie Portman foi indicada?
SELECT nome_indicado, ano_cerimonia, nome_filme
FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Natalie Portman%";

-- 3.4 Liste todas as indicações de Natalie Portman mostrando: ano, categoria, filme e se venceu.
SELECT ano_cerimonia, categoria, nome_filme, vencedor
FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Natalie Portman%";

-- 3.5 Quantas vezes Viola Davis foi indicada ao Oscar?
SELECT COUNT(*) FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Viola Davis%";

-- 3.6 Quantos Oscars Viola Davis ganhou?
SELECT COUNT(*) FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Viola Davis%"
AND vencedor = true;

-- 3.7 Por quais filmes Viola Davis foi indicada?
SELECT nome_filme
FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Viola Davis%";

-- 3.8 Amy Adams já ganhou algum Oscar?
SELECT * 
FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Amy Adams%" 
AND vencedor = true;

-- 3.9 Quantas vezes Amy Adams foi indicada sem ganhar?
SELECT COUNT(*) 
FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Amy Adams%" 
AND vencedor = FALSE;

-- 3.10 Denzel Washington já ganhou algum Oscar?
SELECT * 
FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Denzel Washington%" 
AND vencedor = true;

-- 3.11 Quantas vezes Denzel Washington foi indicado ao Oscar?
SELECT COUNT(*)
FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Denzel Washington%";

-- 3.12 Liste todos os Oscars que Denzel Washington ganhou (ano, categoria, filme).
SELECT ano_cerimonia, categoria, nome_filme, vencedor
FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Denzel Washington%"
AND vencedor = true;

-- Nível 4: Vencedores Históricos
-- 4.1 Quem ganhou o primeiro Oscar para Melhor Atriz (ACTRESS)? Em que ano e por qual filme?
SELECT nome_indicado, ano_cerimonia, nome_filme
FROM  indicados_ao_oscar
WHERE categoria = 'ACTRESS'
AND vencedor = true
ORDER BY ano_cerimonia
LIMIT 1;

-- 4.2 Quem ganhou o primeiro Oscar para Melhor Ator (ACTOR)? Em que ano e por qual filme?
SELECT nome_indicado, ano_cerimonia, nome_filme
FROM  indicados_ao_oscar
WHERE categoria = 'ACTOR'
AND vencedor = true
ORDER BY ano_cerimonia
LIMIT 1;

-- 4.3 Quantos vencedores existem ao todo na base de dados?
SELECT COUNT(*)
FROM indicados_ao_oscar
WHERE vencedor = true;

-- 4.4 Liste todos os filmes que ganharam o Oscar de Melhor Filme (categoria "OUTSTANDING PICTURE" ou "BEST PICTURE").
SELECT nome_filme
FROM indicados_ao_oscar
WHERE categoria in ("OUTSTANDING PICTURE", "BEST PICTURE")
AND vencedor = true
ORDER BY nome_filme;

-- 4.5 Quantos filmes diferentes já ganharam o Oscar?
SELECT COUNT(DISTINCT nome_filme)
FROM indicados_ao_oscar
WHERE categoria in ("OUTSTANDING PICTURE", "BEST PICTURE")
AND vencedor = true
ORDER BY nome_filme;

-- Nível 5: Análise de Indicações
-- 5.1 Quais atores/atrizes foram indicados mais de uma vez? Liste o nome e o número de indicações.
SELECT nome_indicado, COUNT(*) AS "Quantidade de indicações"
FROM indicados_ao_oscar
WHERE categoria LIKE '%ACTRESS%' OR categoria LIKE '%ACTOR%'
GROUP BY nome_indicado
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC;

-- 5.2 Qual ator ou atriz tem o maior número de indicações na história do Oscar?
SELECT nome_indicado, COUNT(*) AS "Quantidade de indicações"
FROM indicados_ao_oscar
WHERE categoria LIKE '%ACTRESS%' OR categoria LIKE '%ACTOR%'
GROUP BY nome_indicado
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC
LIMIT 1;

-- 5.3 Quais atores foram indicados mais de 3 vezes, mas nunca ganharam?
SELECT nome_indicado, COUNT(*) AS "Quantidade de indicações"
FROM indicados_ao_oscar
WHERE categoria LIKE '%ACTRESS%' OR categoria LIKE '%ACTOR%'
GROUP BY nome_indicado
HAVING COUNT(*) > 3
AND SUM(CASE WHEN vencedor = true THEN 1 ELSE 0 END) = 0
ORDER BY COUNT(*) DESC;

-- 5.4 Encontre todos os artistas que foram indicados em categorias diferentes (ex: ator e diretor).
SELECT nome_indicado, COUNT(DISTINCT categoria) AS quantidade_categorias
FROM indicados_ao_oscar
GROUP BY nome_indicado
HAVING COUNT(DISTINCT categoria) > 1
ORDER BY quantidade_categorias DESC;

-- 5.5 Quantos indicados têm exatamente 1 indicação na história?
SELECT COUNT(*)
FROM (
    SELECT nome_indicado
    FROM indicados_ao_oscar
    GROUP BY nome_indicado
    HAVING COUNT(*) = 1
) tabela_temporaria;

-- 5.6 Qual o maior números de indicados em um único ano? Essa é uma pergunta franca.
SELECT ano_cerimonia, COUNT(*)
FROM indicados_ao_oscar
GROUP BY ano_cerimonia
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Nível 6: Análise de Filmes
-- 6.1 A série de filmes Toy Story ganhou Oscars em quais anos?
SELECT ano_cerimonia, categoria, nome_filme
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%Toy Story%'
AND vencedor = true;

-- 6.2 Quantas indicações a franquia Toy Story recebeu no total?
SELECT COUNT(*) AS "Quantidade de indicações"
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%Toy Story%';

-- 6.3 Em quais categorias os filmes Toy Story foram indicados?
SELECT DISTINCT categoria
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%Toy Story%'
ORDER BY categoria;

-- 6.4 Em qual edição do Oscar o filme "Crash" concorreu?
SELECT DISTINCT edicao_cerimonia
FROM indicados_ao_oscar
WHERE nome_filme = 'Crash';

-- 6.5 Quantas indicações o filme "Crash" recebeu?
SELECT COUNT(*) AS "Quantidade de indicações"
FROM indicados_ao_oscar
WHERE nome_filme = 'Crash';

-- 6.6 "Crash" ganhou o Oscar de Melhor Filme?
SELECT vencedor, categoria, nome_filme
FROM indicados_ao_oscar
WHERE nome_filme = 'Crash' AND categoria = 'BEST PICTURE'
AND vencedor = true;

-- 6.7 O filme "Central do Brasil" aparece no banco de dados?
SELECT *
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%"Central do Brasil"%' OR nome_filme LIKE '%Central Station%';

-- 6.8 Se sim, quantas indicações "Central do Brasil" recebeu?
SELECT COUNT(*) AS "Quantidade de indicações"
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%"Central do Brasil"%' OR nome_filme LIKE '%Central Station%';
