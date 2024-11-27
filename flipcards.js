document.addEventListener('DOMContentLoaded', () => {
    // Define los subtemas y sus contenedores
    const subtemas = [
        { subtema: "Diferentes Estilos de programación", containerId: "buttons-container-1" },
        { subtema: "Analizando diferentes estilos de programación", containerId: "buttons-container-2" },
        { subtema: "Evaluación de expresiones", containerId: "buttons-container-3" },
        { subtema: "Tipos de datos", containerId: "buttons-container-4" },
        { subtema: "Disciplina tipos", containerId: "buttons-container-5" },
        { subtema: "Funciones", containerId: "buttons-container-6" },

        { subtema: "Introducción al modelo de programación funcional", containerId: "buttons-container-7" },
        { subtema: "El tipo de datos", containerId: "buttons-container-8" },
        { subtema: "Funciones2", containerId: "buttons-container-9" },
        { subtema: "Intervalos", containerId: "buttons-container-10" },
        { subtema: "Operadores", containerId: "buttons-container-11" },
        { subtema: "Aplicaciones de las listas", containerId: "buttons-container-12" },
        { subtema: "Árboles", containerId: "buttons-container-13" },
        { subtema: "Evaluación perezosa", containerId: "buttons-container-14" },

        { subtema: "Repaso de la lógica de primer orden", containerId: "buttons-container-15" },
        { subtema: "Unificación y resolución", containerId: "buttons-container-16" },
        { subtema: "Cláusulas de Horn, resolución SLD", containerId: "buttons-container-17" },
        { subtema: "Programación lógica con cláusulas de Horn", containerId: "buttons-container-18" },

        { subtema: "Introducción al modelo de programación lógica", containerId: "buttons-container-19" },
        { subtema: "Semántica de los programas lógicos", containerId: "buttons-container-20" },
        { subtema: "Representación clausada del conocimiento", containerId: "buttons-container-21" },
        { subtema: "Consulta de una base de cláusulas", containerId: "buttons-container-22" },
        { subtema: "Espacios de búsqueda", containerId: "buttons-container-23" },
        { subtema: "Programación lógica con números, listas y árboles", containerId: "buttons-container-24" },
        { subtema: "Control de búsqueda en programas lógicos", containerId: "buttons-container-25" },
        { subtema: "Manipulación de términos", containerId: "buttons-container-26" },
        { subtema: "Predicados mitológicos", containerId: "buttons-container-27" }

    ];

    // Función para cargar los datos de un subtema
    const cargarDatos = (subtema, containerId) => {
        fetch(`http://localhost/Flipcards/conceptos.php?subtema=${encodeURIComponent(subtema)}`)
            .then(response => response.json())
            .then(data => {
                const container = document.getElementById(containerId);

                // Genera los botones dinámicamente
                data.forEach((item, index) => {
                    const button = document.createElement('button');
                    button.className = 'btn d-block mb-2 btn-custom';
                    button.style.color = 'cyan';
                    button.textContent = item.concepto;
                    button.dataset.index = index;
                    button.dataset.bsToggle = 'modal';
                    button.dataset.bsTarget = '#modal-default';
                    container.appendChild(button);

                    // Asociar datos al botón
                    button.addEventListener('click', () => {
                        document.getElementById('modalLabel').textContent = item.concepto;
                        document.getElementById('concept-definition').textContent = item.definicion;
                        document.getElementById('concept-example').textContent = item.ejemplo;
                    });
                });
            })
            .catch(error => console.error(`Error al cargar los datos del subtema "${subtema}":`, error));
    };

    // Carga los datos para cada subtema
    subtemas.forEach(({ subtema, containerId }) => cargarDatos(subtema, containerId));
});