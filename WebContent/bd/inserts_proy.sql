-- -----------------------------------------------------
-- Data for table `bd_proydawi`.`tb_tipoUsuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `bd_proydawi`;
INSERT INTO `bd_proydawi`.`tb_tipoUsuario` (`id_tipoUsu`, `desc`) VALUES (1, 'DBA');
INSERT INTO `bd_proydawi`.`tb_tipoUsuario` (`id_tipoUsu`, `desc`) VALUES (2, 'Desarrollador');
INSERT INTO `bd_proydawi`.`tb_tipoUsuario` (`id_tipoUsu`, `desc`) VALUES (3, 'Analista');

COMMIT;

-- -----------------------------------------------------
-- Data for table `bd_proydawi`.`tb_usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `bd_proydawi`;
INSERT INTO `bd_proydawi`.`tb_usuario` (`id_usu`, `clave`, `nombre`, `apellido`, `id_tipoUsu`) VALUES ('admin', '123', 'Yvan', 'Lopez', 1);
INSERT INTO `bd_proydawi`.`tb_usuario` (`id_usu`, `clave`, `nombre`, `apellido`, `id_tipoUsu`) VALUES ('lpalacios', '111', 'Luis', 'Palacios', 2);
INSERT INTO `bd_proydawi`.`tb_usuario` (`id_usu`, `clave`, `nombre`, `apellido`, `id_tipoUsu`) VALUES ('jromani', '222', 'Jose', 'Romani', 3);
INSERT INTO `bd_proydawi`.`tb_usuario` (`id_usu`, `clave`, `nombre`, `apellido`, `id_tipoUsu`) VALUES ('jdark', '666', 'Jeyson', 'Dark', 2);

COMMIT;