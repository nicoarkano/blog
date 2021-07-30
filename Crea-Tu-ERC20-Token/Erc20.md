# Crea tu Primer Token  Erc20 
En esta segunda entrega sobre el lenguaje solidity voy a enseñarte como hacer tu primer Token transable Erc-20. Que vas a poder usar de la manera que mejor te parezca. Recomiendo mucho leer [el primer blog](https://collectednotes.com/nicoarkano/hola-mundo-en-solidity) donde te enseño a compilar y desplegar un contrato con Remix. 

###Creacion del contrato
![alt](https://photos.collectednotes.com/photos/12888/0642bdf5-5f24-4a54-b041-ac220fa1dc8a)
Vas a seguir usando [Remix](https://remix.ethereum.org) y le agregaremos la libreria de [Open Zeppelin](https://openzeppelin.com).

El código que vamos a usar es el siguiente: 

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.4.0-solc-0.7/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {

    constructor () ERC20("Token", "TKN") {
        _mint(msg.sender, 1000000 * (10 ** uint256(decimals())));
    }
}
```
###Explicación logica del contrato
En primer lugar especificas la licencia y la versión de tu contrato.

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.7.0;
```
En segundo lugar tienes que importar la libreria de Open Zeppelin que basicamente lo que hace es crear un contrato seguro por vos.  Mas adelante vas a crear tus propios tokens con codigo duro, pero por ahora no es necesario. La vas a importar directamente de github por https (Puedes ver el codigo del contrato completo [aquí](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.4.0-solc-0.7/contracts/token/ERC20/ERC20.sol)):

```solidity
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.4.0-solc-0.7/contracts/token/ERC20/ERC20.sol";
```
Instanciamos el contrato, eliges su nombre `Token` y determinas con `is` que va a ser una herencia del contrato *ERC20.sol* que importaste. (Osea que va a ser un Erc20):

```solidity
contract Token is ERC20 {
}
```
Y ahora llega lo interesante vamos a usar un constructor (una función con el mismo  nombre del contrato) y le vas a asignar como parámetros el nombre y la abreviatura del token en este caso `Token` y `TKN` (Pueden ser intercambiados por los que mas les gusten) por convención la abreviatura no puede superar los 4 caracteres y debe escribirse en mayúscula:

```solidity
 constructor () ERC20("Token", "TKN") {
}
```
Y por ultimo solo queda llamar a la función `_mint` y pasarle el owner del contrato `msg.sender` (Osea la wallet que da la firma, en este caso vos.) la cantidad de tokens a crearse `1000000` y una función que expresa que es un numero decimal `decimals()` (asi evitas andar haciendo conversiones raras):

```solidity
 _mint(msg.sender, 1000000 * (10 ** uint256(decimals())));
```
###Compilación y Despliegue

Ahora solo nos queda ir a [remix](https://remix.ethereum.org), crear un nuevo archivo `Erc20.sol`  donde vas a copiar y pegar el contrato. 

![alt](https://photos.collectednotes.com/photos/12888/34cdf1f1-0e2e-400a-a13d-b1ffc0349b71)

En mi caso hice algunas modificaciones. Cambie el nombre del token por `Token Blog` y  la abreviatura por `TBLG`. Así que el código al final me quedo así: 

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.4.0-solc-0.7/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {

    constructor () ERC20("Token Blog", "TBLG") {
        _mint(msg.sender, 1000 * (10 ** uint256(decimals())));
    }
}
```
Ahora solo queda ir a la sección "Deploy & run Transactions" seleccionar Injected Web y desplegar tu contrato en la red que prefieras.  



