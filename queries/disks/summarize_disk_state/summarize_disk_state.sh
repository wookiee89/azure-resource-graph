#!/bin/bash

az graph query -q 'where type =~ "Microsoft.Compute/disks" | project Name = name, DiskState = properties.diskState | summarize count() by tostring(DiskState)' -o table