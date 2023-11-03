Feature: US01-Creación de cuenta de usuario nuevo

  Scenario: E1:Registro exitoso del usuario nuevo

    Given que el usuario no está registrado en el sistema

    When el usuario complete todos los campos obligatorios del formulario de registro: nombre de usuario, dirección de correo electrónico y contraseña válida

    Then el sistema crea una nueva cuenta de usuario

    And el sistema redirige al usuario a la página de inicio de sesión

  Scenario: E2:Registro fallido del usuario nuevo

    Given que el usuario intenta crear una cuenta con información incompleta o inválida

    When el usuario deje en blanco alguno de los campos obligatorios del formulario de registro o ingrese información inválida

    Then el sistema muestra un mensaje de error indicando los campos que deben ser completados correctamente

    And el sistema no crea una cuenta de usuario



Feature: US02-Orientación para el usuario nuevo

  Scenario: E1:Orientación de guía al usuario nuevo exitosa

    Given que un usuario nuevo abre la aplicación por primera vez

    When el usuario accede a la sección de Ayuda o Guía de usuario

    Then el usuario debería encontrar instrucciones claras y completas que expliquen todas las funciones disponibles en la aplicación

    And el usuario debería comprender fácilmente cómo utilizar todas las características de la aplicación sin dificultades adicionales

  Scenario: E2:Orientación de guía al usuario nuevo insatisfactoria

    Given que un usuario nuevo abre la aplicación por primera vez

    When el usuario accede a la sección de Ayuda o Guía de usuario

    Then el usuario no encuentra información clara o completa que explique todas las funciones disponibles en la aplicación

    And se le presentarán dificultades para comprender cómo utilizar la plataforma



Feature: US03-Especificación de fuente de energía renovable en uso

  Scenario: E1-Especificación de fuente de energía renovable en uso completada

    Given que el usuario nuevo brinda información sobre la fuente de energía renovable que usa y otros parámetros (como la ubicación geográfica, la capacidad del sistema, entre otros)

    When se guarden los datos sin problema

    Then el usuario podrá recibir una atención personalizada

  Scenario: E2-Especificación de fuente de energía renovable en uso incompleta

    Given que el usuario nuevo brinda información sobre la fuente de energía renovable que usa y otros parámetros (como la ubicación geográfica, la capacidad del sistema, entre otros)

    When se presente un error en el reconocimiento de fuente de energía renovable y no se guarde la información

    Then el usuario no podrá acceder a la atención personalizada



Feature: US04-Análisis y Feedback del consumo semanal

  Scenario: E1:Se realiza el análisis y se encuentran puntos de mal uso de la energía

    Given que como empresa deseo revisar periódicamente la gestión del consumo eléctrico dentro de mi compañía

    When realizo el análisis de mi consumo semanal en busca de encontrar factores que generen mala distribución de energía

    Then recibo los resultados filtrados del análisis con los puntos críticos y horas pico de consumo energético dentro de la empresa, y recibo una alerta directa dentro de mi aplicación

  Scenario: E2:Se realiza el análisis y no se encuentran puntos de mal uso de la energía

    Given que como empresa deseo revisar periódicamente la gestión del consumo eléctrico dentro de mi compañía

    When realizo el análisis de mi consumo semanal en busca de encontrar factores que generen mala distribución de energía

    Then recibo los resultados filtrados del análisis, sin embargo, no se localizan ningún punto crítico dentro de mi consumo eléctrico, y recibo feedback en base a mi consumo de la semana



Feature: US05-Gestión de dispositivos

  Scenario: E1:Gestión de dispositivos exitosa

    Given que un usuario ingresa los dispositivos conectados al sistema de energía renovable

    When accede a la administración y configuración de los dispositivos conectados

    Then el usuario puede supervisar sus dispositivos

  Scenario: E2:Gestión de dispositivos fallida

    Given que un usuario ingresa los dispositivos conectados al sistema de energía renovable

    When no reconoce los dispositivos

    Then no accede a la administración y configuración de los dispositivos conectados

    And el usuario no puede supervisar ningún dispositivo



Feature: US06-Notificaciones al usuario sobre algún uso excesivo

  Scenario: E1:Notificación del sistema sobre algún cambio excesivo

    Given que el usuario recibió una notificación de la aplicación

    When él o ella la vea

    Then identificará el factor que está consumiendo más energía de lo usual

    And el usuario podrá detener o minimizar su uso para llevar un mejor control de su energía

  Scenario: E2:La aplicación no notifica sobre algún comportamiento inusual de la energía del usuario

    Given que el usuario no fue notificado sobre un comportamiento inusual en el uso de la energía en su hogar o negocio

    When él o ella vea los diagnósticos personalizados que le otorgue la aplicación

    Then se sentirá confundido acerca de los resultados que obtuvo

    And podría desconfiar sobre la funcionalidad de la aplicación



Feature: US07:Predicción y Análisis sobre el sistema de energía renovable

  Scenario: E1:Predicción y Análisis exitosa

    Given que el usuario quiere conocer la manera más efectiva de usar la energía renovable frente a las condiciones climáticas actuales

    When la aplicación le muestre las predicciones y consejos a tomar

    Then el usuario podrá tomar decisiones informadas sobre el uso de la energía renovable

  Scenario: E2:Predicción y Análisis fallida

    Given que el usuario quiere conocer la manera más efectiva de usar la energía renovable frente a las condiciones climáticas actuales

    When no se logre tener información suficiente de la ubicación del sistema de energía renovable

    Then el usuario no optará por seguir indicaciones poco creíbles sobre el uso de la energía renovable



Feature: US08-Seguimiento de energía renovable en tiempo real

  Scenario: E1:Seguimiento de energía renovable en tiempo real exitoso

    Given que el usuario desea conocer el funcionamiento del sistema en este momento

    When la aplicación muestre gráficos en tiempo real que ilustren la producción, el consumo y el flujo de la energía renovable en el sistema

    Then el usuario podrá entender cómo está funcionando su sistema en este momento

  Scenario: E2:Seguimiento de energía renovable en tiempo real fallido

    Given que el usuario desea conocer el funcionamiento del sistema en este momento

    When la aplicación demore o no pueda mostrar gráficos en tiempo real que ilustren la producción, el consumo y el flujo de la energía renovable en el sistema

    Then el usuario no tendrá la mínima idea de cómo está funcionando su sistema en este momento




Feature: US09-Otorgar premios al buen uso de la energía y la aplicación

  Scenario: E1:La aplicación otorga bonificaciones en base al buen uso que le da el usuario a la energía en su hogar o negocio

    Given que la app otorga puntos a los usuarios en base al uso que este realiza

    When el usuario reciba esa bonificación

    Then se sentirá motivado a seguir ahorrando energía y a seguir utilizando la app

    And la fidelidad con este se mantendrá

  Scenario: E2:La aplicación no otorga bonificaciones según el uso y consumo del usuario

    Given que la aplicación no otorga premios al usuario por el buen uso de la energía que aplica

    When el usuario se sienta desmotivado a utilizarla

    Then no habrá motivo que lo invite a seguir utilizando la app de manera regular

    And se podría perder la fidelidad del usuario




Feature: US10-Recomendaciones Personalizadas

  Scenario: E1:La aplicación otorga recomendaciones personalizadas con respecto a la mejora de eficiencia energética

    Given que soy un usuario de EcoMonitor

    When acceda a la sección de recomendaciones personalizadas

    Then quiero recibir recomendaciones específicas sobre cómo mejorar la eficiencia energética y aumentar mi uso de energías renovables

    And estas recomendaciones deben basarse en mi perfil de consumo de energía y los datos de mi sistema de energía renovable

  Scenario: E2:La aplicación no otorga recomendaciones personalizadas

    Given que soy un usuario de EcoMonitor

    When acceda a la sección de recomendaciones personalizadas

    Then no recibo recomendaciones específicas sobre cómo mejorar la eficiencia energética y aumentar mi uso de energías renovables

    And no se tienen en cuenta ni mi perfil de consumo de energía ni los datos de producción de energía renovable de mi sistema




Feature: US11-Información Educativa sobre Energía Renovable

  Scenario: E1:La aplicación brinda recursos educativos sobre la energía renovable

    Given que soy un usuario

    When utilice la aplicación

    Then podré acceder a recursos educativos visibles desde el menú principal

    And aprender más sobre energía renovable y sus beneficios

  Scenario: E2:La aplicación no brinda recursos educativos sobre la energía renovable

    Given que soy un usuario

    When utilice la aplicación

    Then la aplicación no contiene materiales relevantes o la calidad de los recursos es insatisfactoria

    And no brinda una educación efectiva sobre energía renovable y sus beneficios



Feature: U12-Sistema multilingüe

  Scenario: E1:La aplicación permite acceder al idioma preferido del usuario

    Given que soy un usuario internacional de EcoMonitor

    When acceda a la aplicación

    Then quiero poder seleccionar y usar la aplicación en mi idioma preferido

    And la aplicación debe mostrarse en el idioma que he seleccionado

  Scenario: E2:No es posible acceder a la modificación del idioma preferido

    Given que soy un usuario internacional de EcoMonitor

    When acceda a la aplicación

    Then la aplicación no ofrece la opción de cambiar el idioma

    And se muestra solo en un idioma predeterminado



Feature: US13-Análisis y reporting avanzado

  Scenario: E1:La aplicación otorga un análisis a profundidad, acceso a herramientas avanzadas de análisis y generación de informes

    Given que soy un usuario interesado en un análisis más profundo

    When acceda a la sección de análisis avanzado dentro de la aplicación

    Then quiero poder utilizar herramientas avanzadas de análisis y generación de informes

    And estas herramientas deben proporcionar una mayor profundidad de análisis de datos relacionados con mi sistema de energía renovable

  Scenario: E2:Los análisis a profundidad, acceso a herramientas avanzadas de análisis y generación de informes que proporciona la aplicación son ineficientes

    Given que soy un usuario interesado en un análisis más profundo

    When acceda a la sección de análisis avanzado dentro de la aplicación

    Then estas herramientas no proporcionan la profundidad de análisis deseada, y los informes carecen de personalización y detalles




Feature: US14-Personalización y ajustes de la interfaz de usuario

  Scenario: E1:La aplicación otorga la personalización de la apariencia y las configuraciones de la misma

    Given que soy un usuario con preferencias específicas

    When acceda a la sección de personalización y ajustes de la aplicación

    Then quiero poder personalizar la apariencia y las configuraciones de la aplicación para que se adapten a mis necesidades individuales

    And los cambios de personalización y configuración deben reflejarse inmediatamente en la interfaz de usuario

    And la aplicación debe guardar y recordar mis preferencias personalizadas para futuras sesiones

  Scenario: E2:La aplicación no permite una personalización de la apariencia y las configuraciones de la misma

    Given que soy un usuario con preferencias específicas

    When acceda a la sección de personalización y ajustes de la aplicación

    Then las opciones de personalización no están disponibles o no funcionan como se espera, lo que impide que pueda cambiar la apariencia de la aplicación

    And los cambios de personalización y configuración no se guardan para futuras sesiones




Feature: US15-Seguridad de Usuario

  Scenario: E1:La aplicación realiza medidas de seguridad de información y cifrado

    Given que soy un usuario

    When utilice la aplicación

    Then quiero que la aplicación utilice un proceso de autenticación seguro para acceder a mi cuenta

    And mis datos personales y la información del sistema de energía renovable se almacenen de manera segura y se cifren para protegerlos de accesos no autorizados

    And mi sistema de energía renovable y los datos asociados solo deben ser accesibles por usuarios autorizados

  Scenario: E2:La aplicación no realiza ninguna medida de seguridad de información

    Given que soy un usuario

    When utilice la aplicación

    Then la aplicación no cuenta con medidas efectivas de seguridad contra amenazas cibernéticas, lo que aumenta el riesgo de ataques y pérdida de datos




Feature: US16-Soporte al Usuario

  Scenario: E1:La aplicación te permite comunicarte con el soporte al usuario y resuelve consultas o problemas

    Given que soy un usuario en busca de ayuda

    When utilice la aplicación

    Then la aplicación ofrece un acceso fácil y visible a un servicio de soporte al cliente

    And el servicio de soporte al cliente proporciona opciones de contacto

    And con tiempo de respuesta razonable para atender consultas o problemas

  Scenario: E2:La aplicación no cuenta con un soporte al cliente eficiente

    Given que soy un usuario en busca de ayuda

    When utilice la aplicación

    Then la aplicación no proporciona opciones de contacto o las opciones disponibles son difíciles de encontrar, lo que dificulta mi capacidad para obtener ayuda