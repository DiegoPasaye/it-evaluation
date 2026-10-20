const obtenerNombres = () => {
    lista = document.getElementById("listaNombres")
    lista.innerHTML = '<li>Cargando nombres...</li>';
    fetch('https://jsonplaceholder.typicode.com/users')
        .then(response => response.json())
        .then(data => {
            lista.innerHTML = '';
            //console.log(data)
            const nombres = data.map(nombre => nombre.name)
            for (let i = 0; i < nombres.length; i++){
                const listadoNombres = document.createElement('li')
                listadoNombres.textContent = nombres[i]
                lista.appendChild(listadoNombres)
            }
            console.log(nombres)
        }).catch((e => console.log('Error: ' + e)))
}