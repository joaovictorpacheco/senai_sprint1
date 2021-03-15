USE SP_Medical_Group;

--fazendo as consultas

--consultando os pacientes
SELECT Pacientes.NomePaciente AS Paciente,Pacientes.RG,Pacientes.CPF,CONVERT(VARCHAR(10),DataNascimento,3) AS DataNascimento,Pacientes.Endereco,Pacientes.Telefone FROM Pacientes	

--mostrar quantidade de usu�rios
SELECT COUNT(IdUsuario)AS QuantidadeDeUsuarios FROM Usuarios ;

--consulta a data de nascimento do usu�rio para formato padr�o de exibi��o
SELECT NomePaciente AS Paciente, DataNascimento FROM Pacientes;

--converter a data de nascimento do usu�rio para formato mm-dd-aa na exibi��o
SELECT NomePaciente AS Paciente, CONVERT(VARCHAR(10),DataNascimento,3) AS DataNascimento FROM Pacientes ;

--consultando todos os medicos
SELECT * FROM Medicos;

--consultando medicos,suas especialidades CRMs e clinicas que fazem atendimentos
SELECT Medicos.NomeMedico AS [M�dico],Especialidades.DescricaoEspecialidade AS Especialidade,Medicos.CRM,Clinicas.NomeFantasia AS LocalAtendimento FROM Medicos
INNER JOIN Especialidades
ON Medicos.IdEspecialidade = Especialidades.IdEspecialidade
INNER JOIN Clinicas
ON Medicos.IdClinica = Clinicas.IdClinica;

--consultando a quantidade de m�dicos de uma determinada especialidade somente com script
SELECT COUNT(IdMedico) AS Quantidade_Medicos FROM Medicos
INNER JOIN Especialidades
ON Medicos.IdEspecialidade = Especialidades.IdEspecialidade AND DescricaoEspecialidade = 'Pediatria';

--consultando a quantidade de m�dicos de uma determinada especialidade chamando a funcao criada
SELECT dbo.Q_Med_Esp('Pediatria') AS Quantidade_Medicos;

--consultando a idade do usu�rio em anos a partir da procedure criada
EXECUTE Idade 'Leila';

--consultando pacientes e suas consultas registradas (todos os status) --> "Prontu�rio"
SELECT Pacientes.NomePaciente,Medicos.NomeMedico,Consultas.DataConsulta,Consultas.HorarioConsulta,StatusConsultas.DescricaoStatusConsulta AS [Status],Consultas.DescricaoAtendimento
FROM Consultas
INNER JOIN Pacientes
ON Pacientes.IdPaciente = Consultas.IdPaciente
INNER JOIN StatusConsultas
ON Consultas.IdStatusConsulta = StatusConsultas.IdStatusConsulta
INNER JOIN Medicos
ON Medicos.IdMedico = Consultas.IdMedico
WHERE Pacientes.NomePaciente ='Leila';