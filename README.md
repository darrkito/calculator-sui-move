# Calculadora en Sui Blockchain
Calculator Sui Move For SUI Summer Bootcamp

## Descripción
Este proyecto implementa un módulo de contrato inteligente en Move, llamado `calculator::calculatorr`, para la blockchain de Sui. El módulo proporciona funciones para realizar operaciones aritméticas básicas: suma, resta, división y multiplicación. Cada operación emite un evento `Result` que registra el valor resultante y el tipo de operación realizada.

El contrato está diseñado para ejecutarse en la red principal (mainnet) de Sui, utilizando el cliente Sui para interactuar con la blockchain.

## Características
- **Suma**: Calcula `a + b` y emite un evento con el resultado.
- **Resta**: Calcula `a - b` (con validación para evitar resultados negativos).
- **División**: Calcula `a / b` (con validación para evitar división por cero).
- **Multiplicación**: Calcula `a * b`.
- Emite eventos `Result` con el valor y la operación realizada (por ejemplo, `"sum"`, `"minus"`, etc.).

#EJEMPLOS de casos de uso

Los Argumentos en cada función serán 2 números

*SUMA*
sui client call --package 0xa0ce0a797f267dc15ecfbaa049e63f1ba1560f95a4e65d00f37ccf95d8d4c46a --module calculatorr --function sum --args 5 3 --gas-budget 10000000

*RESTA*
sui client call --package 0xa0ce0a797f267dc15ecfbaa049e63f1ba1560f95a4e65d00f37ccf95d8d4c46a --module calculatorr --function minus --args 5 3 --gas-budget 10000000

*DIVISIÓN*
sui client call --package 0xa0ce0a797f267dc15ecfbaa049e63f1ba1560f95a4e65d00f37ccf95d8d4c46a --module calculatorr --function divide --args 5 3 --gas-budget 10000000

*MULTIPLICACIÓN*
sui client call --package 0xa0ce0a797f267dc15ecfbaa049e63f1ba1560f95a4e65d00f37ccf95d8d4c46a --module calculatorr --function multiply --args 5 3 --gas-budget 10000000

##EJEMPLO DE OUTPUT SUMA* 5+3 = 8

╭───────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Block Events                                                                              │
├───────────────────────────────────────────────────────────────────────────────────────────────────────┤
│  ┌──                                                                                                  │
│  │ EventID: 3pTodfBtnnrXnVarU8Ccu34xYE1S6pi9ns6wmDvyvYR6:0                                            │
│  │ PackageID: 0xa0ce0a797f267dc15ecfbaa049e63f1ba1560f95a4e65d00f37ccf95d8d4c46a                      │
│  │ Transaction Module: calculatorr                                                                    │
│  │ Sender: 0x453f9bb0a065444e4e205e16d399b4ac30de9a21ea876191ddae59d0df2dfece                         │
│  │ EventType: 0xa0ce0a797f267dc15ecfbaa049e63f1ba1560f95a4e65d00f37ccf95d8d4c46a::calculatorr::Result │
│  │ ParsedJSON:                                                                                        │
│  │   ┌───────────┬──────┐                                                                             │
│  │   │ operation │ c3Vt │                                                                             │
│  │   ├───────────┼──────┤                                                                             │
│  │   │ value     │ 8    │                                                                             │
│  │   └───────────┴──────┘                                                                             │
│  └──                                                                                                  │
╰───────────────────────────────────────────────────────────────────────────────────────────────────────╯


## Requisitos Previos
- **Rust y Cargo**: Necesario para instalar el cliente Sui.
- **Cliente Sui**: Versión compatible con la red principal (por ejemplo, v1.54.0 o v1.53.2).
- **Chocolatey** (opcional): Gestor de paquetes para Windows si usas `choco` para instalar Sui.
- **Sui CLI**: Configurado con un entorno mainnet activo.
- Acceso a un nodo RPC de la red principal de Sui.
- Fondos en SUI para pagar las tarifas de gas.
  
