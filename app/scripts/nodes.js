'use strict';
var nodes = function() {}
nodes.customNode = require('./nodeHelpers/customNode');
nodes.infuraNode = require('./nodeHelpers/infura');
nodes.metamaskNode = require('./nodeHelpers/metamask');
nodes.nodeTypes = {
    ETH: "SHF",
    Custom: "CUSTOM SHF"
};
nodes.ensNodeTypes = [nodes.nodeTypes.ETH, nodes.nodeTypes.Ropsten];
nodes.customNodeObj = {
    'name': 'CUS',
    'blockExplorerTX': '',
    'blockExplorerAddr': '',
    'type': nodes.nodeTypes.Custom,
    'eip155': false,
    'chainId': '',
    'tokenList': [],
    'abiList': [],
    'service': 'Custom',
    'lib': null
};
nodes.nodeList = {
    'eth_mew': {
        'name': 'SHF',
        'blockExplorerTX': 'https://explorer.shaft.sh/block/[[txHash]]',
        'blockExplorerAddr': 'https://explorer.shaft.sh/addr/[[address]]',
        'type': nodes.nodeTypes.ETH,
        'eip155': true,
        'chainId': 420,
        'tokenList': [],
        'abiList': [],
        'service': 'Shaft Wallet',
        'lib': new nodes.customNode('https://wallet.shaft.sh/shf', '443')
    }
};


nodes.ethPrice = require('./nodeHelpers/ethPrice');
module.exports = nodes;
