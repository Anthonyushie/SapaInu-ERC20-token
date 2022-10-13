// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.22 <0.9.0;
import "remix_tests.sol";
import "../contracts/MyToken.sol";

contract MyTokenTest {

    MyToken s;
    function beforeAll () public {
        s = new MyToken();
    }

    function testTokenNameAndSymbol () public {
        Assert.equal(s.name(), "SapaInu Token", "token name did not match");
        Assert.equal(s.symbol(), "SIU", "token symbol did not match");
    }
}