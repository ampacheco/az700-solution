resource vnet1 'Microsoft.Network/virtualNetworks@2021-03-01' = {
  name: 'CoreServiceVnet'
  location: 'eastus'
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.20.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'SharedServicesSubnet'
        properties: {
          addressPrefix: '10.20.10.0/24'
        }
      }
      {
        name: 'DatabaseSubnet'
        properties: {
          addressPrefix: '10.20.20.0/24'
        }
      }
      {
        name: 'PublicWebServiceSubnet'
        properties: {
          addressPrefix: '10.20.30.0/24'
        }
      }
      {
        name: 'GatewaySubnet'
        properties: {
          addressPrefix: '10.20.0.0/27' // GatewaySubnet typically uses a /27 or larger
        }
      }
    ]
  }
}

resource vnet2 'Microsoft.Network/virtualNetworks@2021-03-01' = {
  name: 'ResearchVnet'
  location: 'southeastasia'
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.40.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'ResearchSystemSubnet'
        properties: {
          addressPrefix: '10.40.0.0/24'
        }
      }
    ]
  }
}

resource vnet3 'Microsoft.Network/virtualNetworks@2021-03-01' = {
  name: 'ManufacturingVnet'
  location: 'westeurope'
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.30.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'ManufacturingSystemSubnet'
        properties: {
          addressPrefix: '10.30.10.0/24'
        }
      }
      {
        name: 'SensorSubnet1'
        properties: {
          addressPrefix: '10.30.20.0/24'
        }
      }
      {
        name: 'SensorSubnet2'
        properties: {
          addressPrefix: '10.30.21.0/24'
        }
      }
      {
        name: 'SensorSubnet3'
        properties: {
          addressPrefix: '10.30.22.0/27' // GatewaySubnet typically uses a /27 or larger
        }
      }
    ]
  }
}