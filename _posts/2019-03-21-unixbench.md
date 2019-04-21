---
layout: post
title: ByteBench と Unix-ByteBench コレクション
tags:
- benchmark
- netbsd
- debian
---

<!--
上のメタデータに書くので、タイトルは不要なのかも？
# ByteBench と Unix-ByteBench コレクション
--> 

ベンチマークと言っても、あくまでも目安なので、
正確さはあてにしないでご覧ください。
上二桁くらいをみて、
世代１と世代２で約N倍速いかを参考にする程度だとおもいます。

ByteBench (bytebench 4.0世代まで)と Unix-ByteBench (bytebench 5.0世代)は、
基準のマシンが違うため、だいたいですが
bytebench の値は unix-bytebench の 4 倍くらいの値になります。
そこで、以下の表では、bytebenchの値は 1/4 に変換済です。

表の左端は、複数コアを考慮して補正した参考値です、
bytebenchでは計測していないので、
おおよそ2コアで三割増し、3コアで2倍速にしてあります(?つきの値)。
Unix-ByteBench では、１コアと最大コア両方を計測するので、
その値を書いてあります。

## ByteBench

|スコア|1コアあたりのスコア|ハードウエア/サービス|OS|備考|
|-|-|-|-|-|
|   0.1 |   0.1 |                   ThinkPad_220 | NetBSD/i386            1.4.1 | |
|   0.5 |   0.5 |                SONY_NeWS_3470D | NetBSD/newsmips  1.3-current | |
|   0.7 |   0.7 |             unknown_486DX2_32M | NetBSD/i386      1.3-current | |
|   0.7 |   0.7 |                         SS4_75 | NetBSD/sparc             1.5 | |
|   0.8 |   0.8 |              unknown_486DX_24M | NetBSD/i386      1.2-current | |
|   1.1 |   1.1 |               unknown_Cyrix686 | NetBSD/i386      1.3-current | |
|   1.4 |   1.4 |             unknown_AMD_K5_32M | NetBSD/i386      1.2-current | |
|   1.7 |   1.7 |                      alpha_200 | NetBSD/alpha           1.3.3 | |
|   1.8 |   1.8 |                           SS20 | NetBSD/sparc           1.4.1 | |
|   2.0 |   2.0 |                            SS5 | NetBSD/sparc           1.4.2 | |
|   2.9 |   2.9 |             Macintosh_7600_200 | NetBSD/macppc            1.5 | |
|   3.1 |   3.1 |                   ThinkPad_560 | NetBSD/i386              4.0 | |
|  10.7 |  10.7 |                    HA8000-30B2 | NetBSD/i386            1.4.1 | |
|  12.4 |  12.4 |                 NetCache_C1105 | NetBSD/i386              4.0 | |
|  14.7 |  14.7 |                   SUN_Netra_X1 | NetBSD/sparc64           3.0 | |
|  17.7 |  17.7 |                    FMV_6667SL5 | NetBSD/i386            1.5.2 | |
|  32.2?|  24.2 |           JCS_ISP2150_P3_700x2 | NetBSD/i386              4.0 | |
|  25.9 |  25.9 |                    FMV_6667SL5 | NetBSD/i386            2.0.2 | |
|  26.3 |  26.3 |       DELL_Dimension_XPS_T600r | NetBSD/i386            2.0.2 | |
|  27.3 |  27.3 |      JCS_ISP2150_P3_700x2_SATA | NetBSD/i386              4.0 | |
|  27.3 |  27.3 |                    FMV_6667SL5 | NetBSD/i386            3.0.3 | |
|  28.4 |  28.4 |                    FMV_6667SL5 | NetBSD/i386            3.1.1 | |
|  29.3 |  29.3 |                    FMV_6667SL5 | NetBSD/i386              4.0 | |
|  29.5 |  29.5 |           JCS_ISP2150_P3_700x1 | NetBSD/i386              4.0 | |
|  32.0 |  32.0 |          JCS_Supermicro_P3TSSX | NetBSD/i386              5.1 | |
|  35.6 |  35.6 |     ASUS_EeePC_2GS_Transcend8G | NetBSD/i386         5.0_BETA | |
|  40.1 |  40.1 |                    FMV_6667SL5 | NetBSD/i386            5.0.2 | |
|  44.5 |  44.5 |            HP_lp2000r_P3_1.13G | NetBSD/i386              4.0 | |
|  47.7 |  47.7 |       HP_dc7100_CeleronD_2.66G | NetBSD/i386              5.0 | |
|  48.7 |  48.7 |   FLOLA_330W_DG7_CeleronD_2.8G | NetBSD/i386              5.0 | |
|  48.8 |  48.8 |           DELL_PowerEdge_SC430 | NetBSD/i386              5.1 | |
|  51.2 |  51.2 |              HP_ML115_athlon64 | NetBSD/amd64             4.0 | |
|  56.6 |  56.6 |       FMV_C8210_Celeron_M_1.4G | NetBSD/i386              5.0 | |
|  58.6 |  58.6 |                NEC_110Gc_P4_3G | NetBSD/i386      5.1.0_PATCH | |
|  58.7 |  58.7 |              FMV_CX630_P4_2.8G | NetBSD/i386              5.0 | |
|  64.8 |  64.8 |      HA8000_130W_CF_SAS_RAID10 | NetBSD/i386      5.1.0_PATCH | |
|  65.5 |  65.5 |              JCS_Vintage_P6_3G | NetBSD/i386              4.0 | |
|  68.0 |  68.0 |    NEC_110Ge_Celeron_1.8G_1Tx1 | NetBSD/i386              5.0 | |
|  69.8 |  69.8 |                   ThinkPad_T42 | NetBSD/i386          2.0_RC4 | |
|  70.3 |  70.3 |                   ThinkPad_T42 | NetBSD/i386              4.0 | |
|  88.3 |  88.3 |        ThinkPad_X61_OCZ-VERTEX | NetBSD/i386              5.1 | |
| 120.8?|  90.8 | NEC_i110Rb-1h_Core2Duo_2.16Gx2 | NetBSD/i386              5.1 | |
| 271.2?| 135.6 |    NEC_110Ge_Celeron_1.8G_1Tx3 | NetBSD/i386              5.0 | |
| 137.7 | 137.7 |       NEC_i110Ra-1h_PenM_1.73G | NetBSD/i386       5.2_STABLE | |
| 142.5 | 142.5 |             NEC_110Ge_Xeon3040 | NetBSD/i386            4.0.1 | SMP動いてない|
| 197.1?| 148.2 |          NEC_110Ge_E2160_RAID1 | NetBSD/i386      5.1.0_PATCH | |
| 201.9?| 151.8 |         NEC_S70_PJ_ST3808110AS | NetBSD/i386      5.1.2_PATCH |いわゆる鼻毛 |
| 314.6?| 157.3 |       SAKURA_VPS_V3_2G_1480JPY | NetBSD/i386         6.0_BETA | |
| 219.8?| 165.3 |          NEC_S70_SR_G6950_1Tx2 | NetBSD/i386            5.1.2 |いわゆる鼻毛 |
| 225.4?| 169.5 |       SAKURA_VPS_V2_1G_1480JPY | NetBSD/i386         6.0_BETA | |
| 226.0?| 169.9 |        SAKURA_VPS_V3_1G_980JPY | NetBSD/i386         6.0_BETA | |
| 344.6?| 171.3 |     SAKURA_VPS_V2_1.2G_1480JPY | NetBSD/i386         6.0_BETA | |
| 182.9 | 182.9 |      SAKURA_VPS_V2_512M_980JPY | NetBSD/i386         6.0_BETA | |
| 348.3?| 261.9 |      ONAMAE_VPS_2012_OSC_Trial | NetBSD/i386         6.0_BETA | |


## Unix-ByteBench

|スコア|1コアあたりのスコア|ハードウエア/サービス|OS|備考|
|-|-|-|-|-|
| 340.9| 166.4|       SAKURA_VPS_V3_2G_1480JPY | NetBSD/i386         8.0 |3コア, 大阪   |
| 779.5| 345.1|          Chromebook C101PA-OP1 | Debian/chromebook 9.8   |              |
|2097.1| 751.9|       SAKURA_VPS_V3_2G_1480JPY | Debian/amd64        9.8 |3コア, 東京02 |
|3931.5|1541.6|                Intel NUC7i5BNH | Debian/amd64        9.7 |2018年, 4コア,CT500MX500SSD4|
| | | | | |
| | | | | |
