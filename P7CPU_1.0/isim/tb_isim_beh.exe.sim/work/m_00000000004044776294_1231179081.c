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
static const char *ng0 = "C:/Users/Don_Zhou/Desktop/study/CO/P6/P6CPU 1.0/dm_ext.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {16, 0};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static int ng6[] = {24, 0};
static unsigned int ng7[] = {4U, 0U};



static void Always_27_0(char *t0)
{
    char t9[8];
    char t17[8];
    char t18[8];
    char t28[8];
    char t32[8];
    char t41[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    int t16;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t29;
    char *t30;
    char *t31;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 3008);
    *((int *)t2) = 1;
    t3 = (t0 + 2720);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);

LAB5:    xsi_set_current_line(28, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 3);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB15;

LAB16:
LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(30, ng0);
    t7 = (t0 + 1048U);
    t8 = *((char **)t7);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 32);
    goto LAB17;

LAB9:    xsi_set_current_line(32, ng0);

LAB18:    xsi_set_current_line(33, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t9 + 4);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 1);
    t12 = (t11 & 1);
    *((unsigned int *)t9) = t12;
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 1);
    t15 = (t14 & 1);
    *((unsigned int *)t3) = t15;

LAB19:    t8 = ((char*)((ng1)));
    t16 = xsi_vlog_unsigned_case_compare(t9, 1, t8, 1);
    if (t16 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t9, 1, t2, 1);
    if (t6 == 1)
        goto LAB22;

LAB23:
LAB24:    goto LAB17;

LAB11:    xsi_set_current_line(39, ng0);

LAB25:    xsi_set_current_line(40, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    memset(t17, 0, 8);
    t3 = (t17 + 4);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 1);
    t12 = (t11 & 1);
    *((unsigned int *)t17) = t12;
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 1);
    t15 = (t14 & 1);
    *((unsigned int *)t3) = t15;

LAB26:    t8 = ((char*)((ng1)));
    t16 = xsi_vlog_unsigned_case_compare(t17, 1, t8, 1);
    if (t16 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t17, 1, t2, 1);
    if (t6 == 1)
        goto LAB29;

LAB30:
LAB31:    goto LAB17;

LAB13:    xsi_set_current_line(46, ng0);

LAB32:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);

LAB33:    t3 = ((char*)((ng1)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 2, t3, 2);
    if (t16 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t6 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t6 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t6 == 1)
        goto LAB40;

LAB41:
LAB42:    goto LAB17;

LAB15:    xsi_set_current_line(55, ng0);

LAB43:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);

LAB44:    t3 = ((char*)((ng1)));
    t16 = xsi_vlog_unsigned_case_compare(t7, 2, t3, 2);
    if (t16 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t7, 2, t2, 2);
    if (t6 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t7, 2, t2, 2);
    if (t6 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t7, 2, t2, 2);
    if (t6 == 1)
        goto LAB51;

LAB52:
LAB53:    goto LAB17;

LAB20:    xsi_set_current_line(34, ng0);
    t19 = (t0 + 1048U);
    t20 = *((char **)t19);
    memset(t18, 0, 8);
    t19 = (t18 + 4);
    t21 = (t20 + 4);
    t22 = *((unsigned int *)t20);
    t23 = (t22 >> 0);
    *((unsigned int *)t18) = t23;
    t24 = *((unsigned int *)t21);
    t25 = (t24 >> 0);
    *((unsigned int *)t19) = t25;
    t26 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t26 & 65535U);
    t27 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t27 & 65535U);
    t29 = ((char*)((ng3)));
    t30 = (t0 + 1048U);
    t31 = *((char **)t30);
    memset(t32, 0, 8);
    t30 = (t32 + 4);
    t33 = (t31 + 4);
    t34 = *((unsigned int *)t31);
    t35 = (t34 >> 15);
    t36 = (t35 & 1);
    *((unsigned int *)t32) = t36;
    t37 = *((unsigned int *)t33);
    t38 = (t37 >> 15);
    t39 = (t38 & 1);
    *((unsigned int *)t30) = t39;
    xsi_vlog_mul_concat(t28, 16, 1, t29, 1U, t32, 1);
    xsi_vlogtype_concat(t17, 32, 32, 2U, t28, 16, t18, 16);
    t40 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t40, t17, 0, 0, 32, 0LL);
    goto LAB24;

LAB22:    xsi_set_current_line(35, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t18, 0, 8);
    t3 = (t18 + 4);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 16);
    *((unsigned int *)t18) = t11;
    t12 = *((unsigned int *)t7);
    t13 = (t12 >> 16);
    *((unsigned int *)t3) = t13;
    t14 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t14 & 65535U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 65535U);
    t8 = ((char*)((ng3)));
    t19 = (t0 + 1048U);
    t20 = *((char **)t19);
    memset(t32, 0, 8);
    t19 = (t32 + 4);
    t21 = (t20 + 4);
    t22 = *((unsigned int *)t20);
    t23 = (t22 >> 31);
    t24 = (t23 & 1);
    *((unsigned int *)t32) = t24;
    t25 = *((unsigned int *)t21);
    t26 = (t25 >> 31);
    t27 = (t26 & 1);
    *((unsigned int *)t19) = t27;
    xsi_vlog_mul_concat(t28, 16, 1, t8, 1U, t32, 1);
    xsi_vlogtype_concat(t17, 32, 32, 2U, t28, 16, t18, 16);
    t29 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t29, t17, 0, 0, 32, 0LL);
    goto LAB24;

LAB27:    xsi_set_current_line(41, ng0);
    t19 = (t0 + 1048U);
    t20 = *((char **)t19);
    memset(t28, 0, 8);
    t19 = (t28 + 4);
    t21 = (t20 + 4);
    t22 = *((unsigned int *)t20);
    t23 = (t22 >> 0);
    *((unsigned int *)t28) = t23;
    t24 = *((unsigned int *)t21);
    t25 = (t24 >> 0);
    *((unsigned int *)t19) = t25;
    t26 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t26 & 65535U);
    t27 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t27 & 65535U);
    t29 = ((char*)((ng1)));
    xsi_vlogtype_concat(t18, 32, 32, 2U, t29, 16, t28, 16);
    t30 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t30, t18, 0, 0, 32, 0LL);
    goto LAB31;

LAB29:    xsi_set_current_line(42, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t28, 0, 8);
    t3 = (t28 + 4);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 16);
    *((unsigned int *)t28) = t11;
    t12 = *((unsigned int *)t7);
    t13 = (t12 >> 16);
    *((unsigned int *)t3) = t13;
    t14 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t14 & 65535U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 65535U);
    t8 = ((char*)((ng1)));
    xsi_vlogtype_concat(t18, 32, 32, 2U, t8, 16, t28, 16);
    t19 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t19, t18, 0, 0, 32, 0LL);
    goto LAB31;

LAB34:    xsi_set_current_line(48, ng0);
    t7 = (t0 + 1048U);
    t8 = *((char **)t7);
    memset(t28, 0, 8);
    t7 = (t28 + 4);
    t19 = (t8 + 4);
    t10 = *((unsigned int *)t8);
    t11 = (t10 >> 0);
    *((unsigned int *)t28) = t11;
    t12 = *((unsigned int *)t19);
    t13 = (t12 >> 0);
    *((unsigned int *)t7) = t13;
    t14 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t14 & 255U);
    t15 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t15 & 255U);
    t20 = ((char*)((ng6)));
    t21 = (t0 + 1048U);
    t29 = *((char **)t21);
    memset(t41, 0, 8);
    t21 = (t41 + 4);
    t30 = (t29 + 4);
    t22 = *((unsigned int *)t29);
    t23 = (t22 >> 7);
    t24 = (t23 & 1);
    *((unsigned int *)t41) = t24;
    t25 = *((unsigned int *)t30);
    t26 = (t25 >> 7);
    t27 = (t26 & 1);
    *((unsigned int *)t21) = t27;
    xsi_vlog_mul_concat(t32, 24, 1, t20, 1U, t41, 1);
    xsi_vlogtype_concat(t18, 32, 32, 2U, t32, 24, t28, 8);
    t31 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t31, t18, 0, 0, 32, 0LL);
    goto LAB42;

LAB36:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 1048U);
    t7 = *((char **)t3);
    memset(t28, 0, 8);
    t3 = (t28 + 4);
    t8 = (t7 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 8);
    *((unsigned int *)t28) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 8);
    *((unsigned int *)t3) = t13;
    t14 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t14 & 255U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 255U);
    t19 = ((char*)((ng6)));
    t20 = (t0 + 1048U);
    t21 = *((char **)t20);
    memset(t41, 0, 8);
    t20 = (t41 + 4);
    t29 = (t21 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (t22 >> 15);
    t24 = (t23 & 1);
    *((unsigned int *)t41) = t24;
    t25 = *((unsigned int *)t29);
    t26 = (t25 >> 15);
    t27 = (t26 & 1);
    *((unsigned int *)t20) = t27;
    xsi_vlog_mul_concat(t32, 24, 1, t19, 1U, t41, 1);
    xsi_vlogtype_concat(t18, 32, 32, 2U, t32, 24, t28, 8);
    t30 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t30, t18, 0, 0, 32, 0LL);
    goto LAB42;

LAB38:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 1048U);
    t7 = *((char **)t3);
    memset(t28, 0, 8);
    t3 = (t28 + 4);
    t8 = (t7 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 16);
    *((unsigned int *)t28) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 16);
    *((unsigned int *)t3) = t13;
    t14 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t14 & 255U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 255U);
    t19 = ((char*)((ng6)));
    t20 = (t0 + 1048U);
    t21 = *((char **)t20);
    memset(t41, 0, 8);
    t20 = (t41 + 4);
    t29 = (t21 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (t22 >> 23);
    t24 = (t23 & 1);
    *((unsigned int *)t41) = t24;
    t25 = *((unsigned int *)t29);
    t26 = (t25 >> 23);
    t27 = (t26 & 1);
    *((unsigned int *)t20) = t27;
    xsi_vlog_mul_concat(t32, 24, 1, t19, 1U, t41, 1);
    xsi_vlogtype_concat(t18, 32, 32, 2U, t32, 24, t28, 8);
    t30 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t30, t18, 0, 0, 32, 0LL);
    goto LAB42;

LAB40:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 1048U);
    t7 = *((char **)t3);
    memset(t28, 0, 8);
    t3 = (t28 + 4);
    t8 = (t7 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 24);
    *((unsigned int *)t28) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 24);
    *((unsigned int *)t3) = t13;
    t14 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t14 & 255U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 255U);
    t19 = ((char*)((ng6)));
    t20 = (t0 + 1048U);
    t21 = *((char **)t20);
    memset(t41, 0, 8);
    t20 = (t41 + 4);
    t29 = (t21 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (t22 >> 31);
    t24 = (t23 & 1);
    *((unsigned int *)t41) = t24;
    t25 = *((unsigned int *)t29);
    t26 = (t25 >> 31);
    t27 = (t26 & 1);
    *((unsigned int *)t20) = t27;
    xsi_vlog_mul_concat(t32, 24, 1, t19, 1U, t41, 1);
    xsi_vlogtype_concat(t18, 32, 32, 2U, t32, 24, t28, 8);
    t30 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t30, t18, 0, 0, 32, 0LL);
    goto LAB42;

LAB45:    xsi_set_current_line(57, ng0);
    t8 = (t0 + 1048U);
    t19 = *((char **)t8);
    memset(t28, 0, 8);
    t8 = (t28 + 4);
    t20 = (t19 + 4);
    t10 = *((unsigned int *)t19);
    t11 = (t10 >> 0);
    *((unsigned int *)t28) = t11;
    t12 = *((unsigned int *)t20);
    t13 = (t12 >> 0);
    *((unsigned int *)t8) = t13;
    t14 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t14 & 255U);
    t15 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t15 & 255U);
    t21 = ((char*)((ng1)));
    xsi_vlogtype_concat(t18, 32, 32, 2U, t21, 24, t28, 8);
    t29 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t29, t18, 0, 0, 32, 0LL);
    goto LAB53;

LAB47:    xsi_set_current_line(58, ng0);
    t3 = (t0 + 1048U);
    t8 = *((char **)t3);
    memset(t28, 0, 8);
    t3 = (t28 + 4);
    t19 = (t8 + 4);
    t10 = *((unsigned int *)t8);
    t11 = (t10 >> 8);
    *((unsigned int *)t28) = t11;
    t12 = *((unsigned int *)t19);
    t13 = (t12 >> 8);
    *((unsigned int *)t3) = t13;
    t14 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t14 & 255U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 255U);
    t20 = ((char*)((ng1)));
    xsi_vlogtype_concat(t18, 32, 32, 2U, t20, 24, t28, 8);
    t21 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t21, t18, 0, 0, 32, 0LL);
    goto LAB53;

LAB49:    xsi_set_current_line(59, ng0);
    t3 = (t0 + 1048U);
    t8 = *((char **)t3);
    memset(t28, 0, 8);
    t3 = (t28 + 4);
    t19 = (t8 + 4);
    t10 = *((unsigned int *)t8);
    t11 = (t10 >> 16);
    *((unsigned int *)t28) = t11;
    t12 = *((unsigned int *)t19);
    t13 = (t12 >> 16);
    *((unsigned int *)t3) = t13;
    t14 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t14 & 255U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 255U);
    t20 = ((char*)((ng1)));
    xsi_vlogtype_concat(t18, 32, 32, 2U, t20, 24, t28, 8);
    t21 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t21, t18, 0, 0, 32, 0LL);
    goto LAB53;

LAB51:    xsi_set_current_line(60, ng0);
    t3 = (t0 + 1048U);
    t8 = *((char **)t3);
    memset(t28, 0, 8);
    t3 = (t28 + 4);
    t19 = (t8 + 4);
    t10 = *((unsigned int *)t8);
    t11 = (t10 >> 24);
    *((unsigned int *)t28) = t11;
    t12 = *((unsigned int *)t19);
    t13 = (t12 >> 24);
    *((unsigned int *)t3) = t13;
    t14 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t14 & 255U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 255U);
    t20 = ((char*)((ng1)));
    xsi_vlogtype_concat(t18, 32, 32, 2U, t20, 24, t28, 8);
    t21 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t21, t18, 0, 0, 32, 0LL);
    goto LAB53;

}


extern void work_m_00000000004044776294_1231179081_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_00000000004044776294_1231179081", "isim/tb_isim_beh.exe.sim/work/m_00000000004044776294_1231179081.didat");
	xsi_register_executes(pe);
}
