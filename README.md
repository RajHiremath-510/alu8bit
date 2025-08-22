# 8-bit ALU OpenLane Project

## Project Overview
- **RTL Design**: Verilog code for 8-bit ALU located in `src/`.
- **Synthesis & Layout**: Floorplan, placement, CTS, routing, and GDS generation performed using OpenLane.
- **Signoff Reports**: Area, power, and timing analysis included.
- **DRC/LVS Verification**: Layout checked against design rules and netlist.
- **Final GDS-II Layout**: Ready for documentation and review.

---

## Flow Steps
1. Synthesis of RTL  
2. Floorplanning & placement  
3. Clock tree synthesis (CTS)  
4. Routing  
5. Signoff (area, power, timing)  
6. DRC/LVS verification  
7. Export of final GDS layout  

---

## Final Layout
- Open **`alu8bit.gds`** in KLayout for visualization  
- Open **`alu8bit.magic.gds`** in Magic for editing/debug  

## Design Details

| Metric                | ALU 8-bit   |
|------------------------|-------------|
| Chip Area (synth)      | 1445.136 µm² |
| Cell Count (synth)     | 160          |
| Die/Core Area          | 80.445 × 91.165 µm² (4692 µm²) |
| DRC Status             |  Clean     |
| LVS Status             |  Clean     |
| GDS Snapshot           | ![alu8bit](alu8bit.gds.png) |

---

## Repository
```bash
git clone https://github.com/RajHiremath-510/alu8bit_openlane.git
-------
Refer to the video for OpenLane installation  
https://youtu.be/nBz9oFpbTv4?si=MG42k84mPf74VmUy
