// SPDX-License-Identifier: MIT
//file IERC20.sol
pragma solidity ^0.8.4;
 
interface IERC20 {
    // 总发行量
    function totalSupply() external view returns (uint256);
    // 查看地址余额
    function balanceOf(address account) external view returns (uint256);
    /// 从自己帐户给指定地址转账
    function transfer(address account, uint256 amount) external returns (bool);
    // 查看被授权人还可以使用的代币余额
    function allowance(address owner, address spender) external view returns (uint256);
    // 授权指定帐户使用你拥有的代币
    function approve(address spender, uint256 amount) external returns (bool);
    // 从一个地址转账至另一个地址，该函数只能是通过approver授权的用户可以调用
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
 
    /// 定义事件，发生代币转移时触发
    event Transfer(address indexed from, address indexed to, uint256 value);
    /// 定义事件 授权时触发
    event Approval(address indexed owner, address indexed spender, uint256 value);
}