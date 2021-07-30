# Hola Mundo en Solidity

Hoy vamos a iniciar con una serie de blogs acerca del lenguaje Solidity. El lenguaje turing completo, que se utiliza para construir aplicaciones descentralizadas en blockchain. 


![Solidity logo](https://tse2.mm.bing.net/th?id=OIP.q1ZB9gfVi4H889i4maOgZgHaCi&pid=Api)

Lo primero que tendrás que hacer es abrir tu navegador e ir a [REMIX](remix.ethereum.org/) (remix.ethereum.org/) el entorno de Desarollo en la nube que la fundación Consensys provee para que todos los devs como vos y como yo puedan desarrollar, compilar y desplegar sus contratos en la red de Ethereum. 

![remix](https://miro.medium.com/max/3840/0*0LAyWqyu0QBLtbWD.jpeg)

Seleccionas la carpeta contracts en la esquina superior izquierda, haces *click derecho > new file* y creas un nuevo archivo llamado ``HelloWorld.sol``


![create new contract](https://photos.collectednotes.com/photos/12888/56f2377c-ff20-4028-85f7-6a89fe5f5fa7)

Luego escribes tu contrato: 

```solidity
//SPDX-License-Identifier: MIT

pragma solidity = 0.8.0;

contract HelloWorldContract {
  string public myStateVariable = 'Hello World';
}
```
Okey ahora lo que vamos a hacer es entender la logica del contrato que acabas de escribir. Antes de que arranques a programar cualquier tipo de  smartcontract en Solidity deberás especificar la licencia de manera obligatoria:

```solidity
//SPDX-License-Identifier: MIT
```
 
En la parte lógica de tu contrato definirás en primer lugar la versión del compilador pragma que utilizaras: 

```solidity
pragma solidity = 0.8.0;
```
 Luego la instancia donde se ejecutará el contrato y su nombre:

```solidity
contract HelloWorldContract {

}
```
y por ultimo vas a setear las variables:
 
```solidity
string public myStateVariable = 'Hello World';
```
recuerda que Solidity es un lenguaje altamente typado (De manera parecida a Java o C++) por lo tanto debes definir el tipo de dato, en este caso "string"(cadena de texto) y su privacidad en este caso "public" (publica). Eso significa que cualquier persona puede ver lo que estas escribiendo en tu variable. 

por ultimo, compilas tu contrato usando la herramienta que encuentras a la izquierda de tu IDE Remix:

 ![Solidity Compiler](https://photos.collectednotes.com/photos/12888/9e05cca1-c76f-40c5-b9a8-2678be7ddf5e)

Una vez compilado puedes usar el deployer para desplegar tu contrato en la red de Ethereum que prefieras. En este caso vas a usar la red de pruebas Rinkeby. Puedes obtener Ethereum de prueba [aquí](https://faucet.rinkeby.io).

En primer lugar vas a ir a la opción de deploy y luego selecciona el eviroment de ``injected web3``. Esto te permitirá desplegar tu contrato con la wallet de Metamask:

![enviroment config](https://photos.collectednotes.com/photos/12888/337c0604-4d97-43ac-8da2-10f1dfb52fe6)

Luego aprietas en el botón naranja de Deploy:

![alt](https://photos.collectednotes.com/photos/12888/5d6c0ac1-3cb9-42e2-9f4f-97ad86829969)

y por ultimo aceptas las transacción:

![deploy](https://photos.collectednotes.com/photos/12888/912b3a50-41f7-49cd-8844-22b60d512e6b)

y... ¡listo! ya tienes tu primer contrato en la red de pruebas de Ethereum. 

![Deploy confirmation](https://photos.collectednotes.com/photos/12888/901a4812-55fa-494f-bb6f-a246ebc4a236)

Si gustas y estas contento con tu resultado. Puedes colaborar con el proyecto ;)

0x2115FeD22b98Fc52BD72B4921FBF3782942D4b53

---



