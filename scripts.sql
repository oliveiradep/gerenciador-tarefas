create schema gerenciador_tarefas;
use gerenciador_tarefas;

CREATE TABLE `tar_tarefas` (
  `tar_id` int NOT NULL AUTO_INCREMENT,
  `tar_titulo` varchar(50) NOT NULL,
  `tar_descricao` varchar(100) DEFAULT NULL,
  `tar_data_expiracao` date NOT NULL,
  `tar_is_concluida` bit NOT NULL DEFAULT false,
  PRIMARY KEY (`tar_id`)
);

CREATE TABLE `usr_usuarios` (
  `usr_id` int NOT NULL AUTO_INCREMENT,
  `usr_email` varchar(100) NOT NULL,
  `usr_senha` varchar(100) NOT NULL,
  PRIMARY KEY (`usr_id`)
);

alter table tar_tarefas add column usr_id int not null;
alter table tar_tarefas add constraint fk_tar_tarefas_usr_usuarios foreign key (usr_id) references usr_usuarios(usr_id);