/*
Implements ERC20 Token Standard: https://github.com/ethereum/EIPs/issues/20
This is a demo token that serves the purpose of being a stablecoin on the testnet
to illustrate the mechanics of the IDA protocol.
*/

pragma solidity ^0.5.2;

import 'openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol';
import 'openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol';

contract AliceUSD is ERC20Mintable, ERC20Burnable {

  string public name = "Alice Demo USD";
  uint8 public decimals = 2;
  string public symbol = "AliceUSD";
  string public version = 'AUSD 1.0';

  //A minimum amount that is minted every time someone request funds
  uint256 constant public MINT_DEFAULT = 1000 ether;

  function publicMint() public returns (bool) {
    _mint(msg.sender, MINT_DEFAULT);
    return true;
  }

}