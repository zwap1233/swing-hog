// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vcore.h for the primary calling header

#ifndef VERILATED_VCORE___024ROOT_H_
#define VERILATED_VCORE___024ROOT_H_  // guard

#include "verilated.h"


class Vcore__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vcore___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(s00_axi_aclk,0,0);
    VL_IN8(s00_axi_aresetn,0,0);
    VL_IN8(s00_axi_awprot,2,0);
    VL_IN8(s00_axi_awvalid,0,0);
    VL_OUT8(s00_axi_awready,0,0);
    VL_IN8(s00_axi_wstrb,3,0);
    VL_IN8(s00_axi_wvalid,0,0);
    VL_OUT8(s00_axi_wready,0,0);
    VL_OUT8(s00_axi_bresp,1,0);
    VL_OUT8(s00_axi_bvalid,0,0);
    VL_IN8(s00_axi_bready,0,0);
    VL_IN8(s00_axi_arprot,2,0);
    VL_IN8(s00_axi_arvalid,0,0);
    VL_OUT8(s00_axi_arready,0,0);
    VL_OUT8(s00_axi_rresp,1,0);
    VL_OUT8(s00_axi_rvalid,0,0);
    VL_IN8(s00_axi_rready,0,0);
    CData/*0:0*/ core__DOT__axil_slave_inst__DOT__axil_bvalid;
    CData/*0:0*/ core__DOT__axil_slave_inst__DOT__axil_read_valid;
    CData/*0:0*/ core__DOT__axil_slave_inst__DOT__gen_SIMPLE_WRITES__DOT__axil_awready;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __VicoFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP__s00_axi_aclk__0;
    CData/*0:0*/ __VactContinue;
    VL_IN16(s00_axi_awaddr,12,0);
    VL_IN16(s00_axi_araddr,12,0);
    VL_IN(s00_axi_wdata,31,0);
    VL_OUT(s00_axi_rdata,31,0);
    IData/*31:0*/ core__DOT__axil_slave_inst__DOT__axil_read_data;
    IData/*31:0*/ core__DOT__axil_slave_inst__DOT__wskd;
    IData/*31:0*/ core__DOT__axil_slave_inst__DOT____Vlvbound_h7f402904__0;
    IData/*31:0*/ __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__Vfuncout;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<IData/*31:0*/, 1500> core__DOT__axil_slave_inst__DOT__mem;
    VlUnpacked<CData/*0:0*/, 2> __Vm_traceActivity;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vcore__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vcore___024root(Vcore__Syms* symsp, const char* v__name);
    ~Vcore___024root();
    VL_UNCOPYABLE(Vcore___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
