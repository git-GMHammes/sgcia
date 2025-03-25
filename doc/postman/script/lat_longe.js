// Função para gerar uma latitude aleatória entre -90 e 90 graus
function getRandomLatitude() {
    return (Math.random() * 180 - 90).toFixed(6); // 6 casas decimais
}

// Função para gerar uma longitude aleatória entre -180 e 180 graus
function getRandomLongitude() {
    return (Math.random() * 360 - 180).toFixed(6); // 6 casas decimais
}

// Gerar coordenadas aleatórias
const latitude = getRandomLatitude();
const longitude = getRandomLongitude();

// Definir variáveis no ambiente do Postman
pm.environment.set("latitude", latitude);
pm.environment.set("longitude", longitude);
