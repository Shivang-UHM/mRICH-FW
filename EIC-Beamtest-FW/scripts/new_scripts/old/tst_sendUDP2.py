#!/usr/bin/env python
'''
OVERVIEW:
Test script for sending UDP Packets.
 
AUTHORS:
Bronson Edralin <bedralin@hawaii.edu>
University of Hawaii at Manoa
Instrumentation Development Lab (IDLab), WAT214

DESCRIPTION:
chmod +x tst_sendUDP.py
./tst_sendUDP.py
'''


import sys
import os
SCRIPTPATH = os.path.dirname(__file__)
sys.path.append( SCRIPTPATH+'/lib/' )
import linkEth

# Ethernet Configuration
addr_fpga = '192.168.20.5'
addr_pc = '192.168.20.1'
port_pc = '28672'
port_fpga = '24576'
interface = 'eth1'
#port_pc='24576'
#port_fpga='28672'

# Make UDP class for receiving/sending UDP Packets
ctrl = linkEth.UDP(addr_fpga, port_fpga, addr_pc, port_pc, interface)

#data="000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F303132333435363738393A3B3C3D3E3F404142434445464748494A4B4C4D4E4F505152535455565758595A5B5C5D5E5F606162636465666768696A6B6C6D6E6F";
data="000000010253594e4300000000"+\
"01234567AE000100AF000000AE000100AF008000AE000100AE008000AE000100"+\
"AE000100AF00FFFFAE000100AE000100AF008000AE000100AF050080AE000100"+\
"AF060140AE000100AF140000AE000100AF1E0000AE000100AF1F0000AE000100AF320000AE000100"+\
"AF2C0000AE000100AF2D0001AE000100AF2D0000AE000100AF330100AE000100"+\
"AF340000AE000100AF350000AE000100AF360003AE000100AF370001AE000100"+\
"AF370000AE000100AF380000AE000100AF390004AE000100AF3A0000AE000100"+\
"AF4803FFAE000100AF3D0F00AE000100AF260000AE000100AF260800AE000100"+\
"AF260000AE000100AF261080AE000100AF25C000AE000100AF4B0000AE000100"+\
"AF4C0003AE000100AF270000AE000100AF0B8001AE000100AF0A0000AE000100"+\
"AF0A0001AE000100AF0A0000AE000100AF3E0000AE000100AF460000AE000100"+\
"AF470000AE000100AF470001AE000100AF470000AE000100AF460001AE000100"+\
"AF270000AE000100AF4D0450AE000100AF4DC450AE000100AF008D0EAE000100";


#data = data*3

# Transmit UDP packet
ctrl.send(data)

