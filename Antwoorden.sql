--opdracht 2-
SELECT deelname.periode, student.naam, vak.vaknaam, deelname.cijfer from deelname
JOIN student ON student.id = deelname.id
JOIN vak ON vak.code = deelname.vak
GROUP BY deelname.periode, vak.vaknaam, student.naam
ORDER BY deelname.periode, deelname.cijfer DESC, student.naam;

--opdracht 3--
SELECT drivers.forename, drivers.surname, pitstops.duration FROM drivers
JOIN pitstops ON pitstops.driverId = drivers.driverId
WHERE pitstops.duration < 25;
