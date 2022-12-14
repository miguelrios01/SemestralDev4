let baseUrl = "http://localhost:8080";
let productos = [];
let descripcion = [];

function ObtenerProductos() {
  fetch(baseUrl + '/productos/all').then(res => {
    res.json().then(json => {
      productos = json;
      ImprimirProductos();
    });
  });
}


function ImprimirProductos() {
  let contenedor = document.getElementById("cuerpoTabla");
  contenedor.innerHTML = "";

  productos.forEach(producto => {
    contenedor.innerHTML += MapearProducto(producto);
  });
}



function MapearProducto(producto) {
  return `<tr>
  <td>
    <button class='botones' onclick="EliminarProducto(${producto.id})">Eliminar</button>
    <button class='botones' onclick="PopularDatosCampos(${producto.id})">Actualizar</button>
    </td>
  <td>${producto.id}</td>
  <td>${producto.nombre}</td>
  <td>${producto.precio}</td>
  <td>${producto.foto}</td>
  <td>${producto.cantidad}</td>
</tr>`;
}


function EliminarProducto(pid) {
  fetch(baseUrl + '/producto/' + pid, { method: "Delete" }).then(res => {
    console.log(res);
    ObtenerProductos();
  });
}

function GuardarProducto() {
  let data = {
    nombre: document.getElementById("nombre").value,
    precio: document.getElementById("precio").value,
    foto: document.getElementById("foto").value,
    id: document.getElementById("id").value,
    cantidad: document.getElementById("cantidad").value
  };

  fetch(baseUrl + "/producto", {
    method: "POST",
    body: JSON.stringify(data),
    headers: {
      "Content-type": 'application/json; charset=UTF-8'
    }
  }).then(res => {
    ObtenerProductos();
  });
}

function PopularDatosCampos(pid) {
  let producto = productos.filter(p => { return p.id == pid })[0];

  document.getElementById('nombre').value = producto.nombre;
  document.getElementById('precio').value = producto.precio;
  document.getElementById('foto').value = producto.foto;
  document.getElementById('cantidad').value = producto.cantidad;
  document.getElementById('id').value = producto.id;

}

function ActualizarProducto() {
  let data = {
    nombre: document.getElementById("nombre").value,
    precio: document.getElementById("precio").value,
    foto: document.getElementById("foto").value,
    id: document.getElementById('id').value,
    cantidad: document.getElementById("cantidad")
  };

  fetch(baseUrl + "/producto", {
    method: "PUT",
    body: JSON.stringify(data),
    headers: {
      "Content-type": 'application/json; charset=UTF-8'
    }
  }).then(res => {
    ObtenerProductos();
  });
}

function ObtenerProductos2() {
  fetch(baseUrl + '/descripcion/all').then(res => {
    res.json().then(json => {
      descripcion = json;
      ImprimirProductos2();
    });
  });
}

function ImprimirProductos2() {
  let contenedor = document.getElementById("descripcion");
  contenedor.innerHTML = "";

  descripcion.forEach(desc => {
    contenedor.innerHTML += MapearProducto2(desc);
  });
}

function MapearProducto2(desc) {
  return `<div>
          <div>
          <div>
      <h2>${desc.nombre}</h2>
      <br>
      <a><img src="${desc.foto}"></a>
  </div>
  <br>
  <div>
      <h2>Descripcion</h2>
      <p>${desc.descripcion}</p>
  </div>
  <br>
  <div>
      <h2>Detalles</h2>
      <p>${desc.detalles}</p>
  </div>
  <br>
  <div>
      <h2>Consumo</h2>
      <p>${desc.consumo}</p>
  </div>
  </div>
  </div>`;
}




/* Imprimir buscar */
function ImprimirProductos() {
  let contenedor = document.getElementById("cuerpoTablaBuscar");
  contenedor.innerHTML = "";

  productos.forEach(producto => {
    contenedor.innerHTML += MapearProducto(producto);
  });
}

function MapearProducto(producto) {
  return `<tr>
  <td> <a href="../Plantilla/producto.html">${producto.nombre} </a></td>
  </tr>`;
}


/* Imprimir buscar end */