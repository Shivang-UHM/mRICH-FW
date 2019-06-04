Version 4
SymbolType BLOCK
TEXT 32 32 LEFT 4 tri_mode_eth_mac_v5_5
RECTANGLE Normal 32 32 736 1920
LINE Normal 0 80 32 80
PIN 0 80 LEFT 36
PINATTR PinName glbl_rstn
PINATTR Polarity IN
LINE Normal 0 112 32 112
PIN 0 112 LEFT 36
PINATTR PinName rx_axi_rstn
PINATTR Polarity IN
LINE Normal 0 144 32 144
PIN 0 144 LEFT 36
PINATTR PinName tx_axi_rstn
PINATTR Polarity IN
LINE Normal 0 208 32 208
PIN 0 208 LEFT 36
PINATTR PinName tx_axi_clk
PINATTR Polarity IN
LINE Normal 0 240 32 240
PIN 0 240 LEFT 36
PINATTR PinName tx_reset_out
PINATTR Polarity OUT
LINE Wide 0 272 32 272
PIN 0 272 LEFT 36
PINATTR PinName tx_axis_mac_tdata[7:0]
PINATTR Polarity IN
LINE Normal 0 304 32 304
PIN 0 304 LEFT 36
PINATTR PinName tx_axis_mac_tvalid
PINATTR Polarity IN
LINE Normal 0 336 32 336
PIN 0 336 LEFT 36
PINATTR PinName tx_axis_mac_tlast
PINATTR Polarity IN
LINE Wide 0 368 32 368
PIN 0 368 LEFT 36
PINATTR PinName tx_axis_mac_tuser[0:0]
PINATTR Polarity IN
LINE Normal 0 400 32 400
PIN 0 400 LEFT 36
PINATTR PinName tx_axis_mac_tready
PINATTR Polarity OUT
LINE Wide 0 496 32 496
PIN 0 496 LEFT 36
PINATTR PinName tx_ifg_delay[7:0]
PINATTR Polarity IN
LINE Normal 0 528 32 528
PIN 0 528 LEFT 36
PINATTR PinName tx_enable
PINATTR Polarity IN
LINE Wide 0 560 32 560
PIN 0 560 LEFT 36
PINATTR PinName tx_statistics_vector[31:0]
PINATTR Polarity OUT
LINE Normal 0 592 32 592
PIN 0 592 LEFT 36
PINATTR PinName tx_statistics_valid
PINATTR Polarity OUT
LINE Normal 0 656 32 656
PIN 0 656 LEFT 36
PINATTR PinName rx_axi_clk
PINATTR Polarity IN
LINE Normal 0 688 32 688
PIN 0 688 LEFT 36
PINATTR PinName rx_reset_out
PINATTR Polarity OUT
LINE Wide 0 720 32 720
PIN 0 720 LEFT 36
PINATTR PinName rx_axis_mac_tdata[7:0]
PINATTR Polarity OUT
LINE Normal 0 752 32 752
PIN 0 752 LEFT 36
PINATTR PinName rx_axis_mac_tvalid
PINATTR Polarity OUT
LINE Normal 0 784 32 784
PIN 0 784 LEFT 36
PINATTR PinName rx_axis_mac_tlast
PINATTR Polarity OUT
LINE Normal 0 816 32 816
PIN 0 816 LEFT 36
PINATTR PinName rx_axis_mac_tuser
PINATTR Polarity OUT
LINE Wide 0 848 32 848
PIN 0 848 LEFT 36
PINATTR PinName rx_axis_filter_tuser[4:0]
PINATTR Polarity OUT
LINE Normal 0 880 32 880
PIN 0 880 LEFT 36
PINATTR PinName rx_enable
PINATTR Polarity IN
LINE Wide 0 912 32 912
PIN 0 912 LEFT 36
PINATTR PinName rx_statistics_vector[27:0]
PINATTR Polarity OUT
LINE Normal 0 944 32 944
PIN 0 944 LEFT 36
PINATTR PinName rx_statistics_valid
PINATTR Polarity OUT
LINE Normal 0 1008 32 1008
PIN 0 1008 LEFT 36
PINATTR PinName pause_req
PINATTR Polarity IN
LINE Wide 0 1040 32 1040
PIN 0 1040 LEFT 36
PINATTR PinName pause_val[15:0]
PINATTR Polarity IN
LINE Normal 0 1104 32 1104
PIN 0 1104 LEFT 36
PINATTR PinName stats_ref_clk
PINATTR Polarity IN
LINE Wide 0 1136 32 1136
PIN 0 1136 LEFT 36
PINATTR PinName increment_vector[4:33]
PINATTR Polarity IN
LINE Normal 0 1200 32 1200
PIN 0 1200 LEFT 36
PINATTR PinName speed_is_100
PINATTR Polarity OUT
LINE Normal 0 1232 32 1232
PIN 0 1232 LEFT 36
PINATTR PinName speed_is_10_100
PINATTR Polarity OUT
LINE Wide 768 112 736 112
PIN 768 112 RIGHT 36
PINATTR PinName gmii_txd[7:0]
PINATTR Polarity OUT
LINE Normal 768 144 736 144
PIN 768 144 RIGHT 36
PINATTR PinName gmii_tx_en
PINATTR Polarity OUT
LINE Normal 768 176 736 176
PIN 768 176 RIGHT 36
PINATTR PinName gmii_tx_er
PINATTR Polarity OUT
LINE Wide 768 304 736 304
PIN 768 304 RIGHT 36
PINATTR PinName gmii_rxd[7:0]
PINATTR Polarity IN
LINE Normal 768 336 736 336
PIN 768 336 RIGHT 36
PINATTR PinName gmii_rx_dv
PINATTR Polarity IN
LINE Normal 768 368 736 368
PIN 768 368 RIGHT 36
PINATTR PinName gmii_rx_er
PINATTR Polarity IN
LINE Normal 768 432 736 432
PIN 768 432 RIGHT 36
PINATTR PinName mdc_out
PINATTR Polarity OUT
LINE Normal 768 464 736 464
PIN 768 464 RIGHT 36
PINATTR PinName mdio_tri
PINATTR Polarity OUT
LINE Normal 768 496 736 496
PIN 768 496 RIGHT 36
PINATTR PinName mdio_out
PINATTR Polarity OUT
LINE Normal 768 528 736 528
PIN 768 528 RIGHT 36
PINATTR PinName mdio_in
PINATTR Polarity IN
LINE Normal 768 688 736 688
PIN 768 688 RIGHT 36
PINATTR PinName bus2ip_clk
PINATTR Polarity IN
LINE Normal 768 720 736 720
PIN 768 720 RIGHT 36
PINATTR PinName bus2ip_reset
PINATTR Polarity IN
LINE Wide 768 752 736 752
PIN 768 752 RIGHT 36
PINATTR PinName bus2ip_addr[31:0]
PINATTR Polarity IN
LINE Normal 768 784 736 784
PIN 768 784 RIGHT 36
PINATTR PinName bus2ip_cs
PINATTR Polarity IN
LINE Normal 768 816 736 816
PIN 768 816 RIGHT 36
PINATTR PinName bus2ip_rdce
PINATTR Polarity IN
LINE Normal 768 848 736 848
PIN 768 848 RIGHT 36
PINATTR PinName bus2ip_wrce
PINATTR Polarity IN
LINE Wide 768 880 736 880
PIN 768 880 RIGHT 36
PINATTR PinName bus2ip_data[31:0]
PINATTR Polarity IN
LINE Wide 768 912 736 912
PIN 768 912 RIGHT 36
PINATTR PinName ip2bus_data[31:0]
PINATTR Polarity OUT
LINE Normal 768 944 736 944
PIN 768 944 RIGHT 36
PINATTR PinName ip2bus_wrack
PINATTR Polarity OUT
LINE Normal 768 976 736 976
PIN 768 976 RIGHT 36
PINATTR PinName ip2bus_rdack
PINATTR Polarity OUT
LINE Normal 768 1008 736 1008
PIN 768 1008 RIGHT 36
PINATTR PinName ip2bus_error
PINATTR Polarity OUT
LINE Normal 768 1040 736 1040
PIN 768 1040 RIGHT 36
PINATTR PinName mac_irq
PINATTR Polarity OUT

