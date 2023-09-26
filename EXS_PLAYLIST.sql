-- Crie as instruções SQL para as seguintes manipulações dos dados armazenados na tabela Musica:

-- 01. Consulte todas as informações de todas as músicas
SELECT * FROM MUSICA 
-- 02. Consulte o titulo, o artista e o album de todas as musicas
SELECT TITULO, ARTISTA, ALBUM FROM MUSICA
-- 03. Consulte as músicas do artista Black Sabbath
SELECT TITULO FROM MUSICA 
WHERE ARTISTA = 'Black Sabbath'
-- 04. Consulte as músicas (apresentando somente o titulo) de artistas da Inglaterra
SELECT TITULO FROM MUSICA
WHERE NACIONALIDADE = 'Inglaterra'
-- 05. Consulte as músicas (apresentando o nome do album e o ano de lançamento) de albuns anteriores a 1970
SELECT ALBUM, ANOLANCAMENTO FROM MUSICA 
WHERE ANOLANCAMENTO < 1970
-- 06. Consulte as músicas (apresentando o nome do artista e o titulo da música) com mais de 5 minutos
SELECT ARTISTA, TITULO, DURACAO FROM MUSICA 
WHERE DURACAO > '00:05:00'
-- 07. Consulte as músicas que não estão disponiveis nas plataformas de streaming
--SELECT * FROM MUSICA 

SELECT TITULO FROM MUSICA 
WHERE STREAMING = 1
-- 08. Altere o ano de lançamento do album da musica Hey Joe para 1967
UPDATE MUSICA 
SET ANOLANCAMENTO = 1967
WHERE TITULO = 'Hey Joe'
-- 09. Altere o titulo da música Sweet Leaf para Sweet Love Leaf
UPDATE MUSICA 
SET TITULO = 'Sweet Love Leaf'
WHERE TITULO = 'Sweet Leaf'
-- 10. Altere o titulo da música Foxey Lady para Foxey Love Lady e a disponibilidade em streaming para negativo
UPDATE MUSICA 
SET TITULO = 'Foxey Love Lady', STREAMING = 0
WHERE TITULO = 'Foxey Lady'
-- 11. Altere a nacionalidade das músicas do artista Led Zeppelin para Reino Unido
UPDATE MUSICA 
SET NACIONALIDADE = 'Reino Unido'
WHERE ARTISTA = 'Led Zeppelin'
-- 12. Consulte a(s) música(s) que o titulo comece com The
SELECT TITULO FROM MUSICA 
WHERE TITULO  LIKE 'The%'
-- 13. Consulte a(s) musica(s) que o titulo termine com Breakdown
SELECT TITULO FROM MUSICA 
WHERE TITULO  LIKE '%Breakdown'
-- 14. Consulte a(s) musica(s) que o titulo contenha a palavra Love no meio
SELECT TITULO FROM MUSICA 
WHERE TITULO  LIKE '%Love%'
-- 15. Consulte as músicas (apresentando o nome do album e se está disponivel em streaming) 
--do artista Black Sabbath lançadas em 1970 
SELECT ALBUM, IIF(STREAMING = 0, 'Não disponivel', 'Disponivel') AS 'STREAMING' FROM MUSICA
WHERE ARTISTA = 'Black Sabbath' AND ANOLANCAMENTO = 1970
-- 16. Consulte as músicas de albuns lançados entre 1970 e 1975
SELECT TITULO, ANOLANCAMENTO FROM MUSICA 
WHERE ANOLANCAMENTO BETWEEN 1970 AND 1975
-- 17. Consulte as 5 primeiras músicas da playlist
SELECT TOP(5) TITULO /*AS 'PRIMEIRAS 5 MUSICAS'*/ FROM MUSICA 
-- 18. Consulte o titulo, artista e anoLancamento das músicas do artista Rush 
--nomeando as colunas respectivamente como Música, Banda e Ano Lançamento
SELECT TITULO AS 'Musica', ARTISTA AS 'Banda', ANOLANCAMENTO AS 'Ano Lançamento' FROM MUSICA 
WHERE ARTISTA = 'Rush'
-- 19. Consulte as diferentes nacionalidades das músicas (sem repeti-las)
SELECT DISTINCT NACIONALIDADE FROM MUSICA

-- 20. Consulte todas as músicas em ordem alfabéticas por titulo
SELECT TITULO FROM MUSICA  
ORDER BY TITULO ASC
-- 21. Consulte as músicas do artista Rush em ordem de lançamento
SELECT TITULO, ANOLANCAMENTO FROM MUSICA  
WHERE ARTISTA = 'Rush'
ORDER BY ANOLANCAMENTO ASC
-- 22. Consulte o titulo e duração de todas as músicas em ordem decrescente de duração
SELECT TITULO, DURACAO FROM MUSICA
ORDER BY DURACAO DESC
-- 23. Consulte a música mais longa
SELECT  MAX(TITULO) AS 'TITULO', MAX(DURACAO) AS 'música mais longa' FROM MUSICA

-- 24. Consulte a música mais curta
SELECT  MIN(TITULO) AS 'TITULO', MIN(DURACAO) AS 'música mais longa' FROM MUSICA

-- 25. Consulte quantas músicas do Jimi Hendrix existem na playlist
SELECT COUNT(ARTISTA) AS 'MUSICAS DE Jimi Hendrix' FROM MUSICA 
WHERE ARTISTA = 'Jimi Hendrix'
