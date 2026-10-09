# 💎 Ruby Docker Environment

Entorno de desarrollo ligero y portable con **Ruby 3.3** usando **Docker** y **Make**.

Diseñado para ejecutar scripts, probar código y aprender Ruby en cualquier sistema operativo sin necesidad de instalar Ruby o gestores de versiones (como `rvm` o `rbenv`) localmente.

## 🚀 Características

* **Aislado y Limpio:** Corre en un contenedor Docker con la imagen oficial de Ruby 3.3.

* **Persistencia de Gemas:** Las gemas instaladas se guardan en un volumen asignado (`gems`), por lo que no perderás tus dependencias al apagar el contenedor.

* **Atajos Rápidos:** Comandos simplificados con `Make` para interactuar con la terminal, lanzar consola interactiva (IRB) o ejecutar scripts.

* **Cero Configuración:** Clona, levanta y empieza a programar.

## 📋 Requisitos Previos

Antes de empezar, asegúrate de tener instalado en tu máquina:

* [Docker Desktop](https://www.docker.com/) (o Docker Engine + Docker Compose Plugin)

* [Make](https://www.gnu.org/software/make/) (Preinstalado en Linux/macOS, o ejecutable en Windows vía WSL/Git Bash/Chocolatley)

## 🏁 Inicio Rápido

1. **Clona este repositorio:**

   ```
   git clone https://github.com/tu-usuario/tu-repositorio.git
   cd tu-repositorio
   
   ```

2. **Ejecuta tu primer archivo Ruby:**
   Crea un archivo llamado `main.rb`:

   ```
   puts "¡Hola desde Ruby con Docker! 🚀"
   
   ```

   Y ejecútalo usando el Makefile:

   ```
   make run main.rb
   
   ```

## 🛠️ Comandos Disponibles (`Makefile`)

Este proyecto incluye un `Makefile` con comandos listos para facilitar las tareas comunes:

| Comando | Descripción | 
| ----- | ----- | 
| `make help` | Muestra la lista de comandos disponibles y su ayuda. | 
| `make run <archivo.rb>` | Ejecuta un script de Ruby específico (ej: `make run leccion1.rb`). | 
| `make irb` | Abre la consola interactiva de Ruby (`IRB`) dentro del contenedor. | 
| `make shell` | Abre una terminal interactiva `bash` dentro del contenedor. | 
| `make version` | Muestra la versión actual instalada de Ruby (`ruby 3.3.x`). | 
| `make up` | Levanta los servicios en segundo plano (`background`). | 
| `make down` | Detiene y remueve los contenedores activos. | 
| `make clean` | Detiene el entorno y **borra** el volumen de gemas persistente. | 

## 📂 Estructura del Proyecto

```
.
├── docker-compose.yml  # Configuración del contenedor Ruby y sus volúmenes
├── Makefile            # Atajos de comandos para la CLI
└── README.md           # Documentación del proyecto

```

## 💡 Ejemplos de Uso

### Abrir la consola interactiva (IRB)

```
make irb
irb(main):001> [1, 2, 3].map { |n| n * 2 }
=> [2, 4, 6]
irb(main):002> exit

```

### Trabajar desde la Bash del contenedor

```
make shell
root@container:/app# gem install colorize
root@container:/app# exit

```

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo `LICENSE` para más detalles.