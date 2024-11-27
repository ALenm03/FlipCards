// Selecciona el ícono y el cuerpo
const toggleDarkModeIcon = document.getElementById('toggle-dark-mode');
const bodyElement = document.getElementById('body');

// Función para aplicar el modo oscuro
function applyDarkMode(isDarkMode) {
    if (isDarkMode) {
        bodyElement.classList.add('dark-mode');
    } else {
        bodyElement.classList.remove('dark-mode');
    }
}

// Leer el estado del modo oscuro desde LocalStorage al cargar la página
const isDarkMode = localStorage.getItem('dark-mode') === 'true';
applyDarkMode(isDarkMode);

// Agregar evento al ícono
toggleDarkModeIcon.addEventListener('click', function () {
    // Alternar el modo oscuro
    const darkModeActive = bodyElement.classList.toggle('dark-mode');

    // Guardar el estado en LocalStorage
    localStorage.setItem('dark-mode', darkModeActive);
});