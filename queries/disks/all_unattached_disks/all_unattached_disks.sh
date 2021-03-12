#!/bin/bash

az graph query -q 'where type =~ "Microsoft.Compute/disks"
| where properties.diskState=="Unattached"
| project Name = name, 
            OSType = properties.osType, 
            SkuTier = sku.tier, 
            DiskSize = toint(properties.diskSizeGB),
            Location = location
| order by DiskSize
' \
-o table