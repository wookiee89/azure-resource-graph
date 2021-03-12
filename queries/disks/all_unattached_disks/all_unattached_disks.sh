#!/bin/bash

az graph query -q 'where type =~ "Microsoft.Compute/disks" | where properties.diskState=="Unattached" | project Name = name, DiskState = properties.diskState, OSType = properties.osType ' -o table