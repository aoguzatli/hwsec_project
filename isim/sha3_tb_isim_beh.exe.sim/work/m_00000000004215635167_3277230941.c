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
static const char *ng0 = "C:/Users/Ahmet Oguz Atli/Verilog/hwsec_project/RC_lookup.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {1U, 0U, 0U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {32898U, 0U, 0U, 0U};
static int ng5[] = {2, 0};
static unsigned int ng6[] = {32906U, 0U, 2147483648U, 0U};
static int ng7[] = {3, 0};
static unsigned int ng8[] = {2147516416U, 0U, 2147483648U, 0U};
static int ng9[] = {4, 0};
static unsigned int ng10[] = {32907U, 0U, 0U, 0U};
static int ng11[] = {5, 0};
static unsigned int ng12[] = {2147483649U, 0U, 0U, 0U};
static int ng13[] = {6, 0};
static unsigned int ng14[] = {2147516545U, 0U, 2147483648U, 0U};
static int ng15[] = {7, 0};
static unsigned int ng16[] = {32777U, 0U, 2147483648U, 0U};
static int ng17[] = {8, 0};
static unsigned int ng18[] = {138U, 0U, 0U, 0U};
static int ng19[] = {9, 0};
static unsigned int ng20[] = {136U, 0U, 0U, 0U};
static int ng21[] = {10, 0};
static unsigned int ng22[] = {2147516425U, 0U, 0U, 0U};
static int ng23[] = {11, 0};
static unsigned int ng24[] = {2147483658U, 0U, 0U, 0U};
static int ng25[] = {12, 0};
static unsigned int ng26[] = {2147516555U, 0U, 0U, 0U};
static int ng27[] = {13, 0};
static unsigned int ng28[] = {139U, 0U, 2147483648U, 0U};
static int ng29[] = {14, 0};
static unsigned int ng30[] = {32905U, 0U, 2147483648U, 0U};
static int ng31[] = {15, 0};
static unsigned int ng32[] = {32771U, 0U, 2147483648U, 0U};
static int ng33[] = {16, 0};
static unsigned int ng34[] = {32770U, 0U, 2147483648U, 0U};
static int ng35[] = {17, 0};
static unsigned int ng36[] = {128U, 0U, 2147483648U, 0U};
static int ng37[] = {18, 0};
static unsigned int ng38[] = {32778U, 0U, 0U, 0U};
static int ng39[] = {19, 0};
static unsigned int ng40[] = {2147483658U, 0U, 2147483648U, 0U};
static int ng41[] = {20, 0};
static int ng42[] = {21, 0};
static unsigned int ng43[] = {32896U, 0U, 2147483648U, 0U};
static int ng44[] = {22, 0};
static int ng45[] = {23, 0};
static unsigned int ng46[] = {2147516424U, 0U, 2147483648U, 0U};
static unsigned int ng47[] = {0U, 0U, 0U, 0U};



static void Always_25_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 2688);
    *((int *)t2) = 1;
    t3 = (t0 + 2400);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(25, ng0);

LAB5:    xsi_set_current_line(27, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng21)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng23)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng25)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng27)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng29)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng31)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng33)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng35)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng37)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng39)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng41)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng42)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng44)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB51;

LAB52:    t2 = ((char*)((ng45)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 32);
    if (t6 == 1)
        goto LAB53;

LAB54:
LAB56:
LAB55:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng47)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);

LAB57:    goto LAB2;

LAB7:    xsi_set_current_line(29, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 1448);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 64);
    goto LAB57;

LAB9:    xsi_set_current_line(30, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB11:    xsi_set_current_line(31, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB13:    xsi_set_current_line(32, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB15:    xsi_set_current_line(33, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB17:    xsi_set_current_line(34, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB19:    xsi_set_current_line(35, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB21:    xsi_set_current_line(36, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB23:    xsi_set_current_line(37, ng0);
    t3 = ((char*)((ng18)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB25:    xsi_set_current_line(38, ng0);
    t3 = ((char*)((ng20)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB27:    xsi_set_current_line(39, ng0);
    t3 = ((char*)((ng22)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB29:    xsi_set_current_line(40, ng0);
    t3 = ((char*)((ng24)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB31:    xsi_set_current_line(41, ng0);
    t3 = ((char*)((ng26)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB33:    xsi_set_current_line(42, ng0);
    t3 = ((char*)((ng28)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB35:    xsi_set_current_line(43, ng0);
    t3 = ((char*)((ng30)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB37:    xsi_set_current_line(44, ng0);
    t3 = ((char*)((ng32)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB39:    xsi_set_current_line(45, ng0);
    t3 = ((char*)((ng34)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB41:    xsi_set_current_line(46, ng0);
    t3 = ((char*)((ng36)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB43:    xsi_set_current_line(47, ng0);
    t3 = ((char*)((ng38)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB45:    xsi_set_current_line(48, ng0);
    t3 = ((char*)((ng40)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB47:    xsi_set_current_line(49, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB49:    xsi_set_current_line(50, ng0);
    t3 = ((char*)((ng43)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB51:    xsi_set_current_line(51, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

LAB53:    xsi_set_current_line(52, ng0);
    t3 = ((char*)((ng46)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    goto LAB57;

}


extern void work_m_00000000004215635167_3277230941_init()
{
	static char *pe[] = {(void *)Always_25_0};
	xsi_register_didat("work_m_00000000004215635167_3277230941", "isim/sha3_tb_isim_beh.exe.sim/work/m_00000000004215635167_3277230941.didat");
	xsi_register_executes(pe);
}
