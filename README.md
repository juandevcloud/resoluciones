# Resoluciones 
A continuación se presenta las soluciones de los ejercicios de prueba.

## Ejercicio 2
Las siguientes preguntas están orientadas a la comprensión del protocolo HTTP. Son agnósticas al lenguaje de programación, la idea es comprender los conceptos del estándar: 

1. ¿Qué es un servidor HTTP? 
	En un programa que responde usando el protocolo HTTP las peticiones  HTTP hechas por un cliente.
	
2. ¿Qué son los verbos HTTP? Mencionar los más conocidos 
	Los verbos HTTP se usan para indicar la acción que se desea realizar sobre un recurso.
	Las más conocidas son:
	- GET: Se usa para recuperar datos del servidor web.
	- POST: Es muy usado para enviar datos al servidor web.
	- PUT: Es usado para actualizar los datos del servidor web.
3. ¿Qué es un request y un response en una comunicación HTTP? ¿Qué son los headers? 
	- El request es una petición HTTP hecha por un cliente a un servidor web.
	- El HTTP response es la respuesta HTTP de una petición HTTP hecha por un cliente.
	Los headers se usan para agregar información adicional de las peticiones y respuestas HTTP, como puede ser los permisos para acceder a un recurso, el tipo de recurso , el algoritmo de codificación, etc. 
4. ¿Qué es un queryString? (En el contexto de una url) 
	- Es un parámetro que se incluye al final de una url, el parámetro tiene un nombre y valor separados por el símbolo  :. Una url puede tener varios parámetros los cuales son separados por el símbolo &. Es muy usado para modificar el contenido de una página, conocer desde que fuente se llego a la página, para rellenar los campos de un formulario, entre otros.

5. ¿Qué es el responseCode? ¿Qué significado tiene los posibles valores devueltos? 
	- Es el código de repuesta de una solicitud HTTP, la cual indica el estado de la solicitud. Los estados se agrupan en cinco partes: de 100-199 son para respuestas Informativas, de 200-299 Son Respuestas Satisfactorias(200 es una respuesta de conexión exitosa que un desarrollador desea ver), de 300-399 son para Redirecciones (muy habitual cuando se prueban nuevas funciones), de 400-499 son errores de los clientes(de aquí el muy temido 404 que aparece cuando no se encuentra el contenido solicitado),  por último de 500-599 son errores de los servidores el 500 también es popular por que indica un error general en le servidor.
	
6. ¿Cómo se envía la data en un Get y cómo en un POST? 
	- En un Get los datos son parámetros pasados  al servidor  a traves de la url, en un POST los datos se envían en  el cuerpo de la petición, el tipo de dato que se desea enviar es definido en la cabecera.
7. ¿Qué verbo http utiliza el navegador cuando accedemos a una página? 
	- Se utiliza el verbo GET porque se quiere obtener datos del servidor web.
8. Explicar brevemente qué son las estructuras de datos JSON y XML dando ejemplo de estructuras posibles.
    - JSON es una forma de almacenar datos que utiliza la misma estructura para definir un objeto javascript, es fácil de usar y transportar muy usado en las api’s web. Aquí un ejemplo:
    
    ```json
    {
    "id": "512",
    "properties": {
        "company": "Biglytics",
        "createdate": "2019-10-30T03:30:17.883Z",
        "email": "bcooper@biglytics.net",
        "firstname": "Bryan",
        "lastmodifieddate": "2019-12-07T16:50:06.678Z",
        "lastname": "Cooper",
        "phone": "(877) 929-0687",
        "website": "biglytics.net"
    },
    "createdAt": "2019-10-30T03:30:17.883Z",
    "updatedAt": "2019-12-07T16:50:06.678Z",
    "archived": false
    }
    ```
    por otro lado XML es un lenguaje para definir información a través de etiquetas, es más complejo que json, ya que tienes que indicar donde termina la definición de un dato. Un ejemplo de XML es HTML.

9. Explicar brevemente el estándar SOAP 
	- Es un protocolo para intercambiar información de manera distribuida, el intercambio de datos es en formato xml y la vía de comunicación usual es http. Es complejo al establecer reglas.

10. Explicar brevemente el estándar REST Full 
	- Es una interfaz entre sistemas que usan HTTP para operar los datos donde el formato de mensajería es muy flexible, sin embargo predomina JSON.
11. ¿Qué son los headers en un request? ¿Para qué se utiliza el key Content-type en un header? 
	- Los headers en un request son utilizados para agregar información de autenticación, autorización , tipo de dato, entre otros.
	- El Content-type es usado para indicar el tipo de dato que se envía al servidor, además de indicar el estándar de codificación de los caracteres. Por ejemplo en el envió de un formulario el Content-type tiene el valor de multipart/form-data. 

## Ejercicio 3
Imagen correspondiente al punto 1

![ex3p1-1](https://user-images.githubusercontent.com/74920414/143613268-5f565cad-f277-4314-a5b5-8b4948184678.png)

Imagen correspondiente al punto 2

![ex3p2-1](https://user-images.githubusercontent.com/74920414/143613244-3324bb95-a436-4296-9b5b-588fa102958b.png)

Imagen correspondiente al punto 3

![ex3p3-1](https://user-images.githubusercontent.com/74920414/143613231-e93c4c17-6177-46f4-a438-664dc6134e79.png)

¿Qué diferencias se observan entre las llamadas el punto 1 y 3?
En el punto 1 se listan los contactos con nombre y correo además de un identificador, en el punto 3 se listan los mismos contactos con la diferencia de que ahora ya se incluye mi 
nombre y correo en el json de respuesta.

## Ejercicio 4

Les dejo el link del [Perfil de Trailhead](https://trailblazer.me/id/calancarlos).

## Ejercicio 5

Explicar que son conceptualmente, qué datos almacenan en forma estándar y cómo se relacionan el resto (algunos no se relacionan entre sí) cada uno de los siguientes objetos de Salesforce:

1. Lead
	- Un lead es un potencial cliente que demostró interés en un producto o servicio ofrecido por la marca a través  de la interacció con contenidos  y otros materiales. Cuando cambias un conocimiento que es de interés del usuario por su informacion de contacto, como nombre, teléfono, email y hasta preferecencias de consumo apartir de ese momento el visitante se trasforma en un Lead.
	- El dato que solicita por defecto es:
        - email .

2. Account
	- Una Account representa una cuenta individual de cliente, organización o partner involucrado en en negocio.
	- Datos almacenados:
	    - AccountNumber
	    - Name
	    - phone

3. Contact
    - Un Contact es una persona asociada a una cuenta
    - Datos almacenados:
	    - AccountId
	    - Email
	    - Name

4. Opportunity
	- Es una venta o un negocio pendiente.
	- Datos almacenados:
	    - AccountId
	    - Amount
	    - CloseDate
	    - ContactId

5. Product
	- Son servicios que se venden a los clientes.
	- Datos almacenados:
	    - CanUseQuantitySchedule
	    - ProductCode
	    - Description

6. PriceBook
	- Representa una lista de precios que contiene la lista de productos que vende la organización.
	- Datos almacenados:
	    - IsActive
	    - Name

7. Quote
	- ES un registro que muestra los precios propuestos para los productos y servicios.
	- Datos almacenados:
	    - AccountId
	    - Name
	    - QuoteToState
	    - TotalPrice

8. Asset
	- Representa un artículo de valor comercial que un cliente ha comprado.
	- Datos almacenados:
	    - AccountId
	    - AssetProvidedById
	    - AssetServicedById
	    - ContactId
	    - Description
	    - Price
	    - Product2Id

9. Case
    - Representa un problema del cliente.
    - Datos almacenados:
        - AccountId
        - Comments
        - CaseNumber
        - ContactId
        - Description

10. Article
    - Son documetos de información que incluyen información de los procesos.
    - Datos almacenados:
        - DataCategoryName
        - ParentId

11. Diagrama de Relaciones

 ![relationShip](https://user-images.githubusercontent.com/74920414/143612459-e0442431-7a5d-4ca4-9fbd-a53da5c8074e.png)

## Ejercicio 6
Dejo una imagen como evidencia.

![ex6](https://user-images.githubusercontent.com/74920414/143617027-b331bd55-ae1e-4ee8-b10b-e391db9d9154.png)

## Ejercicio 7
Responder las siguientes preguntas brevemente sobre: 

Soluciones de Salesforce 

**A**. ¿Qué es Salesforce? 
	Es CRM basado en la nube en donde departamentos como marketing, ventas, servicios, entre otros pueden obtener el estado un cada cliente.

**B**. ¿Qué es Sales Cloud? 
	Es un CRM basado en la nube para Ventas que integra herramientas de automatización, informes, gestión de negocios, entre otros.

**C**. ¿Qué es Service Cloud? 
	Es una solución de software basada en la nube para atención al cliente, este software permite conectarse con el cliente a través de diferentes canales para resolver un problema. 

**D**. ¿Qué es Health Cloud? 
	Es un software enfocado hacia el sector salud, esta plataforma proporciona una interacción personalizada con el paciente, se base en la nube y se puede acceder desde cualquier dispositivo.

**E**. ¿Qué es Marketing Cloud? 
	Es una solución de software basada en la nube en el que se pueden crear estrategias de marketing, recoger datos de diferentes fuentes, automatizar las campañas de publicidad, entre otros.

Funcionalidades de Salesforce 

**A**. ¿Qué es un RecordType? 
 Permite diferenciar las diferentes categorías de usuarios y segmentar los grupos de usuarios de la página del objeto.

**B**. ¿Qué es un ReportType? 
	Son los metadatos asociados a un RecordType, la definición de un ReportType es con XML.

**C**. ¿Qué es un Page Layout? 
 	Controlo lo que se ve en la página, personaliza el diseño y organiza la información.

**D**. ¿Qué es un Compact Layout? 
	Muestra los campos que deben aparecer en la cabecera.

**E**. ¿Qué es un Perfil? 
	Es la definición del acceso a los datos y objetos, también incluye la acciones permitidas de los usuarios en la aplicación.

**F**. ¿Qué es un Rol? 
	Determina el nivel de acceso de los usuarios a los datos, mientras más acceso necesite se debe asignar un rol de mayor jerarquía.

**G**. ¿Qué es un Validation Rule? 
	Son expresiones que validan los datos de los campos de un objeto, es útil porque validan los datos antes de guardarlos.

**H**. ¿Qué diferencia hay entre una relación Master Detail y Lookup? 
	La relación lookup no tiene relación con otros registros esto quiere decir que no depende de ningún objeto, por otro lado Master Detail está asociado con otros registros.

**I**. ¿Qué es un Sandbox? 
	Es un entorno de pruebas seguro utilizado para experimentar y probar las configuraciones requeridas. Este entorno permite que las datos puesto en producción se mantengan a salvo de las pruebas y experimentos.

**J**. ¿Qué es un ChangeSet? 
	Contiene las configuraciones hechas a través del menú de configuración que pueden ser intercambiadas entre organizaciones salesforce.

**K**. ¿Para qué sirve el import Wizard de Salesforce? 
	Es un asistente que sirve para importar datos de objetos Salesforce como son: cuentas, contactos, leads, etc. Los nuevos campos se pueden mapear a campos ya definidos en salesforce.

**L**. ¿Para qué sirve la funcionalidad Web to Lead? 
	Sirve para capturar los datos de los visitantes en un formulario web, para después convertir al visitante en un nuevo lead.

**M**. ¿Para qué sirve la funcionalidad Web to Case? 
	Sirve para que el cliente envié información a la empresa a través de un formulario web y que mediante reglas de auto-respuestas pueda ser respondido automáticamente.

**N**. ¿Para qué sirve la funcionalidad Omnichannel?  
	Se encarga de dirigir las solicitudes de trabajo  hacia  los agentes disponibles y más calificados.

**O**. ¿Para qué sirve la funcionalidad Chatter? 
	Sirve para conectar, colaborar y actuar de manera eficiente con los clientes a través de la red social Chatter.

Conceptos generales 

**A**. ¿Qué significa SaaS?
	SaaS son las siglas para Software As A Service, esto quiere decir que el software es un servicio que es accedido a través de la nube, y el proveedor del software se encarga de mantenerla, actualizarla y desarrollarla. Tu como cliente solo la configuras y la usas. 

**B**. ¿Salesforce es Saas? 
	Claro que sí, ya que Salesforce por definición es software basado en la nube.

**C**. ¿Qué significa que una solución sea Cloud?
	Una solución basada en la nube quiere decir que esta alojada en la nube y solo necesitas de conexión a internet para acceder a ella.

**D**. ¿Qué significa que una solución sea On-Premise? 
	Se refiere que esta basado en la infraestructura informática de la propia empresa, y la empresa se encarga de mantener y asegurar el software.

**E**. ¿Qué es un pipeline de ventas? 
	Son los estados por los que pasa un prospecto hasta convertirse en cliente y que de acuerdo al historial se puede tomar acciones para acelerar las conversión.

**F**. ¿Qué es un funnel de ventas? 
	Es una representación visual de la conversión de leads a clientes.

**G**. ¿Qué significa Customer Experience? 
	Es la impresión  que tiene el cliente al interactuar con la empresa. Una experiencia positiva es crucial para el éxito del negocio.

**H**. ¿Qué significa omnicanalidad? 
	Es una estrategia publicitaria de comunicación con los prospectos o clientes a través de diferentes canales como lo son: email, redes sociales, app móviles , páginas web, entre otros. 

**I**. ¿Qué significa que un negocio sea B2B? 
	Se refiere a que los clientes de una empresa son otras empresas.

**J**. ¿Qué significa que un negocio sea B2C?
	Se refiere a que los clientes de una empresa es el consumidor final. 

**K**. ¿Qué es un KPI? 
	Es un indicador de rendimiento para saber si estás cumpliendo o no un objetivo.

**L**. ¿Qué es una API y en qué se diferencia de una Rest API? 
	Una API es una interfaz que se usa para comunicar programas, como lo es la API de Linux que consiste en llamadas al sistema, por otro lado una Rest API es una interfaz para comunicar programas utilizando la Arquitectura Rest, haciendo referencia a las aplicaciones en la web.

**M**. ¿Qué es un Proceso Batch?
	Es un programa donde la ejecución no precisa de la supervisión del usuario. 

**N**. ¿Qué es Kanban? 
	Es un método para gestionar y procesar el trabajo de una manera muy visual.

**O**. ¿Qué es un ERP? 
	Es us sistema que integra los procesos para operar una empresa como: manufactura, RR.HH, finanzas, cadena de suministro, compras,  entre otros.

**P**. ¿Salesforce es un ERP? 
    Sí, a través de FinancialForce proporciona un ERP basado en la nube.
