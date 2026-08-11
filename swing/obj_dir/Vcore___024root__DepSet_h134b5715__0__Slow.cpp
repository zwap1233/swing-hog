// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vcore.h for the primary calling header

#include "Vcore__pch.h"
#include "Vcore___024root.h"

VL_ATTR_COLD void Vcore___024root___eval_static(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___eval_static\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

VL_ATTR_COLD void Vcore___024root___eval_initial__TOP(Vcore___024root* vlSelf);
VL_ATTR_COLD void Vcore___024root____Vm_traceActivitySetAll(Vcore___024root* vlSelf);

VL_ATTR_COLD void Vcore___024root___eval_initial(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___eval_initial\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    Vcore___024root___eval_initial__TOP(vlSelf);
    Vcore___024root____Vm_traceActivitySetAll(vlSelf);
    vlSelfRef.__Vtrigprevexpr___TOP__s00_axi_aclk__0 
        = vlSelfRef.s00_axi_aclk;
}

VL_ATTR_COLD void Vcore___024root___eval_initial__TOP(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___eval_initial__TOP\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.core__DOT__axil_slave_inst__DOT__gen_SIMPLE_WRITES__DOT__axil_awready = 0U;
    vlSelfRef.core__DOT__axil_slave_inst__DOT__axil_bvalid = 0U;
    vlSelfRef.core__DOT__axil_slave_inst__DOT__axil_read_valid = 0U;
    IData/*31:0*/ __Vilp1;
    __Vilp1 = 0U;
    while ((__Vilp1 <= 0x5dbU)) {
        vlSelfRef.core__DOT__axil_slave_inst__DOT__mem[__Vilp1] = 0U;
        __Vilp1 = ((IData)(1U) + __Vilp1);
    }
    vlSelfRef.core__DOT__axil_slave_inst__DOT__axil_read_data = 0U;
    vlSelfRef.s00_axi_bresp = 0U;
    vlSelfRef.s00_axi_rresp = 0U;
}

VL_ATTR_COLD void Vcore___024root___eval_final(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___eval_final\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vcore___024root___dump_triggers__stl(Vcore___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vcore___024root___eval_phase__stl(Vcore___024root* vlSelf);

VL_ATTR_COLD void Vcore___024root___eval_settle(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___eval_settle\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __VstlIterCount;
    CData/*0:0*/ __VstlContinue;
    // Body
    __VstlIterCount = 0U;
    vlSelfRef.__VstlFirstIteration = 1U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        if (VL_UNLIKELY((0x64U < __VstlIterCount))) {
#ifdef VL_DEBUG
            Vcore___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("hdl/core.v", 4, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vcore___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelfRef.__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vcore___024root___dump_triggers__stl(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___dump_triggers__stl\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VstlTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vcore___024root___stl_sequent__TOP__0(Vcore___024root* vlSelf);

VL_ATTR_COLD void Vcore___024root___eval_stl(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___eval_stl\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VstlTriggered.word(0U))) {
        Vcore___024root___stl_sequent__TOP__0(vlSelf);
    }
}

VL_ATTR_COLD void Vcore___024root___stl_sequent__TOP__0(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___stl_sequent__TOP__0\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__prior_data;
    __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__prior_data = 0;
    IData/*31:0*/ __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__new_data;
    __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__new_data = 0;
    CData/*3:0*/ __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__wstrb;
    __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__wstrb = 0;
    // Body
    vlSelfRef.s00_axi_awready = vlSelfRef.core__DOT__axil_slave_inst__DOT__gen_SIMPLE_WRITES__DOT__axil_awready;
    vlSelfRef.s00_axi_wready = vlSelfRef.core__DOT__axil_slave_inst__DOT__gen_SIMPLE_WRITES__DOT__axil_awready;
    vlSelfRef.s00_axi_bvalid = vlSelfRef.core__DOT__axil_slave_inst__DOT__axil_bvalid;
    vlSelfRef.s00_axi_arready = (1U & (~ (IData)(vlSelfRef.core__DOT__axil_slave_inst__DOT__axil_read_valid)));
    vlSelfRef.s00_axi_rvalid = vlSelfRef.core__DOT__axil_slave_inst__DOT__axil_read_valid;
    vlSelfRef.s00_axi_rdata = vlSelfRef.core__DOT__axil_slave_inst__DOT__axil_read_data;
    __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__wstrb 
        = vlSelfRef.s00_axi_wstrb;
    __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__new_data 
        = vlSelfRef.s00_axi_wdata;
    __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__prior_data 
        = ((0x5dbU >= (0x7ffU & ((IData)(vlSelfRef.s00_axi_awaddr) 
                                 >> 2U))) ? vlSelfRef.core__DOT__axil_slave_inst__DOT__mem
           [(0x7ffU & ((IData)(vlSelfRef.s00_axi_awaddr) 
                       >> 2U))] : 0U);
    vlSelfRef.__Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__Vfuncout 
        = ((0xffff0000U & vlSelfRef.__Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__Vfuncout) 
           | ((0xff00U & (((2U & (IData)(__Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__wstrb))
                            ? (__Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__new_data 
                               >> 8U) : (__Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__prior_data 
                                         >> 8U)) << 8U)) 
              | (0xffU & ((1U & (IData)(__Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__wstrb))
                           ? __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__new_data
                           : __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__prior_data))));
    vlSelfRef.__Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__Vfuncout 
        = ((0xffffU & vlSelfRef.__Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__Vfuncout) 
           | ((((8U & (IData)(__Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__wstrb))
                 ? (__Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__new_data 
                    >> 0x18U) : (__Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__prior_data 
                                 >> 0x18U)) << 0x18U) 
              | (0xff0000U & (((4U & (IData)(__Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__wstrb))
                                ? (__Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__new_data 
                                   >> 0x10U) : (__Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__prior_data 
                                                >> 0x10U)) 
                              << 0x10U))));
    vlSelfRef.core__DOT__axil_slave_inst__DOT__wskd 
        = vlSelfRef.__Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__Vfuncout;
}

VL_ATTR_COLD void Vcore___024root___eval_triggers__stl(Vcore___024root* vlSelf);

VL_ATTR_COLD bool Vcore___024root___eval_phase__stl(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___eval_phase__stl\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vcore___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelfRef.__VstlTriggered.any();
    if (__VstlExecute) {
        Vcore___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vcore___024root___dump_triggers__ico(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___dump_triggers__ico\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VicoTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VicoTriggered.word(0U))) {
        VL_DBG_MSGF("         'ico' region trigger index 0 is active: Internal 'ico' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vcore___024root___dump_triggers__act(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___dump_triggers__act\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VactTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge s00_axi_aclk)\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vcore___024root___dump_triggers__nba(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___dump_triggers__nba\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VnbaTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge s00_axi_aclk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vcore___024root____Vm_traceActivitySetAll(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root____Vm_traceActivitySetAll\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__Vm_traceActivity[0U] = 1U;
    vlSelfRef.__Vm_traceActivity[1U] = 1U;
}

VL_ATTR_COLD void Vcore___024root___ctor_var_reset(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___ctor_var_reset\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelf->s00_axi_aclk = VL_RAND_RESET_I(1);
    vlSelf->s00_axi_aresetn = VL_RAND_RESET_I(1);
    vlSelf->s00_axi_awaddr = VL_RAND_RESET_I(13);
    vlSelf->s00_axi_awprot = VL_RAND_RESET_I(3);
    vlSelf->s00_axi_awvalid = VL_RAND_RESET_I(1);
    vlSelf->s00_axi_awready = VL_RAND_RESET_I(1);
    vlSelf->s00_axi_wdata = VL_RAND_RESET_I(32);
    vlSelf->s00_axi_wstrb = VL_RAND_RESET_I(4);
    vlSelf->s00_axi_wvalid = VL_RAND_RESET_I(1);
    vlSelf->s00_axi_wready = VL_RAND_RESET_I(1);
    vlSelf->s00_axi_bresp = VL_RAND_RESET_I(2);
    vlSelf->s00_axi_bvalid = VL_RAND_RESET_I(1);
    vlSelf->s00_axi_bready = VL_RAND_RESET_I(1);
    vlSelf->s00_axi_araddr = VL_RAND_RESET_I(13);
    vlSelf->s00_axi_arprot = VL_RAND_RESET_I(3);
    vlSelf->s00_axi_arvalid = VL_RAND_RESET_I(1);
    vlSelf->s00_axi_arready = VL_RAND_RESET_I(1);
    vlSelf->s00_axi_rdata = VL_RAND_RESET_I(32);
    vlSelf->s00_axi_rresp = VL_RAND_RESET_I(2);
    vlSelf->s00_axi_rvalid = VL_RAND_RESET_I(1);
    vlSelf->s00_axi_rready = VL_RAND_RESET_I(1);
    vlSelf->core__DOT__axil_slave_inst__DOT__axil_bvalid = VL_RAND_RESET_I(1);
    vlSelf->core__DOT__axil_slave_inst__DOT__axil_read_data = VL_RAND_RESET_I(32);
    vlSelf->core__DOT__axil_slave_inst__DOT__axil_read_valid = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 1500; ++__Vi0) {
        vlSelf->core__DOT__axil_slave_inst__DOT__mem[__Vi0] = VL_RAND_RESET_I(32);
    }
    vlSelf->core__DOT__axil_slave_inst__DOT__wskd = VL_RAND_RESET_I(32);
    vlSelf->core__DOT__axil_slave_inst__DOT__gen_SIMPLE_WRITES__DOT__axil_awready = VL_RAND_RESET_I(1);
    vlSelf->core__DOT__axil_slave_inst__DOT____Vlvbound_h7f402904__0 = VL_RAND_RESET_I(32);
    vlSelf->__Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__Vfuncout = VL_RAND_RESET_I(32);
    vlSelf->__Vtrigprevexpr___TOP__s00_axi_aclk__0 = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 2; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}
