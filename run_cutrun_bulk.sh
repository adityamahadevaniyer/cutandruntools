#!/bin/bash

# This script runs the bulk pipeline.

# The singularity module can only be lodaded from and interactive or job node, NOT the login node.
module load singularity

# We use the singularity exec command to run the container. The -B option tells it to "bind", 
# or make visible, the given directory, which in this case is '/projects'. 
singularity exec -B /projects /projects/researchit/crf/containers/cutruntools2.0.sif bash /opt/CUT-RUNTools-2.0/run_bulkModule.sh mod_bulk-config.json GATA1_D7_30min_chr11

