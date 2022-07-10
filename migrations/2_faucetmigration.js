const Faucets = artifacts.require("Faucet");

module.exports = function (deployer) {
  deployer.deploy(Faucets);
};
