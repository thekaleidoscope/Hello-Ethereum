//var ConvertLib = artifacts.require("./ConvertLib.sol");
//var MetaCoin = artifacts.require("./MetaCoin.sol");
var hello1 = artifacts.require("./hello1.sol");
var hello2 = artifacts.require("./hello2.sol");
var Test1 = artifacts.require("./Test1.sol");
module.exports = function(deployer) {
  //deployer.deploy(ConvertLib);
  //deployer.link(ConvertLib, MetaCoin);
  //deployer.deploy(MetaCoin);
  deployer.deploy(hello1);
  deployer.deploy(Test1);
};
