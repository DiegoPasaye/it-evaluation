//Crea una función validarUsuario(nombre, correo, edad) que devuelva un objeto { valido, errores }. 
//El nombre no puede estar vacío; el correo debe contener @ y un dominio;
//la edad debe ser un número mayor o igual a 18. Muestra dos casos de prueba.

const validarUsuario = (nombre, correo, edad) => {
    let cuerpoDeRespuesta = {
        nombre: nombre,
        correo: correo,
        edad: edad,
        valido: Boolean
    }
    if (nombre || correo.includes("@gmail") || edad >= 18) {
        cuerpoDeRespuesta.valido = true
        return "Perfecto, los datos son correctos" + cuerpoDeRespuesta;
    } else{
        cuerpoDeRespuesta.valido = false
        return "Error, los datos son incorrectos" + cuerpoDeRespuesta;
    }
}
