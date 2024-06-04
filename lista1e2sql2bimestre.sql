lista 1
-- Comandos SQL para a atividade prática

-- Inserir um Novo Livro
INSERT INTO livros (titulo, autor, ano_publicacao, disponibilidade, categoria, isbn, editora, paginas, idioma)
VALUES ('As Crônicas de Nárnia', 'C.S. Lewis', 1950, TRUE, 'Fantasia', '978-0064471190', 'HarperCollins', 768, 'Inglês');

-- Inserir Múltiplos Livros
INSERT INTO livros (titulo, autor, ano_publicacao, disponibilidade, categoria, isbn, editora, paginas, idioma)
VALUES 
('Cem Anos de Solidão', 'Gabriel Garcia Marquez', 1967, TRUE, 'Ficção', '978-0241968581', 'Penguin Books', 422, 'Espanhol'),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997, TRUE, 'Fantasia', '978-0439708180', 'Bloomsbury', 309, 'Inglês'),
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 1954, TRUE, 'Fantasia', '978-0618640157', 'HarperCollins', 423, 'Inglês');

-- Inserir Livro com Categoria Específica
INSERT INTO livros (titulo, autor, ano_publicacao, disponibilidade, categoria, isbn, editora, paginas, idioma)
VALUES ('História Fictícia', 'Autor Desconhecido', 2001, TRUE, 'História', '123-4567890123', 'Editora Fictícia', 300, 'Português');

-- Atualizar Disponibilidade
UPDATE livros
SET disponibilidade = FALSE
WHERE ano_publicacao < 2000;

-- Atualizar Editora
UPDATE livros
SET editora = 'Plume Books'
WHERE titulo = '1984';

-- Atualizar Idioma
UPDATE livros
SET idioma = 'Inglês'
WHERE editora = 'Penguin Books';

-- Atualizar Título
UPDATE livros
SET titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)'
WHERE isbn = '978-0439708180';

-- Deletar por Categoria
DELETE FROM livros
WHERE categoria = 'Terror';

-- Deletar por Idioma e Ano
DELETE FROM livros
WHERE idioma = 'Francês' AND ano_publicacao < 1970;

-- Deletar Livro Específico
DELETE FROM livros
WHERE titulo = 'As Crônicas de Nárnia';

-- Deletar por Editora
DELETE FROM livros
WHERE editora = 'Penguin Books';

-- Selecionar com WHERE
SELECT *
FROM livros
WHERE paginas > 500;

-- Selecionar com GROUP BY
SELECT categoria, COUNT(*) AS total_livros
FROM livros
GROUP BY categoria;

-- Selecionar com LIMIT
SELECT *
FROM livros
ORDER BY id LIMIT 5;

-- Selecionar com COUNT e AVG
SELECT COUNT(*) AS total_livros, AVG(paginas) AS media_paginas
FROM livros
WHERE categoria = 'Drama';

-- Selecionar com AVG
SELECT AVG(ano_publicacao) AS media_ano_publicacao
FROM livros
WHERE disponibilidade = TRUE;

-- Selecionar com MAX e MIN
SELECT *
FROM livros
ORDER BY ano_publicacao DESC
LIMIT 1;

SELECT *
FROM livros
ORDER BY ano_publicacao ASC
LIMIT 1;

-- Selecionar com ORDER BY
SELECT *
FROM livros
ORDER BY ano_publicacao DESC;

-- Selecionar com UNION
SELECT titulo
FROM livros
WHERE idioma = 'Inglês'
UNION
SELECT titulo
FROM livros
WHERE idioma = 'Português';

-- Selecionar Livros de um Autor Específico
SELECT *
FROM livros
WHERE autor = 'George Orwell';


lista 2;
SELECT *
FROM livros
WHERE disponibilidade = TRUE;

-- Selecionar por Editora
SELECT *
FROM livros
WHERE editora = 'HarperCollins';

-- Selecionar por Ano de Publicação
SELECT *
FROM livros
WHERE ano_publicacao BETWEEN 2000 AND 2010;

-- Selecionar com COUNT e HAVING
SELECT autor, COUNT(*) AS total_livros
FROM livros
GROUP BY autor
HAVING COUNT(*) > 3;

-- Selecionar com LIKE
SELECT *
FROM livros
WHERE titulo LIKE '%Senhor%';

-- Selecionar com IN
SELECT *
FROM livros
WHERE categoria IN ('Fantasia', 'Ficção Científica', 'Fábula');

-- Selecionar com DISTINCT
SELECT DISTINCT idioma
FROM livros;

-- Selecionar com BETWEEN
SELECT *
FROM livros
WHERE paginas BETWEEN 200 AND 400;

-- Selecionar Títulos e Anos de Publicação
SELECT titulo, ano_publicacao
FROM livros
ORDER BY ano_publicacao;

