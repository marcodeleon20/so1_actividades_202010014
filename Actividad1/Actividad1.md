# 1. Sistemas Operativos - Actividad 1
# Marco Alexander de León Hernández
# 202010014
## 1.1 ¿Qué es un Kernel?

El _Kernel_ o núcleo, es una parte fundamental del sistema operativo que se encarga de conceder el acceso al hardware de forma segura para todo el software que lo solicita. Aunque es una pequeña e invisible parte del sistema operativo, es la más importante, ya que sin esta, el sistema no podría funcionar.

Cada vez que un programa necesita acceder a un recurso de hardware, como escribir en el disco duro, debe hacer una solicitud al Kernel. El Kernel decide cómo y cuándo se realiza esta operación, protegiendo la integridad del sistema y asegurando que los recursos se compartan de manera justa.

Todos los sistemas operativos tienen un Kernel. Quizá el más famoso es el Kernel de Linux, que debido a su importancia y eficacia, ha sido integrado incluso en sistemas operativos como Windows 10 en sus últimas actualizaciones.

Los _Kernels_ pueden manejar varias tareas, como la gestión de la memoria, la gestión de procesos, la gestión de archivos y la gestión de dispositivos. Su objetivo principal es asegurar que todas las aplicaciones, procesos y sistemas puedan compartir el hardware de la computadora de manera eficiente y segura.

![Kernel](https://acf.geeknetic.es/imgri/imagenes/tutoriales/definiciones/2020/7/Kernel-y3em.jpg?f=webp)

## 1.2 Tipos de Kernel

Los Kernels se dividen en dos tipos: esenciales y no esenciales. 

### 1.2.1 Esenciales

- **Kernel monolítico**: es un Kernel de gran tamaño que puede gestionar todas las tareas. Se encarga de la gestión de memoria y procesos, así como de la comunicación entre los procesos y el soporte de las diferentes funciones de los drivers y el hardware. Los sistemas operativos que recurren al Kernel monolítico son Linux, OS X y Windows.

- **Microkernel**: los Kernel que están diseñados con pequeños tamaños tienen una clara función: evitar el colapso total del sistema en caso de un fallo. Para cumplir con todas las tareas como un Kernel monolítico cuenta con diferentes módulos. Es curioso, pero hasta ahora solo el Mach de OS X es el único que utiliza el microkernel.

- **Kernel híbrido**: combinación entre el microkernel y el Kernel monolítico. Nos encontramos ante un Kernel grande, pero compacto y que puede ser modulado y otras partes del mismo Kernel pueden cargarse de manera dinámica. Es utilizado en Linux y OS X.

![Kernel2](https://fisop.github.io/apunte/_images/kernel_types.png)

### 1.2.2 No esenciales

- **Nanokernel**: si el microkernel es pequeño, este es todavía más reducido, pero su uso está destinado a sistemas embebidos ya que el nivel de fiabilidad es mayor.

- **Exokernel**: la estructura que propone un exokernel es innovadora ya que se estructura de manera vertical. Los núcleos son pequeños y su desarrollo tiene fines investigativos. En un exokernel la toma de decisiones está a cargo de los programas, para hacer el uso de los recursos del hardware en ciertas bibliotecas. El Kernel se limita a evitar errores en los permisos de hardware y eludir conflictos.

- **Unikernel**: es un Kernel destinado a la eliminación de capas intermedias entre el hardware y las aplicaciones, ya que busca simplificar lo más posible todos los procesos. Es habitual en dispositivos de bajo consumo como los IoT.

- **Anykernel**: otro concepto innovador que busca conservar las cualidades de los Kernel monolíticos, pero también facilitar el desarrollo de los controladores, al mismo tiempo que ofrece mayor seguridad al usuario.

## 1.3 User vs Kernel Mode

### 1.3.1 Modo Usuario

El Modo Usuario es un estado operativo de un sistema operativo en el que las aplicaciones y los programas se ejecutan. En el modo usuario, los programas tienen acceso limitado a los recursos de la computadora y no pueden acceder directamente al hardware o a la memoria del sistema. Esto ayuda a proteger el sistema contra código malicioso o errores de software que podrían causar problemas en el sistema.

### 1.3.2 Modo Kernel

El Modo Kernel, en contraste, es un estado operativo que tiene acceso completo a todos los recursos del sistema. En el modo kernel, el código puede interactuar directamente con el hardware y la memoria del sistema. El sistema operativo y algunas partes de algunos programas se ejecutan en modo kernel. Aunque el modo kernel tiene más control sobre el sistema, también tiene más responsabilidad para mantener la estabilidad y la seguridad del sistema.

![Kerne3](https://sistemasoperativosfet.weebly.com/uploads/1/4/5/6/14568982/9732277_orig.jpg)

### 1.3.3 Comparación entre Modo Usuario y Modo Kernel

|    | Modo Usuario | Modo Kernel |
|----|--------------|-------------|
| **Acceso a recursos del sistema** | Limitado. Las aplicaciones en el modo de usuario solicitan recursos del sistema a través de APIs y llamadas al sistema. | Completo. El código en modo kernel tiene la capacidad de interactuar directamente con los recursos del sistema. |
| **Interacción con el hardware y la memoria del sistema** | Indirecta, a través de APIs y llamadas al sistema. Los programas en modo usuario no pueden interactuar directamente con el hardware o la memoria del sistema. | Directa. El código en modo kernel puede interactuar directamente con el hardware y la memoria del sistema. |
| **Responsabilidad de seguridad y estabilidad del sistema** | Baja. Los programas en modo usuario están aislados del sistema y de otros programas, lo que limita el potencial de daño de los errores de software o del código malicioso. | Alta. El código en modo kernel es crítico para el funcionamiento seguro y eficiente del sistema. Los errores en el código del kernel pueden causar problemas graves en el sistema. |
| **Ejecución de código** | Código de la aplicación y partes de algunos programas del sistema. | Principalmente el sistema operativo, pero también partes de algunos programas que necesitan un acceso más directo al hardware. |


