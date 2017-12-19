/*
 * sg_config.height
 *
 *  Created on: Jun 8, 2017
 *      Author: tgil
 */

#ifndef SG_CONFIG_H_
#define SG_CONFIG_H_

#include <stdio.h>

#include "sg_types.h"

#if !defined SG_BITS_PER_PIXEL
#define SG_BITS_PER_PIXEL 1
#endif

#define SG_BITS_PER_WORD 32
#define SG_BYTES_PER_WORD (SG_BITS_PER_WORD/8)
#define SG_PIXELS_PER_WORD (SG_BITS_PER_WORD / SG_BITS_PER_PIXEL)
#define SG_PIXEL_MASK ((1<<SG_BITS_PER_PIXEL) - 1)

sg_color_t sg_cursor_get_pixel_no_inc(sg_cursor_t * cursor);
void sg_cursor_draw_pixel_no_inc(sg_cursor_t * cursor);


#endif /* SG_CONFIG_H_ */
