wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/userb10/b10163/ICD2024/ICD_HW2/ICD_HW2/01_RTL/IOTDF_F1.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/counter\[4:0\]} \
{/test/u_IOTDF/counter_nxt\[4:0\]} \
{/test/u_IOTDF/input_data\[127:0\]} \
{/test/u_IOTDF/input_data_nxt\[127:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/o_busy} \
{/test/u_IOTDF/state\[1:0\]} \
{/test/u_IOTDF/state_nxt\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/counter\[4:0\]} \
{/test/u_IOTDF/counter_nxt\[4:0\]} \
{/test/u_IOTDF/input_data\[127:0\]} \
{/test/u_IOTDF/input_data_nxt\[127:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/o_busy} \
{/test/u_IOTDF/state\[1:0\]} \
{/test/u_IOTDF/state_nxt\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/counter\[4:0\]} \
{/test/u_IOTDF/counter_nxt\[4:0\]} \
{/test/u_IOTDF/input_data\[127:0\]} \
{/test/u_IOTDF/input_data_nxt\[127:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/o_busy} \
{/test/u_IOTDF/state\[1:0\]} \
{/test/u_IOTDF/state_nxt\[1:0\]} \
{/test/u_IOTDF/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/counter\[4:0\]} \
{/test/u_IOTDF/counter_nxt\[4:0\]} \
{/test/u_IOTDF/input_data\[127:0\]} \
{/test/u_IOTDF/input_data_nxt\[127:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/o_busy} \
{/test/u_IOTDF/state\[1:0\]} \
{/test/u_IOTDF/state_nxt\[1:0\]} \
{/test/u_IOTDF/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/counter\[4:0\]} \
{/test/u_IOTDF/counter_nxt\[4:0\]} \
{/test/u_IOTDF/input_data\[127:0\]} \
{/test/u_IOTDF/input_data_nxt\[127:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/o_busy} \
{/test/u_IOTDF/state\[1:0\]} \
{/test/u_IOTDF/state_nxt\[1:0\]} \
{/test/u_IOTDF/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalClose -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 397.380150
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/counter\[4:0\]} \
{/test/u_IOTDF/counter_nxt\[4:0\]} \
{/test/u_IOTDF/input_data\[127:0\]} \
{/test/u_IOTDF/input_data_nxt\[127:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/o_busy} \
{/test/u_IOTDF/state\[1:0\]} \
{/test/u_IOTDF/state_nxt\[1:0\]} \
{/test/u_IOTDF/rst} \
{/test/u_IOTDF/o_busy_nxt} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/counter\[4:0\]} \
{/test/u_IOTDF/counter_nxt\[4:0\]} \
{/test/u_IOTDF/input_data\[127:0\]} \
{/test/u_IOTDF/input_data_nxt\[127:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/o_busy} \
{/test/u_IOTDF/state\[1:0\]} \
{/test/u_IOTDF/state_nxt\[1:0\]} \
{/test/u_IOTDF/rst} \
{/test/u_IOTDF/o_busy_nxt} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/counter\[4:0\]} \
{/test/u_IOTDF/counter_nxt\[4:0\]} \
{/test/u_IOTDF/input_data\[127:0\]} \
{/test/u_IOTDF/input_data_nxt\[127:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/o_busy} \
{/test/u_IOTDF/state\[1:0\]} \
{/test/u_IOTDF/state_nxt\[1:0\]} \
{/test/u_IOTDF/rst} \
{/test/u_IOTDF/o_busy_nxt} \
{/test/u_IOTDF/busy} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/counter\[4:0\]} \
{/test/u_IOTDF/counter_nxt\[4:0\]} \
{/test/u_IOTDF/input_data\[127:0\]} \
{/test/u_IOTDF/input_data_nxt\[127:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/o_busy} \
{/test/u_IOTDF/state\[1:0\]} \
{/test/u_IOTDF/state_nxt\[1:0\]} \
{/test/u_IOTDF/rst} \
{/test/u_IOTDF/o_busy_nxt} \
{/test/u_IOTDF/busy} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/counter\[4:0\]} \
{/test/u_IOTDF/counter_nxt\[4:0\]} \
{/test/u_IOTDF/input_data\[127:0\]} \
{/test/u_IOTDF/input_data_nxt\[127:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/o_busy} \
{/test/u_IOTDF/state\[1:0\]} \
{/test/u_IOTDF/state_nxt\[1:0\]} \
{/test/u_IOTDF/rst} \
{/test/u_IOTDF/o_busy_nxt} \
{/test/u_IOTDF/busy} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 536.463202
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 536.463202
wvSetCursor -win $_nWave1 20246.518633
wvSetCursor -win $_nWave1 21299.576030
wvSetCursor -win $_nWave1 21577.742135
wvSetCursor -win $_nWave1 22491.716479
wvSetCursor -win $_nWave1 24081.237079
wvSetCursor -win $_nWave1 25869.447753
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 36402.672168
wvResizeWindow -win $_nWave1 8 31 1707 996
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSetCursor -win $_nWave1 35974.323713
wvSetCursor -win $_nWave1 35974.323713
wvSetCursor -win $_nWave1 22843.500222
wvSetCursor -win $_nWave1 21010.365532
wvSetCursor -win $_nWave1 21010.365532
wvSetCursor -win $_nWave1 22086.335894
wvSetCursor -win $_nWave1 22943.127108
wvSetCursor -win $_nWave1 24696.560290
wvSetCursor -win $_nWave1 25573.276881
wvSetCursor -win $_nWave1 25573.276881
wvSetCursor -win $_nWave1 28143.650523
wvSetCursor -win $_nWave1 28880.889475
wvSetCursor -win $_nWave1 30375.292755
wvSetCursor -win $_nWave1 31750.143773
wvSetCursor -win $_nWave1 31750.143773
wvSetCursor -win $_nWave1 35516.040040
wvSetCursor -win $_nWave1 36592.010402
wvResizeWindow -win $_nWave1 8 31 1707 996
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSetCursor -win $_nWave1 974.200194
wvSetCursor -win $_nWave1 974.200194
wvSetCursor -win $_nWave1 41275.985379
wvSetCursor -win $_nWave1 49248.521660
wvSetCursor -win $_nWave1 54457.510452
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvZoom -win $_nWave1 56386.133442 56485.541625
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 56137.063768 -snap {("G1" 0)}
wvSetCursor -win $_nWave1 59600.000000
wvSetCursor -win $_nWave1 56187.277846
wvSetCursor -win $_nWave1 56794.868193
wvSetCursor -win $_nWave1 57322.116015
wvSetCursor -win $_nWave1 58271.162094
wvSetCursor -win $_nWave1 1064.538459 -snap {("G1" 10)}
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 600.000000
wvSetCursor -win $_nWave1 600.000000
wvSetCursor -win $_nWave1 35620.509244
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 40827.720845
wvSetCursor -win $_nWave1 39989.145738
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 56005.377961
wvSetCursor -win $_nWave1 56743.524911
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 10495603.517186
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/counter\[4:0\]} \
{/test/u_IOTDF/counter_nxt\[4:0\]} \
{/test/u_IOTDF/input_data\[127:0\]} \
{/test/u_IOTDF/input_data_nxt\[127:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/o_busy} \
{/test/u_IOTDF/state\[1:0\]} \
{/test/u_IOTDF/state_nxt\[1:0\]} \
{/test/u_IOTDF/rst} \
{/test/u_IOTDF/o_busy_nxt} \
{/test/u_IOTDF/busy} \
{/test/u_IOTDF/in_en} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/counter\[4:0\]} \
{/test/u_IOTDF/counter_nxt\[4:0\]} \
{/test/u_IOTDF/input_data\[127:0\]} \
{/test/u_IOTDF/input_data_nxt\[127:0\]} \
{/test/u_IOTDF/iot_in\[7:0\]} \
{/test/u_IOTDF/o_busy} \
{/test/u_IOTDF/state\[1:0\]} \
{/test/u_IOTDF/state_nxt\[1:0\]} \
{/test/u_IOTDF/rst} \
{/test/u_IOTDF/o_busy_nxt} \
{/test/u_IOTDF/busy} \
{/test/u_IOTDF/in_en} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvGetSignalClose -win $_nWave1
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 2199.376628 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvResizeWindow -win $_nWave1 8 31 1707 996
wvSetCursor -win $_nWave1 4728.404638
wvSetCursor -win $_nWave1 4813.736781
wvSetCursor -win $_nWave1 5064.713673
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1508.967841
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 48297.449847
wvResizeWindow -win $_nWave1 8 31 1707 996
wvResizeWindow -win $_nWave1 8 31 1707 996
wvSetCursor -win $_nWave1 1364.966433
wvSetCursor -win $_nWave1 1364.966433
wvSetCursor -win $_nWave1 3170.922020
wvSetCursor -win $_nWave1 2194.446034
wvSetCursor -win $_nWave1 3055.424861
wvSetCursor -win $_nWave1 3580.411950
wvSetCursor -win $_nWave1 3202.421246
wvSetCursor -win $_nWave1 2152.447067 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvExit
