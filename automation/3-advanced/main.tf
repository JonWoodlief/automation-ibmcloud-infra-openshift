module eco000 {
    source = "https://cm.globalcatalog.test.cloud.ibm.com/api/v1-beta/offering/source?archive=tgz&kind=terraform&name=gsi-account-setup-000&version=0.0.8"
}

module eco100 {
    source = "https://cm.globalcatalog.test.cloud.ibm.com/api/v1-beta/offering/source?archive=tgz&kind=terraform&name=gsi-shared-services-100&version=0.0.2"
}

module eco110 {
    source = "https://cm.globalcatalog.test.cloud.ibm.com/api/v1-beta/offering/source?archive=tgz&kind=terraform&name=gsi-edge-vpc-110&version=0.0.2"
}

module eco130 {
    source = "https://cm.globalcatalog.test.cloud.ibm.com/api/v1-beta/offering/source?archive=tgz&kind=terraform&name=ecosystem-management-vpc-openshift&version=0.0.3"
}