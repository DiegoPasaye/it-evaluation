//4. Manipulación del DOM
//Con HTML que incluya un input, un botón y una lista vacía, programa que al hacer clic se agregue el texto del input
//como un elemento <li>. No agregues elementos si el texto está vacío y limpia el input después de insertar.

const formulario = document.getElementById('formulario');
const lista = document.getElementById("listaElementos");
const input = document.getElementById('listaInput')

formulario.addEventListener('submit', (e) => {
    e.preventDefault()
    if(input.value.length >= 1){
        const nuevoLi = document.createElement('li')
        nuevoLi.textContent = input.value
        lista.appendChild(nuevoLi)

        input.value = ''
    }else{
        alert("no puedes enviarlo vacio")
    }
})

