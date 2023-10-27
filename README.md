# Token Management System

The program is designed to facilitate token management on the Ethereum blockchain. It enables users to create (mint) and destroy (burn) tokens based on specific conditions. The main purpose is to provide a foundational understanding of token operations and to serve as a basic template for more complex token management systems.

## Description

This project comprises a basic Ethereum token contract named `Token` that enables the creation and destruction of tokens. The contract allows users to mint tokens to a specified address and burn tokens based on certain conditions. It is a simplistic representation of a token management system built in Solidity.


## Getting Started

### Installing

* Clone this repository to your local machine.

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ETH.sol). Copy and paste the following code into the file:

Code blocks for commands:

```javascript
contract Token {

    string public tokenName = "john";
    string public tokenAbbrv = "doe";
    uint public totalSupply = 0;

    mapping(address => uint) public balances;

    function mint (address _address, uint _value) public{
        totalSupply += _value;
        balances[_address] += _value;
    }

     function burn (address _address, uint _value) public{
         if (balances[_address] >= _value){
        totalSupply -= _value;
        balances[_address] -= _value;
    }
     }
}

```
## Help

If you encounter any issues during deployment or execution, ensure that you have the appropriate gas fees and proper network settings configured. Additionally, make sure your Ethereum wallet or development environment is compatible with the Solidity version used in this contract.

Advice for common problems or issues:
- Double-check the address and value parameters while minting or burning tokens.
- Ensure that the address has a sufficient balance before burning tokens.

Command to run if the program contains helper info:
Token.help()

## Authors

Contributors names and contact info

Charles Christian O. Sapida  
[csapida1](https://www.facebook.com/csapida1)


## License

This project is licensed under the [Charles Christian Sapida] License - see the LICENSE.md file for details
