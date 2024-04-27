DROP SCHEMA IF EXISTS pokedokuDB;
DROP USER IF EXISTS 'spq'@'localhost';

CREATE SCHEMA pokedokuDB;
CREATE USER IF NOT EXISTS 'spq'@'localhost' IDENTIFIED BY 'spq';
USE pokedokuDB;

GRANT ALL ON pokedokuDB.* TO 'spq'@'localhost';

-- Crear la tabla Usuarios
CREATE TABLE Usuarios (
    Id INT PRIMARY KEY,
    Correo VARCHAR(255),
    Contra VARCHAR(255),
    Nivel INT
);

-- Crear la tabla Regiones
CREATE TABLE Regiones (
    Id INT PRIMARY KEY,
    Nombre VARCHAR(255)
);

-- Crear la tabla Tipos
CREATE TABLE Tipos (
    Id INT PRIMARY KEY,
    Nombre VARCHAR(255)
);

-- Crear la tabla Pokemons
CREATE TABLE Pokemons (
    Nombre VARCHAR(255),
    Tipo1 INT,
    Tipo2 INT,
    Region INT,
    FOREIGN KEY (Tipo1) REFERENCES Tipos(Id),
    FOREIGN KEY (Tipo2) REFERENCES Tipos(Id),
    FOREIGN KEY (Region) REFERENCES Regiones(Id)
);

INSERT INTO Usuarios (Id, Correo, Contra, Nivel) VALUES 
(1, 'o.perez@opendeusto.es', 'o.perez', 2),
(2, 'xabier.catalan@opendeusto.es', 'xabier.catalan', 1);


INSERT INTO Tipos (Id, Nombre) VALUES
(1, 'NORMAL'),
(2, 'FUEGO'),
(3, 'AGUA'),
(4, 'PLANTA'),
(5, 'ELÉCTRICO'),
(6, 'HIELO'),
(7, 'LUCHA'),
(8, 'VENENO'),
(9, 'TIERRA'),
(10, 'VOLADOR'),
(11, 'PSÍQUICO'),
(12, 'BICHO'),
(13, 'ROCA'),
(14, 'FANTASMA'),
(15, 'DRAGÓN'),
(16, 'SINIESTRO'),
(17, 'ACERO'),
(18, 'HADA'),
(19, 'SINGULAR');




INSERT INTO Regiones (Id, Nombre) VALUES (1, 'KANTO');
INSERT INTO Regiones (Id, Nombre) VALUES (2, 'JOHTO');
INSERT INTO Regiones (Id, Nombre) VALUES (3, 'HOENN');
INSERT INTO Regiones (Id, Nombre) VALUES (4, 'SINNOH');
INSERT INTO Regiones (Id, Nombre) VALUES (5, 'UNOVA');
INSERT INTO Regiones (Id, Nombre) VALUES (6, 'KALOS');
INSERT INTO Regiones (Id, Nombre) VALUES (7, 'ALOLA');
INSERT INTO Regiones (Id, Nombre) VALUES (8, 'GALAR');
INSERT INTO Regiones (Id, Nombre) VALUES (9, 'PALDEA');




-- 1. BULBASAUR (Tipo Planta/Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BULBASAUR', 4, 8, 1);

-- 2. IVYSAUR (Tipo Planta/Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('IVYSAUR', 4, 8, 1);

-- 3. VENUSAUR (Tipo Planta/Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VENUSAUR', 4, 8, 1);

-- 4. CHARMANDER (Tipo Fuego), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CHARMANDER', 2, 19, 1);

-- 5. CHARMELEON (Tipo Fuego), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CHARMELEON', 2, 19, 1);

-- 6. CHARIZARD (Tipo Fuego/Volador), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CHARIZARD', 2, 10, 1);

-- 7. SQUIRTLE (Tipo Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SQUIRTLE', 3, 19, 1);

-- 8. WARTORTLE (Tipo Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WARTORTLE', 3, 19, 1);

-- 9. BLASTOISE (Tipo Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BLASTOISE', 3, 19, 1);

-- 10. CATERPIE (Tipo Bicho), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CATERPIE', 12, 19, 1);

-- 11. METAPOD (Tipo Bicho), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('METAPOD', 12, 19, 1);

-- 12. BUTTERFREE (Tipo Bicho/Volador), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BUTTERFREE', 12, 10, 1);

-- 13. WEEDLE (Tipo Bicho/Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WEEDLE', 12, 8, 1);

-- 14. KAKUNA (Tipo Bicho/Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KAKUNA', 12, 8, 1);

-- 15. BEEDRILL (Tipo Bicho/Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BEEDRILL', 12, 8, 1);

-- 16. PIDGEY (Tipo Normal/Volador), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PIDGEY', 1, 10, 1);

-- 17. PIDGEOTTO (Tipo Normal/Volador), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PIDGEOTTO', 1, 10, 1);

-- 18. PIDGEOT (Tipo Normal/Volador), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PIDGEOT', 1, 10, 1);

-- 19. RATTATA (Tipo Normal), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('RATTATA', 1, 19, 1);

-- 20. RATICATE (Tipo Normal), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('RATICATE', 1, 19, 1);

-- 21. SPEAROW (Tipo Normal/Volador), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SPEAROW', 1, 10, 1);

-- 22. FEAROW (Tipo Normal/Volador), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FEAROW', 1, 10, 1);

-- 23. EKANS (Tipo Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('EKANS', 8, 19, 1);

-- 24. ARBOK (Tipo Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ARBOK', 8, 19, 1);

-- 25. PIKACHU (Tipo Eléctrico), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PIKACHU', 5, 19, 1);

-- 26. RAICHU (Tipo Eléctrico), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('RAICHU', 5, 19, 1);

-- 27. SANDSHREW (Tipo Tierra), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SANDSHREW', 9, 19, 1);

-- 28. SANDSLASH (Tipo Tierra), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SANDSLASH', 9, 19, 1);

-- 29. NIDORAN♀ (Tipo Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('NIDORAN♀', 8, 19, 1);

-- 30. NIDORINA (Tipo Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('NIDORINA', 8, 19, 1);

-- 31. NIDOQUEEN (Tipo Veneno/Tierra), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('NIDOQUEEN', 8, 9, 1);

-- 32. NIDORAN♂ (Tipo Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('NIDORAN♂', 8, 19, 1);

-- 33. NIDORINO (Tipo Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('NIDORINO', 8, 19, 1);

-- 34. NIDOKING (Tipo Veneno/Tierra), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('NIDOKING', 8, 9, 1);

-- 35. CLEFAIRY (Tipo Hada), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CLEFAIRY', 18, 19, 1);

-- 36. CLEFABLE (Tipo Hada), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CLEFABLE', 18, 19, 1);

-- 37. VULPIX (Tipo Fuego), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VULPIX', 2, 19, 1);

-- 38. NINETALES (Tipo Fuego), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('NINETALES', 2, 19, 1);

-- 39. JIGGLYPUFF (Tipo Normal/Hada), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('JIGGLYPUFF', 1, 18, 1);

-- 40. WIGGLYTUFF (Tipo Normal/Hada), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WIGGLYTUFF', 1, 18, 1);

-- 41. ZUBAT (Tipo Veneno/Volador), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ZUBAT', 8, 10, 1);

-- 42. GOLBAT (Tipo Veneno/Volador), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GOLBAT', 8, 10, 1);

-- 43. ODDISH (Tipo Planta/Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ODDISH', 4, 8, 1);

-- 44. GLOOM (Tipo Planta/Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GLOOM', 4, 8, 1);

-- 45. VILEPLUME (Tipo Planta/Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VILEPLUME', 4, 8, 1);

-- 46. PARAS (Tipo Bicho/Planta), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PARAS', 12, 4, 1);

-- 47. PARASECT (Tipo Bicho/Planta), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PARASECT', 12, 4, 1);

-- 48. VENONAT (Tipo Bicho/Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VENONAT', 12, 8, 1);

-- 49. VENOMOTH (Tipo Bicho/Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VENOMOTH', 12, 8, 1);

-- 50. DIGLETT (Tipo Tierra), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DIGLETT', 9, 19, 1);

-- 51. DUGTRIO (Tipo Tierra), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DUGTRIO', 9, 19, 1);

-- 52. MEOWTH (Tipo Normal), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MEOWTH', 1, 19, 1);

-- 53. PERSIAN (Tipo Normal), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PERSIAN', 1, 19, 1);

-- 54. PSYDUCK (Tipo Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PSYDUCK', 3, 19, 1);

-- 55. GOLDUCK (Tipo Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GOLDUCK', 3, 19, 1);

-- 56. MANKEY (Tipo Lucha), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MANKEY', 7, 19, 1);

-- 57. PRIMEAPE (Tipo Lucha), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PRIMEAPE', 7, 19, 1);

-- 58. GROWLITHE (Tipo Fuego), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GROWLITHE', 2, 19, 1);

-- 59. ARCANINE (Tipo Fuego), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ARCANINE', 2, 19, 1);

-- 60. POLIWAG (Tipo Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('POLIWAG', 3, 19, 1);

-- 61. POLIWHIRL (Tipo Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('POLIWHIRL', 3, 19, 1);

-- 62. POLIWRATH (Tipo Agua/Lucha), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('POLIWRATH', 3, 7, 1);

-- 63. ABRA (Tipo Psíquico), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ABRA', 11, 19, 1);

-- 64. KADABRA (Tipo Psíquico), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KADABRA', 11, 19, 1);

-- 65. ALAKAZAM (Tipo Psíquico), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ALAKAZAM', 11, 19, 1);

-- 66. MACHOP (Tipo Lucha), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MACHOP', 7, 19, 1);

-- 67. MACHOKE (Tipo Lucha), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MACHOKE', 7, 19, 1);

-- 68. MACHAMP (Tipo Lucha), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MACHAMP', 7, 19, 1);

-- 69. BELLSPROUT (Tipo Planta/Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BELLSPROUT', 4, 8, 1);

-- 70. WEEPINBELL (Tipo Planta/Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WEEPINBELL', 4, 8, 1);

-- 71. VICTREEBEL (Tipo Planta/Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VICTREEBEL', 4, 8, 1);

-- 72. TENTACOOL (Tipo Agua/Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TENTACOOL', 3, 8, 1);

-- 73. TENTACRUEL (Tipo Agua/Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TENTACRUEL', 3, 8, 1);

-- 74. GEODUDE (Tipo Roca/Tierra), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GEODUDE', 13, 9, 1);

-- 75. GRAVELER (Tipo Roca/Tierra), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GRAVELER', 13, 9, 1);

-- 76. GOLEM (Tipo Roca/Tierra), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GOLEM', 13, 9, 1);

-- 77. PONYTA (Tipo Fuego), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PONYTA', 2, 19, 1);

-- 78. RAPIDASH (Tipo Fuego), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('RAPIDASH', 2, 19, 1);

-- 79. SLOWPOKE (Tipo Agua/Psíquico), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SLOWPOKE', 3, 11, 1);

-- 80. SLOWBRO (Tipo Agua/Psíquico), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SLOWBRO', 3, 11, 1);

-- 81. MAGNEMITE (Tipo Eléctrico/Acero), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MAGNEMITE', 5, 17, 1);

-- 82. MAGNETON (Tipo Eléctrico/Acero), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MAGNETON', 5, 17, 1);

-- 83. FARFETCH'D (Tipo Normal/Volador), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FARFETCH''D', 1, 10, 1);

-- 84. DODUO (Tipo Normal/Volador), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DODUO', 1, 10, 1);

-- 85. DODRIO (Tipo Normal/Volador), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DODRIO', 1, 10, 1);

-- 86. SEEL (Tipo Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SEEL', 3, 19, 1);

-- 87. DEWGONG (Tipo Agua/Hielo), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DEWGONG', 3, 6, 1);

-- 88. GRIMER (Tipo Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GRIMER', 8, 19, 1);

-- 89. MUK (Tipo Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MUK', 8, 19, 1);

-- 90. SHELLDER (Tipo Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SHELLDER', 3, 19, 1);

-- 91. CLOYSTER (Tipo Agua/Hielo), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CLOYSTER', 3, 6, 1);

-- 92. GASTLY (Tipo Fantasma/Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GASTLY', 14, 8, 1);

-- 93. HAUNTER (Tipo Fantasma/Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HAUNTER', 14, 8, 1);

-- 94. GENGAR (Tipo Fantasma/Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GENGAR', 14, 8, 1);

-- 95. ONIX (Tipo Roca/Tierra), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ONIX', 13, 9, 1);

-- 96. DROWZEE (Tipo Psíquico), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DROWZEE', 11, 19, 1);

-- 97. HYPNO (Tipo Psíquico), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HYPNO', 11, 19, 1);

-- 98. KRABBY (Tipo Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KRABBY', 3, 19, 1);

-- 99. KINGLER (Tipo Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KINGLER', 3, 19, 1);

-- 100. VOLTORB (Tipo Eléctrico), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VOLTORB', 5, 19, 1);

-- 101. ELECTRODE (Tipo Eléctrico), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ELECTRODE', 5, 19, 1);

-- 102. EXEGGCUTE (Tipo Planta/Psíquico), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('EXEGGCUTE', 4, 11, 1);

-- 103. EXEGGUTOR (Tipo Planta/Psíquico), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('EXEGGUTOR', 4, 11, 1);

-- 104. CUBONE (Tipo Tierra), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CUBONE', 9, 19, 1);

-- 105. MAROWAK (Tipo Tierra), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MAROWAK', 9, 19, 1);

-- 106. HITMONLEE (Tipo Lucha), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HITMONLEE', 7, 19, 1);

-- 107. HITMONCHAN (Tipo Lucha), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HITMONCHAN', 7, 19, 1);

-- 108. LICKITUNG (Tipo Normal), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LICKITUNG', 1, 19, 1);

-- 109. KOFFING (Tipo Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KOFFING', 8, 19, 1);

-- 110. WEEZING (Tipo Veneno), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WEEZING', 8, 19, 1);

-- 111. RHYHORN (Tipo Tierra/Roca), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('RHYHORN', 9, 13, 1);

-- 112. RHYDON (Tipo Tierra/Roca), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('RHYDON', 9, 13, 1);

-- 113. CHANSEY (Tipo Normal), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CHANSEY', 1, 19, 1);

-- 114. TANGELA (Tipo Planta), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TANGELA', 4, 19, 1);

-- 115. KANGASKHAN (Tipo Normal), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KANGASKHAN', 1, 19, 1);

-- 116. HORSEA (Tipo Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HORSEA', 3, 19, 1);

-- 117. SEADRA (Tipo Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SEADRA', 3, 19, 1);

-- 118. GOLDEEN (Tipo Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GOLDEEN', 3, 19, 1);

-- 119. SEAKING (Tipo Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SEAKING', 3, 19, 1);

-- 120. STARYU (Tipo Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('STARYU', 3, 19, 1);

-- 121. STARMIE (Tipo Agua/Psíquico), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('STARMIE', 3, 11, 1);

-- 122. MR. MIME (Tipo Psíquico/Hada), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MR. MIME', 11, 18, 1);

-- 123. SCYTHER (Tipo Bicho/Volador), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SCYTHER', 12, 10, 1);

-- 124. JYNX (Tipo Hielo/Psíquico), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('JYNX', 6, 11, 1);

-- 125. ELECTABUZZ (Tipo Eléctrico), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ELECTABUZZ', 5, 19, 1);

-- 126. MAGMAR (Tipo Fuego), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MAGMAR', 2, 19, 1);

-- 127. PINSIR (Tipo Bicho), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PINSIR', 12, 19, 1);

-- 128. TAUROS (Tipo Normal), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TAUROS', 1, 19, 1);

-- 129. MAGIKARP (Tipo Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MAGIKARP', 3, 19, 1);

-- 130. GYARADOS (Tipo Agua/Volador), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GYARADOS', 3, 10, 1);

-- 131. LAPRAS (Tipo Agua/Hielo), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LAPRAS', 3, 6, 1);

-- 132. DITTO (Tipo Normal), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DITTO', 1, 19, 1);

-- 133. EEVEE (Tipo Normal), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('EEVEE', 1, 19, 1);

-- 134. VAPOREON (Tipo Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VAPOREON', 3, 19, 1);

-- 135. JOLTEON (Tipo Eléctrico), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('JOLTEON', 5, 19, 1);

-- 136. FLAREON (Tipo Fuego), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FLAREON', 2, 19, 1);

-- 137. PORYGON (Tipo Normal), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PORYGON', 1, 19, 1);

-- 138. OMANYTE (Tipo Roca/Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('OMANYTE', 13, 3, 1);

-- 139. OMASTAR (Tipo Roca/Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('OMASTAR', 13, 3, 1);

-- 140. KABUTO (Tipo Roca/Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KABUTO', 13, 3, 1);

-- 141. KABUTOPS (Tipo Roca/Agua), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KABUTOPS', 13, 3, 1);

-- 142. AERODACTYL (Tipo Roca/Volador), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('AERODACTYL', 13, 10, 1);

-- 143. SNORLAX (Tipo Normal), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SNORLAX', 1, 19, 1);

-- 144. ARTICUNO (Tipo Hielo/Volador), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ARTICUNO', 6, 10, 1);

-- 145. ZAPDOS (Tipo Eléctrico/Volador), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ZAPDOS', 5, 10, 1);

-- 146. MOLTRES (Tipo Fuego/Volador), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MOLTRES', 2, 10, 1);

-- 147. DRATINI (Tipo Dragón), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DRATINI', 15, 19, 1);

-- 148. DRAGONAIR (Tipo Dragón), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DRAGONAIR', 15, 19, 1);

-- 149. DRAGONITE (Tipo Dragón/Volador), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DRAGONITE', 15, 10, 1);

-- 150. MEWTWO (Tipo Psíquico), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MEWTWO', 11, 19, 1);

-- 151. MEW (Tipo Psíquico), Región Kanto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MEW', 11, 19, 1);

-- 152. CHIKORITA (Tipo Planta), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CHIKORITA', 4, 19, 2);

-- 153. BAYLEEF (Tipo Planta), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BAYLEEF', 4, 19, 2);

-- 154. MEGANIUM (Tipo Planta), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MEGANIUM', 4, 19, 2);

-- 155. CYNDAQUIL (Tipo Fuego), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CYNDAQUIL', 2, 19, 2);

-- 156. QUILAVA (Tipo Fuego), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('QUILAVA', 2, 19, 2);

-- 157. TYPHLOSION (Tipo Fuego), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TYPHLOSION', 2, 19, 2);

-- 158. TOTODILE (Tipo Agua), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TOTODILE', 3, 19, 2);

-- 159. CROCONAW (Tipo Agua), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CROCONAW', 3, 19, 2);

-- 160. FERALIGATR (Tipo Agua), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FERALIGATR', 3, 19, 2);

-- 161. SENTRET (Tipo Normal), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SENTRET', 1, 19, 2);

-- 162. FURRET (Tipo Normal), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FURRET', 1, 19, 2);

-- 163. HOOTHOOT (Tipo Normal/Volador), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HOOTHOOT', 1, 10, 2);

-- 164. NOCTOWL (Tipo Normal/Volador), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('NOCTOWL', 1, 10, 2);

-- 165. LEDYBA (Tipo Bicho/Volador), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LEDYBA', 12, 10, 2);

-- 166. LEDIAN (Tipo Bicho/Volador), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LEDIAN', 12, 10, 2);

-- 167. SPINARAK (Tipo Bicho/Veneno), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SPINARAK', 12, 8, 2);

-- 168. ARIADOS (Tipo Bicho/Veneno), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ARIADOS', 12, 8, 2);

-- 169. CROBAT (Tipo Veneno/Volador), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CROBAT', 8, 10, 2);

-- 170. CHINCHOU (Tipo Agua/Eléctrico), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CHINCHOU', 3, 5, 2);

-- 171. LANTURN (Tipo Agua/Eléctrico), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LANTURN', 3, 5, 2);

-- 172. PICHU (Tipo Eléctrico), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PICHU', 5, 19, 2);

-- 173. CLEFFA (Tipo Hada), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CLEFFA', 18, 19, 2);

-- 174. IGGLYBUFF (Tipo Normal/Hada), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('IGGLYBUFF', 1, 18, 2);

-- 175. TOGEPI (Tipo Hada), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TOGEPI', 18, 19, 2);

-- 176. TOGETIC (Tipo Hada/Volador), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TOGETIC', 18, 10, 2);

-- 177. NATU (Tipo Psíquico/Volador), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('NATU', 11, 10, 2);

-- 178. XATU (Tipo Psíquico/Volador), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('XATU', 11, 10, 2);

-- 179. MAREEP (Tipo Eléctrico), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MAREEP', 5, 19, 2);

-- 180. FLAAFFY (Tipo Eléctrico), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FLAAFFY', 5, 19, 2);

-- 181. AMPHAROS (Tipo Eléctrico), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('AMPHAROS', 5, 19, 2);

-- 182. BELLOSSOM (Tipo Planta), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BELLOSSOM', 4, 19, 2);

-- 183. MARILL (Tipo Agua/Hada), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MARILL', 3, 18, 2);

-- 184. AZUMARILL (Tipo Agua/Hada), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('AZUMARILL', 3, 18, 2);

-- 185. SUDOWOODO (Tipo Roca), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SUDOWOODO', 13, 19, 2);

-- 186. POLITOED (Tipo Agua), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('POLITOED', 3, 19, 2);

-- 187. HOPPIP (Tipo Planta/Volador), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HOPPIP', 4, 10, 2);

-- 188. SKIPLOOM (Tipo Planta/Volador), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SKIPLOOM', 4, 10, 2);

-- 189. JUMPLUFF (Tipo Planta/Volador), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('JUMPLUFF', 4, 10, 2);

-- 190. AIPOM (Tipo Normal), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('AIPOM', 1, 19, 2);

-- 191. SUNKERN (Tipo Planta), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SUNKERN', 4, 19, 2);

-- 192. SUNFLORA (Tipo Planta), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SUNFLORA', 4, 19, 2);

-- 193. YANMA (Tipo Bicho/Volador), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('YANMA', 12, 10, 2);

-- 194. WOOPER (Tipo Agua/Tierra), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WOOPER', 3, 9, 2);

-- 195. QUAGSIRE (Tipo Agua/Tierra), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('QUAGSIRE', 3, 9, 2);

-- 196. ESPEON (Tipo Psíquico), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ESPEON', 11, 19, 2);

-- 197. UMBREON (Tipo Siniestro), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('UMBREON', 16, 19, 2);

-- 198. MURKROW (Tipo Siniestro/Volador), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MURKROW', 16, 10, 2);

-- 199. SLOWKING (Tipo Agua/Psíquico), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SLOWKING', 3, 11, 2);

-- 200. MISDREAVUS (Tipo Fantasma), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MISDREAVUS', 14, 19, 2);

-- 201. UNOWN (Tipo Psíquico), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('UNOWN', 11, 19, 2);

-- 202. WOBBUFFET (Tipo Psíquico), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WOBBUFFET', 11, 19, 2);

-- 203. GIRAFARIG (Tipo Normal/Psíquico), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GIRAFARIG', 1, 11, 2);

-- 204. PINECO (Tipo Bicho), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PINECO', 12, 19, 2);

-- 205. FORRETRESS (Tipo Bicho/Acero), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FORRETRESS', 12, 17, 2);

-- 206. DUNSPARCE (Tipo Normal), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DUNSPARCE', 1, 19, 2);

-- 207. GLIGAR (Tipo Tierra/Volador), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GLIGAR', 9, 10, 2);

-- 208. STEELIX (Tipo Acero/Tierra), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('STEELIX', 17, 9, 2);

-- 209. SNUBBULL (Tipo Hada), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SNUBBULL', 18, 19, 2);

-- 210. GRANBULL (Tipo Hada), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GRANBULL', 18, 19, 2);

-- 211. QWILFISH (Tipo Agua/Veneno), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('QWILFISH', 3, 8, 2);

-- 212. SCIZOR (Tipo Bicho/Acero), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SCIZOR', 12, 17, 2);

-- 213. SHUCKLE (Tipo Bicho/Roca), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SHUCKLE', 12, 13, 2);

-- 214. HERACROSS (Tipo Bicho/Lucha), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HERACROSS', 12, 7, 2);

-- 215. SNEASEL (Tipo Siniestro/Hielo), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SNEASEL', 16, 6, 2);

-- 216. TEDDIURSA (Tipo Normal), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TEDDIURSA', 1, 19, 2);

-- 217. URSARING (Tipo Normal), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('URSARING', 1, 19, 2);

-- 218. SLUGMA (Tipo Fuego), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SLUGMA', 2, 19, 2);

-- 219. MAGCARGO (Tipo Fuego/Roca), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MAGCARGO', 2, 13, 2);

-- 220. SWINUB (Tipo Hielo/Tierra), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SWINUB', 6, 9, 2);

-- 221. PILOSWINE (Tipo Hielo/Tierra), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PILOSWINE', 6, 9, 2);

-- 222. CORSOLA (Tipo Agua/Roca), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CORSOLA', 3, 13, 2);

-- 223. REMORAID (Tipo Agua), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('REMORAID', 3, 19, 2);

-- 224. OCTILLERY (Tipo Agua), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('OCTILLERY', 3, 19, 2);

-- 225. DELIBIRD (Tipo Hielo/Volador), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DELIBIRD', 6, 10, 2);

-- 226. MANTINE (Tipo Agua/Volador), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MANTINE', 3, 10, 2);

-- 227. SKARMORY (Tipo Acero/Volador), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SKARMORY', 17, 10, 2);

-- 228. HOUNDOUR (Tipo Siniestro/Fuego), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HOUNDOUR', 16, 2, 2);

-- 229. HOUNDOOM (Tipo Siniestro/Fuego), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HOUNDOOM', 16, 2, 2);

-- 230. KINGDRA (Tipo Agua/Dragón), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KINGDRA', 3, 15, 2);

-- 231. PHANPY (Tipo Tierra), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PHANPY', 9, 19, 2);

-- 232. DONPHAN (Tipo Tierra), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DONPHAN', 9, 19, 2);

-- 233. PORYGON2 (Tipo Normal), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PORYGON2', 1, 19, 2);

-- 234. STANTLER (Tipo Normal), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('STANTLER', 1, 19, 2);

-- 235. SMEARGLE (Tipo Normal), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SMEARGLE', 1, 19, 2);

-- 236. TYROGUE (Tipo Lucha), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TYROGUE', 7, 19, 2);

-- 237. HITMONTOP (Tipo Lucha), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HITMONTOP', 7, 19, 2);

-- 238. SMOOCHUM (Tipo Hielo/Psíquico), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SMOOCHUM', 6, 11, 2);

-- 239. ELEKID (Tipo Eléctrico), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ELEKID', 5, 19, 2);

INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MAGBI', 2, 19, 2);

INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MILTANK', 1, 19, 2);

INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BLISSEY', 1, 19, 2);

INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('RAIKOU', 5, 19, 2);

INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ENTEI', 2, 19, 2);

INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SUIPUNE', 3, 19, 2);

INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LARVITAR', 13, 9, 2);

INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PUPITAR', 13, 9, 2);

INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TYRANITAR', 13, 16, 2);

INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LUGIA', 11, 10, 2);

INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HO-OH', 2, 10, 2);

-- 251. CELEBI (Tipo Psíquico/Planta), Región Johto
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CELEBI', 11, 4, 2);

-- 252. TREECKO (Tipo Planta), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TREECKO', 4, 19, 3);

-- 253. GROVYLE (Tipo Planta), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GROVYLE', 4, 19, 3);

-- 254. SCEPTILE (Tipo Planta), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SCEPTILE', 4, 19, 3);

-- 255. TORCHIC (Tipo Fuego), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TORCHIC', 2, 19, 3);

-- 256. COMBUSKEN (Tipo Fuego/Lucha), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('COMBUSKEN', 2, 7, 3);

-- 257. BLAZIKEN (Tipo Fuego/Lucha), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BLAZIKEN', 2, 7, 3);

-- 258. MUDKIP (Tipo Agua), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MUDKIP', 3, 19, 3);

-- 259. MARSHTOMP (Tipo Agua/Tierra), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MARSHTOMP', 3, 9, 3);

-- 260. SWAMPERT (Tipo Agua/Tierra), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SWAMPERT', 3, 9, 3);

-- 261. POOCHYENA (Tipo Siniestro), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('POOCHYENA', 16, 19, 3);

-- 262. MIGHTYENA (Tipo Siniestro), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MIGHTYENA', 16, 19, 3);

-- 263. ZIGZAGOON (Tipo Normal), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ZIGZAGOON', 1, 19, 3);

-- 264. LINOONE (Tipo Normal), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LINOONE', 1, 19, 3);

-- 265. WURMPLE (Tipo Bicho), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WURMPLE', 12, 19, 3);

-- 266. SILCOON (Tipo Bicho), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SILCOON', 12, 19, 3);

-- 267. BEAUTIFLY (Tipo Bicho/Volador), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BEAUTIFLY', 12, 10, 3);

-- 268. CASCOON (Tipo Bicho), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CASCOON', 12, 19, 3);

-- 269. DUSTOX (Tipo Bicho/Veneno), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DUSTOX', 12, 8, 3);

-- 270. LOTAD (Tipo Agua/Planta), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LOTAD', 3, 4, 3);

-- 271. LOMBRE (Tipo Agua/Planta), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LOMBRE', 3, 4, 3);

-- 272. LUDICOLO (Tipo Agua/Planta), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LUDICOLO', 3, 4, 3);

-- 273. SEEDOT (Tipo Planta), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SEEDOT', 4, 19, 3);

-- 274. NUZLEAF (Tipo Planta/Siniestro), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('NUZLEAF', 4, 16, 3);

-- 275. SHIFTRY (Tipo Planta/Siniestro), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SHIFTRY', 4, 16, 3);

-- 276. TAILLOW (Tipo Normal/Volador), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TAILLOW', 1, 10, 3);

-- 277. SWELLOW (Tipo Normal/Volador), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SWELLOW', 1, 10, 3);

-- 278. WINGULL (Tipo Agua/Volador), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WINGULL', 3, 10, 3);

-- 279. PELIPPER (Tipo Agua/Volador), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PELIPPER', 3, 10, 3);

-- 280. RALTS (Tipo Psíquico/Hada), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('RALTS', 11, 18, 3);

-- 281. KIRLIA (Tipo Psíquico/Hada), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KIRLIA', 11, 18, 3);

-- 282. GARDEVOIR (Tipo Psíquico/Hada), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GARDEVOIR', 11, 18, 3);

-- 283. SURSKIT (Tipo Bicho/Agua), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SURSKIT', 12, 3, 3);

-- 284. MASQUERAIN (Tipo Bicho/Volador), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MASQUERAIN', 12, 10, 3);

-- 285. SHROOMISH (Tipo Planta), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SHROOMISH', 4, 19, 3);

-- 286. BRELOOM (Tipo Planta/Lucha), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BRELOOM', 4, 7, 3);

-- 287. SLAKOTH (Tipo Normal), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SLAKOTH', 1, 19, 3);

-- 288. VIGOROTH (Tipo Normal), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VIGOROTH', 1, 19, 3);

-- 289. SLAKING (Tipo Normal), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SLAKING', 1, 19, 3);

-- 290. NINCADA (Tipo Bicho/Tierra), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('NINCADA', 12, 9, 3);

-- 291. NINJASK (Tipo Bicho/Volador), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('NINJASK', 12, 10, 3);

-- 292. SHEDINJA (Tipo Bicho/Fantasma), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SHEDINJA', 12, 14, 3);

-- 293. WHISMUR (Tipo Normal), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WHISMUR', 1, 19, 3);

-- 294. LOUDRED (Tipo Normal), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LOUDRED', 1, 19, 3);

-- 295. EXPLOUD (Tipo Normal), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('EXPLOUD', 1, 19, 3);

-- 296. MAKUHITA (Tipo Lucha), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MAKUHITA', 7, 19, 3);

-- 297. HARIYAMA (Tipo Lucha), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HARIYAMA', 7, 19, 3);

-- 298. AZURILL (Tipo Normal/Hada), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('AZURILL', 1, 18, 3);

-- 299. NOSEPASS (Tipo Roca), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('NOSEPASS', 13, 19, 3);

-- 300. SKITTY (Tipo Normal), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SKITTY', 1, 19, 3);

-- 301. DELCATTY (Tipo Normal), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DELCATTY', 1, 19, 3);

-- 302. SABLEYE (Tipo Siniestro/Fantasma), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SABLEYE', 16, 14, 3);

-- 303. MAWILE (Tipo Acero/Hada), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MAWILE', 17, 18, 3);

-- 304. ARON (Tipo Acero/Roca), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ARON', 17, 13, 3);

-- 305. LAIRON (Tipo Acero/Roca), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LAIRON', 17, 13, 3);

-- 306. AGGRON (Tipo Acero/Roca), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('AGGRON', 17, 13, 3);

-- 307. MEDITITE (Tipo Lucha/Psíquico), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MEDITITE', 7, 11, 3);

-- 308. MEDICHAM (Tipo Lucha/Psíquico), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MEDICHAM', 7, 11, 3);

-- 309. ELECTRIKE (Tipo Eléctrico), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ELECTRIKE', 5, 19, 3);

-- 310. MANECTRIC (Tipo Eléctrico), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MANECTRIC', 5, 19, 3);

-- 311. PLUSLE (Tipo Eléctrico), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PLUSLE', 5, 19, 3);

-- 312. MINUN (Tipo Eléctrico), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MINUN', 5, 19, 3);

-- 313. VOLBEAT (Tipo Bicho), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VOLBEAT', 12, 19, 3);

-- 314. ILLUMISE (Tipo Bicho), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ILLUMISE', 12, 19, 3);

-- 315. ROSELIA (Tipo Planta/Veneno), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ROSELIA', 4, 8, 3);

-- 316. GULPIN (Tipo Veneno), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GULPIN', 8, 19, 3);

-- 317. SWALOT (Tipo Veneno), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SWALOT', 8, 19, 3);

-- 318. CARVANHA (Tipo Agua/Siniestro), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CARVANHA', 3, 16, 3);

-- 319. SHARPEDO (Tipo Agua/Siniestro), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SHARPEDO', 3, 16, 3);

-- 320. WAILMER (Tipo Agua), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WAILMER', 3, 19, 3);

-- 321. WAILORD (Tipo Agua), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WAILORD', 3, 19, 3);

-- 322. NUMEL (Tipo Fuego/Tierra), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('NUMEL', 2, 9, 3);

-- 323. CAMERUPT (Tipo Fuego/Tierra), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CAMERUPT', 2, 9, 3);

-- 324. TORKOAL (Tipo Fuego), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TORKOAL', 2, 19, 3);

-- 325. SPOINK (Tipo Psíquico), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SPOINK', 11, 19, 3);

-- 326. GRUMPIG (Tipo Psíquico), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GRUMPIG', 11, 19, 3);

-- 327. SPINDA (Tipo Normal), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SPINDA', 1, 19, 3);

-- 328. TRAPINCH (Tipo Tierra), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TRAPINCH', 9, 19, 3);

-- 329. VIBRAVA (Tipo Tierra/Dragón), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VIBRAVA', 9, 15, 3);

-- 330. FLYGON (Tipo Tierra/Dragón), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FLYGON', 9, 15, 3);

-- 331. CACNEA (Tipo Planta), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CACNEA', 4, 19, 3);

-- 332. CACTURNE (Tipo Planta/Siniestro), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CACTURNE', 4, 16, 3);

-- 333. SWABLU (Tipo Normal/Volador), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SWABLU', 1, 10, 3);

-- 334. ALTARIA (Tipo Dragón/Volador), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ALTARIA', 15, 10, 3);

-- 335. ZANGOOSE (Tipo Normal), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ZANGOOSE', 1, 19, 3);

-- 336. SEVIPER (Tipo Veneno), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SEVIPER', 8, 19, 3);

-- 337. LUNATONE (Tipo Roca/Psíquico), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LUNATONE', 13, 11, 3);

-- 338. SOLROCK (Tipo Roca/Psíquico), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SOLROCK', 13, 11, 3);

-- 339. BARBOACH (Tipo Agua/Tierra), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BARBOACH', 3, 9, 3);

-- 340. WHISCASH (Tipo Agua/Tierra), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WHISCASH', 3, 9, 3);

-- 341. CORPHISH (Tipo Agua), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CORPHISH', 3, 19, 3);

-- 342. CRAWDAUNT (Tipo Agua/Siniestro), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CRAWDAUNT', 3, 16, 3);

-- 343. BALTOY (Tipo Tierra/Psíquico), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BALTOY', 9, 11, 3);

-- 344. CLAYDOL (Tipo Tierra/Psíquico), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CLAYDOL', 9, 11, 3);

-- 345. LILEEP (Tipo Roca/Planta), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LILEEP', 13, 4, 3);

-- 346. CRADILY (Tipo Roca/Planta), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CRADILY', 13, 4, 3);

-- 347. ANORITH (Tipo Roca/Bicho), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ANORITH', 13, 12, 3);

-- 348. ARMALDO (Tipo Roca/Bicho), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ARMALDO', 13, 12, 3);

-- 349. FEEBAS (Tipo Agua), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FEEBAS', 3, 19, 3);

-- 350. MILOTIC (Tipo Agua), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MILOTIC', 3, 19, 3);

-- 351. CASTFORM (Tipo Normal), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CASTFORM', 1, 19, 3);

-- 352. KECLEON (Tipo Normal), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KECLEON', 1, 19, 3);

-- 353. SHUPPET (Tipo Fantasma), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SHUPPET', 14, 19, 3);

-- 354. BANETTE (Tipo Fantasma), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BANETTE', 14, 19, 3);

-- 355. DUSKULL (Tipo Fantasma), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DUSKULL', 14, 19, 3);

-- 356. DUSCLOPS (Tipo Fantasma), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DUSCLOPS', 14, 19, 3);

-- 357. TROPIUS (Tipo Planta/Volador), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TROPIUS', 4, 10, 3);

-- 358. CHIMECHO (Tipo Psíquico), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CHIMECHO', 11, 19, 3);

-- 359. ABSOL (Tipo Siniestro), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ABSOL', 16, 19, 3);

-- 360. WYNAUT (Tipo Psíquico), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WYNAUT', 11, 19, 3);

-- 361. SNORUNT (Tipo Hielo), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SNORUNT', 6, 19, 3);

-- 362. GLALIE (Tipo Hielo), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GLALIE', 6, 19, 3);

-- 363. SPHEAL (Tipo Hielo/Agua), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SPHEAL', 6, 3, 3);

-- 364. SEALEO (Tipo Hielo/Agua), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SEALEO', 6, 3, 3);

-- 365. WALREIN (Tipo Hielo/Agua), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WALREIN', 6, 3, 3);

-- 366. CLAMPERL (Tipo Agua), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CLAMPERL', 3, 19, 3);

-- 367. HUNTAIL (Tipo Agua), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HUNTAIL', 3, 19, 3);

-- 368. GOREBYSS (Tipo Agua), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GOREBYSS', 3, 19, 3);

-- 369. RELICANTH (Tipo Agua/Roca), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('RELICANTH', 3, 13, 3);

-- 370. LUVDISC (Tipo Agua), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LUVDISC', 3, 19, 3);

-- 371. BAGON (Tipo Dragón), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BAGON', 15, 19, 3);

-- 372. SHELGON (Tipo Dragón), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SHELGON', 15, 19, 3);

-- 373. SALAMENCE (Tipo Dragón/Volador), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SALAMENCE', 15, 10, 3);

-- 374. BELDUM (Tipo Acero/Psíquico), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BELDUM', 17, 11, 3);

-- 375. METANG (Tipo Acero/Psíquico), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('METANG', 17, 11, 3);

-- 376. METAGROSS (Tipo Acero/Psíquico), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('METAGROSS', 17, 11, 3);

-- 377. REGIROCK (Tipo Roca), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('REGIROCK', 13, 19, 3);

-- 378. REGICE (Tipo Hielo), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('REGICE', 6, 19, 3);

-- 379. REGISTEEL (Tipo Acero), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('REGISTEEL', 17, 19, 3);

-- 380. LATIAS (Tipo Dragón/Psíquico), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LATIAS', 15, 11, 3);

-- 381. LATIOS (Tipo Dragón/Psíquico), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LATIOS', 15, 11, 3);

-- 382. KYOGRE (Tipo Agua), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KYOGRE', 3, 19, 3);

-- 383. GROUDON (Tipo Tierra), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GROUDON', 9, 19, 3);

-- 384. RAYQUAZA (Tipo Dragón/Volador), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('RAYQUAZA', 15, 10, 3);

-- 385. JIRACHI (Tipo Acero/Psíquico), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('JIRACHI', 17, 11, 3);

-- 386. DEOXYS (Tipo Psíquico), Región Hoenn
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DEOXYS', 11, 19, 3);

-- 387. TURTWIG (Tipo Planta), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TURTWIG', 4, 19, 4);

-- 388. GROTLE (Tipo Planta), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GROTLE', 4, 19, 4);

-- 389. TORTERRA (Tipo Planta/Tierra), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TORTERRA', 4, 9, 4);

-- 390. CHIMCHAR (Tipo Fuego), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CHIMCHAR', 2, 19, 4);

-- 391. MONFERNO (Tipo Fuego/Lucha), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MONFERNO', 2, 7, 4);

-- 392. INFERNAPE (Tipo Fuego/Lucha), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('INFERNAPE', 2, 7, 4);

-- 393. PIPLUP (Tipo Agua), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PIPLUP', 3, 19, 4);

-- 394. PRINPLUP (Tipo Agua), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PRINPLUP', 3, 19, 4);

-- 395. EMPOLEON (Tipo Agua/Acero), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('EMPOLEON', 3, 17, 4);

-- 396. STARLY (Tipo Normal/Volador), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('STARLY', 1, 10, 4);

-- 397. STARAVIA (Tipo Normal/Volador), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('STARAVIA', 1, 10, 4);

-- 398. STARAPTOR (Tipo Normal/Volador), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('STARAPTOR', 1, 10, 4);

-- 399. BIDOOF (Tipo Normal), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BIDOOF', 1, 19, 4);

-- 400. BIBAREL (Tipo Normal/Agua), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BIBAREL', 1, 3, 4);

-- 401. KRICKETOT (Tipo Bicho), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KRICKETOT', 12, 19, 4);

-- 402. KRICKETUNE (Tipo Bicho), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KRICKETUNE', 12, 19, 4);

-- 403. SHINX (Tipo Eléctrico), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SHINX', 5, 19, 4);

-- 404. LUXIO (Tipo Eléctrico), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LUXIO', 5, 19, 4);

-- 405. LUXRAY (Tipo Eléctrico), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LUXRAY', 5, 19, 4);

-- 406. BUDEW (Tipo Planta/Veneno), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BUDEW', 4, 8, 4);

-- 407. ROSERADE (Tipo Planta/Veneno), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ROSERADE', 4, 8, 4);

-- 408. CRANIDOS (Tipo Roca), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CRANIDOS', 13, 19, 4);

-- 409. RAMPARDOS (Tipo Roca), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('RAMPARDOS', 13, 19, 4);

-- 410. SHIELDON (Tipo Roca/Acero), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SHIELDON', 13, 17, 4);

-- 411. BASTIODON (Tipo Roca/Acero), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BASTIODON', 13, 17, 4);

-- 412. BURMY (Tipo Bicho), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BURMY', 12, 19, 4);

-- 413. WORMADAM (Tipo Bicho/Planta), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WORMADAM', 12, 4, 4);

-- 414. MOTHIM (Tipo Bicho/Volador), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MOTHIM', 12, 10, 4);

-- 415. COMBEE (Tipo Bicho/Volador), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('COMBEE', 12, 10, 4);

-- 416. VESPIQUEN (Tipo Bicho/Volador), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VESPIQUEN', 12, 10, 4);

-- 417. PACHIRISU (Tipo Eléctrico), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PACHIRISU', 5, 19, 4);

-- 418. BUIZEL (Tipo Agua), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BUIZEL', 3, 19, 4);

-- 419. FLOATZEL (Tipo Agua), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FLOATZEL', 3, 19, 4);

-- 420. CHERUBI (Tipo Planta), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CHERUBI', 4, 19, 4);

-- 421. CHERRIM (Tipo Planta), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CHERRIM', 4, 19, 4);

-- 422. SHELLOS (Tipo Agua), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SHELLOS', 3, 19, 4);

-- 423. GASTRODON (Tipo Agua/Tierra), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GASTRODON', 3, 9, 4);

-- 424. AMBIPOM (Tipo Normal), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('AMBIPOM', 1, 19, 4);

-- 425. DRIFLOON (Tipo Fantasma/Volador), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DRIFLOON', 14, 10, 4);

-- 426. DRIFBLIM (Tipo Fantasma/Volador), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DRIFBLIM', 14, 10, 4);

-- 427. BUNEARY (Tipo Normal), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BUNEARY', 1, 19, 4);

-- 428. LOPUNNY (Tipo Normal), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LOPUNNY', 1, 19, 4);

-- 429. MISMAGIUS (Tipo Fantasma), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MISMAGIUS', 14, 19, 4);

-- 430. HONCHKROW (Tipo Siniestro/Volador), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HONCHKROW', 16, 10, 4);

-- 431. GLAMEOW (Tipo Normal), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GLAMEOW', 1, 19, 4);

-- 432. PURUGLY (Tipo Normal), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PURUGLY', 1, 19, 4);

-- 433. CHINGLING (Tipo Psíquico), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CHINGLING', 11, 19, 4);

-- 434. STUNKY (Tipo Veneno/Siniestro), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('STUNKY', 8, 16, 4);

-- 435. SKUNTANK (Tipo Veneno/Siniestro), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SKUNTANK', 8, 16, 4);

-- 436. BRONZOR (Tipo Acero/Psíquico), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BRONZOR', 17, 11, 4);

-- 437. BRONZONG (Tipo Acero/Psíquico), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BRONZONG', 17, 11, 4);

-- 438. BONSLY (Tipo Roca), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BONSLY', 13, 19, 4);

-- 439. MIME JR. (Tipo Psíquico/Hada), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MIME JR.', 11, 18, 4);

-- 440. HAPPINY (Tipo Normal), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HAPPINY', 1, 19, 4);

-- 441. CHATOT (Tipo Normal/Volador), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CHATOT', 1, 10, 4);

-- 442. SPIRITOMB (Tipo Fantasma/Siniestro), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SPIRITOMB', 14, 16, 4);

-- 443. GIBLE (Tipo Dragón/Tierra), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GIBLE', 15, 9, 4);

-- 444. GABITE (Tipo Dragón/Tierra), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GABITE', 15, 9, 4);

-- 445. GARCHOMP (Tipo Dragón/Tierra), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GARCHOMP', 15, 9, 4);

-- 446. MUNCHLAX (Tipo Normal), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MUNCHLAX', 1, 19, 4);

-- 447. RIOLU (Tipo Lucha), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('RIOLU', 7, 19, 4);

-- 448. LUCARIO (Tipo Lucha/Acero), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LUCARIO', 7, 17, 4);

-- 449. HIPPOPOTAS (Tipo Tierra), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HIPPOPOTAS', 9, 19, 4);

-- 450. HIPPOWDON (Tipo Tierra), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HIPPOWDON', 9, 19, 4);

-- 451. SKORUPI (Tipo Veneno/Bicho), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SKORUPI', 8, 12, 4);

-- 452. DRAPION (Tipo Veneno/Siniestro), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DRAPION', 8, 16, 4);

-- 453. CROAGUNK (Tipo Veneno/Lucha), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CROAGUNK', 8, 7, 4);

-- 454. TOXICROAK (Tipo Veneno/Lucha), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TOXICROAK', 8, 7, 4);

-- 455. CARNIVINE (Tipo Planta), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CARNIVINE', 4, 19, 4);

-- 456. FINNEON (Tipo Agua), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FINNEON', 3, 19, 4);

-- 457. LUMINEON (Tipo Agua), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LUMINEON', 3, 19, 4);

-- 458. MANTYKE (Tipo Agua/Volador), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MANTYKE', 3, 10, 4);

-- 459. SNOVER (Tipo Planta/Hielo), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SNOVER', 4, 6, 4);

-- 460. ABOMASNOW (Tipo Planta/Hielo), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ABOMASNOW', 4, 6, 4);

-- 461. WEAVILE (Tipo Siniestro/Hielo), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WEAVILE', 16, 6, 4);

-- 462. MAGNEZONE (Tipo Eléctrico/Acero), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MAGNEZONE', 5, 17, 4);

-- 463. LICKILICKY (Tipo Normal), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LICKILICKY', 1, 19, 4);

-- 464. RHYPERIOR (Tipo Tierra/Roca), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('RHYPERIOR', 9, 13, 4);

-- 465. TANGROWTH (Tipo Planta), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TANGROWTH', 4, 19, 4);

-- 466. ELECTIVIRE (Tipo Eléctrico), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ELECTIVIRE', 5, 19, 4);

-- 467. MAGMORTAR (Tipo Fuego), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MAGMORTAR', 2, 19, 4);

-- 468. TOGEKISS (Tipo Hada/Volador), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TOGEKISS', 18, 10, 4);

-- 469. YANMEGA (Tipo Bicho/Volador), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('YANMEGA', 12, 10, 4);

-- 470. LEAFEON (Tipo Planta), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LEAFEON', 4, 19, 4);

-- 471. GLACEON (Tipo Hielo), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GLACEON', 6, 19, 4);

-- 472. GLISCOR (Tipo Tierra/Volador), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GLISCOR', 9, 10, 4);

-- 473. MAMOSWINE (Tipo Hielo/Tierra), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MAMOSWINE', 6, 9, 4);

-- 474. PORYGON-Z (Tipo Normal), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PORYGON-Z', 1, 19, 4);

-- 475. GALLADE (Tipo Psíquico/Lucha), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GALLADE', 11, 7, 4);

-- 476. PROBOPASS (Tipo Roca/Acero), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PROBOPASS', 13, 17, 4);

-- 477. DUSKNOIR (Tipo Fantasma), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DUSKNOIR', 14, 19, 4);

-- 478. FROSLASS (Tipo Hielo/Fantasma), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FROSLASS', 6, 14, 4);

-- 479. ROTOM (Tipo Eléctrico/Fantasma), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ROTOM', 5, 14, 4);

-- 480. UXIE (Tipo Psíquico), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('UXIE', 11, 19, 4);

-- 481. MESPRIT (Tipo Psíquico), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MESPRIT', 11, 19, 4);

-- 482. AZELF (Tipo Psíquico), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('AZELF', 11, 19, 4);

-- 483. DIALGA (Tipo Dragón/Acero), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DIALGA', 15, 17, 4);

-- 484. PALKIA (Tipo Agua/Dragón), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PALKIA', 3, 15, 4);

-- 485. HEATRAN (Tipo Fuego/Acero), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HEATRAN', 2, 17, 4);

-- 486. REGIGIGAS (Tipo Normal), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('REGIGIGAS', 1, 19, 4);

-- 487. GIRATINA (Tipo Fantasma/Dragón), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GIRATINA', 14, 15, 4);

-- 488. CRESSELIA (Tipo Psíquico), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CRESSELIA', 11, 19, 4);

-- 489. PHIONE (Tipo Agua), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PHIONE', 3, 19, 4);

-- 490. MANAPHY (Tipo Agua), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MANAPHY', 3, 19, 4);

-- 491. DARKRAI (Tipo Siniestro), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DARKRAI', 16, 19, 4);

-- 492. SHAYMIN (Tipo Planta), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SHAYMIN', 4, 19, 4);

-- 493. ARCEUS (Tipo Normal), Región Sinnoh
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ARCEUS', 1, 19, 4);

-- 494. VICTINI (Tipo Psíquico/Fuego), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VICTINI', 11, 2, 5);

-- 495. SNIVY (Tipo Planta), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SNIVY', 4, 19, 5);

-- 496. SERVINE (Tipo Planta), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SERVINE', 4, 19, 5);

-- 497. SERPERIOR (Tipo Planta), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SERPERIOR', 4, 19, 5);

-- 498. TEPIG (Tipo Fuego), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TEPIG', 2, 19, 5);

-- 499. PIGNITE (Tipo Fuego/Lucha), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PIGNITE', 2, 7, 5);

-- 500. EMBOAR (Tipo Fuego/Lucha), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('EMBOAR', 2, 7, 5);

-- 501. OSHAWOTT (Tipo Agua), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('OSHAWOTT', 3, 19, 5);

-- 502. DEWOTT (Tipo Agua), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DEWOTT', 3, 19, 5);

-- 503. SAMUROTT (Tipo Agua), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SAMUROTT', 3, 19, 5);

-- 504. PATRAT (Tipo Normal), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PATRAT', 1, 19, 5);

-- 505. WATCHOG (Tipo Normal), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WATCHOG', 1, 19, 5);

-- 506. LILLIPUP (Tipo Normal), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LILLIPUP', 1, 19, 5);

-- 507. HERDIER (Tipo Normal), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HERDIER', 1, 19, 5);

-- 508. STOUTLAND (Tipo Normal), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('STOUTLAND', 1, 19, 5);

-- 509. PURRLOIN (Tipo Siniestro), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PURRLOIN', 16, 19, 5);

-- 510. LIEPARD (Tipo Siniestro), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LIEPARD', 16, 19, 5);

-- 511. PANSAGE (Tipo Planta), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PANSAGE', 4, 19, 5);

-- 512. SIMISAGE (Tipo Planta), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SIMISAGE', 4, 19, 5);

-- 513. PANSEAR (Tipo Fuego), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PANSEAR', 2, 19, 5);

-- 514. SIMISEAR (Tipo Fuego), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SIMISEAR', 2, 19, 5);

-- 515. PANPOUR (Tipo Agua), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PANPOUR', 3, 19, 5);

-- 516. SIMIPOUR (Tipo Agua), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SIMIPOUR', 3, 19, 5);

-- 517. MUNNA (Tipo Psíquico), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MUNNA', 11, 19, 5);

-- 518. MUSHARNA (Tipo Psíquico), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MUSHARNA', 11, 19, 5);

-- 519. PIDOVE (Tipo Normal/Volador), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PIDOVE', 1, 10, 5);

-- 520. TRANQUILL (Tipo Normal/Volador), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TRANQUILL', 1, 10, 5);

-- 521. UNFEZANT (Tipo Normal/Volador), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('UNFEZANT', 1, 10, 5);

-- 522. BLITZLE (Tipo Eléctrico), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BLITZLE', 5, 19, 5);

-- 523. ZEBSTRIKA (Tipo Eléctrico), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ZEBSTRIKA', 5, 19, 5);

-- 524. ROGGENROLA (Tipo Roca), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ROGGENROLA', 13, 19, 5);

-- 525. BOLDORE (Tipo Roca), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BOLDORE', 13, 19, 5);

-- 526. GIGALITH (Tipo Roca), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GIGALITH', 13, 19, 5);

-- 527. WOOBAT (Tipo Psíquico/Volador), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WOOBAT', 11, 10, 5);

-- 528. SWOOBAT (Tipo Psíquico/Volador), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SWOOBAT', 11, 10, 5);

-- 529. DRILBUR (Tipo Tierra), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DRILBUR', 9, 19, 5);

-- 530. EXCADRILL (Tipo Tierra/Acero), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('EXCADRILL', 9, 17, 5);

-- 531. AUDINO (Tipo Normal), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('AUDINO', 1, 19, 5);

-- 532. TIMBURR (Tipo Lucha), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TIMBURR', 7, 19, 5);

-- 533. GURDURR (Tipo Lucha), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GURDURR', 7, 19, 5);

-- 534. CONKELDURR (Tipo Lucha), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CONKELDURR', 7, 19, 5);

-- 535. TYMPOLE (Tipo Agua), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TYMPOLE', 3, 19, 5);

-- 536. PALPITOAD (Tipo Agua/Tierra), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PALPITOAD', 3, 9, 5);

-- 537. SEISMITOAD (Tipo Agua/Tierra), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SEISMITOAD', 3, 9, 5);

-- 538. THROH (Tipo Lucha), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('THROH', 7, 19, 5);

-- 539. SAWK (Tipo Lucha), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SAWK', 7, 19, 5);

-- 540. SEWADDLE (Tipo Bicho/Planta), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SEWADDLE', 12, 4, 5);

-- 541. SWADLOON (Tipo Bicho/Planta), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SWADLOON', 12, 4, 5);

-- 542. LEAVANNY (Tipo Bicho/Planta), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LEAVANNY', 12, 4, 5);

-- 543. VENIPEDE (Tipo Bicho/Veneno), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VENIPEDE', 12, 8, 5);

-- 544. WHIRLIPEDE (Tipo Bicho/Veneno), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WHIRLIPEDE', 12, 8, 5);

-- 545. SCOLIPEDE (Tipo Bicho/Veneno), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SCOLIPEDE', 12, 8, 5);

-- 546. COTTONEE (Tipo Planta/Hada), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('COTTONEE', 4, 18, 5);

-- 547. WHIMSICOTT (Tipo Planta/Hada), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WHIMSICOTT', 4, 18, 5);

-- 548. PETILIL (Tipo Planta), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PETILIL', 4, 19, 5);

-- 549. LILLIGANT (Tipo Planta), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LILLIGANT', 4, 19, 5);

-- 550. BASCULIN (Tipo Agua), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BASCULIN', 3, 19, 5);

-- 551. SANDILE (Tipo Tierra/Siniestro), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SANDILE', 9, 16, 5);

-- 552. KROKOROK (Tipo Tierra/Siniestro), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KROKOROK', 9, 16, 5);

-- 553. KROOKODILE (Tipo Tierra/Siniestro), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KROOKODILE', 9, 16, 5);

-- 554. DARUMAKA (Tipo Fuego), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DARUMAKA', 2, 19, 5);

-- 555. DARMANITAN (Tipo Fuego), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DARMANITAN', 2, 19, 5);

-- 556. MARACTUS (Tipo Planta), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MARACTUS', 4, 19, 5);

-- 557. DWEBBLE (Tipo Bicho/Roca), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DWEBBLE', 12, 13, 5);

-- 558. CRUSTLE (Tipo Bicho/Roca), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CRUSTLE', 12, 13, 5);

-- 559. SCRAFTY (Tipo Siniestro/Lucha), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SCRAFTY', 16, 7, 5);

-- 560. SIGILYPH (Tipo Psíquico/Volador), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SIGILYPH', 11, 10, 5);

-- 561. YAMASK (Tipo Fantasma), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('YAMASK', 14, 19, 5);

-- 562. COFAGRIGUS (Tipo Fantasma), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('COFAGRIGUS', 14, 19, 5);

-- 563. TIRTOUGA (Tipo Agua/Roca), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TIRTOUGA', 3, 13, 5);

-- 564. CARRACOSTA (Tipo Agua/Roca), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CARRACOSTA', 3, 13, 5);

-- 565. ARCHEN (Tipo Roca/Volador), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ARCHEN', 13, 10, 5);

-- 566. ARCHEOPS (Tipo Roca/Volador), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ARCHEOPS', 13, 10, 5);

-- 567. TRUBBISH (Tipo Veneno), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TRUBBISH', 8, 19, 5);

-- 568. GARBODOR (Tipo Veneno), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GARBODOR', 8, 19, 5);

-- 569. ZORUA (Tipo Siniestro), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ZORUA', 16, 19, 5);

-- 570. ZOROARK (Tipo Siniestro), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ZOROARK', 16, 19, 5);

-- 571. MINCCINO (Tipo Normal), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MINCCINO', 1, 19, 5);

-- 572. CINCCINO (Tipo Normal), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CINCCINO', 1, 19, 5);

-- 573. GOTHITA (Tipo Psíquico), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GOTHITA', 11, 19, 5);

-- 574. GOTHORITA (Tipo Psíquico), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GOTHORITA', 11, 19, 5);

-- 575. GOTHITELLE (Tipo Psíquico), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GOTHITELLE', 11, 19, 5);

-- 576. SOLOSIS (Tipo Psíquico), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SOLOSIS', 11, 19, 5);

-- 577. DUOSION (Tipo Psíquico), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DUOSION', 11, 19, 5);

-- 578. REUNICLUS (Tipo Psíquico), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('REUNICLUS', 11, 19, 5);

-- 579. DUCKLETT (Tipo Agua/Volador), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DUCKLETT', 3, 10, 5);

-- 580. SWANNA (Tipo Agua/Volador), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SWANNA', 3, 10, 5);

-- 581. VANILLITE (Tipo Hielo), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VANILLITE', 6, 19, 5);

-- 582. VANILLISH (Tipo Hielo), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VANILLISH', 6, 19, 5);

-- 583. VANILLUXE (Tipo Hielo), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VANILLUXE', 6, 19, 5);

-- 584. DEERLING (Tipo Normal/Planta), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DEERLING', 1, 4, 5);

-- 585. SAWSBUCK (Tipo Normal/Planta), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SAWSBUCK', 1, 4, 5);

-- 586. EMOLGA (Tipo Eléctrico/Volador), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('EMOLGA', 5, 10, 5);

-- 587. KARRABLAST (Tipo Bicho), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KARRABLAST', 12, 19, 5);

-- 588. ESCAVALIER (Tipo Bicho/Acero), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ESCAVALIER', 12, 17, 5);

-- 589. FOONGUS (Tipo Veneno/Planta), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FOONGUS', 8, 4, 5);

-- 590. AMOONGUSS (Tipo Veneno/Planta), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('AMOONGUSS', 8, 4, 5);

-- 591. FRILLISH (Tipo Agua/Fantasma), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FRILLISH', 3, 14, 5);

-- 592. JELLICENT (Tipo Agua/Fantasma), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('JELLICENT', 3, 14, 5);

-- 593. ALOMOMOLA (Tipo Agua), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ALOMOMOLA', 3, 19, 5);

-- 594. JOLTIK (Tipo Bicho/Eléctrico), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('JOLTIK', 12, 5, 5);

-- 595. GALVANTULA (Tipo Bicho/Eléctrico), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GALVANTULA', 12, 5, 5);

-- 596. FERROSEED (Tipo Planta/Acero), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FERROSEED', 4, 17, 5);

-- 597. FERROTHORN (Tipo Planta/Acero), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FERROTHORN', 4, 17, 5);

-- 598. KLINK (Tipo Acero), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KLINK', 17, 19, 5);

-- 599. KLANG (Tipo Acero), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KLANG', 17, 19, 5);

-- 600. KLINKLANG (Tipo Acero), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KLINKLANG', 17, 19, 5);

-- 601. TYNAMO (Tipo Eléctrico), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TYNAMO', 5, 19, 5);

-- 602. EELEKTRIK (Tipo Eléctrico), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('EELEKTRIK', 5, 19, 5);

-- 603. EELEKTROSS (Tipo Eléctrico), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('EELEKTROSS', 5, 19, 5);

-- 604. ELGYEM (Tipo Psíquico), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ELGYEM', 11, 19, 5);

-- 605. BEHEEYEM (Tipo Psíquico), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BEHEEYEM', 11, 19, 5);

-- 606. LITWICK (Tipo Fantasma/Fuego), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LITWICK', 14, 2, 5);

-- 607. LAMPENT (Tipo Fantasma/Fuego), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LAMPENT', 14, 2, 5);

-- 608. CHANDELURE (Tipo Fantasma/Fuego), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CHANDELURE', 14, 2, 5);

-- 609. AXEW (Tipo Dragón), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('AXEW', 15, 19, 5);

-- 610. FRAXURE (Tipo Dragón), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FRAXURE', 15, 19, 5);

-- 611. HAXORUS (Tipo Dragón), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HAXORUS', 15, 19, 5);

-- 612. CUBCHOO (Tipo Hielo), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CUBCHOO', 6, 19, 5);

-- 613. BEARTIC (Tipo Hielo), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BEARTIC', 6, 19, 5);

-- 614. CRYOGONAL (Tipo Hielo), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CRYOGONAL', 6, 19, 5);

-- 615. SHELMET (Tipo Bicho), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SHELMET', 12, 19, 5);

-- 616. ACCELGOR (Tipo Bicho), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ACCELGOR', 12, 19, 5);

-- 617. STUNFISK (Tipo Eléctrico/Tierra), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('STUNFISK', 5, 9, 5);

-- 618. MIENFOO (Tipo Lucha), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MIENFOO', 7, 19, 5);

-- 619. MIENSHAO (Tipo Lucha), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MIENSHAO', 7, 19, 5);

-- 620. DRUDDIGON (Tipo Dragón), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DRUDDIGON', 15, 19, 5);

-- 621. GOLETT (Tipo Tierra/Fantasma), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GOLETT', 9, 14, 5);

-- 622. GOLURK (Tipo Tierra/Fantasma), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GOLURK', 9, 14, 5);

-- 623. PAWNIARD (Tipo Siniestro/Acero), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PAWNIARD', 16, 17, 5);

-- 624. BISHARP (Tipo Siniestro/Acero), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BISHARP', 16, 17, 5);

-- 625. BOUFFALANT (Tipo Normal), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BOUFFALANT', 1, 19, 5);

-- 626. RUFFLET (Tipo Normal/Volador), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('RUFFLET', 1, 10, 5);

-- 627. BRAVIARY (Tipo Normal/Volador), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BRAVIARY', 1, 10, 5);

-- 628. VULLABY (Tipo Oscuro/Volador), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VULLABY', 16, 10, 5);

-- 629. MANDIBUZZ (Tipo Oscuro/Volador), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MANDIBUZZ', 16, 10, 5);

-- 630. HEATMOR (Tipo Fuego), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HEATMOR', 2, 19, 5);

-- 631. DURANT (Tipo Bicho/Acero), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DURANT', 12, 17, 5);

-- 632. DEINO (Tipo Oscuro/Dragón), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DEINO', 16, 15, 5);

-- 633. ZWEILOUS (Tipo Oscuro/Dragón), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ZWEILOUS', 16, 15, 5);

-- 634. HYDREIGON (Tipo Oscuro/Dragón), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HYDREIGON', 16, 15, 5);

-- 635. LARVESTA (Tipo Bicho/Fuego), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LARVESTA', 12, 2, 5);

-- 636. VOLCARONA (Tipo Bicho/Fuego), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VOLCARONA', 12, 2, 5);

-- 637. COBALION (Tipo Acero/Lucha), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('COBALION', 17, 7, 5);

-- 638. TERRAKION (Tipo Roca/Lucha), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TERRAKION', 13, 7, 5);

-- 639. VIRIZION (Tipo Planta/Lucha), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VIRIZION', 4, 7, 5);

-- 640. TORNADUS (Tipo Volador), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TORNADUS', 10, 19, 5);

-- 641. THUNDURUS (Tipo Eléctrico/Volador), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('THUNDURUS', 5, 10, 5);

-- 642. RESHIRAM (Tipo Dragón/Fuego), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('RESHIRAM', 15, 2, 5);

-- 643. ZEKROM (Tipo Dragón/Eléctrico), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ZEKROM', 15, 5, 5);

-- 644. LANDORUS (Tipo Terrestre/Volador), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LANDORUS', 9, 10, 5);

-- 645. KYUREM (Tipo Dragón/Hielo), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KYUREM', 15, 6, 5);

-- 646. KELDEO (Tipo Agua/Lucha), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KELDEO', 3, 7, 5);

-- 647. MELOETTA (Tipo Normal/Psíquico), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MELOETTA', 1, 11, 5);

-- 648. GENESECT (Tipo Bicho/Acero), Región Teselia
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GENESECT', 12, 17, 5);

-- 649. CHESPIN (Tipo Planta), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CHESPIN', 4, 19, 6);

-- 650. QUILLADIN (Tipo Planta), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('QUILLADIN', 4, 19, 6);

-- 651. CHESNAUGHT (Tipo Planta/Lucha), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CHESNAUGHT', 4, 7, 6);

-- 652. FENNEKIN (Tipo Fuego), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FENNEKIN', 2, 19, 6);

-- 653. BRAIXEN (Tipo Fuego), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BRAIXEN', 2, 19, 6);

-- 654. DELPHOX (Tipo Fuego/Psíquico), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DELPHOX', 2, 11, 6);

-- 655. FROAKIE (Tipo Agua), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FROAKIE', 3, 19, 6);

-- 656. FROGADIER (Tipo Agua), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FROGADIER', 3, 19, 6);

-- 657. GRENINJA (Tipo Agua/Siniestro), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GRENINJA', 3, 16, 6);

-- 658. BUNNELBY (Tipo Normal), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BUNNELBY', 1, 19, 6);

-- 659. DIGGERSBY (Tipo Normal/Tierra), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DIGGERSBY', 1, 9, 6);

-- 660. FLETCHLING (Tipo Normal/Volador), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FLETCHLING', 1, 10, 6);

-- 661. FLETCHINDER (Tipo Fuego/Volador), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FLETCHINDER', 2, 10, 6);

-- 662. TALONFLAME (Tipo Fuego/Volador), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TALONFLAME', 2, 10, 6);

-- 663. SCATTERBUG (Tipo Bicho), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SCATTERBUG', 12, 19, 6);

-- 664. SPEWPA (Tipo Bicho), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SPEWPA', 12, 19, 6);

-- 665. VIVILLON (Tipo Bicho/Volador), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VIVILLON', 12, 10, 6);

-- 666. LITLEO (Tipo Fuego/Normal), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LITLEO', 2, 1, 6);

-- 667. PYROAR (Tipo Fuego/Normal), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PYROAR', 2, 1, 6);

-- 668. FLABÉBÉ (Tipo Hada), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FLABÉBÉ', 18, 19, 6);

-- 669. FLOETTE (Tipo Hada), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FLOETTE', 18, 19, 6);

-- 670. FLORGES (Tipo Hada), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FLORGES', 18, 19, 6);

-- 671. SKIDDO (Tipo Planta), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SKIDDO', 4, 19, 6);

-- 672. GOGOAT (Tipo Planta), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GOGOAT', 4, 19, 6);

-- 673. PANCHAM (Tipo Lucha), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PANCHAM', 7, 19, 6);

-- 674. PANGORO (Tipo Lucha/Siniestro), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PANGORO', 7, 16, 6);

-- 675. FURFROU (Tipo Normal), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FURFROU', 1, 19, 6);

-- 676. ESPURR (Tipo Psíquico), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ESPURR', 11, 19, 6);

-- 677. MEOWSTIC (Tipo Psíquico), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MEOWSTIC', 11, 19, 6);

-- 678. HONEDGE (Tipo Acero/Fantasma), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HONEDGE', 17, 14, 6);

-- 679. DOUBLADE (Tipo Acero/Fantasma), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DOUBLADE', 17, 14, 6);

-- 680. AEGISLASH (Tipo Acero/Fantasma), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('AEGISLASH', 17, 14, 6);

-- 681. SPRITZEE (Tipo Hada), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SPRITZEE', 18, 19, 6);

-- 682. AROMATISSE (Tipo Hada), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('AROMATISSE', 18, 19, 6);

-- 683. SWIRLIX (Tipo Hada), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SWIRLIX', 18, 19, 6);

-- 684. SLURPUFF (Tipo Hada), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SLURPUFF', 18, 19, 6);

-- 685. INKAY (Tipo Siniestro/Psíquico), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('INKAY', 16, 11, 6);

-- 686. MALAMAR (Tipo Siniestro/Psíquico), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MALAMAR', 16, 11, 6);

-- 687. BINACLE (Tipo Roca/Agua), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BINACLE', 13, 3, 6);

-- 688. BARBARACLE (Tipo Roca/Agua), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BARBARACLE', 13, 3, 6);

-- 689. SKRELP (Tipo Veneno/Agua), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SKRELP', 8, 3, 6);

-- 690. DRAGALGE (Tipo Veneno/Dragón), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DRAGALGE', 8, 15, 6);

-- 691. CLAUNCHER (Tipo Agua), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CLAUNCHER', 3, 19, 6);

-- 692. CLAWITZER (Tipo Agua), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CLAWITZER', 3, 19, 6);

-- 693. HELIOPTILE (Tipo Eléctrico/Normal), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HELIOPTILE', 5, 1, 6);

-- 694. HELIOLISK (Tipo Eléctrico/Normal), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HELIOLISK', 5, 1, 6);

-- 695. TYRUNT (Tipo Roca/Dragón), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TYRUNT', 13, 15, 6);

-- 696. TYRANTRUM (Tipo Roca/Dragón), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TYRANTRUM', 13, 15, 6);

-- 697. AMAURA (Tipo Roca/Hielo), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('AMAURA', 13, 6, 6);

-- 698. AURORUS (Tipo Roca/Hielo), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('AURORUS', 13, 6, 6);

-- 699. SYLVEON (Tipo Hada), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SYLVEON', 18, 19, 6);

-- 700. HAWLUCHA (Tipo Lucha/Volador), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HAWLUCHA', 7, 10, 6);

-- 701. DEDENNE (Tipo Eléctrico/Hada), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DEDENNE', 5, 18, 6);

-- 702. CARBINK (Tipo Roca/Hada), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CARBINK', 13, 18, 6);

-- 703. GOOMY (Tipo Dragón), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GOOMY', 15, 19, 6);

-- 704. SLIGGOO (Tipo Dragón), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SLIGGOO', 15, 19, 6);

-- 705. GOODRA (Tipo Dragón), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GOODRA', 15, 19, 6);

-- 706. KLEFKI (Tipo Acero/Hada), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KLEFKI', 17, 18, 6);

-- 707. PHANTUMP (Tipo Fantasma/Planta), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PHANTUMP', 14, 4, 6);

-- 708. TREVENANT (Tipo Fantasma/Planta), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TREVENANT', 14, 4, 6);

-- 709. PUMPKABOO (Tipo Fantasma/Planta), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PUMPKABOO', 14, 4, 6);

-- 710. GOURGEIST (Tipo Fantasma/Planta), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GOURGEIST', 14, 4, 6);

-- 711. BERGMITE (Tipo Hielo), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BERGMITE', 6, 19, 6);

-- 712. AVALUGG (Tipo Hielo/Roca), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('AVALUGG', 6, 13, 6);

-- 713. NOIBAT (Tipo Volador/Dragón), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('NOIBAT', 10, 15, 6);

-- 714. NOIVERN (Tipo Volador/Dragón), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('NOIVERN', 10, 15, 6);

-- 715. XERNEAS (Tipo Hada), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('XERNEAS', 18, 19, 6);

-- 716. YVELTAL (Tipo Siniestro/Volador), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('YVELTAL', 16, 10, 6);

-- 717. ZYGARDE (Tipo Dragón/Tierra), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ZYGARDE', 15, 9, 6);

-- 718. DIANCIE (Tipo Roca/Hada), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DIANCIE', 13, 18, 6);

-- 719. HOOPA (Tipo Psíquico/Fantasma), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HOOPA', 11, 14, 6);

-- 720. VOLCANION (Tipo Fuego/Agua), Región Kalos
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VOLCANION', 2, 3, 6);

-- 721. ROWLET (Tipo Planta/Volador), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ROWLET', 4, 10, 7);

-- 722. DARTRIX (Tipo Planta/Volador), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DARTRIX', 4, 10, 7);

-- 723. DECIDUEYE (Tipo Planta/Volador), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DECIDUEYE', 4, 10, 7);

-- 724. LITTEN (Tipo Fuego), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LITTEN', 2, 19, 7);

-- 725. TORRACAT (Tipo Fuego), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TORRACAT', 2, 19, 7);

-- 726. INCINEROAR (Tipo Fuego/Siniestro), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('INCINEROAR', 2, 16, 7);

-- 727. POPPLIO (Tipo Agua), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('POPPLIO', 3, 19, 7);

-- 728. BRIONNE (Tipo Agua), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BRIONNE', 3, 19, 7);

-- 729. PRIMARINA (Tipo Agua/Hada), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PRIMARINA', 3, 18, 7);

-- 730. PIKIPEK (Tipo Normal/Volador), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PIKIPEK', 1, 10, 7);

-- 731. TRUMBEAK (Tipo Normal/Volador), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TRUMBEAK', 1, 10, 7);

-- 732. TOUCANNON (Tipo Normal/Volador), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TOUCANNON', 1, 10, 7);

-- 733. YUNGOOS (Tipo Normal), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('YUNGOOS', 1, 19, 7);

-- 734. GUMSHOOS (Tipo Normal), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GUMSHOOS', 1, 19, 7);

-- 735. GRUBBIN (Tipo Bicho), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GRUBBIN', 12, 19, 7);

-- 736. CHARJABUG (Tipo Bicho/Eléctrico), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CHARJABUG', 12, 5, 7);

-- 737. VIKAVOLT (Tipo Bicho/Eléctrico), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('VIKAVOLT', 12, 5, 7);

-- 738. CRABRAWLER (Tipo Lucha), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CRABRAWLER', 7, 19, 7);

-- 739. CRABOMINABLE (Tipo Lucha/Hielo), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CRABOMINABLE', 7, 6, 7);

-- 740. ORICORIO (Tipo Fuego/Volador), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ORICORIO', 2, 10, 7);

-- 741. CUTIEFLY (Tipo Bicho/Hada), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CUTIEFLY', 12, 18, 7);

-- 742. RIBOMBEE (Tipo Bicho/Hada), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('RIBOMBEE', 12, 18, 7);

-- 743. ROCKRUFF (Tipo Roca), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ROCKRUFF', 13, 19, 7);

-- 744. LYCANROC (Tipo Roca), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LYCANROC', 13, 19, 7);

-- 745. WISHIWASHI (Tipo Agua), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WISHIWASHI', 3, 19, 7);

-- 746. MAREANIE (Tipo Veneno/Agua), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MAREANIE', 8, 3, 7);

-- 747. TOXAPEX (Tipo Veneno/Agua), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TOXAPEX', 8, 3, 7);

-- 748. MUDBRAY (Tipo Tierra), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MUDBRAY', 9, 19, 7);

-- 749. MUDSDALE (Tipo Tierra), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MUDSDALE', 9, 19, 7);

-- 750. DEWPIDER (Tipo Agua/Bicho), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DEWPIDER', 3, 12, 7);

-- 751. ARAQUANID (Tipo Agua/Bicho), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ARAQUANID', 3, 12, 7);

-- 752. FOMANTIS (Tipo Planta), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FOMANTIS', 4, 19, 7);

-- 753. LURANTIS (Tipo Planta), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LURANTIS', 4, 19, 7);

-- 754. MORELULL (Tipo Planta/Veneno), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MORELULL', 4, 8, 7);

-- 755. SHIINOTIC (Tipo Planta/Veneno), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SHIINOTIC', 4, 8, 7);

-- 756. SALANDIT (Tipo Veneno/Fuego), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SALANDIT', 8, 2, 7);

-- 757. SALAZZLE (Tipo Veneno/Fuego), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SALAZZLE', 8, 2, 7);

-- 758. STUFFUL (Tipo Normal/Lucha), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('STUFFUL', 1, 7, 7);

-- 759. BEWEAR (Tipo Normal/Lucha), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BEWEAR', 1, 7, 7);

-- 760. BOUNSWEET (Tipo Planta), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BOUNSWEET', 4, 19, 7);

-- 761. STEENEE (Tipo Planta), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('STEENEE', 4, 19, 7);

-- 762. TSAREENA (Tipo Planta), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TSAREENA', 4, 19, 7);

-- 763. COMFEY (Tipo Hada), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('COMFEY', 18, 19, 7);

-- 764. ORANGURU (Tipo Normal/Psíquico), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ORANGURU', 1, 11, 7);

-- 765. PASSIMIAN (Tipo Lucha), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PASSIMIAN', 7, 19, 7);

-- 766. WIMPOD (Tipo Bicho/Agua), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WIMPOD', 12, 3, 7);

-- 767. GOLISOPOD (Tipo Bicho/Agua), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GOLISOPOD', 12, 3, 7);

-- 768. SANDYGAST (Tipo Fantasma/Tierra), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SANDYGAST', 14, 9, 7);

-- 769. PALOSSAND (Tipo Fantasma/Tierra), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PALOSSAND', 14, 9, 7);

-- 770. PYUKUMUKU (Tipo Agua), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PYUKUMUKU', 3, 19, 7);

-- 771. TYPE: 19 (Tipo Normal), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TYPE: 19', 1, 19, 7);

-- 772. SILVALLY (Tipo Normal), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SILVALLY', 1, 19, 7);

-- 773. MINIOR (Tipo Roca/Volador), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MINIOR', 13, 10, 7);

-- 774. KOMALA (Tipo Normal), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KOMALA', 1, 19, 7);

-- 775. TURTONATOR (Tipo Fuego/Dragón), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TURTONATOR', 2, 15, 7);

-- 776. TOGEDEMARU (Tipo Eléctrico/Acero), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TOGEDEMARU', 5, 17, 7);

-- 777. MIMIKYU (Tipo Fantasma/Hada), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MIMIKYU', 14, 18, 7);

-- 778. BRUXISH (Tipo Agua/Psíquico), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BRUXISH', 3, 11, 7);

-- 779. DRAMPA (Tipo Normal/Dragón), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DRAMPA', 1, 15, 7);

-- 780. DHELMISE (Tipo Fantasma/Planta), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DHELMISE', 14, 4, 7);

-- 781. JANGMO-O (Tipo Dragón), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('JANGMO-O', 15, 19, 7);

-- 782. HAKAMO-O (Tipo Dragón/Lucha), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HAKAMO-O', 15, 7, 7);

-- 783. KOMMO-O (Tipo Dragón/Lucha), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KOMMO-O', 15, 7, 7);

-- 784. TAPU KOKO (Tipo Eléctrico/Hada), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TAPU KOKO', 5, 18, 7);

-- 785. TAPU LELE (Tipo Psíquico/Hada), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TAPU LELE', 11, 18, 7);

-- 786. TAPU BULU (Tipo Planta/Hada), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TAPU BULU', 4, 18, 7);

-- 787. TAPU FINI (Tipo Agua/Hada), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TAPU FINI', 3, 18, 7);

-- 788. COSMOG (Tipo Psíquico), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('COSMOG', 11, 19, 7);

-- 789. COSMOEM (Tipo Psíquico), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('COSMOEM', 11, 19, 7);

-- 790. SOLGALEO (Tipo Psíquico/Metal), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SOLGALEO', 11, 17, 7);

-- 791. LUNALA (Tipo Psíquico/Fantasma), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('LUNALA', 11, 14, 7);

-- 792. NIHILEGO (Tipo Roca/Veneno), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('NIHILEGO', 13, 8, 7);

-- 793. BUZZWOLE (Tipo Bicho/Lucha), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BUZZWOLE', 12, 7, 7);

-- 794. PHEROMOSA (Tipo Bicho/Lucha), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PHEROMOSA', 12, 7, 7);

-- 795. XURKITREE (Tipo Eléctrico), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('XURKITREE', 5, 19, 7);

-- 796. CELESTEELA (Tipo Acero/Volador), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CELESTEELA', 17, 10, 7);

-- 797. KARTANA (Tipo Planta/Acero), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KARTANA', 4, 17, 7);

-- 798. GUZZLORD (Tipo Siniestro/Dragón), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GUZZLORD', 16, 15, 7);

-- 799. NECROZMA (Tipo Psíquico), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('NECROZMA', 11, 19, 7);

-- 800. MAGEARNA (Tipo Acero/Hada), Región Alola
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MAGEARNA', 17, 18, 7);

-- 810. GROOKEY (Tipo Planta), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GROOKEY', 4, 19, 8);

-- 811. THWACKEY (Tipo Planta), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('THWACKEY', 4, 19, 8);

-- 812. RILLABOOM (Tipo Planta), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('RILLABOOM', 4, 19, 8);

-- 813. SCORBUNNY (Tipo Fuego), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SCORBUNNY', 2, 19, 8);

-- 814. RABOOT (Tipo Fuego), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('RABOOT', 2, 19, 8);

-- 815. CINDERACE (Tipo Fuego), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CINDERACE', 2, 19, 8);

-- 816. SOBBLE (Tipo Agua), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SOBBLE', 3, 19, 8);

-- 817. DRIZZILE (Tipo Agua), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DRIZZILE', 3, 19, 8);

-- 818. INTELEON (Tipo Agua), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('INTELEON', 3, 19, 8);

-- 819. SKWOVET (Tipo Normal), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SKWOVET', 1, 19, 8);

-- 820. GREEDENT (Tipo Normal), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GREEDENT', 1, 19, 8);

-- 821. ROOKIDEE (Tipo Volador), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ROOKIDEE', 10, 19, 8);

-- 822. CORVISQUIRE (Tipo Volador), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CORVISQUIRE', 10, 19, 8);

-- 823. CORVIKNIGHT (Tipo Volador/Acero), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CORVIKNIGHT', 10, 17, 8);

-- 824. BLIPBUG (Tipo Bicho), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BLIPBUG', 12, 19, 8);

-- 825. DOTTLER (Tipo Bicho/Psíquico), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DOTTLER', 12, 11, 8);

-- 826. ORBEETLE (Tipo Bicho/Psíquico), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ORBEETLE', 12, 11, 8);

-- 827. NICKIT (Tipo Siniestro), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('NICKIT', 16, 19, 8);

-- 828. THIEVUL (Tipo Siniestro), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('THIEVUL', 16, 19, 8);

-- 829. GOSSIFLEUR (Tipo Planta), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GOSSIFLEUR', 4, 19, 8);

-- 830. ELDEGOSS (Tipo Planta), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ELDEGOSS', 4, 19, 8);

-- 831. WOOLOO (Tipo Normal), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('WOOLOO', 1, 19, 8);

-- 832. DUBWOOL (Tipo Normal), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DUBWOOL', 1, 19, 8);

-- 833. CHEWTLE (Tipo Agua), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CHEWTLE', 3, 19, 8);

-- 834. DREDNAW (Tipo Agua/Roca), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DREDNAW', 3, 13, 8);

-- 835. YAMPER (Tipo Eléctrico), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('YAMPER', 5, 19, 8);

-- 836. BOLTUND (Tipo Eléctrico), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BOLTUND', 5, 19, 8);

-- 837. ROLYCOLY (Tipo Roca), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ROLYCOLY', 13, 19, 8);

-- 838. CARKOL (Tipo Roca/Fuego), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CARKOL', 13, 2, 8);

-- 839. COALOSSAL (Tipo Roca/Fuego), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('COALOSSAL', 13, 2, 8);

-- 840. APPLIN (Tipo Planta/Dragón), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('APPLIN', 4, 15, 8);

-- 841. FLAPPLE (Tipo Planta/Dragón), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FLAPPLE', 4, 15, 8);

-- 842. APPLETUN (Tipo Planta/Dragón), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('APPLETUN', 4, 15, 8);

-- 843. SILICOBRA (Tipo Tierra), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SILICOBRA', 9, 19, 8);

-- 844. SANDACONDA (Tipo Tierra), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SANDACONDA', 9, 19, 8);

-- 845. CRAMORANT (Tipo Volador/Agua), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CRAMORANT', 10, 3, 8);

-- 846. ARROKUDA (Tipo Agua), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ARROKUDA', 3, 19, 8);

-- 847. BARRASKEWDA (Tipo Agua), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('BARRASKEWDA', 3, 19, 8);

-- 848. TOXEL (Tipo Eléctrico/Veneno), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TOXEL', 5, 8, 8);

-- 849. TOXTRICITY (Tipo Eléctrico/Veneno), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('TOXTRICITY', 5, 8, 8);

-- 850. SIZZLIPEDE (Tipo Fuego/Insecto), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SIZZLIPEDE', 2, 12, 8);

-- 851. CENTISKORCH (Tipo Fuego/Insecto), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CENTISKORCH', 2, 12, 8);

-- 852. CLOBBOPUS (Tipo Lucha), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CLOBBOPUS', 7, 19, 8);

-- 853. GRAPPLOCT (Tipo Lucha), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GRAPPLOCT', 7, 19, 8);

-- 854. SINISTEA (Tipo Fantasma), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SINISTEA', 14, 19, 8);

-- 855. POLTEAGEIST (Tipo Fantasma), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('POLTEAGEIST', 14, 19, 8);

-- 856. HATENNA (Tipo Psíquico), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HATENNA', 11, 19, 8);

-- 857. HATTREM (Tipo Psíquico), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HATTREM', 11, 19, 8);

-- 858. HATTERENE (Tipo Psíquico/Hada), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('HATTERENE', 11, 18, 8);

-- 859. IMPIDIMP (Tipo Siniestro/Hada), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('IMPIDIMP', 16, 18, 8);

-- 860. MORGREM (Tipo Siniestro/Hada), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MORGREM', 16, 18, 8);

-- 861. GRIMMSNARL (Tipo Siniestro/Hada), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GRIMMSNARL', 16, 18, 8);

-- 862. OBSTAGOON (Tipo Siniestro/Normal), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('OBSTAGOON', 16, 1, 8);

-- 863. PERRSERKER (Tipo Acero), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PERRSERKER', 17, 19, 8);

-- 864. CURSOLA (Tipo Fantasma), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CURSOLA', 14, 19, 8);

-- 865. SIRFETCH’D (Tipo Lucha), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SIRFETCH’D', 7, 19, 8);

-- 866. MR. RIME (Tipo Hielo/Psíquico), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MR. RIME', 6, 11, 8);

-- 867. RUNERIGUS (Tipo Fantasma/Tierra), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('RUNERIGUS', 14, 9, 8);

-- 868. MILCERY (Tipo Hada), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MILCERY', 18, 19, 8);

-- 869. ALCREMIE (Tipo Hada), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ALCREMIE', 18, 19, 8);

-- 870. FALINKS (Tipo Lucha), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FALINKS', 7, 19, 8);

-- 871. PINCURCHIN (Tipo Eléctrico), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('PINCURCHIN', 5, 19, 8);

-- 872. SNOM (Tipo Hielo/Bicho), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SNOM', 6, 12, 8);

-- 873. FROSMOTH (Tipo Hielo/Bicho), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('FROSMOTH', 6, 12, 8);

-- 874. STONJOURNER (Tipo Roca), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('STONJOURNER', 13, 19, 8);

-- 875. EISCUE (Tipo Hielo), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('EISCUE', 6, 19, 8);

-- 876. INDEEDEE (Tipo Psíquico), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('INDEEDEE', 11, 19, 8);

-- 877. MORPEKO (Tipo Eléctrico/Siniestro), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('MORPEKO', 5, 16, 8);

-- 878. CUFANT (Tipo Acero), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CUFANT', 17, 19, 8);

-- 879. COPPERAJAH (Tipo Acero), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('COPPERAJAH', 17, 19, 8);

-- 880. DRACOZOLT (Tipo Eléctrico/Dragón), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DRACOZOLT', 5, 15, 8);

-- 881. ARCTOZOLT (Tipo Eléctrico/Hielo), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ARCTOZOLT', 5, 6, 8);

-- 882. DRACOVISH (Tipo Agua/Dragón), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DRACOVISH', 3, 15, 8);

-- 883. ARCTOVISH (Tipo Agua/Hielo), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ARCTOVISH', 3, 6, 8);

-- 884. DURALUDON (Tipo Acero/Dragón), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DURALUDON', 17, 15, 8);

-- 885. DREEPY (Tipo Fantasma/Dragón), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DREEPY', 14, 15, 8);

-- 886. DRIZZILE (Tipo Fantasma/Dragón), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DRIZZILE', 14, 15, 8);

-- 887. DRAGAPULT (Tipo Fantasma/Dragón), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('DRAGAPULT', 14, 15, 8);

-- 888. ZACIAN (Tipo Hada), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ZACIAN', 18, 19, 8);

-- 889. ZAMAZENTA (Tipo Lucha/Acero), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ZAMAZENTA', 7, 17, 8);

-- 890. ETERNATUS (Tipo Veneno/Dragón), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ETERNATUS', 8, 15, 8);

-- 891. KUBFU (Tipo Lucha), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('KUBFU', 7, 19, 8);

-- 892. URSHIFU SINGLE STRIKE (Tipo Lucha/Siniestro), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('URSHIFU SINGLE STRIKE', 7, 16, 8);

-- 893. URSHIFU RAPID STRIKE (Tipo Lucha/Agua), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('URSHIFU RAPID STRIKE', 7, 3, 8);

-- 894. ZARUDE (Tipo Siniestro/Planta), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('ZARUDE', 16, 4, 8);

-- 895. REGIELEKI (Tipo Eléctrico), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('REGIELEKI', 5, 19, 8);

-- 896. REGIDRAGO (Tipo Dragón), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('REGIDRAGO', 15, 19, 8);

-- 897. GLASTRIER (Tipo Hielo), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('GLASTRIER', 6, 19, 8);

-- 898. SPECTRIER (Tipo Fantasma), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('SPECTRIER', 14, 19, 8);

-- 899. CALYREX (Tipo Psíquico/Planta), Región Galar
INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES ('CALYREX', 11, 4, 8);
