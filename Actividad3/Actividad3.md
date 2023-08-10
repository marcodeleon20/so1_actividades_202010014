# Marco Alexander de León Hernández
# 202010014
# Actividad 3 - Gestión de Usuarios en Linux

## Parte 1: Gestión de Usuarios

1. **Creación de Usuarios**
   - Comandos usados para esta parte:
     ```bash
     sudo useradd usuario1
     sudo useradd usuario2
     sudo useradd usuario3
     ```

2. **Asignación de Contraseñas**
   - Comandos usados para esta parte:
     ```bash
     sudo passwd usuario1
     sudo passwd usuario2
     sudo passwd usuario3
     ```
   - Salida de terminal :
     ```
     sudo passwd usuario1
     Nueva contraseña: 
     Vuelva a escribir la nueva contraseña: 
     ```
     **Nota**: Asegurar de elegir una contraseña que cumpla con los criterios de complejidad. Es recomendable usar una combinación de letras, números y símbolos especiales. Si las contraseñas no coinciden o son demasiado simples, se te informará y deberás intentarlo nuevamente.


3. **Información de Usuarios**
   - Comando utilizado:
     ```bash
     id usuario1
     ```
   - Salida:
     ```
     uid=1001(usuario1) gid=1001(usuario1) grupos=1001(usuario1)
     ```

4. **Eliminación de Usuarios**
   - Comando utilizado:
     ```bash
     sudo userdel usuario3
     ```

## Parte 2: Gestión de Grupos

1. **Creación de Grupos**
   - Comandos usados para esta parte:
     ```bash
     sudo groupadd grupo1
     sudo groupadd grupo2
     ```

2. **Agregar Usuarios a Grupos**
   - Comandos usados para esta parte:
     ```bash
     sudo usermod -aG grupo1 usuario1
     sudo usermod -aG grupo2 usuario2
     ```

3. **Verificar Membresía**
   - Comandos usados para esta parte:
     ```bash
     groups usuario1
     groups usuario2
     ```
   - Salida:
     ```
     usuario1 : usuario1 grupo1
     usuario2 : usuario2 grupo2
     ```

4. **Eliminar Grupo**
   - Comando utilizado:
     ```bash
     sudo groupdel grupo2
     ```

## Parte 3: Gestión de Permisos

1. **Creación de Archivos y Directorios**
   - Como `usuario1`, :
     ```bash
     su usuario1
     echo "Actividad 3 Sopes 1 -  segundo semestre" > archivo1.txt
     mkdir directorio1
     echo "Actividad 3 Sopes 1 -  segundo semestre - segunda prueba" > directorio1/archivo2.txt
     ```

2. **Verificar Permisos**
   - Comandos usados para esta parte:
     ```bash
     ls -l archivo1.txt
     ls -ld directorio1
     ls -l directorio1/archivo2.txt
     ```

3. **Modificar Permisos usando `chmod` con Modo Numérico**
   - Comando utilizado:
     ```bash
     chmod 640 archivo1.txt
     ```

4. **Modificar Permisos usando `chmod` con Modo Simbólico**
   - Comando utilizado:
     ```bash
     chmod u+x directorio1/archivo2.txt
     ```

5. **Cambiar el Grupo Propietario**
   - Comando utilizado:
     ```bash
     chown usuario1:grupo1 directorio1/archivo2.txt
     ```

6. **Configurar Permisos de Directorio**
   - Comando utilizado:
     ```bash
     chmod 704 directorio1
     ```

7. **Comprobación de Acceso**
   - Comandos utilizados:
     ```bash
     su usuario2
     cat archivo1.txt
     cat directorio1/archivo2.txt
     ```
   

8. **Verificación Final**
   - Comandos usados  para `usuario1`:
     ```bash
     ls -l archivo1.txt
     ls -ld directorio1
     ls -l directorio1/archivo2.txt
     ```

## Reflexión:

### ¿Por qué es importante gestionar correctamente los usuarios y permisos en un sistema operativo?

La gestión correcta de usuarios y permisos en un sistema operativo es esencial por varias razones:

1. **Seguridad**: El control de quién puede acceder a ciertos archivos o programas y qué pueden hacer con ellos es fundamental para la seguridad del sistema. Si todos los usuarios tuvieran acceso total a todos los archivos, un usuario malintencionado o un software malicioso podría causar daños irreparables.

2. **Privacidad**: Los usuarios no deben poder acceder o modificar información que no les pertenece. Esto es especialmente importante en sistemas multiusuario, donde cada persona tiene su propio espacio de trabajo.

3. **Integridad del Sistema**: La restricción de ciertas acciones a usuarios privilegiados (como el usuario `root` en Linux) evita que los usuarios sin experiencia realicen cambios accidentales que podrían desestabilizar o dañar el sistema.

4. **Eficiencia Organizativa**: En entornos empresariales o educativos, la correcta asignación de roles y permisos garantiza que cada usuario tenga las herramientas y el acceso que necesita para realizar su trabajo, ni más ni menos.

### ¿Qué otros comandos o técnicas conocen para gestionar permisos en Linux?

1. **`chown`**: Ya hemos mencionado este comando para cambiar el propietario de un archivo o directorio, pero también puede cambiar el grupo usando `chown usuario:grupo archivo`.

2. **`setfacl` y `getfacl`**: Estos comandos permiten gestionar listas de control de acceso (ACL) en sistemas de archivos que las soporten. Las ACL permiten definir permisos más detallados que simplemente usuario, grupo y otros.

3. **Sticky Bit**: Es un permiso especial que puede establecerse en directorios para que solo el propietario de un archivo dentro de ese directorio pueda renombrar o eliminar dicho archivo. Se configura con `chmod +t directorio`.

4. **SUID y SGID**: Son bits especiales que, cuando se establecen en un archivo ejecutable, permiten que el archivo se ejecute con los permisos del propietario (SUID) o del grupo (SGID) en lugar de con los permisos del usuario que lo ejecutó. Se configuran con `chmod u+s archivo` (para SUID) y `chmod g+s archivo` (para SGID).

5. **Umask**: Es una configuración que determina los permisos predeterminados cuando se crean nuevos archivos o directorios. Esto asegura que los archivos y directorios se creen con permisos restringidos por defecto, según las necesidades del sistema o del entorno organizativo.



