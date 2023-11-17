# Error Handling in Solidity Smart Contract

This project demonstrates error handling techniques in a Solidity smart contract. It includes functions that showcase the usage of `require()`, `revert()`, and `assert()` statements, as well as custom errors in Solidity.

## Description

The Error Solidity smart contract demonstrates various error-handling techniques. It includes functions utilizing require() to enforce conditions, revert() to explicitly revert transactions, assert() to validate assertions, and a custom error (NoBalance) for more specific error handling. The contract illustrates how to handle exceptional conditions in a secure and controlled manner.


## Getting Started

### Installing

* Clone this repository to your local machine.

### Executing program

Compile the Smart Contract:

* Use a Solidity compiler to compile the smart contract. Ensure successful compilation without errors.
Deploy the Smart Contract:

* Deploy the compiled smart contract to an Ethereum blockchain using Remix IDE or another deployment tool.
Interact with the Contract:

* Use Remix IDE or a JavaScript script with web3.js or ethers.js to interact with the contract.
Calling Functions:

Use the following examples to test different functions:

```javascript

// Example for 'req' function (argument greater than 1000)
await errorContract.req(1500);

// Example for 'req' function (argument less than or equal to 1000, should revert)
await errorContract.req(800);

// Example for 'rev' function (argument greater than 1000)
await errorContract.rev(1500);

// Example for 'rev' function (argument less than or equal to 1000, should revert)
await errorContract.rev(800);

// Example for 'ass' function (should revert if 'num' is not 0)
await errorContract.ass();

// Example for 'error' function with sufficient balance (withdrawal amount <= contract balance)
await errorContract.error(10);

// Example for 'error' function with insufficient balance (withdrawal amount > contract balance, should revert with custom error "NoBalance")
await errorContract.error(100000);


```
## Help

If you encounter any issues or have questions, please open an issue in the GitHub repository.

## Authors

Contributors names and contact info

Charles Christian O. Sapida  
[csapida1](https://www.facebook.com/csapida1)


## License

This project is licensed under the [Charles Christian Sapida] License - see the LICENSE.md file for details
