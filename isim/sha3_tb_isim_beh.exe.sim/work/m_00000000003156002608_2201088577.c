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
static const char *ng0 = "C:/Users/Ahmet Oguz Atli/Verilog/hwsec_project/input_buffer.v";



static void Always_26_0(char *t0)
{
    char t4[272];
    char t5[240];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 2848);
    *((int *)t2) = 1;
    t3 = (t0 + 2560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(26, ng0);

LAB5:    xsi_set_current_line(28, ng0);
    t6 = (t0 + 1608);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    xsi_vlog_get_part_select_value(t5, 952, t8, 1087, 136);
    t9 = (t0 + 1208U);
    t10 = *((char **)t9);
    xsi_vlogtype_concat(t4, 1088, 1088, 2U, t10, 136, t5, 952);
    t9 = (t0 + 1608);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 1088);
    goto LAB2;

}


extern void work_m_00000000003156002608_2201088577_init()
{
	static char *pe[] = {(void *)Always_26_0};
	xsi_register_didat("work_m_00000000003156002608_2201088577", "isim/sha3_tb_isim_beh.exe.sim/work/m_00000000003156002608_2201088577.didat");
	xsi_register_executes(pe);
}
