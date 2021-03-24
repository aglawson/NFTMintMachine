const NFTMint = artifacts.require("NFTMint");

module.exports = function (deployer) {
  deployer.deploy(NFTMint("test", "tst"));
};