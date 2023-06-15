"""----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Parte Andres
Para el estudiante, punto 2
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------"""
# Kevin vos te encargas de que el estudiatne pueda hacer log in como cualquier otro usuario
# como yo estoy con la docu y reacomodando el codigo y vos cambiando lo del token por login, creo que te va a ser mas facil


from datetime import datetime
import SingletonDAO


# Consultar perfil de estudiante.
"""
@author: Andres
@dev: Consulta el perfil de un estudiante
@param idestudiante: id del estudiante a consultar
@return: info del perfil del estudiante
"""
def estudianteConsultarPerfil(idestudiante):
    perfil = SingletonDAO.getInstance().consultarPerfil(idestudiante)
    return perfil

# Modificar su número de teléfono
"""
@author: Andres
@dev: Cambia el numero de telefono de un estudiante
@param: idestudiante, integer con el id del estudiante que se desea consultar
        telefono, integer con el numero de telefono nuevo
@returns: None
"""
def modificarTelefono(idestudiante, telefono):
    SingletonDAO.getInstance().modificarTelefono(idestudiante, telefono)


# Ver el calendario de las actividades que están publicadas.
"""
@author: Andres
@dev: Trae las actividades que estan por suceder
@param: None
@returns: Lista de proximas actividades
"""
def verCalendarioActividades():
    actividades = SingletonDAO.getInstance().verCalendarioActividades()  # Trae todas las actividades de la base de datos

    # Para filtrar las actividades que ya pasaron
    proximasActividades = []
    for actividades in actividades:
        if actividades.fecha >= datetime.now():
            proximasActividades.append(actividades)
    return proximasActividades


# Ver con detalle la próxima actividad que está por suceder
"""
@author: Andres
@dev: Trae los detalles de la proxima actividad
@param: None
@returns: Detalles de la proxima actividad
"""
def verDetalleProximaActividad():
    actividades = verCalendarioActividades()
    return actividades[0]
# Ya esta implementado que un estudiante pueda acceder a las notificaciones