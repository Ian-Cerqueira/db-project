
-- updates no usuario --
UPDATE Usuario
SET nome = 'Fernandes', login = 'afolGames'
WHERE id = 1;

UPDATE Usuario
SET cidade = 'Olinda'
WHERE login = 'icbo';

-- update lista personalizada --
UPDATE Lista_Personalizada
SET visibilidade = '0'
WHERE id = 3;

UPDATE Lista_Personalizada
SET visibilidade = '1'
WHERE id = 1;