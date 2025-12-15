# Plantilla LaTeX para "Epistemología e Historia de la Ciencia"

Esta plantilla de Pandoc/LaTeX está diseñada específicamente para artículos académicos de la revista **Epistemología e Historia de la Ciencia**, especializada en filosofía e historia de la ciencia.

## Características

- **Idioma**: Español (con soporte para resúmenes bilingües español/inglés)
- **Tipografía**: Palatino (cuerpo) y Helvetica (encabezados) para un aspecto académico clásico
- **Colores**: Esquema basado en azul académico (`#003366`)
- **Citas**: Soporte para BibLaTeX y NatBib
- **Metadatos**: Campos específicos para información de la revista (volumen, número, ISSN, etc.)
- **Autores**: Soporte para múltiples autores con afiliación, email y ORCID
- **Fechas de publicación**: Campos para recibido, aceptado y publicado

## Uso

### Requisitos

- Pandoc 2.x o superior
- Una distribución de LaTeX (TeX Live, MiKTeX, etc.)
- BibLaTeX (si se usa bibliografía)

### Comando básico

```bash
pandoc ejemplo-articulo.md \
  --template=ehc-journal.latex \
  --pdf-engine=xelatex \
  --citeproc \
  -o articulo.pdf
```

### Con bibliografía BibLaTeX

```bash
pandoc ejemplo-articulo.md \
  --template=ehc-journal.latex \
  --pdf-engine=xelatex \
  --biblatex \
  -o articulo.tex

# Luego compilar con:
xelatex articulo.tex
biber articulo
xelatex articulo.tex
xelatex articulo.tex
```

### Alternativa con Citeproc

```bash
pandoc ejemplo-articulo.md \
  --template=ehc-journal.latex \
  --pdf-engine=xelatex \
  --citeproc \
  --bibliography=referencias.bib \
  -o articulo.pdf
```

## Metadatos YAML

### Información del artículo

```yaml
---
title: "Título del artículo"
shorttitle: "Título corto para encabezado"
subtitle: "Subtítulo opcional"
---
```

### Autores

Formato simple:
```yaml
author:
  - Nombre del Autor
```

Formato completo:
```yaml
author:
  - name: Nombre Completo
    affiliation: Universidad, País
    email: correo@universidad.edu
    orcid: 0000-0001-2345-6789
```

### Metadatos de la revista

```yaml
volume: 9
number: 2
year: 2024
pages: 45-78
issn: 1234-5678
```

### Fechas de publicación

```yaml
received: 15 de marzo de 2024
accepted: 22 de junio de 2024
published: 1 de octubre de 2024
```

### Resúmenes y palabras clave

```yaml
abstract: |
  Resumen en español del artículo...

keywords:
  - palabra clave 1
  - palabra clave 2

abstract-en: |
  English abstract of the article...

keywords-en:
  - keyword 1
  - keyword 2
```

### Bibliografía

```yaml
bibliography: referencias.bib
biblatex: true
biblio-style: authoryear
```

### Opciones adicionales

```yaml
lang: es                    # Idioma del documento
numbersections: true        # Numerar secciones
toc: false                  # Tabla de contenidos
linestretch: 1.15           # Interlineado
geometry:                   # Márgenes personalizados
  - top=3cm
  - bottom=3cm
  - left=2.5cm
  - right=2.5cm
```

## Personalización de encabezados y pies de página

```yaml
header-left: "Texto izquierdo del encabezado"
header-right: "Texto derecho del encabezado"
footer-left: "Texto izquierdo del pie"
```

## Estructura del documento

La plantilla genera automáticamente:

1. **Encabezado de revista**: Con nombre de la revista, volumen, número y ISSN
2. **Título y autores**: Con afiliaciones, emails y ORCIDs
3. **Fechas de publicación**: Recibido, aceptado, publicado
4. **Resumen bilingüe**: Español e inglés con palabras clave
5. **Cuerpo del artículo**: Con formato académico apropiado
6. **Referencias**: Según el estilo bibliográfico elegido

## Archivos incluidos

- `ehc-journal.latex` - Plantilla principal de LaTeX
- `ejemplo-articulo.md` - Ejemplo de artículo en Markdown
- `referencias.bib` - Ejemplo de archivo de bibliografía
- `README.md` - Este archivo de documentación

## Licencia

Esta plantilla está basada en la plantilla Eisvogel y se distribuye bajo los mismos términos de licencia BSD de 3 cláusulas.

## Soporte

Para reportar problemas o sugerir mejoras, por favor crea un issue en el repositorio de GitHub.
