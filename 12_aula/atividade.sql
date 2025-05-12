USE clinica_medica;
-- Resolver o exercício 1
-- Utilizar a função SUM() para somar os medicamentos (preco).
SELECT pacientes.nome, SUM(medicamentos.preco) as "Gastos com Medicamentos"
FROM pacientes JOIN historicomedico
ON pacientes.id = historicomedico.paciente_id JOIN prescricoes 
ON historicomedico.id = prescricoes.historico_medico_id JOIN medicamentos
ON medicamentos.id = prescricoes.medicamento_id
GROUP BY pacientes.nome;

-- MOSTRAR O TOTAL DE PRESCRIÇÕES POR PACIENTE
SELECT pacientes.nome, COUNT(prescricoes.id)
FROM pacientes JOIN historicomedico
ON pacientes.id = historicomedico.paciente_id JOIN prescricoes 
ON historicomedico.id = prescricoes.historico_medico_id
GROUP BY pacientes.nome; 

-- MOSTRAR OS MEDICAMENTOS DE CADA PRESCRIÇÃO
SELECT prescricoes.id "ID_Prescrição", medicamentos.nome "Medicamento"
FROM prescricoes JOIN medicamentos
ON prescricoes.medicamento_id = medicamentos.id;
