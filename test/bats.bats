#!/usr/bin/env bats

@test "It should have Bats installed" {
  which bats
}

@test "Bats should be v0.4.0" {
  bats -v | grep '0\.4\.0'
}

@test "Python 2.7.X should be installed" {
	V=$(python --version 2>&1)
	[[ $V == Python\ 2.7* ]]
}
