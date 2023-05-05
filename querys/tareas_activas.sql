select * from actividades;

select DISTINCT proyectos.* from proyectos 
INNER JOIN actividades 
on proyectos.id_proyectos= {{table1.selectedRow.id_proyecto}};

select DISTINCT usuarios.* from usuarios INNER JOIN asignados on usuarios.id_usuario= asignados.id_usuarios 
INNER JOIN actividades 
on asignados.id_actividad= {{table1.selectedRow.id_actividad}};