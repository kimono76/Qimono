Feature: modificar perfil en fichap mobile
Como empleado 
Quiero cambiar la información de mi perfil
Para notificar cambios a mi empleador.
Background:
Given poseeo un usuario registrado en Fichap


@perfil
Scenario Outline: Fichap.Modificar perfil exitoso.
When cliqueo menu.
And cliqueo perfil.
And modifico <nombre>,<apellido>,<Dni>,<Telefono>,<Email>,<Direccion>
And selecciono "Guardar"
Then se modifica los datos de perfil
Examples:
| Nombre	|  Apellido	| Dni		| Telefono		|  Email			| Direccion			|
| Pedro		|Rodriguez	|2950505	| 3451245		|pedro@gmail.com 	| San Juan 523.		|
|Marcelo    | Lopez		|124535		| 126546888		|mar@gmail.com   	| Entre Rios 1245.	|



@perfil
Scenario Outline: Fichap.Modificar perfil fallida por datos incompletos.
When cliqueo menu.
And cliqueo perfil.
And modifico <nombre>,<apellido>,<Dni>,<Telefono>,<Email>,<Direccion>
And selecciono "Guardar"
Then se visualiza un <alert>



Examples:
| Nombre  	|  Apellido  | Dni       	| Telefono  |  Email            | Direccion                     | Alert    								|
| Pedro     |            |2950505 		| 3451245   |pedro@gmail.com 	| San Juan 523.               	|El campo"Apellido"es obligatorio		|
|Marcelo    | Lopez      |124535  		|    	    |lopezm@gmail.com   | Entre Rios 1245.          	|El campo"Telefono"es obligatorio  		|
|           | Martinez   |456789  		|3452128    |jjsak123@gmai.com  | Hipolito Yrigoyen 1980. 		| El campo "Nombre"es obligatorio  		|
|Rodrigo	| Martinez   |            	|1515615    |jrodri89gmail.com  | Hipolito Yrigoyen 1520. 		| El campo "Dni"es obligatorio  		|
|Maria    	| Ferreyra   |4545655		|3452828    |                   | Bernardo de Yrigoyen 1888  	| El campo "Email"es obligatorio  		| 
|Juana   	| Lopez   	 |45416515		|4165415  	|Juana@gmail.com    |                               | El campo "Direccion"es obligatorio	|





@perfil
Scenario Outline: Cambiar informacion de perfil.Con datos erroneos.
When cliqueo menu.
And cliqueo perfil.
And modifico <nombre>,<apellido>,<Dni>,<Telefono>,<Email>,<Direccion>
And selecciono "guardar".
Then se guarda los datos.
Examples: 
| Nombre  	|  Apellido  	| Dni       | Telefono   	|  Email                | Direccion				|
|Pedro     |Rodriguez 		|fjkdsha   	| 3451245   	|pedro@gmail.com 		| San Juan 523.			|
|Marcelo    | Lopez      	|124535  	| alllldoej     |mar@gmail.com   		| Entre Rios 1245.		|
|Mauro      | Martinez   	|456789  	|3452128    	|jjsak123               | Hipolito Yrigoyen 1980|

