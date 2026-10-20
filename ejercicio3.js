//3. Carrito de compras
//Escribe una función calcularTotal(carrito) que sume precio * cantidad y aplique un descuento de 10% cuando 
//el subtotal sea mayor a $1,000. Devuelve subtotal, descuento y total.
const carrito1 = {precio:400,cantidad:3};
const carrito2 = {precio:150,cantidad:3};

const calcularTotal = (carrito) => {
    let subtotal = carrito.precio * carrito.cantidad
    let descuento = 0
    if(subtotal > 1000){
        descuento = subtotal * 0.10;
        let total = subtotal - descuento
        console.log("Subtotal: ", subtotal, ",", " Descuento: ", descuento, ",", "Total: ", total)
    }else{
        descuento = 0
        console.log("Subtotal: ", subtotal, ",", " Descuento: ", descuento, ",", "Total: " + subtotal)
    }
}
calcularTotal(carrito1)
calcularTotal(carrito2)