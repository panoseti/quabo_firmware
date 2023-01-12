To compile bin files for different versions(QFP or BGA) of quabos, you need to:
1. open the vivado project, and change PCB_Rev in maroc_dc_v1.8(0-QPF; 1-BGA);
2. open the sdk project, and add/remove "#define REMAP_FOR_BGA" for QPF/BGA version.

