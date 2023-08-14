
# Add installation for additional packages below. Root folder is /TOOLKITS

git clone --recurse-submodules https://github.com/sccn/eeglab.git
git clone --recurse-submodules https://github.com/cincibrainlab/SignalFlowEEG.git
git clone --recurse-submodules https://github.com/brainstorm-tools/brainstorm3.git
git clone https://github.com/PINE-Lab/HAPPE.git
git clone https://github.com/ChildDevLab/MADE-EEG-preprocessing-pipeline.git

chown -R 1000:0 /TOOLBOXES