// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vcore.h for the primary calling header

#include "Vcore__pch.h"
#include "Vcore___024root.h"

void Vcore___024root___ico_sequent__TOP__0(Vcore___024root* vlSelf);

void Vcore___024root___eval_ico(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___eval_ico\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VicoTriggered.word(0U))) {
        Vcore___024root___ico_sequent__TOP__0(vlSelf);
    }
}

VL_INLINE_OPT void Vcore___024root___ico_sequent__TOP__0(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___ico_sequent__TOP__0\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__prior_data;
    __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__prior_data = 0;
    IData/*31:0*/ __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__new_data;
    __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__new_data = 0;
    CData/*3:0*/ __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__wstrb;
    __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__wstrb = 0;
    // Body
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

void Vcore___024root___eval_triggers__ico(Vcore___024root* vlSelf);

bool Vcore___024root___eval_phase__ico(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___eval_phase__ico\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VicoExecute;
    // Body
    Vcore___024root___eval_triggers__ico(vlSelf);
    __VicoExecute = vlSelfRef.__VicoTriggered.any();
    if (__VicoExecute) {
        Vcore___024root___eval_ico(vlSelf);
    }
    return (__VicoExecute);
}

void Vcore___024root___eval_act(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___eval_act\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

void Vcore___024root___nba_sequent__TOP__0(Vcore___024root* vlSelf);

void Vcore___024root___eval_nba(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___eval_nba\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vcore___024root___nba_sequent__TOP__0(vlSelf);
        vlSelfRef.__Vm_traceActivity[1U] = 1U;
    }
}

VL_INLINE_OPT void Vcore___024root___nba_sequent__TOP__0(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___nba_sequent__TOP__0\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__prior_data;
    __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__prior_data = 0;
    IData/*31:0*/ __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__new_data;
    __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__new_data = 0;
    CData/*3:0*/ __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__wstrb;
    __Vfunc_core__DOT__axil_slave_inst__DOT__apply_wstrb__0__wstrb = 0;
    CData/*0:0*/ __Vdly__core__DOT__axil_slave_inst__DOT__gen_SIMPLE_WRITES__DOT__axil_awready;
    __Vdly__core__DOT__axil_slave_inst__DOT__gen_SIMPLE_WRITES__DOT__axil_awready = 0;
    IData/*31:0*/ __VdlyVal__core__DOT__axil_slave_inst__DOT__mem__v0;
    __VdlyVal__core__DOT__axil_slave_inst__DOT__mem__v0 = 0;
    SData/*10:0*/ __VdlyDim0__core__DOT__axil_slave_inst__DOT__mem__v0;
    __VdlyDim0__core__DOT__axil_slave_inst__DOT__mem__v0 = 0;
    CData/*0:0*/ __VdlySet__core__DOT__axil_slave_inst__DOT__mem__v0;
    __VdlySet__core__DOT__axil_slave_inst__DOT__mem__v0 = 0;
    CData/*0:0*/ __VdlySet__core__DOT__axil_slave_inst__DOT__mem__v1;
    __VdlySet__core__DOT__axil_slave_inst__DOT__mem__v1 = 0;
    // Body
    __Vdly__core__DOT__axil_slave_inst__DOT__gen_SIMPLE_WRITES__DOT__axil_awready 
        = vlSelfRef.core__DOT__axil_slave_inst__DOT__gen_SIMPLE_WRITES__DOT__axil_awready;
    __VdlySet__core__DOT__axil_slave_inst__DOT__mem__v0 = 0U;
    __VdlySet__core__DOT__axil_slave_inst__DOT__mem__v1 = 0U;
    if (vlSelfRef.s00_axi_aresetn) {
        __Vdly__core__DOT__axil_slave_inst__DOT__gen_SIMPLE_WRITES__DOT__axil_awready 
            = (((~ (IData)(vlSelfRef.core__DOT__axil_slave_inst__DOT__gen_SIMPLE_WRITES__DOT__axil_awready)) 
                & ((IData)(vlSelfRef.s00_axi_awvalid) 
                   & (IData)(vlSelfRef.s00_axi_wvalid))) 
               & ((~ (IData)(vlSelfRef.s00_axi_bvalid)) 
                  | (IData)(vlSelfRef.s00_axi_bready)));
        if (vlSelfRef.core__DOT__axil_slave_inst__DOT__gen_SIMPLE_WRITES__DOT__axil_awready) {
            vlSelfRef.core__DOT__axil_slave_inst__DOT____Vlvbound_h7f402904__0 
                = vlSelfRef.core__DOT__axil_slave_inst__DOT__wskd;
            if ((0x5dbU >= (0x7ffU & ((IData)(vlSelfRef.s00_axi_awaddr) 
                                      >> 2U)))) {
                __VdlyVal__core__DOT__axil_slave_inst__DOT__mem__v0 
                    = vlSelfRef.core__DOT__axil_slave_inst__DOT____Vlvbound_h7f402904__0;
                __VdlyDim0__core__DOT__axil_slave_inst__DOT__mem__v0 
                    = (0x7ffU & ((IData)(vlSelfRef.s00_axi_awaddr) 
                                 >> 2U));
                __VdlySet__core__DOT__axil_slave_inst__DOT__mem__v0 = 1U;
            }
            vlSelfRef.core__DOT__axil_slave_inst__DOT__axil_bvalid = 1U;
        } else if (vlSelfRef.s00_axi_bready) {
            vlSelfRef.core__DOT__axil_slave_inst__DOT__axil_bvalid = 0U;
        }
        if (((IData)(vlSelfRef.s00_axi_arready) & (IData)(vlSelfRef.s00_axi_arvalid))) {
            vlSelfRef.core__DOT__axil_slave_inst__DOT__axil_read_valid = 1U;
        } else if (vlSelfRef.s00_axi_rready) {
            vlSelfRef.core__DOT__axil_slave_inst__DOT__axil_read_valid = 0U;
        }
    } else {
        __Vdly__core__DOT__axil_slave_inst__DOT__gen_SIMPLE_WRITES__DOT__axil_awready = 0U;
        __VdlySet__core__DOT__axil_slave_inst__DOT__mem__v1 = 1U;
        vlSelfRef.core__DOT__axil_slave_inst__DOT__axil_read_valid = 0U;
        vlSelfRef.core__DOT__axil_slave_inst__DOT__axil_bvalid = 0U;
    }
    if ((1U & ((~ (IData)(vlSelfRef.s00_axi_rvalid)) 
               | (IData)(vlSelfRef.s00_axi_rready)))) {
        vlSelfRef.core__DOT__axil_slave_inst__DOT__axil_read_data 
            = ((0x5dbU >= (0x7ffU & ((IData)(vlSelfRef.s00_axi_araddr) 
                                     >> 2U))) ? vlSelfRef.core__DOT__axil_slave_inst__DOT__mem
               [(0x7ffU & ((IData)(vlSelfRef.s00_axi_araddr) 
                           >> 2U))] : 0U);
    }
    vlSelfRef.core__DOT__axil_slave_inst__DOT__gen_SIMPLE_WRITES__DOT__axil_awready 
        = __Vdly__core__DOT__axil_slave_inst__DOT__gen_SIMPLE_WRITES__DOT__axil_awready;
    if (__VdlySet__core__DOT__axil_slave_inst__DOT__mem__v0) {
        vlSelfRef.core__DOT__axil_slave_inst__DOT__mem[__VdlyDim0__core__DOT__axil_slave_inst__DOT__mem__v0] 
            = __VdlyVal__core__DOT__axil_slave_inst__DOT__mem__v0;
    }
    if (__VdlySet__core__DOT__axil_slave_inst__DOT__mem__v1) {
        IData/*31:0*/ __Vilp1;
        __Vilp1 = 0U;
        while ((__Vilp1 <= 0x5dbU)) {
            vlSelfRef.core__DOT__axil_slave_inst__DOT__mem[__Vilp1] = 0U;
            __Vilp1 = ((IData)(1U) + __Vilp1);
        }
    }
    vlSelfRef.s00_axi_arready = (1U & (~ (IData)(vlSelfRef.core__DOT__axil_slave_inst__DOT__axil_read_valid)));
    vlSelfRef.s00_axi_rvalid = vlSelfRef.core__DOT__axil_slave_inst__DOT__axil_read_valid;
    vlSelfRef.s00_axi_bvalid = vlSelfRef.core__DOT__axil_slave_inst__DOT__axil_bvalid;
    vlSelfRef.s00_axi_awready = vlSelfRef.core__DOT__axil_slave_inst__DOT__gen_SIMPLE_WRITES__DOT__axil_awready;
    vlSelfRef.s00_axi_wready = vlSelfRef.core__DOT__axil_slave_inst__DOT__gen_SIMPLE_WRITES__DOT__axil_awready;
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

void Vcore___024root___eval_triggers__act(Vcore___024root* vlSelf);

bool Vcore___024root___eval_phase__act(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___eval_phase__act\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    VlTriggerVec<1> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vcore___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelfRef.__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelfRef.__VactTriggered, vlSelfRef.__VnbaTriggered);
        vlSelfRef.__VnbaTriggered.thisOr(vlSelfRef.__VactTriggered);
        Vcore___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vcore___024root___eval_phase__nba(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___eval_phase__nba\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelfRef.__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vcore___024root___eval_nba(vlSelf);
        vlSelfRef.__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vcore___024root___dump_triggers__ico(Vcore___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vcore___024root___dump_triggers__nba(Vcore___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vcore___024root___dump_triggers__act(Vcore___024root* vlSelf);
#endif  // VL_DEBUG

void Vcore___024root___eval(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___eval\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __VicoIterCount;
    CData/*0:0*/ __VicoContinue;
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VicoIterCount = 0U;
    vlSelfRef.__VicoFirstIteration = 1U;
    __VicoContinue = 1U;
    while (__VicoContinue) {
        if (VL_UNLIKELY((0x64U < __VicoIterCount))) {
#ifdef VL_DEBUG
            Vcore___024root___dump_triggers__ico(vlSelf);
#endif
            VL_FATAL_MT("hdl/core.v", 4, "", "Input combinational region did not converge.");
        }
        __VicoIterCount = ((IData)(1U) + __VicoIterCount);
        __VicoContinue = 0U;
        if (Vcore___024root___eval_phase__ico(vlSelf)) {
            __VicoContinue = 1U;
        }
        vlSelfRef.__VicoFirstIteration = 0U;
    }
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vcore___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("hdl/core.v", 4, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelfRef.__VactIterCount = 0U;
        vlSelfRef.__VactContinue = 1U;
        while (vlSelfRef.__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelfRef.__VactIterCount))) {
#ifdef VL_DEBUG
                Vcore___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("hdl/core.v", 4, "", "Active region did not converge.");
            }
            vlSelfRef.__VactIterCount = ((IData)(1U) 
                                         + vlSelfRef.__VactIterCount);
            vlSelfRef.__VactContinue = 0U;
            if (Vcore___024root___eval_phase__act(vlSelf)) {
                vlSelfRef.__VactContinue = 1U;
            }
        }
        if (Vcore___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vcore___024root___eval_debug_assertions(Vcore___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vcore__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcore___024root___eval_debug_assertions\n"); );
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if (VL_UNLIKELY((vlSelfRef.s00_axi_aclk & 0xfeU))) {
        Verilated::overWidthError("s00_axi_aclk");}
    if (VL_UNLIKELY((vlSelfRef.s00_axi_aresetn & 0xfeU))) {
        Verilated::overWidthError("s00_axi_aresetn");}
    if (VL_UNLIKELY((vlSelfRef.s00_axi_awaddr & 0xe000U))) {
        Verilated::overWidthError("s00_axi_awaddr");}
    if (VL_UNLIKELY((vlSelfRef.s00_axi_awprot & 0xf8U))) {
        Verilated::overWidthError("s00_axi_awprot");}
    if (VL_UNLIKELY((vlSelfRef.s00_axi_awvalid & 0xfeU))) {
        Verilated::overWidthError("s00_axi_awvalid");}
    if (VL_UNLIKELY((vlSelfRef.s00_axi_wstrb & 0xf0U))) {
        Verilated::overWidthError("s00_axi_wstrb");}
    if (VL_UNLIKELY((vlSelfRef.s00_axi_wvalid & 0xfeU))) {
        Verilated::overWidthError("s00_axi_wvalid");}
    if (VL_UNLIKELY((vlSelfRef.s00_axi_bready & 0xfeU))) {
        Verilated::overWidthError("s00_axi_bready");}
    if (VL_UNLIKELY((vlSelfRef.s00_axi_araddr & 0xe000U))) {
        Verilated::overWidthError("s00_axi_araddr");}
    if (VL_UNLIKELY((vlSelfRef.s00_axi_arprot & 0xf8U))) {
        Verilated::overWidthError("s00_axi_arprot");}
    if (VL_UNLIKELY((vlSelfRef.s00_axi_arvalid & 0xfeU))) {
        Verilated::overWidthError("s00_axi_arvalid");}
    if (VL_UNLIKELY((vlSelfRef.s00_axi_rready & 0xfeU))) {
        Verilated::overWidthError("s00_axi_rready");}
}
#endif  // VL_DEBUG
