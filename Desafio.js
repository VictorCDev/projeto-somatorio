const prompt = require("prompt-sync")();

function calcDiv(num) {
    let sum = 0;
    for (let i = 0; i < num; i++) {
        if (i % 3 === 0 || i % 5 === 0) {
            sum += i;
        }
    }
    return sum;
}

function calcSum() {
    const response = prompt('Digite um número inteiro positivo: ');
    const number = parseInt(response, 10);

    if (isNaN(number) || number <= 0) {
        console.log('Por favor, digite um número inteiro positivo válido.');
    } else {
        const result = calcDiv(number);
        console.log(`O somatório dos números menores que ${number} e divisíveis por 3 ou 5 é: ${result}`);
    }
}

calcSum();

// node Desafio.js