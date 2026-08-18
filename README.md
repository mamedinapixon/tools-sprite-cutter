# Sprite Cutter

Herramienta web para recortar en lote hojas de sprites (spritesheets). Elegís una carpeta de origen y una de destino, ajustás el recorte en píxeles por lado (arriba, abajo, izquierda, derecha) y lo aplicás a una imagen o a todas las de la carpeta. Los archivos originales nunca se modifican; el resultado se guarda como PNG en la carpeta de destino.

Es una app de una sola página (`sprite-cutter.html`), sin build ni dependencias: HTML, CSS y JS embebidos en un único archivo.

## Requisitos

- Un navegador con soporte para la [File System Access API](https://developer.mozilla.org/en-US/docs/Web/API/File_System_Access_API) (`showDirectoryPicker`), como Chrome o Edge.
- Servir el archivo por HTTP en vez de abrirlo con doble clic (`file://`), porque esa API no funciona sobre `file://`.

## Cómo ejecutar

```bash
./run.sh
```

Esto levanta un servidor local en `http://localhost:8080/sprite-cutter.html` y trata de abrir el navegador automáticamente. Para usar otro puerto:

```bash
PORT=3000 ./run.sh
```

Si preferís hacerlo manualmente:

```bash
python3 -m http.server 8080
```

y abrí `http://localhost:8080/sprite-cutter.html`.

## Uso

1. **Elegí carpeta origen**: la carpeta con las imágenes a recortar (`.png`, `.jpg`, `.jpeg`, `.webp`, `.bmp`).
2. **Elegí carpeta destino**: dónde se van a guardar los resultados.
3. Seleccioná una imagen de la lista para previsualizarla.
4. Ajustá los píxeles a recortar por lado. La vista previa muestra el área descartada y el resultado final.
5. **Cortar imagen actual** procesa solo la imagen seleccionada; **Cortar todas las imágenes** aplica el mismo recorte a toda la carpeta.
6. El registro de la derecha muestra el resultado de cada operación.
