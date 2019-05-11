/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Ahmet Oguz Atli/Verilog/hwsec_project/absorb_stage.v";



static void Cont_32_0(char *t0)
{
    char t5[400];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    char *t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    unsigned int t31;
    char *t32;
    unsigned int t33;
    char *t34;
    unsigned int t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    unsigned int t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;

LAB0:    t1 = (t0 + 3168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t6 = 0;

LAB7:    t7 = (t6 < 34);
    if (t7 == 1)
        goto LAB8;

LAB9:    t6 = 34;

LAB10:    t28 = (t6 < 50);
    if (t28 == 1)
        goto LAB11;

LAB16:    t47 = (t0 + 4096);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    xsi_vlog_bit_copy(t51, 0, t5, 0, 1088);
    xsi_driver_vfirst_trans(t47, 512, 1599);
    t52 = (t0 + 3984);
    *((int *)t52) = 1;

LAB1:    return;
LAB4:    t26 = *((unsigned int *)t10);
    t27 = *((unsigned int *)t20);
    *((unsigned int *)t10) = (t26 | t27);

LAB6:    t6 = (t6 + 1);
    goto LAB7;

LAB5:    goto LAB6;

LAB8:    t8 = (t6 * 8);
    t2 = (t3 + t8);
    t9 = (t4 + t8);
    t10 = (t5 + t8);
    t11 = *((unsigned int *)t2);
    t12 = *((unsigned int *)t9);
    t13 = (t11 ^ t12);
    *((unsigned int *)t10) = t13;
    t14 = (t6 * 8);
    t15 = (t14 + 4);
    t16 = (t3 + t15);
    t17 = (t14 + 4);
    t18 = (t4 + t17);
    t19 = (t14 + 4);
    t20 = (t5 + t19);
    t21 = *((unsigned int *)t16);
    t22 = *((unsigned int *)t18);
    t23 = (t21 | t22);
    *((unsigned int *)t20) = t23;
    t24 = *((unsigned int *)t20);
    t25 = (t24 != 0);
    if (t25 == 1)
        goto LAB4;
    else
        goto LAB5;

LAB11:    t29 = (t6 * 8);
    t30 = (t5 + t29);
    *((unsigned int *)t30) = 0;
    t31 = (t29 + 4);
    t32 = (t5 + t31);
    *((unsigned int *)t32) = 0;
    t33 = (t6 < 50);
    if (t33 == 1)
        goto LAB12;

LAB14:    t40 = (t6 < 34);
    if (t40 == 1)
        goto LAB13;

LAB15:    t6 = (t6 + 1);
    goto LAB10;

LAB12:    t34 = (t3 + t29);
    t35 = (t29 + 4);
    t36 = (t3 + t35);
    t37 = *((unsigned int *)t34);
    t38 = *((unsigned int *)t36);
    t39 = (t37 | t38);
    *((unsigned int *)t30) = t39;
    *((unsigned int *)t32) = *((unsigned int *)t36);
    goto LAB15;

LAB13:    t41 = (t4 + t29);
    t42 = (t29 + 4);
    t43 = (t4 + t42);
    t44 = *((unsigned int *)t41);
    t45 = *((unsigned int *)t43);
    t46 = (t44 | t45);
    *((unsigned int *)t30) = t46;
    *((unsigned int *)t32) = *((unsigned int *)t43);
    goto LAB15;

}

static void Cont_33_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 3416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 4160);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    xsi_vlog_bit_copy(t7, 0, t3, 0, 512);
    xsi_driver_vfirst_trans(t2, 0, 511);
    t8 = (t0 + 4000);
    *((int *)t8) = 1;

LAB1:    return;
}

static void Always_70_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 3664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 4016);
    *((int *)t2) = 1;
    t3 = (t0 + 3696);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(70, ng0);

LAB5:    xsi_set_current_line(72, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(76, ng0);

LAB10:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 2088);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1600);

LAB8:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 2248);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 5);
    goto LAB2;

LAB6:    xsi_set_current_line(72, ng0);

LAB9:    xsi_set_current_line(73, ng0);
    t11 = (t0 + 1688U);
    t12 = *((char **)t11);
    t11 = (t0 + 2088);
    xsi_vlogvar_assign_value(t11, t12, 0, 0, 1600);
    goto LAB8;

}


extern void work_m_00000000003826492591_0725297030_init()
{
	static char *pe[] = {(void *)Cont_32_0,(void *)Cont_33_1,(void *)Always_70_2};
	xsi_register_didat("work_m_00000000003826492591_0725297030", "isim/sha3_tb_isim_beh.exe.sim/work/m_00000000003826492591_0725297030.didat");
	xsi_register_executes(pe);
}
