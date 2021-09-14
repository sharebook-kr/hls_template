#include "dut.h"


void dut(
    // IN
    hls::stream<uint8>      &chan_in,
    // OUT
    hls::stream<uint8>      &chan_out)
{
    for (int i=0; i < 10; i++) {
#pragma HLS PIPELINE II=1
        uint8 data = chan_in.read();
        chan_out.write(data+1);
    }
}
