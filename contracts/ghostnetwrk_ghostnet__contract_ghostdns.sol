contract Reg { struct rr { bytes32 hash_split1; bytes32 hash_split2; bytes32 addendum; } function register(bytes32 _name, bytes32 _hash1, bytes32 _hash2, bytes32 _comment) { rrs[_name].hash_split1 = _hash1; rrs[_name].hash_split2 = _hash2; rrs[_name].addendum =  _comment; } function lookup(bytes32 _name) constant returns(bytes32, bytes32, bytes32) { return (rrs[_name].hash_split1, rrs[_name].hash_split2, rrs[_name].addendum); } mapping (bytes32 => rr) rrs; }
