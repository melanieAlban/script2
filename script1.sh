#!/bin/bash
# Definimos Variables
Permiso="chmod"
CrearDirectorio="mkdir"
CrearUsuario="useradd"
CrearArchivo="touch"
DarPermisos="chown"
DirectorioBase="/home/proyecto"

# Definimos rutas de proyectos
DirProyecto1= $DirectorioBase/proyecto1
DirProyecto2= $DirectorioBase/proyecto2
DirProyecto3= $DirectorioBase/proyecto3

# Crear los usuarios
$CrearUsuario: "user_p1"
$CrearUsuario: "user_p2"
$CrearUsuario: "user_p3"

# Asignar permisos
$DarPermisos: user_p1 777 DirProyecto1
$DarPermisos: user_p2 777 DirProyecto2
$DarPermisos: user_p3 777 DirProyecto3

# Activar configuración de archivos
$CrearArchivo -m -s /bin/bash $DirProyecto1 config_p1.conf
$CrearArchivo -m -s /bin/bash $DirProyecto2 config_p2.conf
$CrearArchivo -m -s /bin/bash $DirProyecto3 config_p3.conf

# Crear archivos de log
$CrearArchivo -m -s /bin/bash $DirProyecto1 activity_p1.log
$CrearArchivo -m -s /bin/bash $DirProyecto2 activity_p2.log
$CrearArchivo -m -s /bin/bash $DirProyecto3 activity_p3.log

# Asignar permisos a los archivos de log
$DarPermisos 700 $DirProyecto1 user_p1
$DarPermisos 700 $DirProyecto1 user_p2
$DarPermisos 700 $DirProyecto1 user_p3

$DarPermisos 760 $ config_p1.conf
$DarPermisos 760 $ config_p2.conf


