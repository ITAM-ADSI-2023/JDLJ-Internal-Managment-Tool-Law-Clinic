select * from casos;

select * FROM casos 
where casos.id_caso = {{table1.selectedRow.id_caso}};

select DISTINCT * from usuarios, miembros_caso, casos 
where usuarios.id_usuario = miembros_caso.usuario_id 
and miembros_caso.caso_id = casos.id_caso 
and casos.id_caso = {{table1.selectedRow.id_caso}};

