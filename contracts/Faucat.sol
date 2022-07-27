pragma solidity >=0.8.4;
import './AbFaucat.sol';
contract Faucet is AbFaucet{
   
   address[] public funder;
   // address[] public funderIndex;
 
    mapping(address=>address) private funders;
    mapping(uint=>address) private funderIndex;
    uint8 public fund;
    uint8 public index;
 // add funds
 receive () external payable{}
 modifier _checkFunder(){
   require(funders[msg.sender]!=msg.sender);
    _;
 }
    function addFunds() external _checkFunder payable {
   funder.push(msg.sender);
   this.test();
   funders[msg.sender]=msg.sender;
    }
//ins.addFunds({value:"1000000000000000000"}) : ins.TransferFund({amount:10000,from:account[0]})
//ins.addFunds({value:"100000000",from:"0xB45AB3e302bD2DfC2aC142C511d4Cc84E32142D2"})
//web3.eth.sendTransaction({from:accounts[0],to:"0xD28937F5976D4f039028c8E2dBe57d0146c4F512",value:"1000000000000000000"})
}
// const ins=await Faucet1.deployed() 
// const ins=await Faucet.deployed() 