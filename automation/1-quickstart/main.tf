module eco000 {
    source = "https://cm.globalcatalog.test.cloud.ibm.com/api/v1-beta/offering/source?archive=tgz&catalogID=e316810f-5995-4f76-a447-15353a9ff649&kind=terraform&name=gsi-account-setup-000&version=0.0.8"
}

module eco100 {
    source = "https://cm.globalcatalog.test.cloud.ibm.com/api/v1-beta/offering/source?archive=tgz&catalogID=e316810f-5995-4f76-a447-15353a9ff649&kind=terraform&name=gsi-shared-services-100&version=0.0.2"
}

module eco110 {
    source = "https://cm.globalcatalog.test.cloud.ibm.com/api/v1-beta/offering/source?archive=tgz&catalogID=e316810f-5995-4f76-a447-15353a9ff649&kind=terraform&name=gsi-edge-vpc-110&version=0.0.2"
}

module eco130 {
    source = "https://cm.globalcatalog.test.cloud.ibm.com/api/v1-beta/offering/source?archive=tgz&catalogID=e316810f-5995-4f76-a447-15353a9ff649&kind=terraform&name=gsi-management-vpc-openshift&version=0.0.3"
}