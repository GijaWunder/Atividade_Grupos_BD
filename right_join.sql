CREATE DATABASE f1_campeonato_avancado;
USE f1_campeonato_avancado;

CREATE TABLE fabricantes_motor (
id INT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
pais VARCHAR(40) NOT NULL
);

CREATE TABLE equipes (
id INT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
motor_id INT
);

CREATE TABLE pilotos (
id INT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
equipe_id INT
);

CREATE TABLE resultados_corrida (
id INT PRIMARY KEY,
piloto_id INT,
gp VARCHAR(50) NOT NULL,
posicao INT NOT NULL,
pontos INT NOT NULL
);

INSERT INTO fabricantes_motor VALUES
(1, 'Ferrari', 'Itália'),
(2, 'Mercedes-AMG', 'Alemanha'),
(3, 'Honda RBPT', 'Japão'),
(4, 'Audi', 'Alemanha');

INSERT INTO equipes VALUES
(1, 'Scuderia Ferrari', 1),
(2, 'McLaren F1', 2),
(3, 'Red Bull Racing', 3),
(4, 'Haas F1 Team', 1),
(5, 'Sauber', NULL),
(6, 'Andretti Cadillac', 99);

INSERT INTO pilotos VALUES
(10, 'Charles Leclerc', 1),
(20, 'Lando Norris', 2),
(30, 'Max Verstappen', 3),
(40, 'Gabriel Bortoleto', 5),
(50, 'Franco Colapinto', 77),
(60, 'Rubens Barrichello', NULL);

INSERT INTO resultados_corrida VALUES
(100, 10, 'GP de Interlagos', 1, 25),
(101, 20, 'GP de Monza', 2, 18),
(102, 30, 'GP de Interlagos', 2, 18),
(103, 50, 'GP de Interlagos', 10, 1),
(104, 88, 'GP de Interlagos', 5, 10);

-- está na sequência das questões

select pilotos.nome, resultados_corrida.pontos
from resultados_corrida right join pilotos
on pilotos.id = resultados_corrida.piloto_id
where resultados_corrida.gp = 'GP de Interlagos';

select fabricantes_motor.nome, equipes.nome 
from equipes right join fabricantes_motor
on fabricantes_motor.id = equipes.motor_id;

select e.id, e.nome, e.motor_id
from fabricantes_motor fm
right join equipes e on fm.id = e.motor_id
where fm.id is null;

select fm.nome as fabricante, e.nome as equipe, p.nome as piloto
from fabricantes_motor fm
right join equipes e on fm.id = e.motor_id
right join pilotos p on e.id = p.equipe_id;

select p.nome as piloto, r.gp, r.pontos
from resultados_corrida r
right join pilotos p on r.piloto_id = p.id
where r.gp = 'GP de Interlagos';

select e.nome as equipe
from pilotos p
right join equipes e on e.id = p.equipe_id
where p.id is null;
