# devierotation
Algunas de las aplicaciones, como las de mapas y ubicación en general, requieren el uso de muchos o todos los sensores del dispositivo, incluyendo el giroscopio y el acelerómetro.  En este proyecto debes crear una aplicación que muestre en un label cuál es la rotación del dispositivo con respecto al eje X del dispositivo o el eje Roll; y, dependiendo de este valor, cambiar el color de pantalla.
Instrucciones

Crear un nuevo proyecto para iOS de tipo SingleViewApplication llamado devicerotation.

Crear un label de color blanco, cuyo texto indique los grados de rotación del dispositivo, por ejemplo: 0º.

Conectar el label con tu clase controladora usando IBOutlets.

Utilizar DeviceMotion para obtener el eje roll de la propiedad attitude cada 0.01 segundos.

Convertir este valor a grados, multiplicándolo por 180 y dividiendo el resultado por M_PI.

Asignar el resultado de la conversión al texto del label.

Recordar que: para cambiar el color de fondo de tu vista puedes utilizar UIColor(hue: …., saturation: 1.0, brightness: ….., alpha: 1.0), donde hue es el color que deseas y es un número flotante, normalmente entre 0 y 1, y brightness es la iluminación del color, a esto puedes asignarle el valor absoluto de la información del eje roll de attitude.
