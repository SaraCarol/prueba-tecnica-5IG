import requests

BASE_URL = "https://api.escuelajs.co/api/v1/products"

##GET
def obtener_productos():
    try: 
        response = requests.get(BASE_URL)
        response.raise_for_status()

        return response.json()
    
    except requests.exceptions.RequestException as e:
        print("Error en la petición GET", e)
        return None
    
##GET POR ID
def obtener_productos_id(id):
    try: 
        response = requests.get(f"{BASE_URL}/{id}")
        response.raise_for_status()

        return response.json()
    
    except requests.exceptions.RequestException as e:
        print("Error en la petición GET", e)
        return None

##POST
def crear_poducto(nuevo_producto):
    try:
        response = requests.post(BASE_URL, json=nuevo_producto)
        response.raise_for_status()
        data = response.json()
        return data
    
    except requests.exceptions.RequestException as e:
        print("Error al crear el producto:", e)
        return None



productos = obtener_productos()

if productos:
    print("************************\n")
    print("Productos disponibles:\n")
    for producto in productos:
        print(f"- {producto['title']} | ${producto['price']}")

producto_id = obtener_productos_id(8)
if producto_id:
    print("************************\n")
    print(f"Producto con id {producto_id['id']} \n")
    print(f"- {producto_id['title']} | ${producto_id['price']}")

camiseta = {
    "title": "Camiseta deportiva amarilla",
    "price": 20,
    "description": "Con un cuello redondo clásico y mangas cortas, brinda un look atemporal y casual, ideal para climas cálidos.",
    "categoryId": 1,
    "images": ["https://placehold.co/600x400"]
}

nuevo_producto = crear_poducto(camiseta)
if nuevo_producto:
    print("************************\n")
    print("Producto creado con éxito:")
    print(f"- id: {nuevo_producto['id']}")
    print(f"- Título: {nuevo_producto['title']}")
    print(f"- Precio: {nuevo_producto['price']}")
