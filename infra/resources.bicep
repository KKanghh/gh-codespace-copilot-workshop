resource appServiceName 'Microsoft.Web/sites@2021-02-01' = {
  name: 'myAppServiceName'
  location: 'eastus'
  kind: 'app'
  properties: {
    serverFarmId: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/serverfarms/{serverFarmName}'
    siteConfig: {
      appSettings: [
        {
          name: 'key1'
          value: 'value1'
        }
      ]
    }
  }
}