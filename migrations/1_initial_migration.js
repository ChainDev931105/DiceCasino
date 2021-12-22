const DiceCasino = artifacts.require("DiceCasino");
const WolframOracleMock = artifacts.require("WolframOracleMock");

module.exports = async function (deployer) {
  let wolframOracleMock = await deployer.deploy(WolframOracleMock);
  let diceCasino = await deployer.deploy(DiceCasino, wolframOracleMock.address);
};
