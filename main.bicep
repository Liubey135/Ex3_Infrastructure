param location string = 'singapore'
param registry_name string = 'Leonardo_registry_container'
param acrAdminUserEnabled bool = true

module registry './modules/container-registry/registry/main.bicep' = {
  name: '${uniqueString(deployment().name, location)}-test-crrmin'
  params: {
    // Required parameters
    name: registry_name
    location: location
    acrAdminUserEnabled: acrAdminUserEnabled
  }
}
