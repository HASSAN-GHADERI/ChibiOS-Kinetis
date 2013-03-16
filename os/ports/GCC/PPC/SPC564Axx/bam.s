/*
    ChibiOS/RT - Copyright (C) 2006,2007,2008,2009,2010,
                 2011,2012,2013 Giovanni Di Sirio.

    This file is part of ChibiOS/RT.

    ChibiOS/RT is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 3 of the License, or
    (at your option) any later version.

    ChibiOS/RT is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

/**
 * @file    SPC563Axx/bam.s
 * @brief   SPC563Axx boot assistant record.
 *
 * @addtogroup PPC_CORE
 * @{
 */

#if !defined(__DOXYGEN__)

        /* BAM record.*/
        .section    .bam, "ax"
#if PPC_USE_VLE
        .long       0x015A0000
#else
        .long       0x005A0000
#endif
        .long       .init

.init:
        bl          _coreinit
        bl          _ivinit

        b           _boot_address

#endif /* !defined(__DOXYGEN__) */

/** @} */