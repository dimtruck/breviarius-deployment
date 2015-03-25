#!/bin/bash
source /home/jenkins/.breviarius-jenkins
{
  knife client delete $1 -y &&
  knife node delete $1 -y
} || {
  exit 0
}
