# vim: set ts=2 sw=2 ai et:

if [[ -n ${CIRCLECI} ]]; then
  CAPS=''
else
  CAPS='--cap-drop all'
fi

COMPLIANCE_IMAGE="compliance:latest"
COMPLIANCE_DATA_IMAGE="compliance-data"
PUBLISHED_IMAGE="sometheycallme/compliance:latest"
