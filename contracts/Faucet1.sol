pragma solidity >=0.8.4;
contract Faucet1{
    uint8 public fund;
    address[] public funders;
    address[] public donators;
    mapping(uint=>address) private funder; 

receive () external payable{}
function Owner() external view returns(address){
    return msg.sender;
}
    function addFunds() external {
        donators.push(msg.sender);
    }
    function getFunById(uint8 index) external view  returns(address) {
        return funder[index];
    }
    function withdraw(uint amount) external {
       // console.log(msg.sender);
        payable(msg.sender).transfer(amount);
    }
    function getAll()external view returns(address[] memory){
        address[] memory _funder=new address[](fund);
        for (uint256 index = 0; index < fund; index++) {
            _funder[index]=funder[index];
        }
return _funder;
    }
//ins.addFunds({value:"100000000"}) : ins.TransferFund({amount:10000,from:account[0]})
//ins.addFunds({value:"100000000",from:"0xB45AB3e302bD2DfC2aC142C511d4Cc84E32142D2"})
//web3.eth.sendTransaction({from:accounts[0],to:"0xD28937F5976D4f039028c8E2dBe57d0146c4F512",value:"1000000000000000000"})
}
// const ins=await Faucet.deployed() 