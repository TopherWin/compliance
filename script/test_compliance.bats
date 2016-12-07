# vim: set ts=2 sw=2 ai et:

load options

# note: BATS does not respect this syntax: ${DATA_IMAGE}

@test "compliance-masonry: is in path and responds to commands" {
 # test compliance-masonry response to help commands
 run docker run -t -i --entrypoint bash $COMPLIANCE_IMAGE -c "compliance-masonry"
  [[ ${output} =~ Usage ]]
}
