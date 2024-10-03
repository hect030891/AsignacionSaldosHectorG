# 🖥️ Asignación de Saldos a Gestores Héctor G.

Esta aplicación implementa un algoritmo para **asignar saldos** a un grupo de **gestores de cobros** de manera justa. El proyecto está desarrollado utilizando **.NET 6 MVC** y **ADO.NET** para la ejecución de un **procedimiento almacenado** en SQL Server que realiza la lógica de asignación.

---

## 📚 Tabla de Contenidos

- [Descripción](#descripción)
- [Funcionamiento del Algoritmo](#funcionamiento-del-algoritmo)
- [Tecnologías Utilizadas](#tecnologías-utilizadas)
- [Cómo Ejecutar la Aplicación](#cómo-ejecutar-la-aplicación)

---

## 📝 Descripción

El propósito de la aplicación es distribuir **50 saldos** entre **10 gestores**, asegurando una distribución justa. Los saldos se asignan de forma ordenada, distribuyendo los montos más altos primero.

---

## ⚙️ Funcionamiento del Algoritmo

1. **Ordenar los saldos en orden descendente** antes de realizar la asignación.
2. **Asignar los saldos cíclicamente**: se distribuyen uno por uno a cada gestor.
3. **Repetir el proceso** hasta que todos los saldos estén asignados.
4. **Número de iteraciones**: el proceso se ejecuta tantas veces como sea necesario, es decir, la división redondeada hacia arriba del número de saldos por el número de gestores.

---


## 🔧 Tecnologías Utilizadas
- [ASP.NET Core MVC (.NET 6): Utilizado para la estructura y lógica de la aplicación web.]
- [ADO.NET: Manejo de la conexión y ejecución del procedimiento almacenado desde la aplicación.]
- [SQL Server: Base de datos donde se almacena y ejecuta el procedimiento almacenado.]

## 💻 Cómo Ejecutar la Aplicación

1. **Clona el repositorio**:
   ```bash
   git clone https://github.com/hect030891/AsignacionSaldosHectorG.git

2. Instala en sql server el script sql llamado **SCRIPT UNICO BD ASIGNACION GESTORES HECTOR G.sql** ubicado en la carpeta **BD Schema**, dicho script se esctructura de la siguiente manera
   - Creacion de la BD
   - Creación de 3 tablas: Gestores, Cuentas (Saldos), Asignaciones
   - Inserciones de la data en las tablas con los saldos definidos
   - Procedimiento almacenado con la lógica de asignación de saldo

4. **Configura la cadena de conexión en appsettings.json**:

Abre el archivo appsettings.json en la raíz de tu proyecto.
Configura la cadena de conexión para el servidor SQL donde se ejecutará el script de la base de datos. Asegúrate de usar autenticación de Windows. El formato de la cadena de conexión será similar a este:

{ 
"ConnectionStrings": {
    "DefaultConnection": "Server=MSI;Database=GestoresCobrosHG;Trusted_Connection=True;MultipleActiveResultSets=true;"
  } 
}

