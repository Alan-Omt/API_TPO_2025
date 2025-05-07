import React from "react";
import { Link } from "react-router-dom";
import "./products.css";
import "./users.css";

function Products() {
  return (
    <>
      <header className="HeaderProducts">
        <h1 className="Nombre">Nombre Web</h1>

        <div className="Carrito">🛒</div>
      </header>

      <main>
        <Link to="/" className="home-button">
          🏠 Inicio
        </Link>
        <div className="barra-busqueda">
          <input
            type="text"
            placeholder="Buscar productos..."
            className="input-busqueda"
          />
          <button className="btn-buscar">Buscar</button>
        </div>

        <div className="fotoProducto">
          <img
            src="https:static.hendel.com/media/catalog/product/cache/b866fd8d147dcce474dc8744e477ca66/5/4/54232_az_0.jpg"
            alt="producto"
          />
        </div>

        <div className="Descripcion">
          <h3>Lorem ipsum dolor sit amet consectetur</h3>
        </div>

        <div className="AgregarCarrito">
          <input
            type="submit"
            value="Agregar al carrito"
            name=""
            id=""
            className="BotonAgregar"
          />
        </div>
      </main>

      <footer>
        <div className="TxtFooter">
          <h1>INFO WEB</h1>
        </div>
      </footer>
    </>
  );
}
export default Products;
