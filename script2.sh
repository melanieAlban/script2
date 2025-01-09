#!/bin/bash
# Variables
ECHO="echo"
MKDIR="mkdir"
TOUCH="touch"
USERADD="useradd"
CHOWN="chown"
CHMOD="chmod"
BASE_DIR=/home/proyectos
PROYECTO1=/home/proyectos/proyecto1
PROYECTO2=/home/proyectos/proyecto2
PROYECTO3=/home/proyectos/proyecto3

# Creando estructura de carpetas
$ECHO "Creando estructura de carpetas para proyectos"
$MKDIR -p /home/proyectos
$ECHO "Estructura de carpetas creada con éxito"

# Creando proyectos dentro de proyectos
$ECHO "Creando 3 proyectos"
$TOUCH $PROYECTO1
$TOUCH $PROYECTO2
$TOUCH $PROYECTO3
$ECHO "Proyectos 1, 2 y 3 creados con éxito"

# Creando usuarios y permisos
$ECHO "Creando usuario para proyecto 1"
$USERADD user_p1 $PROYECTO1
$USERADD user_p2 $PROYECTO2
$USERADD user_p3 $PROYECTO3
# Permisos
$CHMOD 777 user_p1:user_p1 $PROYECTO1
$CHMOD 777 user_p2:user_p2 $PROYECTO2
$CHMOD 777 user_p3:user_p3 $PROYECTO3


$ECHO "Permisos asignados correctamente"

# Gestión
$ECHO "Gestionando Archivos"
