pragma solidity ^0.4.18;

import 'zeppelin-solidity/contracts/math/SafeMath.sol';
import 'zeppelin-solidity/contracts/ownership/Ownable.sol';
import './ImpactRegistry.sol';
import './ImpactLinker.sol';


contract OffChainImpactLinker is ImpactLinker {

    function OffChainImpactLinker(ImpactRegistry _impactRegistry)
    ImpactLinker(_impactRegistry) {
    }

   function linkDirectly(string _impactId, uint _accountIndex, uint _impactVal) external onlyOwner {
     registry.registerImpact(_impactId, _accountIndex, _impactVal);
   }

    function linkImpact(string impactId) external {
        assert(false);
    }


}