%Hechos
curandero('El curandero conoce las hierbas y sabe curar al enfermo, ademas prefiere que el enfermo lo crea un intermediario de los dioses').

medicos_espanoles('El medico español atribuye sus curaciones a la Virgen').

medicinaDeLaNaturaleza('Las plantas son la medicina de la naturaleza').

%%
contenidoVariablePlanta(vitaminas).
contenidoVariablePlanta(hormonas).
contenidoVariablePlanta(minerales).
contenidoVariablePlanta(metaloides).
contenidoVariablePlanta(proteinas).
contenidoVariablePlanta(oligoelementos).
contenidoVariablePlanta(enzimas).
contenidoVariablePlanta(alcaloides).

%%
causa_de_los_medicamentos('Congestion hepatica o renal').
causa_de_los_medicamentos('Fatiga excesiva').
causa_de_los_medicamentos('Adiccion').
causa_de_los_medicamentos('Alergias').
causa_de_los_medicamentos('Eliminacion de la flora intestinal').
causa_de_los_medicamentos('Gastritis').
causa_de_los_medicamentos('Colitis').

%%Relaciones
plantaMedicinales(abrojo, 'Se usa como biuretico para curar afecciones del pecho, inflamacion de los ojos e higado y para favorecer la circulacion de la sangre').
plantaMedicinales(acacia, 'Aliviar gargantas estropeadas y en quemaduras').
plantaMedicinales(acanto, 'Las hojas de acanto aplicadas sobre la picadura de araña desinflaman y sacan el veneno').
plantaMedicinales(aceitilla, 'Se usa cuando hay cansancio intelectual y en la depresion nerviosa').
plantaMedicinales(achicoria, 'Util en casos de dificil digestion, colicos biliosos, estreñimiento, disminuye la blis y purifca los riñones').

%%
formas_de_usar_plantas(cocimiento,'Hervir agua, poner la hierba o raiz por 10 minutos, dejar reposar 5 minutos y tomarlo ya colado').
formas_de_usar_plantas(infusion, 'Hervir el agua en un recipiente y vaciarla ya hervida y todavia hirviendo en otro donde se depositara previamente la planta, tapar y dejar en reposo en 5 minutos, colar y tomar').
formas_de_usar_plantas(maceracion,'Triturar la planta, y sumegirla en poca agua y dejar remojar').
formas_de_usar_plantas(jarabe,'hervir la planta en agua durante 10 min, ponerle azucar, una vez frio se cuela y se añade 10% de alcohol de caña y envasar').
formas_de_usar_plantas(tintura,'En envase con corcho poner la planta triturada y se agrega alcohol de caña y agua destilada, reposar en oscuridad una o dos semanas').
formas_de_usar_plantas(jugo,'Exprimir la planta en un trapo limpio').
formas_de_usar_plantas(horchata,'Se muelen las semillas agregando de poco en poco agua para formar una masilla, se cuela, se endulza y agrega agua para tomar').

%%Reglas
conocimiento_herbolaria(X,Y):-formas_de_usar_plantas(X,Y). 

propiedadesPlantas(X):-contenidoVariablePlanta(X).

medicamentos(X,Y):-medicos_espanoles(X),causa_de_los_medicamentos(Y).

fortablecimientoDePlantas(X,Z):-plantaMedicinales(X,Z).
fortablecimientoPlantas(X,Y,W,Z):-curandero(X),fortablecimientoDePlantas(Y,W),medicinaDeLaNaturaleza(Z).

%PLANTA(Aconito)
%Hechos
datosPlanta('Se requiere prescripcion medico-homeocopatica para usar esta planta, pues solo tocarla es peligroso').
datosPlanta('Adormidera o amapola, de sus petalos se obtiene un te muy bueno').
datosPlanta('Es reputado afrodisiaco y algo especial para los diabeticos por su falta de azucar y almidon').
datosPlanta('El Ahuehuete o el sabino se utiliza casi todo;hojas,corteza y frutos').
datosPlanta('Usada desde tiempos remotos por los griegos y abusada por los franceses en forma del famoso licor "ABSINTHE" o ajenso, se toma en te, y Se cocinan las hojas y se toma 3 veces al dia').

%%Relaciones
%PLANTA(Aconito)
plantaEspecifica(aconito,'Se requiere prescripcion medico-homeocopatica para usar esta planta, pues solo tocarla es peligroso, se prepara en forma de extracto fluido en forma de pomada o gel.','jaquecas serias').
plantaEspecifica(aconito,'Para el dolor de muelas marca diablo se frota la encia con el extracto y se introduce en las caries un algodon empapado en aconito y santo remedio','dolor de muelas').
plantaEspecifica(aconito,', se prepara en forma de extracto fluido en forma de pomada o gel.','ciatica').
plantaEspecifica(aconito,'Se requre prescripcion medico-homeocopatica para usar esta planta, pues solo tocarla es peligroso, , se prepara en forma de extracto fluido en forma de pomada o gel.','dolores articulares').
plantaEspecifica(aconito,'Se prepara en forma de extracto fluido en forma de pomada o gel.','hidropesca').

%PLANTA(adormidera o amapola)
plantaEspecifica(adormidera,'Adormidera o amapola, de sus petalos se obtiene un te muy bueno','Calmar dolores').
plantaEspecifica(adormidera,'De sus petalos se obtiene un te muy bueno','dolores').
plantaEspecifica(adormidera,'De la amapola se obtiene el opio','fiebre').
plantaEspecifica(adormidera,'De sus petalos se obtiene un te muy bueno','Facilitar el sueño').
plantaEspecifica(adormidera,'De sus petalos se obtiene un te muy bueno','Tos').
plantaEspecifica(adormidera,'De sus petalos se obtiene un te muy bueno','Asma').
plantaEspecifica(adormidera,'Hirbiendo la cabeza sin semillas','diarrea').
plantaEspecifica(adormidera,'En lavativa','disenteria').
plantaEspecifica(adormidera,'De sus petalos se obtiene un te muy bueno','Hirbiendo la "cabeza" (sin semillas) resulta una cura contra la diarrea').

%PLANTA(aguacate)
plantaEspecifica(aguacate,'La cascara es buena en contra de las lombrices', lombrices).
plantaEspecifica(aguacate,'Hojas de aguacate hervidas (previamente lavadas) para crear compresas y usarse para el dolor de cabeza', 'dolor de cabeza').
plantaEspecifica(aguacate,'Con el hueso se prepara un aceite, el cual se untara en el cabello', 'caida de cabello').
plantaEspecifica(aguacate,'Usar una mascarilla con un hueso de aguacate triturado', 'la tiña').

%PLANTA(ahuehuete) o el sabino
plantaEspecifica(ahuehuete,'El Ahuehuete o el sabino se utiliza casi todo;hojas,corteza y frutos, se pone en agua hirbiendo y se toma como te, 3 o 4 veces al dia', 'arterosclerosis avanzada').
plantaEspecifica(ahuehuete,'El sabino se pone en agua hirbiendo y se toma como te, 3 o 4 veces al dia', 'circulacion').
plantaEspecifica(ahuehuete,'El sabino se pone en agua hirbiendo y se toma como te, 3 o 4 veces al dia', varices).
plantaEspecifica(ahuehuete,'El sabino se pone en agua hirbiendo y se toma como te, 3 o 4 veces al dia', hemorroides).
plantaEspecifica(ahuehuete,'El Ahuehuete o el sabino se utiliza casi todo;hojas,corteza y frutos, se pone en agua hirbiendo y se toma como te, 3 o 4 veces al dia', 'mala circulacion').

%PLANTA(ajenjo)
plantaEspecifica(ajenjo,'Se cocinan las hojas y se toma como un te en ayunas','casos de colicos').
plantaEspecifica(ajenjo,'Se cocinan las hojas y se toma como un te en ayunas', 'anorexia').
plantaEspecifica(ajenjo,'Se cocinan las hojas y se toma como un te en ayunas', 'invasion de las lombrises').
plantaEspecifica(ajenjo,'Se cocinan las hojas y se toma como un te en ayunas', 'disenteria').
plantaEspecifica(ajenjo,'Se cocinan las hojas y se toma como un te en ayunas', 'atonia intestimal').
plantaEspecifica(ajenjo,'Se cocinan las hojas y se toma 3 veces al dia', 'mal aliento').
plantaEspecifica(ajenjo,'Se cocinan las hojas y se toma 3 veces al dia', 'estomacal').
plantaEspecifica(ajenjo,'Aun el licor es un buen', 'diuretico').

%%Reglas
recetarPlanta(X,Y,W):-plantaEspecifica(X,Y,W).