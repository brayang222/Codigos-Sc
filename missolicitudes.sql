SELECT 
    s.id,
    s.Idcliente,
    s.asunto,
    s.descripcion,
    s.idprioridad,
    s.propietario,
    s.fecha_inicio_creacion,
    s.hora_creacion,
    s.idliberacion,
    s.fecha_liberacion,
    s.fecha_inicio_programado,
    s.hora_inicio_programado,
    s.fecha_fin_programado,
    s.hora_fin_programado,
    s.fecha_estimada_facturacion,
    s.abierto_a_verificar,
    s.fecha_verificacion_manual,
    s.fecha_verificacion,
    s.pendientefacturar_a_facturar,
    s.facturar_a_facturado,
    s.idestado,
    s.creadopor,
    s.contacto,
    s.correo,
    s.causas,
    s.solucion,
    s.numero_factura,
    s.fechafacturacion,
    s.idproyecto,
    s.idcolor,
    s.valor_cotizacion,
    s.buffer2,
    s.verificacion,
    s.tiempo,
    s.recomendacion,
    s.valor_cotizado,
    s.sedes,
    s.idcontra,
    s.idservicio,
    c.nombre_empresa
FROM 
    controlit.tblsolicitudes s
INNER JOIN 
    controlit.tblclientes c ON s.Idcliente = c.id_cli
WHERE
    s.idestado = 1 
    AND propietario = '[usr_login]'
    AND YEAR(s.fecha_inicio_creacion) = YEAR(CURDATE());
