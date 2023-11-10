SELECT 
    propietario,
    fecha_inicio,
    SUM(tiempo_efectivo) AS tiempo_efectivo_total,
    SUM(TIME_TO_SEC(TIMEDIFF(hora_fin, hora_inicio)) / 60) AS tiempo_real_total_minutos
FROM tbltareas
WHERE YEARWEEK(fecha_inicio, 1) = YEARWEEK(CURDATE(), 1) - 1
GROUP BY propietario, fecha_inicio;
