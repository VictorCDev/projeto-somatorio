import 'dart:io';

int calcDiv(int num) {
    int sum = 0;
    for (int i = 0; i < num; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
            sum += i;
        }
    }
    return sum;
}

void main() {
    stdout.write('Digite um número inteiro positivo: ');

    int? number;
    try {
        number = int.parse(stdin.readLineSync()!);
    } catch (e) {
        // Se a conversão para int falhar, number permanecerá nulo
    }

    if (number == null || number <= 0) {
        print('Por favor, digite um número inteiro positivo válido.');
    } else {
        int result = calcDiv(number);
        print('O somatório dos números menores que $number e divisíveis por 3 ou 5 é: $result');
    }
}

// dart Desafio.dart