USE SP_Medical_Group;

--inserindo os dados

INSERT INTO TiposUsuarios(TituloTipoUsuario)
VALUES ('Administrador')
	  ,('Paciente')
	  ,('M�dico');

INSERT INTO Usuarios(IdTipoUsuario,Email,Senha)
VALUES (3,'jose.alencar@spmedicalgroup.com.br','1234')
      ,(3,'adriana.pacheco@spmedicalgroup.com.br','3214')
	  ,(3,'arnaldo.ferreira@spmedicalgroup.com.br','1235')
	  ,(2,'roger@gmail.com','1478')
	  ,(2,'paulo@gmail.com','2145')
	  ,(2,'alexandre@gmail.com','6548')
	  ,(2,'pedro@gmail.com','5528')
	  ,(2,'felipe@hotmail.com','3256')
	  ,(2,'danilo@gmail.com','2254')
	  ,(2,'leila@outlook.com','1425');

INSERT INTO Pacientes(IdUsuario,NomePaciente,RG,CPF,DataNascimento,Telefone,Endereco)
VALUES (4,'Roger','435225435','94839859000','13/10/1983','1134567654','R Mauro Beting, 432 - Itapevi, S�o Paulo - SP, 04322-022')
      ,(4,'Paulo','326543457','73556944057','23/07/2001','11987656543','Av. Fortal Luiz, 198 - Jardim Brasil, S�o Paulo - SP, 81917-125')
	  ,(4,'Alexandre','546365253','16839338002','10/10/1978','11972084453','Av. Pablo Casals - Rio Pequeno, 2927,  S�o Paulo - SP, 04029-200')
	  ,(4,'Pedro','543663625','14332654765','13/10/1985','1134566543','R. Lopes Silva, 643 - Campesina, Osasco - SP, 86455-210')
	  ,(4,'Felipe','325444441','91305348010','27/08/1975','1176566377','R S�o Jo�o, 71 - Vila Jardim, S�o Paulo - SP, 96455-900')
	  ,(4,'Danilo','545662667','79799299004','21/03/1972','11954368769','R Paraiso das Rosas, 885 - Santana, S�o Paulo - SP, 67523-090')
	  ,(4,'Leila','545662668','13771913039','05/03/2010','11934794589','R Jorge Ward, 444 - Vila Velha, S�o Paulo - SP, 44301-876');

INSERT INTO Especialidades(DescricaoEspecialidade)
VALUES ('Acupuntura')
      ,('Anestesiologia')
	  ,('Angiologia')
	  ,('Cardiologia')
	  ,('Dermatologia')
	  ,('Radioterapia')
	  ,('Urologia')
	  ,('Pediatria')
	  ,('Psiquiatria')
	  ,('Cirurgia Cardiovascular')
	  ,('Cirurgia da M�o')
	  ,('Cirurgia do Aparelho Digestivo')
	  ,('Cirurgia Geral')
	  ,('Cirurgia Pedi�trica')
	  ,('Cirurgia Pl�stica')
	  ,('Cirurgia Tor�xica')
	  ,('Cirurgia Vascular');

INSERT INTO Clinicas(RazaoSocial,NomeFantasia,Endereco,HorarioAbertura,HorarioFechamento,[Site],CNPJ)
VALUES ('SP Medical Group','Clinica Bem Estar','Av. Bar�o Limeira, 532, S�o Paulo, SP','08:00','18:00','clinicabemestar.com.br','86400902000130');

INSERT INTO Medicos(IdUsuario,IdClinica,IdEspecialidade,NomeMedico,CRM)
VALUES (1,1,2,'Jos� Alencar','55960-SP')
      ,(2,1,17,'Adriana Pacheco','53931-SP')
	  ,(3,1,16,'Arnaldo Ferreira','53404-SP');

INSERT INTO StatusConsultas(DescricaoStatusConsulta)
VALUES ('Agendada')
      ,('Cancelada')
	  ,('Realizada');

INSERT INTO Consultas(IdPaciente,IdMedico,IdStatusConsulta,DataConsulta,HorarioConsulta,DescricaoAtendimento)
VALUES (12,3,3,'17/01/2020','13:00','')
      ,(7,2,2,'14/01/2020','11:00','')
	  ,(8,2,3,'01/02/2020','08:00','')
	  ,(7,2,3,'15/02/2018','14:00','')
	  ,(9,1,2,'22/02/2019','12:00','')
	  ,(12,3,1,'02/03/2020','10:00','')
	  ,(9,1,1,'07/03/2020','09:00','');