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
        'name': 'JOYS',
        'blockExplorerTX': 'http://ethexplorer.joys.digital/block/[[txHash]]',
        'blockExplorerAddr': 'http://ethexplorer.joys.digital/addr/[[address]]',
        'type': nodes.nodeTypes.ETH,
        'eip155': true,
        'chainId': 420,
        'tokenList': [],
        'abiList': [],
        'service': 'JOYS Wallet',
        // 'lib': new nodes.customNode('https://wallet.joys.digital/joys', '443')
        'lib': new nodes.customNode('http://92.53.69.64', '8545')
    }
};


nodes.ethPrice = require('./nodeHelpers/ethPrice');
module.exports = nodes;
