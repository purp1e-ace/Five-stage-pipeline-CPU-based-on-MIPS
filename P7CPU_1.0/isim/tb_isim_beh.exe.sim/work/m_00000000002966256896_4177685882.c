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
static const char *ng0 = "C:/Users/Don_Zhou/Desktop/study/CO/P6/P6CPU 1.0/mul_div.v";
static int ng1[] = {0, 0};
static int ng2[] = {0, 0, 0, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {0U, 0U};
static int ng5[] = {4, 0};
static unsigned int ng6[] = {1U, 0U};
static unsigned int ng7[] = {2U, 0U};
static int ng8[] = {9, 0};
static unsigned int ng9[] = {3U, 0U};
static unsigned int ng10[] = {4U, 0U};
static unsigned int ng11[] = {5U, 0U};



static void Initial_35_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(35, ng0);

LAB2:    xsi_set_current_line(36, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2408);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(37, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2568);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(38, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2248);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(39, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2728);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(40, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 2888);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 64);

LAB1:    return;
}

static void Always_42_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 4056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 4624);
    *((int *)t2) = 1;
    t3 = (t0 + 4088);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(42, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    goto LAB2;

}

static void Always_43_2(char *t0)
{
    char t13[8];
    char t38[16];
    char t39[8];
    char t44[8];
    char t48[8];
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
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    int t37;
    char *t40;
    char *t41;
    char *t43;

LAB0:    t1 = (t0 + 4304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 4640);
    *((int *)t2) = 1;
    t3 = (t0 + 4336);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(43, ng0);

LAB5:    xsi_set_current_line(44, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(51, ng0);

LAB10:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB14;

LAB11:    if (t18 != 0)
        goto LAB13;

LAB12:    *((unsigned int *)t13) = 1;

LAB14:    t22 = (t13 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t13);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB15;

LAB16:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB53;

LAB54:
LAB55:
LAB17:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(44, ng0);

LAB9:    xsi_set_current_line(45, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 64, 0LL);
    goto LAB8;

LAB13:    t21 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB14;

LAB15:    xsi_set_current_line(52, ng0);

LAB18:    xsi_set_current_line(53, ng0);
    t28 = (t0 + 1848U);
    t29 = *((char **)t28);
    t28 = (t29 + 4);
    t30 = *((unsigned int *)t28);
    t31 = (~(t30));
    t32 = *((unsigned int *)t29);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB19;

LAB20:
LAB21:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng10)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB40;

LAB37:    if (t18 != 0)
        goto LAB39;

LAB38:    *((unsigned int *)t13) = 1;

LAB40:    t12 = (t13 + 4);
    t23 = *((unsigned int *)t12);
    t24 = (~(t23));
    t25 = *((unsigned int *)t13);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB41;

LAB42:
LAB43:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng11)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB48;

LAB45:    if (t18 != 0)
        goto LAB47;

LAB46:    *((unsigned int *)t13) = 1;

LAB48:    t12 = (t13 + 4);
    t23 = *((unsigned int *)t12);
    t24 = (~(t23));
    t25 = *((unsigned int *)t13);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB49;

LAB50:
LAB51:    goto LAB17;

LAB19:    xsi_set_current_line(53, ng0);

LAB22:    xsi_set_current_line(54, ng0);
    t35 = (t0 + 1688U);
    t36 = *((char **)t35);

LAB23:    t35 = ((char*)((ng4)));
    t37 = xsi_vlog_unsigned_case_compare(t36, 4, t35, 4);
    if (t37 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng6)));
    t37 = xsi_vlog_unsigned_case_compare(t36, 4, t2, 4);
    if (t37 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng7)));
    t37 = xsi_vlog_unsigned_case_compare(t36, 4, t2, 4);
    if (t37 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng9)));
    t37 = xsi_vlog_unsigned_case_compare(t36, 4, t2, 4);
    if (t37 == 1)
        goto LAB30;

LAB31:
LAB32:    goto LAB21;

LAB24:    xsi_set_current_line(56, ng0);

LAB33:    xsi_set_current_line(57, ng0);
    t40 = (t0 + 1368U);
    t41 = *((char **)t40);
    t40 = (t0 + 1528U);
    t43 = *((char **)t40);
    memset(t44, 0, 8);
    xsi_vlog_signed_multiply(t44, 32, t41, 32, t43, 32);
    xsi_vlogtype_sign_extend(t38, 64, t44, 32);
    t40 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t40, t38, 0, 0, 64, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB32;

LAB26:    xsi_set_current_line(61, ng0);

LAB34:    xsi_set_current_line(62, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    t3 = (t0 + 1528U);
    t5 = *((char **)t3);
    xsi_vlog_unsigned_multiply(t38, 64, t4, 32, t5, 32);
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t38, 0, 0, 64, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB32;

LAB28:    xsi_set_current_line(66, ng0);

LAB35:    xsi_set_current_line(67, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    t3 = (t0 + 1528U);
    t5 = *((char **)t3);
    memset(t44, 0, 8);
    xsi_vlog_signed_divide(t44, 32, t4, 32, t5, 32);
    t3 = (t0 + 1368U);
    t11 = *((char **)t3);
    t3 = (t0 + 1528U);
    t12 = *((char **)t3);
    memset(t48, 0, 8);
    xsi_vlog_signed_mod(t48, 32, t11, 32, t12, 32);
    xsi_vlogtype_concat(t38, 64, 64, 2U, t48, 32, t44, 32);
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t38, 0, 0, 64, 0LL);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB32;

LAB30:    xsi_set_current_line(71, ng0);

LAB36:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    t3 = (t0 + 1528U);
    t5 = *((char **)t3);
    memset(t13, 0, 8);
    xsi_vlog_unsigned_divide(t13, 32, t4, 32, t5, 32);
    t3 = (t0 + 1368U);
    t11 = *((char **)t3);
    t3 = (t0 + 1528U);
    t12 = *((char **)t3);
    memset(t39, 0, 8);
    xsi_vlog_unsigned_mod(t39, 32, t11, 32, t12, 32);
    xsi_vlogtype_concat(t38, 64, 64, 2U, t39, 32, t13, 32);
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t38, 0, 0, 64, 0LL);
    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB32;

LAB39:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB40;

LAB41:    xsi_set_current_line(77, ng0);

LAB44:    xsi_set_current_line(78, ng0);
    t21 = (t0 + 1368U);
    t22 = *((char **)t21);
    t21 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t21, t22, 0, 0, 32, 0LL);
    goto LAB43;

LAB47:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB48;

LAB49:    xsi_set_current_line(80, ng0);

LAB52:    xsi_set_current_line(81, ng0);
    t21 = (t0 + 1368U);
    t22 = *((char **)t21);
    t21 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t21, t22, 0, 0, 32, 0LL);
    goto LAB51;

LAB53:    xsi_set_current_line(84, ng0);

LAB56:    xsi_set_current_line(85, ng0);
    t11 = (t0 + 2728);
    t12 = (t11 + 56U);
    t21 = *((char **)t12);
    t22 = ((char*)((ng1)));
    memset(t13, 0, 8);
    xsi_vlog_signed_greater(t13, 32, t21, 32, t22, 32);
    t28 = (t13 + 4);
    t14 = *((unsigned int *)t28);
    t15 = (~(t14));
    t16 = *((unsigned int *)t13);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB57;

LAB58:
LAB59:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t13, 0, 8);
    xsi_vlog_signed_equal(t13, 32, t4, 32, t5, 32);
    t11 = (t13 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB61;

LAB62:
LAB63:    goto LAB55;

LAB57:    xsi_set_current_line(85, ng0);

LAB60:    xsi_set_current_line(86, ng0);
    t29 = (t0 + 2728);
    t35 = (t29 + 56U);
    t40 = *((char **)t35);
    t41 = ((char*)((ng3)));
    memset(t39, 0, 8);
    xsi_vlog_signed_minus(t39, 32, t40, 32, t41, 32);
    t43 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t43, t39, 0, 0, 32, 0LL);
    goto LAB59;

LAB61:    xsi_set_current_line(88, ng0);

LAB64:    xsi_set_current_line(89, ng0);
    t12 = (t0 + 2888);
    t21 = (t12 + 56U);
    t22 = *((char **)t21);
    t28 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t28, t22, 0, 0, 32, 0LL);
    t29 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t29, t22, 32, 0, 32, 0LL);
    xsi_set_current_line(90, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB63;

}


extern void work_m_00000000002966256896_4177685882_init()
{
	static char *pe[] = {(void *)Initial_35_0,(void *)Always_42_1,(void *)Always_43_2};
	xsi_register_didat("work_m_00000000002966256896_4177685882", "isim/tb_isim_beh.exe.sim/work/m_00000000002966256896_4177685882.didat");
	xsi_register_executes(pe);
}
