<!DOCTYPE html>
<html lang="en" ng-app="mewApp">
<head>
<meta charset="utf-8">
<title>JOYS Wallet</title>
<meta name="description" content="This is online wallet for JOYS. Awesome!">
<link rel="canonical" href="https://wallet.joys.digital" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/etherwallet-master.min.css">
<script type="text/javascript" src="js/etherwallet-static.min.js"></script>
<script type="text/javascript" src="js/etherwallet-master.js"></script>

<link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<link rel="manifest" href="/manifest2.json">
<link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">
<meta name="msapplication-TileColor" content="#00aba9">
<meta name="msapplication-TileImage" content="/mstile-144x144.png">
<meta name="theme-color" content="#ffffff">


<meta name="apple-mobile-web-app-title" content="JOYS Wallet &middot; Your Key to JOYS">
<meta name="application-name" content="JOYS Wallet">
<meta property="og:url" content="https://wallet.joys.digital" />
<meta property="og:title" content="JOYS Wallet" />
<meta property="og:description" content="This is online wallet for JOYS. Awesome!" />
</head>
<body>
<header class="{{curNode.name}} {{curNode.service}} {{curNode.service}} nav-index-{{gService.currentTab}}" aria-label="header" ng-controller='tabsCtrl' >
<section class="header-branding">
  <section class="container">
    @@if (site === 'mew' ) {
      <a class="brand" href="/" aria-label="Go to homepage">
        <img src="images/onw.png"   height="64px" width="245px" alt="JOYS Wallet" />
      </a>
    }
    <div class="tagline">

    <span>0.0.1</span>
    <span class="dropdown dropdown-gas" ng-cloak>
      <a style="border: 2px solid #eee;background: #fff;" tabindex="0" aria-haspopup="true" aria-label="adjust gas price" class="dropdown-toggle  btn btn-white" ng-click="dropdownGasPrice = !dropdownGasPrice">
        <span translate="OFFLINE_Step2_Label_3">Gas Price</span>: {{gas.value}} Gwei
        <i class="caret"></i>
      </a>
      <ul class="dropdown-menu" ng-show="dropdownGasPrice">
        <div class="header--gas">
          <span translate="OFFLINE_Step2_Label_3">Gas Price</span>: {{gas.value}} Gwei
          <input type="range" ng-model="gas.value" min="{{gas.min}}" max="{{gas.max}}" steps="1" ng-change="gasChanged()"/>
          <p class="small col-xs-4 text-left">Not So Fast</p>
          <p class="small col-xs-4 text-center">Fast</p>
          <p class="small col-xs-4 text-right">Fast AF</p>
          <p class="small" style="white-space:normal;font-weight:300;margin: 2rem 0 0;" translate="GAS_PRICE_Desc"></p>
        </div>
      </ul>
    </span>

    <!-- Warning: The separators you see on the frontend are in styles/etherwallet-custom.less. If you add / change a node, you have to adjust these. Ping tayvano if you're not a CSS wizard -->
    <span class="dropdown dropdown-node" ng-cloak>
      <a style="border: 2px solid #eee;background: #fff;" tabindex="0" aria-haspopup="true" aria-label="change node. current node {{curNode.name}} node by {{curNode.service}}" class="dropdown-toggle  btn btn-white" ng-click="dropdownNode = !dropdownNode">
        Network: {{curNode.name}} <small>({{curNode.service}})</small>
        <i class="caret"></i>
      </a>
      <ul class="dropdown-menu" ng-show="dropdownNode">
        <li ng-repeat="(key, value) in nodeList"><a ng-class="{true:'active'}[curNode == key]" ng-click="changeNode(key)">
          {{value.name}}
          <small> ({{value.service}}) </small>
          <img ng-show="value.service=='Custom'" src="images/icon-remove.svg" class="node-remove" title="Remove Custom Node" ng-click="removeNodeFromLocal(value.name)"/>
        </a></li>
        <li><a ng-click="customNodeModal.open(); dropdownNode = !dropdownNode;"> Add Custom Node </a></li>
      </ul>
    </span>

    </div>
  </section>
</section>

<nav role="navigation" aria-label="main navigation" class="container nav-container overflowing" >
  <a aria-hidden="true" ng-show="showLeftArrow" class="nav-arrow-left" ng-click="scrollLeft(100);" ng-mouseover="scrollHoverIn(true,2);" ng-mouseleave="scrollHoverOut()">&#171;</a>
  <div class="nav-scroll">
    <ul class="nav-inner">
      @@if (site === 'mew' ) {
      <li ng-repeat="tab in tabNames track by $index" class="nav-item {{tab.name}}" ng-class="{active: $index==gService.currentTab}" ng-show="tab.mew" ng-click="tabClick($index)"> <a tabindex="0" aria-label="nav item: {{tab.name | translate}}" translate="{{tab.name}}"></a></li>
      }
      @@if (site === 'cx' ) {
      <li ng-repeat="tab in tabNames track by $index" class="nav-item {{tab.name}}" ng-class="{active: $index==gService.currentTab}" ng-show="tab.cx" ng-click="tabClick($index)"> <a tabindex="0" aria-label="nav item: {{tab.name | translate}}" translate="{{tab.name}}"></a></li>
      }
    </ul>
  </div>
  <a aria-hidden="true" ng-show="showRightArrow" class="nav-arrow-right" ng-click="scrollRight(100);" ng-mouseover="scrollHoverIn(false,2);" ng-mouseleave="scrollHoverOut()">&#187;</a>
</nav>

@@if (site === 'mew' ) { @@include( './header-node-modal.tpl', { "site": "mew" } ) }
@@if (site === 'cx'  ) { @@include( './header-node-modal.tpl', { "site": "cx"  } ) }

</header>
