pragma solidity >=0.8.4;
contract Faucet{
    uint public fund=10000;
    address[] public funders;
receive () external payable{}
    function addFunds() external payable{}
    

}
// const ins=await Faucet.deployed()