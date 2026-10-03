# Política de Privacidad

**Esta es una traducción ofrecida por conveniencia. La versión en portugués es el texto oficial y prevalece en caso de cualquier discrepancia.**

**Píldoras de Tarot** — última actualización: 28 de septiembre de 2026

## En una frase

El contenido de tus lecturas — la pregunta, las cartas, el texto que recibes — sigue guardado **solo en tu dispositivo**. Dos cosas salen de él: **tu pregunta y las cartas van al servicio de inteligencia artificial de Google** para que la interpretación pueda ser escrita, y **tu billetera de créditos se queda en un servidor nuestro**, porque un saldo que vale dinero no puede vivir solo en el dispositivo de quien lo gasta. El resto de esta política detalla exactamente qué, cuándo y por qué.

**Qué cambió en esta versión.** Hasta agosto de 2026 esta política decía que nada salía del dispositivo excepto para la IA. Con la introducción de los créditos, eso dejó de ser verdad: pasó a existir un servidor nuestro, un identificador anónimo tuyo y un registro de tus compras y de tus gastos de crédito. La sección 4.2 es nueva y describe esto. Ninguna información sobre el **contenido** de tus lecturas fue para allá.

**El 22 de septiembre de 2026** el texto fue revisado línea a línea contra la aplicación que está en el aire, y corregido en tres puntos: cómo identificar tu billetera cuando ejerces tus derechos, en qué momento se ofrece la vinculación con la cuenta de Google y la edad mínima, que es la misma de los Términos de Uso.

**El 28 de septiembre de 2026** la dirección de contacto pasó a ser contato@tgsd.com.br. La dirección anterior deja de ser el canal oficial.

## 1. Quién es responsable del tratamiento

Píldoras de Tarot es desarrollada y mantenida por Ricardo Toth Gonçalves, a quien le corresponde el papel de controlador de los datos personales tratados por la aplicación, en los términos de la Lei Geral de Proteção de Dados (LGPD — Ley General de Protección de Datos brasileña, Ley N° 13.709/2018).

Contacto para cualquier asunto relativo a la privacidad: contato@tgsd.com.br

## 2. No hay registro, pero hay un identificador

No existe inicio de sesión, contraseña, correo electrónico o perfil en Píldoras de Tarot. No necesitas proporcionar ningún dato para usar la aplicación.

Lo que existe, desde que los créditos pasaron a valer, es un **identificador anónimo generado automáticamente** la primera vez que la aplicación necesita tu billetera. Es un código aleatorio creado por Firebase Authentication. **No es tu correo electrónico, no es tu nombre y no viene de ningún dato tuyo** — nosotros no tenemos cómo mirar ese código y saber quién eres.

Lo que hace es solo una cosa: decir de quién es el saldo de créditos.

**Puedes, opcionalmente, vincular ese identificador a tu cuenta de Google.** Esto sirve para no perder créditos comprados al cambiar de dispositivo. La opción está en Configuración desde el principio, para quien la busque. Lo que solo aparece **después de la primera compra** es el **aviso** de que hay algo que perder — antes de ella no hay, y no usamos ese aviso para empujar la vinculación a quien no tiene crédito pagado en riesgo. **Si lo vinculas, dejamos de tratarte como anónimo**: pasamos a conocer la dirección de correo electrónico asociada a esa cuenta. Vincular es tu elección, y rechazar no quita ninguna funcionalidad más allá de la propia portabilidad.

## 3. Qué datos trata la aplicación

### 3.1 Datos que tú proporcionas

- **Tu nombre o apodo.** Es opcional. Sirve apenas para que la lectura sea escrita de forma personal. Si lo dejas en blanco, la aplicación le pide explícitamente al servicio de IA que te trate como alguien que prefiere mantener el nombre reservado.
- **La pregunta que escribes** antes de una tirada. Es opcional en algunas tiradas y necesaria en otras, como la de Sí o No.

### 3.2 Datos generados por tu uso

- Las cartas sorteadas en cada tirada, con la posición de cada una y si salieron invertidas.
- El tipo de tirada realizada: Carta del Día, Sí o No, Tres Cartas, Amor, Carrera y Dinero o Cruz Celta.
- El texto de la interpretación recibida y, cuando las haya, las conversaciones intercambiadas en el chat sobre esa lectura.
- La fecha y la hora de cada lectura y tu racha de días consecutivos.
- Tus preferencias: notificaciones, ritual de barajar, vibración y cartas invertidas.
- **Tu saldo de créditos y el registro de cada compra y de cada gasto.** Diferente de todos los ítems anteriores, este se queda en el servidor. Ver la sección 4.2.

### 3.3 Datos técnicos recolectados automáticamente

- **Firebase Analytics**, de Google: eventos de uso de la aplicación, un identificador de instalación generado aleatoriamente, modelo del dispositivo, versión del sistema operativo, idioma y país aproximado derivado de la dirección IP. Sirve para entender qué partes de la aplicación son usadas.
- **Firebase Crashlytics**, de Google: en caso de falla, el informe técnico del error, incluyendo el punto del código en el que ocurrió, el modelo del dispositivo y la versión del sistema. Sirve para corregir defectos.
- **Firebase App Check con Play Integrity**, de Google: una atestación de que la instalación de la aplicación es legítima, usada para impedir que terceros consuman el servicio de IA en nuestro nombre.
- **Firebase Authentication**, de Google: crea y guarda el identificador anónimo descrito en la sección 2.
- **Cloud Firestore y Cloud Functions**, de Google, en servidores en la región de São Paulo: guardan y mueven tu billetera de créditos. Ver la sección 4.2.

Ninguno de estos servicios recibe tu pregunta, tu nombre o el texto de tus lecturas.

## 4. Qué sale de tu dispositivo

Esta es la sección más importante de esta política. Léela con atención. Son dos destinos diferentes, con contenidos diferentes.

### 4.1 Para el servicio de inteligencia artificial de Google

Para generar la interpretación de una tirada, la aplicación envía al servicio **Firebase AI Logic, de Google, que utiliza los modelos Gemini**:

- Tu nombre, si lo has rellenado.
- **La pregunta que escribiste**, en su totalidad, exactamente como fue escrita.
- Las cartas sorteadas, con la posición de cada una y si salieron invertidas.
- El tipo de tirada y el idioma en el que debe ser escrita la respuesta.
- Cuando continúas la conversación en el chat, **los mensajes que escribes allí**, junto con el contexto de la lectura en cuestión.

**Escribe tu pregunta con esto en mente.** La pregunta es, casi siempre, la información más íntima que pasa por la aplicación, y sale de tu dispositivo. Evita incluir datos que no quieras transmitir a un servicio de un tercero — en especial datos de salud, datos financieros, contraseñas o informaciones que identifiquen a otras personas.

### 4.2 Para nuestro servidor — la billetera de créditos

El servidor de la billetera se ejecuta en el **Cloud Firestore y en el Cloud Functions de Google, en la región de São Paulo**. Recibe, y guarda:

- **El identificador anónimo** descrito en la sección 2, o el correo electrónico de la cuenta de Google, si lo has vinculado.
- **Tu saldo de créditos**, y cada movimiento de él: cuánto entró, cuánto salió, y cuándo.
- **Un número que identifica la lectura** dentro de tu dispositivo, para que el crédito reservado para ella pueda ser liquidado después.
- ⚠️ **El tipo de la tirada** — Carta del Día, Sí o No, Tres Cartas, Amor, Carrera y Dinero o Cruz Celta. Sale porque el precio en créditos depende de él, y **quien decide el precio tiene que ser el servidor**: si la aplicación informara cuánto cuesta, bastaría alterarlo para pagar menos. **Esto significa que sabemos la categoría de tu pregunta, aunque no sepamos la pregunta.** Si sacaste una lectura de Amor, eso está en nuestro servidor.
- **El comprobante de compra emitido por Google Play**, cuando compras créditos, para que podamos verificar con Google que la compra existió antes de acreditar.

El servidor **no** recibe: tu pregunta, tu nombre, las cartas sorteadas, el texto de la interpretación, los mensajes del chat, tu historial de lecturas, tus preferencias o tu racha de días.

La aplicación **no consigue escribir** directamente en tu billetera: las reglas del servidor rechazan cualquier escritura que venga del dispositivo. Todo movimiento de crédito pasa por una función en el servidor, y es por eso que un dispositivo modificado no consigue crear créditos para sí mismo.

### 4.3 Transferencia internacional

El tratamiento por Google es regido por los términos y por la política de privacidad del propio Google. El servicio de IA se ejecuta en servidores fuera de Brasil, lo que caracteriza transferencia internacional de datos, admitida por el artículo 33 de la LGPD. **La billetera de créditos fue colocada deliberadamente en servidores en Brasil** (región `southamerica-east1`, São Paulo).

## 5. Qué nunca sale de tu dispositivo

- El **historial completo de tus lecturas** — pregunta, cartas, interpretación y chat —, que se queda en una base de datos local en el propio dispositivo.
- Tus preferencias y configuraciones.
- Tu racha de días consecutivos.

Esas informaciones no son enviadas a ningún servidor, no son copiadas a la nube y no pueden ser recuperadas por nosotros. **Si desinstalas la aplicación o cambias de dispositivo, esos datos se pierden y no hay cómo restaurarlos** — ni por nosotros, ni por ti.

⚠️ **Esto vale para las lecturas, y no para los créditos.** Los créditos sobreviven a la desinstalación si has vinculado la cuenta de Google, y se pierden junto con el identificador anónimo si no lo has hecho. Es la razón de que se ofrezca la vinculación.

## 6. Notificaciones

Si mantienes las notificaciones encendidas, la aplicación programa un recordatorio diario de la Carta del Día. La programación ocurre enteramente en el dispositivo, y la notificación no carga contenido de lecturas. Puedes apagarlas en cualquier momento en Configuración, o en las configuraciones del sistema.

## 7. Créditos, suscripción y pagos

La compra es procesada integralmente por **Google Play**, según los términos de Google. La aplicación no ve, no recibe y no almacena el número de tu tarjeta, tus datos bancarios o tu dirección de facturación.

Lo que sucede después de la compra: Google Play emite un **comprobante**, la aplicación envía ese comprobante a nuestro servidor, y el servidor **verifica con Google** que esa compra existe, es tuya y no fue usada antes — solo entonces los créditos entran en tu billetera. Ese es el motivo por el cual el comprobante sale del dispositivo.

En relación a la suscripción, la aplicación consulta a Google Play si existe una suscripción activa asociada a la cuenta de Google del dispositivo.

Las reglas comerciales de los créditos — validez, límite de gasto, qué consume y qué no consume — están en los **Términos de Uso**, sección 7, y no aquí.

## 8. Con quién se comparten los datos

No vendemos, alquilamos ni cedemos datos personales. Los únicos terceros involucrados son servicios de Google, listados anteriormente, cada uno con una finalidad determinada: generación de la interpretación, guarda de la billetera, verificación de compra, medición de uso, informe de fallas, atestación de integridad y procesamiento de pago.

No hay redes de publicidad en la aplicación, y ningún identificador de publicidad es recolectado.

## 9. Base legal del tratamiento

- **Ejecución de contrato**, artículo 7º, inciso V, de la LGPD: el envío de la pregunta y de las cartas al servicio de IA, sin el cual la interpretación no puede existir; y la guarda de la billetera de créditos, sin la cual no hay cómo entregar lo que fue comprado.
- **Cumplimiento de obligación legal**, artículo 7º, inciso II: la guarda del registro de compras, exigida por la legislación de consumo y fiscal.
- **Consentimiento**, artículo 7º, inciso I: las notificaciones, el llenado opcional de tu nombre y la vinculación con la cuenta de Google.
- **Interés legítimo**, artículo 7º, inciso IX: las métricas de uso y los informes de fallas, tratados de forma agregada y sin identificarte.

## 10. Por cuánto tiempo se guardan los datos

El **historial local** permanece en el dispositivo hasta que lo borres, en **Configuración → Datos → Borrar Todo el Historial**, o desinstales la aplicación.

El **registro de la billetera** — saldo y movimientos — permanece mientras tu billetera exista, y el registro de las **compras** se mantiene por cinco años a contar de cada compra, plazo del artículo 27 del Código de Defesa do Consumidor (Código de Defensa del Consumidor brasileño). Ese es el único dato que no borramos a pedido, y la razón es que es la prueba de que compraste.

Los datos enviados al servicio de IA de Google siguen los plazos de retención de las políticas de Google.

## 11. Tus derechos

La LGPD te garantiza, en el artículo 18, el derecho de obtener confirmación de la existencia de tratamiento, acceso a los datos, corrección de datos incompletos o desactualizados, anonimización o eliminación de datos innecesarios, portabilidad, información sobre el intercambio y revocación del consentimiento.

En la práctica, en Píldoras de Tarot, esto se divide en dos:

- **El historial de tus lecturas está en tus manos**, dentro de la aplicación, sin tener que pedirle a nadie. El acceso y la eliminación son inmediatos.
- **La billetera de créditos está con nosotros.** Para obtener copia de tus movimientos de crédito, corregirlos o pedir la eliminación de la billetera, escribe a contato@tgsd.com.br. El plazo de respuesta es de hasta 15 días. ⚠️ **Necesitamos poder decir qué billetera es la tuya**, y cómo hacerlo depende de tu situación: si **vinculaste la cuenta de Google**, escribe desde la propia dirección vinculada, que la aplicación muestra en Configuración; si **compraste créditos sin vincular**, informa el **ID del pedido de Google Play**, que está en el correo electrónico de confirmación de la compra. ⛔ **Si nunca vinculaste la cuenta y nunca compraste, tu billetera se identifica apenas por un código anónimo que vive en el dispositivo, y no tenemos cómo vincularla a ti a distancia** — en ese caso contiene solamente créditos gratuitos, y borrar los datos de la aplicación hace que esa billetera sea inalcanzable para todos, incluso para nosotros. ⚠️ **Eliminar la billetera borra los créditos no usados, incluso los comprados, y esto no tiene vuelta atrás.** Te lo diremos de nuevo antes de hacerlo.

## 12. Niños y adolescentes

Píldoras de Tarot no está dirigida a niños ni a adolescentes. Los Términos de Uso establecen **18 años** como edad mínima de uso, y la aplicación no recolecta conscientemente datos de quien tenga menos de eso. El contenido es de entretenimiento y presupone un lector con madurez para interpretarlo como tal.

## 13. Seguridad

Las comunicaciones con los servicios de Google ocurren por conexión cifrada. Los datos locales se quedan en el área privada de la aplicación, protegida por el sistema Android e inaccesible a otras aplicaciones en dispositivos que no hayan sido modificados.

La billetera de créditos tiene dos protecciones que vale la pena nombrar: **el dispositivo no escribe en ella** — las reglas del servidor rechazan cualquier escritura que venga de la aplicación, y todo movimiento pasa por una función en el servidor —, y **cada solicitud es atestada por Play Integrity**, que verifica que viene de una instalación legítima de la aplicación.

Ninguna medida de seguridad es absoluta, y no podemos garantizar la seguridad de un dispositivo comprometido.

## 14. Cambios en esta política

Las alteraciones relevantes serán publicadas en esta misma página, con una nueva fecha de actualización, y señalizadas dentro de la aplicación cuando afecten lo que sale de tu dispositivo. El cambio de septiembre de 2026, que introdujo la sección 4.2, es exactamente de ese tipo.

## 15. Contacto

contato@tgsd.com.br