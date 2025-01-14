#!/bin/bash
echo service is $1
# DB2
if [ "$1" = "default" ]; then
  echo db2111
  mkdir -p /tmp/db2/
  curl -H "X-JFrog-Art-Api: ${ARTIFACTORY_TOKEN}" -k ${ARTIFACTORY_URL}/${ARTIFACTORY_REPO}/SoftwareInstallers/DB2/11.1/v11.1.4fp6_linuxx64_universal_fixpack.tar.gz -o /tmp/db2/db2_installer.tar.gz
  curl -H "X-JFrog-Art-Api: ${ARTIFACTORY_TOKEN}" -k ${ARTIFACTORY_URL}/${ARTIFACTORY_REPO}/SoftwareInstallers/DB2/11.1/db2ese_u.lic -o /tmp/db2ese_u.lic
elif [ "$1" = "db2-111-centos-7" ]; then
  echo db2111
  mkdir -p /tmp/db2/
  curl -H "X-JFrog-Art-Api: ${ARTIFACTORY_TOKEN}" -k ${ARTIFACTORY_URL}/${ARTIFACTORY_REPO}/SoftwareInstallers/DB2/11.1/v11.1.4fp6_linuxx64_universal_fixpack.tar.gz -o /tmp/db2/db2_installer.tar.gz
  curl -H "X-JFrog-Art-Api: ${ARTIFACTORY_TOKEN}" -k ${ARTIFACTORY_URL}/${ARTIFACTORY_REPO}/SoftwareInstallers/DB2/11.1/db2ese_u.lic -o /tmp/db2ese_u.lic
elif [ "$1" = "db2-115-centos-8" ]; then
  echo db2115
  mkdir -p /tmp/db2/
  curl -H "X-JFrog-Art-Api: ${ARTIFACTORY_TOKEN}" -k ${ARTIFACTORY_URL}/${ARTIFACTORY_REPO}/SoftwareInstallers/DB2/11.5/v11.5.5fp0_linuxx64_universal_fixpack.tar.gz -o /tmp/db2/db2_installer.tar.gz
  curl -H "X-JFrog-Art-Api: ${ARTIFACTORY_TOKEN}" -k ${ARTIFACTORY_URL}/${ARTIFACTORY_REPO}/SoftwareInstallers/DB2/11.5/db2ese_u.lic -o /tmp/db2ese_u.lic
fi

# IIM
if [ "$1" = "iim-191-centos-8" ]; then
  echo "Download IIM installer"
  mkdir -p /tmp/iim/
  curl -H "X-JFrog-Art-Api: ${ARTIFACTORY_TOKEN}" -k ${ARTIFACTORY_URL}/${ARTIFACTORY_REPO}/SoftwareInstallers/IIM/agent.installer.linux.gtk.x86_64_1.9.1001.20191112_1525.zip -o /tmp/iim/iim_installer.tar.gz
fi
