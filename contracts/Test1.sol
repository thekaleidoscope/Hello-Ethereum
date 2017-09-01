pragma solidity ^0.4.4;

contract Test1{
  address public owner ;

  mapping(address=>uint) Wallet;
  mapping(address=>uint) Cars;


  function Test1(){
    owner= msg.sender;
    Wallet[owner] = 1000;
    Cars[owner]=2;
  }

  function getBalence(address usr) returns (uint bal) {
    return Wallet[usr]; }


  function transfer(address to,uint amt) returns (bool State){

    if(amt>Wallet[owner]){
      return false;
    }

    Wallet[owner] -= amt;
    Cars[owner]+= 1;
    Wallet[to] += amt;
    Cars[to]-= 1;
    return true;

  }


}
