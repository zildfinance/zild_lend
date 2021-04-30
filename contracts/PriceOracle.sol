pragma solidity 0.5.17;

import "./GToken.sol";

contract PriceOracle {
    /// @notice Indicator that this is a PriceOracle contract (for inspection)
    bool public constant isPriceOracle = true;

    /**
      * @notice Get the underlying price of a gToken asset
      * @param gToken The gToken to get the underlying price of
      * @return The underlying asset price mantissa (scaled by 1e18).
      *  Zero means the price is unavailable.
      */
    function getUnderlyingPrice(GToken gToken) external view returns (uint);

    /**
     * Get underlying market price for web app
     */
    function getMarketPrice(string calldata symbol) external view returns (uint);

    /**
    * Get underlying oracle price for web app
    */
    function price(string calldata symbol) external view returns (uint);
}
