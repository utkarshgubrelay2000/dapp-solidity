const Faucets = artifacts.require("Faucet");
const Faucet1 = artifacts.require("Faucet1");

module.exports = function (deployer) {
  deployer.deploy(Faucets);
 // deployer.deploy(Faucet1);
};
