pragma solidity ^0.8.17;

contract Error {
    function req(uint _i) public pure {
        require(_i > 1000, "Input must be greater than 1000");
    }

    function rev(uint _i) public pure {
        if (_i <= 1000) {
            revert("Input must be greater than 1000");
        }
    }

    uint public num;

    function ass() public view {
        assert(num == 0);
    }

    error NoBalance(uint balance, uint withdrawAmount);

    function error(uint _withdrawAmount) public view {
        uint bal = address(this).balance;
        
        if (bal < _withdrawAmount) {
            revert NoBalance({balance: bal, withdrawAmount: _withdrawAmount});
        }
    }
}
