/* 1. Calcolare il codice dei programmatori che sono stati autori di almeno un programma scritto in Java dopo il 2000. */
SELECT PR.codice, PR.nome
FROM programmatore AS PR, autore AS A, programma AS PM
WHERE PR.codice = A.codice
    AND A.id = PM.id
    AND PM.anno > 2000
    AND PM.linguaggio = 'Java'

/* 2. Calcolare il nome e la categoria dei programmatori che sono stati autori di almeno un programma scritto in un linguaggio diverso da Python, ordinando il risultato rispetto al nome dei programmatori. */
SELECT PR.nome, PR.categoria
FROM programmatore AS PR 
    JOIN autore AS A  
        ON PR.codice = A.codice 
    JOIN programma AS PM 
        ON PM.id = A.id
WHERE PM.linguaggio != 'Python'
ORDER BY PR.nome

/* 3. Per ogni programmatore di categoria 10, calcolare il suo codice e l'anno in cui ha scritto il primo programma in un linguaggio diverso da Java. */
SELECT PR.codice, min(PM.anno)
FROM programmatore AS PR 
    JOIN autore AS A  
        ON PR.codice = A.codice 
    JOIN programma AS PM 
        ON PM.id = A.id
WHERE PM.linguaggio != 'Java'
AND PR.categoria = 10
GROUP BY PR.codice


/* 4. Calcolare le coppie dei codici di programmatori che sono stati coautori di almeno un programma scritto in Python. */


/* 5. Calcolare il codice ed il nome dei programmatori che hanno scritto solo programmi Java. */
SELECT PR.codice, PR.nome
FROM programmatore AS PR 
    JOIN autore AS A  
        ON PR.codice = A.codice 
    JOIN programma AS PM 
        ON PM.id = A.id
WHERE PM.linguaggio = 'Java'

/* 6. Per ogni programmatore e per ogni anno calcolare il numero di programmi scritti da quel programmatore in quell’anno, mostrando codice del programmatore, anno e numero di programmi scritti. */

/* 7. Per ogni linguaggio calcolare quanti sono in media gli autori dei programmi scritti in quel linguaggio.