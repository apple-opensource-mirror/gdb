/* Mac OS X support for GDB, the GNU debugger.
   Copyright 1997, 1998, 1999, 2000, 2001, 2002
   Free Software Foundation, Inc.

   Contributed by Apple Computer, Inc.

   This file is part of GDB.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 59 Temple Place - Suite 330,
   Boston, MA 02111-1307, USA.  */

#include "ppc-macosx-regs.h"
#include "ppc-macosx-regnums.h"

#include "defs.h"
#include "frame.h"
#include "inferior.h"
#include "symtab.h"
#include "target.h"
#include "gdbcore.h"
#include "symfile.h"
#include "objfiles.h"
#include "regcache.h"

#include "ppc-macosx-regs.h"

static inline void supply_unsigned_int (int regnum, unsigned int val)
{
  char buf[8];
  store_unsigned_integer (buf + 4, 4, val);
  if (gdbarch_deprecated_register_raw_size (current_gdbarch, regnum) == 4)
    supply_register (regnum, buf + 4);
  else if (gdbarch_deprecated_register_raw_size (current_gdbarch, regnum) == 8)
    supply_register (regnum, buf);
  else
    internal_error (__FILE__, __LINE__, "unknown size for register");
}

static inline void collect_unsigned_int (int regnum, unsigned int *addr)
{
  char buf[8];
  regcache_collect (regnum, buf);
  if (gdbarch_deprecated_register_raw_size (current_gdbarch, regnum) == 4)
    *addr = extract_unsigned_integer (buf, 4);
  else if (gdbarch_deprecated_register_raw_size (current_gdbarch, regnum) == 8)
    *addr = extract_unsigned_integer (buf + 4, 4);
  else
    internal_error (__FILE__, __LINE__, "unknown size for register");
}

static inline void supply_unsigned_int_64 (int regnum, unsigned long long val)
{
  char buf[8];
  store_unsigned_integer (buf, 8, val);
  if (gdbarch_deprecated_register_raw_size (current_gdbarch, regnum) != 8)
    internal_error (__FILE__, __LINE__, "incorrect size for register");
  supply_register (regnum, buf);
}

static inline void collect_unsigned_int_64 (int regnum, unsigned long long *addr)
{
  char buf[8];
  regcache_collect (regnum, buf);
  if (gdbarch_deprecated_register_raw_size (current_gdbarch, regnum) != 8)
    internal_error (__FILE__, __LINE__, "incorrect size for register");
  *addr = extract_unsigned_integer (buf, 8);
}

void ppc_macosx_fetch_gp_registers (gdb_ppc_thread_state_t *gp_regs)
{
  int i;

  for (i = 0; i < PPC_MACOSX_NUM_GP_REGS; i++) {
    supply_unsigned_int (PPC_MACOSX_FIRST_GP_REGNUM + i, gp_regs->gpregs[i]);
  }

  supply_unsigned_int (PPC_MACOSX_PC_REGNUM, gp_regs->srr0);
  supply_unsigned_int (PPC_MACOSX_PS_REGNUM, gp_regs->srr1);
  supply_unsigned_int (PPC_MACOSX_CR_REGNUM, gp_regs->cr);
  supply_unsigned_int (PPC_MACOSX_LR_REGNUM, gp_regs->lr);
  supply_unsigned_int (PPC_MACOSX_CTR_REGNUM, gp_regs->ctr);
  supply_unsigned_int (PPC_MACOSX_XER_REGNUM, gp_regs->xer);
  supply_unsigned_int (PPC_MACOSX_MQ_REGNUM, gp_regs->mq);
  supply_unsigned_int (PPC_MACOSX_VRSAVE_REGNUM, gp_regs->vrsave);
}

void ppc_macosx_store_gp_registers (gdb_ppc_thread_state_t *gp_regs)
{
  int i;

  for (i = 0; i < PPC_MACOSX_NUM_GP_REGS; i++) {
    collect_unsigned_int (PPC_MACOSX_FIRST_GP_REGNUM + i, &gp_regs->gpregs[i]);
  }

  collect_unsigned_int (PPC_MACOSX_PC_REGNUM, &gp_regs->srr0);
  collect_unsigned_int (PPC_MACOSX_PS_REGNUM, &gp_regs->srr1);
  collect_unsigned_int (PPC_MACOSX_CR_REGNUM, &gp_regs->cr);
  collect_unsigned_int (PPC_MACOSX_LR_REGNUM, &gp_regs->lr);
  collect_unsigned_int (PPC_MACOSX_CTR_REGNUM, &gp_regs->ctr);
  collect_unsigned_int (PPC_MACOSX_XER_REGNUM, &gp_regs->xer);
  collect_unsigned_int (PPC_MACOSX_MQ_REGNUM, &gp_regs->mq);
  collect_unsigned_int (PPC_MACOSX_VRSAVE_REGNUM, &gp_regs->vrsave);
}

void ppc_macosx_fetch_gp_registers_64 (gdb_ppc_thread_state_64_t *gp_regs)
{
  int i;

  for (i = 0; i < PPC_MACOSX_NUM_GP_REGS; i++) {
    supply_unsigned_int_64 (PPC_MACOSX_FIRST_GP_REGNUM + i, gp_regs->gpregs[i]);
  }

  supply_unsigned_int_64 (PPC_MACOSX_PC_REGNUM, gp_regs->srr0);
  supply_unsigned_int_64 (PPC_MACOSX_PS_REGNUM, gp_regs->srr1);
  supply_unsigned_int (PPC_MACOSX_CR_REGNUM, gp_regs->cr);
  supply_unsigned_int_64 (PPC_MACOSX_LR_REGNUM, gp_regs->lr);
  supply_unsigned_int_64 (PPC_MACOSX_CTR_REGNUM, gp_regs->ctr);
  supply_unsigned_int_64 (PPC_MACOSX_XER_REGNUM, gp_regs->xer);
  /* supply_unsigned_int (PPC_MACOSX_MQ_REGNUM, gp_regs->mq); */
  supply_unsigned_int (PPC_MACOSX_VRSAVE_REGNUM, gp_regs->vrsave);
}

void ppc_macosx_store_gp_registers_64 (gdb_ppc_thread_state_64_t *gp_regs)
{
  int i;

  for (i = 0; i < PPC_MACOSX_NUM_GP_REGS; i++) {
    collect_unsigned_int_64 (PPC_MACOSX_FIRST_GP_REGNUM + i, &gp_regs->gpregs[i]);
  }

  collect_unsigned_int_64 (PPC_MACOSX_PC_REGNUM, &gp_regs->srr0);
  collect_unsigned_int_64 (PPC_MACOSX_PS_REGNUM, &gp_regs->srr1);
  collect_unsigned_int (PPC_MACOSX_CR_REGNUM, &gp_regs->cr);
  collect_unsigned_int_64 (PPC_MACOSX_LR_REGNUM, &gp_regs->lr);
  collect_unsigned_int_64 (PPC_MACOSX_CTR_REGNUM, &gp_regs->ctr);
  collect_unsigned_int_64 (PPC_MACOSX_XER_REGNUM, &gp_regs->xer);
  /* collect_unsigned_int (PPC_MACOSX_MQ_REGNUM, &gp_regs->mq); */
  collect_unsigned_int (PPC_MACOSX_VRSAVE_REGNUM, &gp_regs->vrsave);
}

void ppc_macosx_fetch_fp_registers (gdb_ppc_thread_fpstate_t *fp_regs)
{
  int i;
  unsigned char buf[sizeof (PPC_MACOSX_FP_REGISTER_TYPE)];

  PPC_MACOSX_FP_REGISTER_TYPE *fpr = fp_regs->fpregs;
  for (i = 0; i < PPC_MACOSX_NUM_FP_REGS; i++) {
    deprecated_store_floating (buf, sizeof (PPC_MACOSX_FP_REGISTER_TYPE), fpr[i]);
    supply_register (PPC_MACOSX_FIRST_FP_REGNUM + i, buf);
  }
  supply_unsigned_int (PPC_MACOSX_FPSCR_REGNUM, fp_regs->fpscr);
}
  
void ppc_macosx_store_fp_registers (gdb_ppc_thread_fpstate_t *fp_regs)
{
  int i;
  unsigned char buf[sizeof (PPC_MACOSX_FP_REGISTER_TYPE)];

  PPC_MACOSX_FP_REGISTER_TYPE *fpr = fp_regs->fpregs;
  for (i = 0; i < PPC_MACOSX_NUM_FP_REGS; i++) {
    regcache_collect (PPC_MACOSX_FIRST_FP_REGNUM + i, buf);
    fpr[i] = deprecated_extract_floating (buf, sizeof (PPC_MACOSX_FP_REGISTER_TYPE));
  }
  fp_regs->fpscr_pad = 0;
  collect_unsigned_int (PPC_MACOSX_FPSCR_REGNUM, &fp_regs->fpscr);
}

void ppc_macosx_fetch_vp_registers (gdb_ppc_thread_vpstate_t *vp_regs)
{
  int i, j;
  char buf[16];

  for (i = 0; i < PPC_MACOSX_NUM_VP_REGS; i++) {
    for (j = 0; j < 4; j++) {
      store_unsigned_integer (buf + (j * 4), 4, vp_regs->save_vr[i][j]);
    }
    supply_register (PPC_MACOSX_FIRST_VP_REGNUM + i, buf);
  }

  supply_unsigned_int (PPC_MACOSX_VSCR_REGNUM, vp_regs->save_vscr[3]);
  /* supply_unsigned_int (PPC_MACOSX_VRSAVE_REGNUM, vp_regs->save_vrvalid); */
}
  
void ppc_macosx_store_vp_registers (gdb_ppc_thread_vpstate_t *vp_regs)
{
  int i, j;
  char buf[16];

  for (i = 0; i < PPC_MACOSX_NUM_VP_REGS; i++) {
    regcache_collect (PPC_MACOSX_FIRST_VP_REGNUM + i, buf);
    for (j = 0; j < 4; j++) {
      vp_regs->save_vr[i][j] = extract_unsigned_integer (buf + (j * 4), 4);
    }
  }
  memset (&vp_regs->save_vscr, 0, sizeof (vp_regs->save_vscr));
  regcache_collect (PPC_MACOSX_VSCR_REGNUM, &vp_regs->save_vscr[3]);
  memset (&vp_regs->save_pad5, 0, sizeof (vp_regs->save_pad5));
  vp_regs->save_vrvalid = 0xffffffff;
  memset (&vp_regs->save_pad6, 0, sizeof (vp_regs->save_pad6));
}

/* Convert a dbx stab register number (from `r' declaration) to a gdb
   REGNUM. */

int
ppc_macosx_stab_reg_to_regnum (int num)
{
  int regnum;

  /* These are the ordinary GP & FP registers */

  if (num <= 64)
    {
      regnum = num;
    }
  /* These are the AltiVec registers */
  else if (num >= 77 && num < 109)
    {
      regnum = PPC_MACOSX_FIRST_VP_REGNUM + num - 77;
    }
  /* These are some of the SP registers */
  else
    {
      switch (num)
	{
	case 64: 
	  regnum = PPC_MACOSX_MQ_REGNUM;
	  break;
	case 65: 
	  regnum = PPC_MACOSX_LR_REGNUM;
	  break;
	case 66: 
	  regnum = PPC_MACOSX_CTR_REGNUM;
	  break;
	case 76: 
	  regnum = PPC_MACOSX_XER_REGNUM;
	  break;
	case 109:
	  regnum = PPC_MACOSX_VRSAVE_REGNUM;
	  break;
	default: 
	  regnum = num;
	  break;
	}
    }
  return regnum;
}
