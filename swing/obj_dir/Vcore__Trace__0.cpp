// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vcore__Syms.h"


void Vcore___024root__trace_chg_0_sub_0(Vcore___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vcore___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root__trace_chg_0\n"); );
    // Init
    Vcore___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vcore___024root*>(voidSelf);
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vcore___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vcore___024root__trace_chg_0_sub_0(Vcore___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root__trace_chg_0_sub_0\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY(vlSelfRef.__Vm_traceActivity[1U])) {
        bufp->chgBit(oldp+0,(vlSelfRef.core__DOT__axil_slave_inst__DOT__gen_SIMPLE_WRITES__DOT__axil_awready));
        bufp->chgBit(oldp+1,(vlSelfRef.core__DOT__axil_slave_inst__DOT__axil_bvalid));
        bufp->chgIData(oldp+2,(vlSelfRef.core__DOT__axil_slave_inst__DOT__axil_read_data),32);
        bufp->chgBit(oldp+3,(vlSelfRef.core__DOT__axil_slave_inst__DOT__axil_read_valid));
    }
    bufp->chgBit(oldp+4,(vlSelfRef.s00_axi_aclk));
    bufp->chgBit(oldp+5,(vlSelfRef.s00_axi_aresetn));
    bufp->chgSData(oldp+6,(vlSelfRef.s00_axi_awaddr),13);
    bufp->chgCData(oldp+7,(vlSelfRef.s00_axi_awprot),3);
    bufp->chgBit(oldp+8,(vlSelfRef.s00_axi_awvalid));
    bufp->chgBit(oldp+9,(vlSelfRef.s00_axi_awready));
    bufp->chgIData(oldp+10,(vlSelfRef.s00_axi_wdata),32);
    bufp->chgCData(oldp+11,(vlSelfRef.s00_axi_wstrb),4);
    bufp->chgBit(oldp+12,(vlSelfRef.s00_axi_wvalid));
    bufp->chgBit(oldp+13,(vlSelfRef.s00_axi_wready));
    bufp->chgCData(oldp+14,(vlSelfRef.s00_axi_bresp),2);
    bufp->chgBit(oldp+15,(vlSelfRef.s00_axi_bvalid));
    bufp->chgBit(oldp+16,(vlSelfRef.s00_axi_bready));
    bufp->chgSData(oldp+17,(vlSelfRef.s00_axi_araddr),13);
    bufp->chgCData(oldp+18,(vlSelfRef.s00_axi_arprot),3);
    bufp->chgBit(oldp+19,(vlSelfRef.s00_axi_arvalid));
    bufp->chgBit(oldp+20,(vlSelfRef.s00_axi_arready));
    bufp->chgIData(oldp+21,(vlSelfRef.s00_axi_rdata),32);
    bufp->chgCData(oldp+22,(vlSelfRef.s00_axi_rresp),2);
    bufp->chgBit(oldp+23,(vlSelfRef.s00_axi_rvalid));
    bufp->chgBit(oldp+24,(vlSelfRef.s00_axi_rready));
    bufp->chgBit(oldp+25,((1U & (~ (IData)(vlSelfRef.s00_axi_aresetn)))));
    bufp->chgSData(oldp+26,((0x7ffU & ((IData)(vlSelfRef.s00_axi_awaddr) 
                                       >> 2U))),11);
    bufp->chgBit(oldp+27,(((IData)(vlSelfRef.s00_axi_arready) 
                           & (IData)(vlSelfRef.s00_axi_arvalid))));
    bufp->chgSData(oldp+28,((0x7ffU & ((IData)(vlSelfRef.s00_axi_araddr) 
                                       >> 2U))),11);
    bufp->chgIData(oldp+29,(vlSelfRef.core__DOT__axil_slave_inst__DOT__wskd),32);
}

void Vcore___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root__trace_cleanup\n"); );
    // Init
    Vcore___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vcore___024root*>(voidSelf);
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
}
