# Add installation for additional packages below. Root folder is /TOOLKITS

# EEGLAB
git clone --recurse-submodules https://github.com/sccn/eeglab.git
# SignalFlow PreProcessing
git clone --recurse-submodules https://github.com/cincibrainlab/SignalFlowEEG.git
# Brainstorm
git clone --recurse-submodules https://github.com/brainstorm-tools/brainstorm3.git
# Happe
git clone https://github.com/PINE-Lab/HAPPE.git
# MADE
git clone https://github.com/ChildDevLab/MADE-EEG-preprocessing-pipeline.git
#BCT
git clone https://github.com/brainlife/BCT.git
#BRAPH
git clone https://github.com/softmatterlab/BRAPH.git
#SpectralEvents 
git clone https://github.com/jonescompneurolab/SpectralEvents.git

chown -R 1000:0 /TOOLBOXES