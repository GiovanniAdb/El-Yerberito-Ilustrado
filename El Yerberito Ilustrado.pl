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
aconito('Se requiere prescripcion medico-homeocopatica para usar esta planta, pues solo tocarla es peligroso').
adormidera('Adormidera o amapola, de sus petalos se obtiene un te muy bueno').
aguacate('Es reputado afrodisiaco y algo especial para los diabeticos por su falta de azucar y almidon').
ahuehuete('El Ahuehuete o el sabino se utiliza casi todo;hojas,corteza y frutos').
ajenjo('Usada desde tiempos remotos por los griegos y abusada por los franceses en forma del famoso licor "ABSINTHE" o ajenso, se toma en te, y Se cocinan las hojas y se toma 3 veces al dia').

%%Relaciones
%PLANTA(Aconito)
funcionPlantaAconito(aconito, 'Se utiliza en jaquecas serias').
funcionPlantaAconito(aconito, 'Se utiliza para el dolor de muelas').
funcionPlantaAconito(aconito, 'Se utiliza en ciatica').
funcionPlantaAconito(aconito, 'Se utiliza en dolores articulares o hidropesca').

%PLANTA(adormidera o amapola)
funcionPlantaAdormidera(adormidera, 'Para calmar dolores').
funcionPlantaAdormidera(adormidera, 'Bajar la fiebre').
funcionPlantaAdormidera(adormidera, 'Facilitar el sueño').
funcionPlantaAdormidera(adormidera, 'Curar la tos y el asma').
funcionPlantaAdormidera(adormidera, 'Hirbiendo la "cabeza" (sin semillas) resulta una cura contra la diarrea y disenteria').

%PLANTA(aguacate)
funcionPlantaAguacate(aguacate, 'La cascara es buenisima para expulsar lombrices').
funcionPlantaAguacate(aguacate, 'Para el dolor de cabeza').
funcionPlantaAguacate(aguacate, 'Con el hueso se prepara un aceite para el pelo que amenaza caerse').
funcionPlantaAguacate(aguacate, 'Cura la tiña').

%PLANTA(ahuehuete) o el sabino
funcionPlantaHuehuete(ahuehuete, 'Es muy util en arterosclerosis avanzada').
funcionPlantaHuehuete(ahuehuete, 'Favorece la circulacion, en forma de te 3 o 4 veces al dia').
funcionPlantaHuehuete(ahuehuete, varices).
funcionPlantaHuehuete(ahuehuete, hemorroides).
funcionPlantaHuehuete(ahuehuete, 'mala circulacion').
                        
%PLANTA(ajenjo)
funcionPlantaJenjo(ajenjo, 'Un te en ayunas es excelente en casos de colicos').
funcionPlantaJenjo(ajenjo, 'anorexia').
funcionPlantaJenjo(ajenjo, 'invasion de las lombrises').
funcionPlantaJenjo(ajenjo, 'disenteria').
funcionPlantaJenjo(ajenjo, 'atonia intestimal').
funcionPlantaJenjo(ajenjo, 'tambien funciona contra el mal aliento').
funcionPlantaJenjo(ajenjo, 'Aun el licor, usado moderadamente, es un buen estomacal y diuretico..').

%%Reglas
recetarAconito(X,Y,Z):-aconito(X), funcionPlantaAconito(Y,Z).
recetarAdormidera(X,Y,Z):-adormidera(X), funcionPlantaAdormidera(Y,Z).
recetarAguacate(X,Y,Z):-aguacate(X), funcionPlantaAguacate(Y,Z).
recetarAhuehuete(X,Y,Z):-ahuehuete(X), funcionPlantaHuehuete(Y,Z).
recetarAjenjo(X,Y,Z):-ajenjo(X), funcionPlantaJenjo(Y,Z).