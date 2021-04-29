--InLock DML

USE inlock_games_manha
GO

INSERT INTO Estudios (nomeEstudio)
VALUES				 ('Blizzard')
					,('Rockstar Studios')
					,('Square Enix')
GO

INSERT INTO Jogos (nomeJogo, descricao, dataLancamento, valor, idEstudio)
VALUES			  ('Diablo 3', '� um jogo que cont�m bastante a��o e � viciante, seja voc� um novato ou um f�.', '15/05/2012', 99, 1)
				 ,('Red Dead Redemption 2', 'Jogo eletr�nico de a��o-aventura western', '26/10/2018', 120, 2)
GO

INSERT INTO TipoUsuario (titulo)
VALUES					('Administrador')
					   ,('Cliente')
GO

INSERT INTO Usuarios (email, senha, idTipoUsuario)
VALUES				 ('admin@admin.com', 'admin', 1)
					,('cliente@cliente.com', 'cliente', 2)
GO