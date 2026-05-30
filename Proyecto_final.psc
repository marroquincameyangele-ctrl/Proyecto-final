Proceso Proyecto_final
	
	definir op Como Entero;
	Definir repeat Como Caracter;
	
	//VARIABLES USADAS DE INCISO 1 AL 4
	Definir n1 Como Entero;
	Definir n2 Como Entero;
	//VARIABLES PARA MATRICES
	Definir matriz1R Como Entero;
	Definir matriz1S Como Entero;
	Definir matriz2S Como Entero;
	Definir matrizS Como Entero;
	Definir matriz3S Como Entero;
	Definir matrizRR Como Entero;
	Definir matriz1RR Como Entero;
	Definir matriz2RR Como Entero;
	Definir s Como Entero;
	Definir v1 Como Entero; // usado tamb para insico 11
	Definir v2 Como Entero; //usado tambien para inciso 11
	Definir Stotal Como Entero;
	Definir Rtotal Como Entero;
	//variables del inciso 9 y 10
	Definir col Como Entero; 
	Definir row Como Entero;
	Definir size Como Entero;
	//variables inciso 11
	Definir list Como Entero;
	Definir n Como Entero;
	Definir average Como Real;
	Definir dig_total Como Entero;
	Definir n_less Como Entero;
	Definir n_greater Como Entero;
	Definir Greater_than Como Entero;
	Definir Less_than Como Entero;
	
Repetir //es para repetir todo el programa
	
	Limpiar Pantalla;
	
	repetir //solamente se repetira el apartado de selección de opcion de menú
		
		Escribir "====================";
		Escribir "   Menú Principal   ";
		Escribir "====================";
		
		Escribir "1. Suma";
		Escribir "2. Resta";
		Escribir "3. Multiplicación";
		Escribir "4. División";
		Escribir "5. Sumar todos los valores de una matriz";
		Escribir "6. Restar todos los valores de una matriz";
		Escribir "7. Suma de matrices";
		Escribir "8. Resta de matrices";
		Escribir "9. Triángulo con números impares";
		Escribir "10. Cuadrado con asteriscos";
		Escribir "11. Estadísticas en una lista de números";
	
		Escribir "Elija una de las opciones indicadas del 1 al 11 que desea trabajar: "Sin Saltar;
		leer op;
	
		si op<=0 o op>11 Entonces
			Limpiar Pantalla;
			Escribir "!!!!El valor indicado no es valido intente de nuevo¡¡¡¡";
			Escribir "";
		FinSi
	
	Hasta Que op>0 y op<=11

	Segun op Hacer
		1: //Suma
			
			Limpiar Pantalla;
			
			Escribir "============";
			Escribir "Eligió Suma";
			Escribir "============";
			Escribir "";
				Escribir "Ingrese el primer número a operar: "Sin Saltar;
					leer n1;
				Escribir "Ingrese el segundo número a operar:"Sin Saltar;
				leer n2;
				Escribir "";
				Escribir "El resultado de la suma de sus números  ingresados es: ", n1+n2;
			
		2: //Resta
			
			Limpiar Pantalla;
			
			Escribir "============";
			Escribir "Eligió Resta";
			Escribir "============";
			Escribir "";
				Escribir "Ingrese el primer número a operar: "Sin Saltar;
					leer n1;
				Escribir "Ingrese el segundo número a operar:"Sin Saltar;
					leer n2;
				Escribir "";
				Escribir "El resultado de la resta de sus números  ingresados es: ", n1-n2;
			
		3: //Multiplicación
			
			Limpiar Pantalla;
			
			Escribir "=====================";
			Escribir "Eligió Multiplicación";
			Escribir "=====================";
			Escribir "";
				Escribir "Ingrese el primer número a operar: "Sin Saltar;
					leer n1;
				Escribir "Ingrese el segundo número a operar:"Sin Saltar;
					leer n2;
				Escribir "";
				Escribir "El resultado de la multiplicación de sus números ingresados es: ", n1*n2;
			
		4: //División
			
			Limpiar Pantalla;
			
			Escribir "===============";
			Escribir "Eligió División";
			Escribir "===============";
			Escribir "";
				Escribir "Ingrese el primer número a operar: "Sin Saltar;
					leer n1;
				Escribir "Ingrese el segundo número a operar:"Sin Saltar;
					leer n2;
				Escribir "";
					
				si	n2=0 Entonces
					Escribir "no se puede Dividir entre 0";
				sino
					Escribir "El resultado de la división de sus números ingresados es: ", n1/n2;
				finsi
			
		5: //Sumar todos los valores de la matriz
			
			Limpiar Pantalla;
			
			Escribir "==========================================";
			Escribir "Eligió Sumar todos los valores una matriz";
			Escribir "==========================================";
			Escribir "";
			
			Escribir "Indique la medida de su matriz: "Sin Saltar;
			leer s;
			Dimensionar matrizS(s,s);
			
			Escribir "";
			
			Para v1 <- 0 Hasta s - 1 Con Paso 1 Hacer
				Para v2 <- 0 Hasta s - 1 Con Paso 1 Hacer
					Escribir "Ingrese los datos de izquierda a derecha de la fila ",v1+1," y columna ",v2+1,": "Sin Saltar;
					Leer matrizS[v1, v2];
				FinPara
			FinPara
			
			Stotal<-0;
			
			Para v1 <- 0 Hasta s - 1 Con Paso 1 Hacer
				para v2 <- 0 Hasta s - 1 Con Paso 1 Hacer
				Stotal <- Stotal + matrizS[v1, v2];
				FinPara
			FinPara
			
			Limpiar Pantalla;
			
			Escribir "la matriz ingresada fue: ";
			Escribir "";
			Para v1 <- 0 Hasta s - 1 Con Paso 1 Hacer
				Para v2 <- 0 Hasta s - 1 Con Paso 1 Hacer
					Escribir Sin Saltar matrizS[v1, v2], " ";
				FinPara
				Escribir ""; 
			FinPara
			
			Escribir "";
			Escribir "La suma de todos los valores de tu matriz es: ",Stotal;
			
		6: //Restar todos los valores de la matriz
			
			Limpiar Pantalla;
			
			Escribir "==========================================";
			Escribir "Eligió Restar todos los valores una matriz";
			Escribir "==========================================";
			Escribir "";
			
			Escribir "Indique la medida de su matriz: "Sin Saltar;
			leer s;
			Dimensionar matriz1R(s,s);
			
			Escribir "";
			
			Para v1 <- 0 Hasta s - 1 Con Paso 1 Hacer
				Para v2 <- 0 Hasta s - 1 Con Paso 1 Hacer
					Escribir "Ingrese los datos de izquierda a derecha de la fila ",v1+1," y columna ",v2+1,": "Sin Saltar;
					Leer matriz1R[v1, v2];
				FinPara
			FinPara
			
			Rtotal<-matriz1R[0, 0];
			
			Para v1 <- 0 Hasta s - 1 Con Paso 1 Hacer
				para v2 <- 0 Hasta s - 1 Con Paso 1 Hacer
					si v1<>0 o v2<>0 Entonces
						Rtotal <- Rtotal - matriz1R[v1, v2];
					FinSi
				FinPara
			FinPara
			
			Limpiar Pantalla;
			
			Escribir "la matriz ingresada fue: ";
			Escribir "";
			Para v1 <- 0 Hasta s - 1 Con Paso 1 Hacer
				Para v2 <- 0 Hasta s - 1 Con Paso 1 Hacer
					Escribir Sin Saltar matriz1R[v1, v2], " ";
				FinPara
				Escribir ""; 
			FinPara
			
			Escribir "";
			Escribir "La Resta de todos los valores de tu matriz es: ",Rtotal;
			
		7: //Suma de matrices
			
			Limpiar Pantalla;
			
			Escribir "=======================";
			Escribir "Eligió Suma de matrices";
			Escribir "=======================";
			Escribir "";
			
			Escribir "Indique la medida de sus matrices: "Sin Saltar;
			leer s;
			Dimensionar matriz1S(s,s);
			Dimensionar matriz2S(s,s);
			Dimensionar matriz3S(s,s);
			
			Escribir "";
			
			Para v1 <- 0 Hasta s - 1 Con Paso 1 Hacer
				Para v2 <- 0 Hasta s - 1 Con Paso 1 Hacer
					Escribir "Ingrese los datos de la matriz 1 de izquierda a derecha de la fila ",v1+1;
					Escribir "y columna ",v2+1,": "Sin Saltar;
					Leer matriz1S[v1, v2];
				FinPara
			FinPara
			
			Escribir "";
			
			Para v1 <- 0 Hasta s - 1 Con Paso 1 Hacer
				Para v2 <- 0 Hasta s - 1 Con Paso 1 Hacer
					Escribir "Ingrese los datos de la matriz 2 de izquierda a derecha de la fila ",v1+1;
					Escribir "y columna ",v2+1,": "Sin Saltar;
					Leer matriz2S[v1, v2];
				FinPara
			FinPara
			
			Limpiar Pantalla;
			
			Escribir "la matrices ingresadas fueron: ";
			Escribir "";
			Escribir "Matriz 1";
			
			Para v1 <- 0 Hasta s - 1 Con Paso 1 Hacer
				Para v2 <- 0 Hasta s - 1 Con Paso 1 Hacer
					Escribir Sin Saltar matriz1S[v1, v2], " ";
				FinPara
				Escribir ""; 
			FinPara
			
			Escribir "";
			Escribir "Matriz 2";
			
			Para v1 <- 0 Hasta s - 1 Con Paso 1 Hacer
				Para v2 <- 0 Hasta s - 1 Con Paso 1 Hacer
					Escribir Sin Saltar matriz2S[v1, v2], " ";
				FinPara
				Escribir ""; 
			FinPara
			
			//suma
			
			Para v1 <- 0 Hasta s - 1 Con Paso 1 Hacer
				para v2 <- 0 Hasta s - 1 Con Paso 1 Hacer
					matriz3S[v1,v2] <- matriz2S[v1,v2] + matriz1S[v1, v2];
				FinPara
			FinPara
			
			Escribir "";
			Escribir "El resultado de la suma de ambas matrices es:";
			
			Escribir "";
			Para v1 <- 0 Hasta s - 1 Con Paso 1 Hacer
				Para v2 <- 0 Hasta s - 1 Con Paso 1 Hacer
					Escribir Sin Saltar matriz3S[v1, v2], " ";
				FinPara
				Escribir ""; 
			FinPara
			
			
		8: //Resta de matrices
			
			Limpiar Pantalla;
			
			Escribir "========================";
			Escribir "Eligió Resta de matrices";
			Escribir "========================";
			Escribir "";
			
			Escribir "Indique la medida de sus matrices: "Sin Saltar;
			leer s;
			Dimensionar matriz1RR(s,s);
			Dimensionar matriz2RR(s,s);
			Dimensionar matrizRR(s,s);
			
			Escribir "";
			
			Para v1 <- 0 Hasta s - 1 Con Paso 1 Hacer
				Para v2 <- 0 Hasta s - 1 Con Paso 1 Hacer
					Escribir "Ingrese los datos de la matriz 1 de izquierda a derecha de la fila ",v1+1;
					Escribir "y columna ",v2+1,": "Sin Saltar;
					Leer matriz1RR[v1, v2];
				FinPara
			FinPara
			
			Escribir "";
			
			Para v1 <- 0 Hasta s - 1 Con Paso 1 Hacer
				Para v2 <- 0 Hasta s - 1 Con Paso 1 Hacer
					Escribir "Ingrese los datos de la matriz 2 de izquierda a derecha de la fila ",v1+1;
					Escribir "y columna ",v2+1,": "Sin Saltar;
					Leer matriz2RR[v1, v2];
				FinPara
			FinPara
			
			Limpiar Pantalla;
			
			Escribir "la matrices ingresadas fueron: ";
			Escribir "";
			Escribir "Matriz 1";
			
			Para v1 <- 0 Hasta s - 1 Con Paso 1 Hacer
				Para v2 <- 0 Hasta s - 1 Con Paso 1 Hacer
					Escribir Sin Saltar matriz1RR[v1, v2], " ";
				FinPara
				Escribir ""; 
			FinPara
			
			Escribir "";
			Escribir "Matriz 2";
			
			Para v1 <- 0 Hasta s - 1 Con Paso 1 Hacer
				Para v2 <- 0 Hasta s - 1 Con Paso 1 Hacer
					Escribir Sin Saltar matriz2RR[v1, v2], " ";
				FinPara
				Escribir ""; 
			FinPara
			
			//resta
			
			Para v1 <- 0 Hasta s - 1 Con Paso 1 Hacer
				para v2 <- 0 Hasta s - 1 Con Paso 1 Hacer
						matrizRR[v1,v2] <- matriz1RR[v1,v2] - matriz2RR[v1, v2];
				FinPara
			FinPara
			
			Limpiar Pantalla;
			
			Escribir "";
			Escribir "El resultado de la Resta de ambas matrices es:";
			
			Escribir "";
			Para v1 <- 0 Hasta s - 1 Con Paso 1 Hacer
				Para v2 <- 0 Hasta s - 1 Con Paso 1 Hacer
					Escribir Sin Saltar matrizRR[v1, v2], " ";
				FinPara
				Escribir ""; 
			FinPara
			
		9: //Triángulo con números
			
			Limpiar Pantalla;
			
			Escribir "====================================";
			Escribir "Eligió Triángulo con números impares";
			Escribir "====================================";
			
			Escribir "";
			
			Escribir "Ingrese el ancho que desea tener en el triangulo: "Sin Saltar;
			leer size;
			Escribir "";
			
			para row<-1 Hasta size Con Paso 1 Hacer
				
				Para col<-row Hasta 1 Con Paso -1 Hacer
					Escribir 2*col-1," "Sin Saltar;
				FinPara
				
				Escribir "";
			FinPara
			
		10: //Rectángulo con asteriscos
			
			Limpiar Pantalla;
			
			Escribir "==============================";
			Escribir "Eligió Cuadrado con asteriscos";
			Escribir "==============================";
			
			Escribir ""; 
			
			Escribir "Elija la medida de su cuadrado: "Sin Saltar;
			leer size;
			
			Escribir "";
			
			Para row<-1 Hasta size Con Paso 1 Hacer
				Para col<-1 Hasta size Con Paso 1 Hacer
					si row=1 o row=size Entonces
						Escribir "* "Sin Saltar;
					SiNo
						si col=1 o col=size Entonces
							Escribir "* "Sin Saltar;
						SiNo
							Escribir "  "Sin Saltar;
						FinSi
					FinSi
				FinPara
				
				Escribir "";
				
			FinPara
			
		11: //Estadísticas en una lista de números
			
			Limpiar Pantalla;
			
			Escribir "===========================================";
			Escribir "Eligió Estadísticas en una lista de números";
			Escribir "===========================================";
			Escribir "";
			
			v2<-0;// evaluaciones y ingresos de datos
			Dimensionar list(105);
			
			Repetir
				Escribir "Ingrese los números que desea evaluar (maximo 100 números): "Sin Saltar;
				Leer n;
				si n<>(-1) Entonces
					v2<-v2+1;
					list[v2]<-n;
					Escribir ""Sin Saltar;
					Escribir "lleva ",v2," números, ingrese -1 si desea acabar";
				FinSi
			Hasta Que n=-1 o v2=100
			
			Limpiar Pantalla;
			
			Si v2=0 Entonces
				Escribir "No ingresó ningún número";
			Sino	
				Stotal<-0;
				average<-0;
				dig_total<-0;
				n_less<-list[1];
				n_greater<-list[1];
				Less_than<-0;
				Greater_than<-0;
				
				Escribir "la Lista de números ingresada fue:";
				Escribir "";
				Para v1 <- 1 Hasta v2 Con Paso 1 Hacer
					si v1=16 o v1=28 o v1=40 o v1=52 o v1=64 o v1=76 o v1=88 o v1=100 Entonces
						Escribir "";
						//esto es para que no se sobre sature la pagina
						Escribir Sin Saltar list[v1], " ";
						si list[v1]>n_greater  Entonces
							n_greater<-list[v1]; //n mayor
						FinSi 
						si list[v1]<n_less Entonces
							n_less<-list[v1]; //n menor
						FinSi
						Stotal <- Stotal + list[v1]; //suma total
						dig_total<- v1; //total dig ingresados
					sino
						Escribir Sin Saltar list[v1], " ";
						si list[v1]>n_greater  Entonces
						n_greater<-list[v1]; //n mayor
						FinSi 
						si list[v1]<n_less Entonces
							n_less<-list[v1]; //n menor
						FinSi
						Stotal <- Stotal + list[v1]; //suma total
						dig_total<- v1; //total dig ingresados
					FinSi
				FinPara
				
				average <- Stotal / dig_total; // promedio
				
				Para v1 <- 1 Hasta v2 Con Paso 1 Hacer
					Si list[v1] > average Entonces
						Greater_than <- Greater_than + 1;
					SiNo
						Si list[v1] < average Entonces
							Less_than <- Less_than + 1;
						FinSi
					FinSi
				FinPara
				
				Escribir ""; 
				Escribir "";
				
				Escribir "La suma de sus dígitos es: ",Stotal;
				Escribir "El promedio de sus dígitos es: ",average;
				Escribir "El número más grande ingresado es: ",n_greater;
				Escribir "El número más pequeño ingresado es: ",n_less;
				Escribir "hay ",Greater_than," números arriba del promedio";
				Escribir "hay ",Less_than," números abajo del promedio";
			FinSi
			
			
		
	FinSegun
	
	//evaluando si se quiere repetir el programa o nel y si se ingreso el dato correcto
	Repetir
		Escribir "";
		Escribir "¿Desea realizar otra operación? (Y/N) ";
			Leer repeat;
		si repeat<>"Y" y repeat<>"y" y repeat<>"N" y repeat<>"n" Entonces
			Limpiar Pantalla;
			Escribir "solamente es valido ingresar Y o N";
		SiNo
			Si repeat="N" o repeat="n" Entonces
				Escribir "";
				Escribir "Adiós! Gracias por su Preferencia!!";
			FinSi
		FinSi
	Hasta Que repeat="Y" o repeat="y" o repeat="n" o repeat="N"
	
Hasta Que repeat="n" o repeat="N"

FinProceso