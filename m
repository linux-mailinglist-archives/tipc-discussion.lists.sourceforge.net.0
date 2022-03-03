Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD67E4CB620
	for <lists+tipc-discussion@lfdr.de>; Thu,  3 Mar 2022 06:12:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nPdlP-0003BH-UU; Thu, 03 Mar 2022 05:12:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1nPdlN-0003B7-Og
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Mar 2022 05:12:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=agGB6aosBzI+7lIl7VWELlsExGFwQkoIq85Ot3jKnPQ=; b=MAYIUAe3n55j31OXRooftFK/iV
 ZTLMvWVGKBZzdd8/S9LC79/lD78YLahUFdFB4dBiWMn/RIUFelUN33fFJJ4OGI5+cWvHa66Tq8NRc
 d7muW+vtVrwBGFmX3P0D3+3QRT2KusqFE3HQc+/FlnNXjsBO2ilC4YS0+67snOmiER/Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=agGB6aosBzI+7lIl7VWELlsExGFwQkoIq85Ot3jKnPQ=; b=U
 z5SiZqeKP1y9rl1aJilrB1oHgyNJ4ehnQpYstQaBEC7iJSSDGXCr0OJnsjjGkkwIGSvAuFa6Sw/Pn
 mh9vXOc1rjiQPdOxWNz6YVLaonT9lk8cBoDm2/iZeOKAIhj4OAWmAnK0uwi25JXTwwuHXt9fapOMW
 uhGRkI2vtoqBI4Sw=;
Received: from mail-db8eur05on2094.outbound.protection.outlook.com
 ([40.107.20.94] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nPdlE-003H5U-A0
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Mar 2022 05:12:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I2UqSTrgskCXWzlSFZc6xHFZBgiMkt2nA6RAeSALneg/lyOkBjC5pTY4Yhds/txBAAjXDtxtcFWJrIbVZ2k1LxcTh4B3YGKgZW1ZnQsdmNVVILWLsQeY47sJLhp3U/qEOoGtmE0SYBIR10fGnXu5w6Gkjr0SzmmwoeFggrPdcjWtfSGu4flx8CjIeKc9iQfUxc0APJBchG/JDsh+xm+qx4MT9kBdgDfbJtVA97t6ZZZBxHGTkwaHnqEZdanTMccozYwheiMuyRFP2dxtKexaMq5jqdIP/Ol2T+/0zNs5SjSGDvghS0LAU+vytkWPPLGQZG4gCullP0oFtw5wWZuVpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=agGB6aosBzI+7lIl7VWELlsExGFwQkoIq85Ot3jKnPQ=;
 b=U7jgaAV6+isC1nzRoOJn+cqeonTtjZCsJgM85et+3c9afEkd1YMX2rpGBQfcrai4pnkk0iyIugeJ2+WEvf5mmFvNJa5jiwu1yLmrW/2RYM/3Q0ZKhHJWPKJ54teBLP5ys/YauSxSCI+vJeYUoFKR3V0YAcS7chGa80dPKtECtTllu0T+okvxprPvyyg9b0r9lJMAjn+0SK2w6l8DV/vo3MmMsTzIdQR9NvJpOJdVrxIIdgWluE5SbGf4Uil3juXNcg7eRh9oMcfdyZhqv2YN00ptJxJ4Oe2TYgzp7esLa0UXmmqp4q5XBhHxWg4w88tdvze0PK1/tU6Ei15EwGnDRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=agGB6aosBzI+7lIl7VWELlsExGFwQkoIq85Ot3jKnPQ=;
 b=cdDj9TaeCrT3I7VNe4DptjvHRYNbkqWC7Wg94iSAKWe8tq7LxRGPArceuAcZJ4RwKU+/YkaoWZdujoeM4ps4H2k6wup2dpT/61cWNyR3tA4Ys/wQfBWoQIHkhvdhTATKp/u1jr/Vh6nfU7newEYNRad+LfINq5uoWXPemO7symM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
Received: from AS1PR05MB9081.eurprd05.prod.outlook.com (2603:10a6:20b:4db::22)
 by DB3PR0502MB4025.eurprd05.prod.outlook.com (2603:10a6:8:8::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.13; Thu, 3 Mar
 2022 04:57:33 +0000
Received: from AS1PR05MB9081.eurprd05.prod.outlook.com
 ([fe80::8c82:344d:b9ac:11fd]) by AS1PR05MB9081.eurprd05.prod.outlook.com
 ([fe80::8c82:344d:b9ac:11fd%5]) with mapi id 15.20.4975.012; Thu, 3 Mar 2022
 04:57:33 +0000
From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
To: netdev@vger.kernel.org,
	tipc-discussion@lists.sourceforge.net
Date: Thu,  3 Mar 2022 04:57:17 +0000
Message-Id: <20220303045717.30232-1-tung.q.nguyen@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: SG2P153CA0046.APCP153.PROD.OUTLOOK.COM (2603:1096:4:c6::15)
 To AS1PR05MB9081.eurprd05.prod.outlook.com
 (2603:10a6:20b:4db::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: be76203b-8849-4773-0cb7-08d9fcd25437
X-MS-TrafficTypeDiagnostic: DB3PR0502MB4025:EE_
X-Microsoft-Antispam-PRVS: <DB3PR0502MB4025403A1FE46C761CE6E52488049@DB3PR0502MB4025.eurprd05.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zYYY+EkSMVsnJ5NU5iAdQ/SAZiplfKFzDfhH35j8h/AW3iZvyiw5enknIsvakHai3kCqhg66C6Vx4OV5dmqzEONHV1EaMm4dBAVL4F0kkl6GpajoG9jZPEF8kJIIqjcAE2uwCgCl/i9rgxnU7/AijVmQJBxQ6Cs3sqpBLg3Vrq+wYCUlKwfybYz9rzLWk1KWZ9Q+Bh4GMKuKD+jmOAlG+ze50JgMdonoMvjO1rVhxekGWrll8zTP/DXrNrbCUDCh0+SeumTyzlY0vXvZdABrkZJKSn/xrzHLtMcLUJz77oJulPgHBEI7OIofkfBhIXOM+qNLzdG5JCQa3NE4Q0Azjl62vD8+KP3WpKk0Szg7BfFtjVvuwYkbAxBWIkYfcS+FfQXxFfkoDoqLZSbi4I6O/LOFOGPG4U4LgGnl60PssIOkrXUj2h5OL1H2uIVpKdtOk18mTUdA0ulnqBURMpiUCnyiMHP53uMmfLpw0/rKmltFyWe3cxK/0KofN9VmoMf+cswre+JYF0wKqzr/ZRWTQVwuc68j9r2VCR7tqArJusbpkZnbuUR6W3q+jEEhJPDJ6oLv2366GScRi9GrgJPyG+cg2VK3GXZlfnrwZSVgR6rDJWTm6175reNyARiilyz7PLnok12kk79sEmspDhlV/Im6cTE0abc5Mjte5lUSrOh6ujs75GYcanME1ST+vI2KE8ERrBHXmJASc36FtWeK/Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR05MB9081.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(346002)(366004)(2906002)(186003)(26005)(6486002)(508600001)(1076003)(8936002)(6506007)(6512007)(6666004)(5660300002)(86362001)(2616005)(66946007)(38100700002)(66476007)(8676002)(52116002)(38350700002)(83380400001)(4326008)(66556008)(103116003)(36756003)(54906003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?x3DWyE7Uf0lvQcjXaaU9Rdv3AmwSm3hyTUNsgpsoEtaA2Ge/LjfiUnBWUPGt?=
 =?us-ascii?Q?ipv4I35dEtm1qNDluG9sroMmCumhbbxBMWhq9LVVHG+9DNj/TeU97OGodgpb?=
 =?us-ascii?Q?xMhQtIKH8RmRsPrwoROR6LJuUD+KDnE10/jY0bGQxyOqv+puF1t/zyNnwP5b?=
 =?us-ascii?Q?+GjmU4vNmFTQNbL/yg5RC6VrYnvt3JrrCoqijOTzWfhA4eIfzDproZn1WPyd?=
 =?us-ascii?Q?i8S6Hje2EQsDaICjV9bf4ZDuEqqSkT9UJvdJKhzNePn+uiJRnl7qNDyCTNGd?=
 =?us-ascii?Q?YHQ9kXb/jTNZNtcHrACXT96Uakdn0eXxZeir0LmHdboXXR02wP44KL83AOG0?=
 =?us-ascii?Q?HM9m6PrsYEWBqFa9sdVgGA+hV7UlcCfVRxyAh7H1csR5PU9F3+mwYkG0ZA+E?=
 =?us-ascii?Q?x11FlaYMTW3PQcFKYfiDj3CNgKlj/Ps3yxl0269Yf0BHlUaUUm/8xpULglXQ?=
 =?us-ascii?Q?D+DwwUCBgAYg7GxH/+Z8nLbhsPxrLQMeKWMjknnmBdOaZ864i+aLB+yrpNl2?=
 =?us-ascii?Q?hbHEyhy+D5YgHES2rzrBFmH8FTGTnY2XlkhGow8OktnvdPO0urdxarDvrJOe?=
 =?us-ascii?Q?5OOpx8BzWidY9T0eXXHpeo67G3PRoP7T0yVuWmfwNDuL2zI6Gc2R/APdHgZ2?=
 =?us-ascii?Q?dTZ6r03oNoi0lGU4zYFyGPbXc5XdkV8PLEVvZYEgPm1nPCp/KGfJtoGr2otz?=
 =?us-ascii?Q?3GbOYrrFKuFrTzHSikRhHWpjUlknVQFsWUtJLo5dnTi8lpYBdgLA9gt7Ztjg?=
 =?us-ascii?Q?n8wMSZ21Ws8QgMaOUOHSl2aW2dZ4cWSPJuameQlFqZAYl9l1lJa4xdvMzvpB?=
 =?us-ascii?Q?V94X/zyg/PAQMQsAI+VNby5SItGrLFez6/d0iwV7XOQ9AXD+qLeAaQ51AmMg?=
 =?us-ascii?Q?CI/IX6MGB5jOqKGx9pWtDld9W2jGHAozdwfyqOfwBX6Ob0UU0SLqsjJa7ZMY?=
 =?us-ascii?Q?TjEusty7tz+bpq2G5CHL2qV6mWBHY9XZNchmjziwdunniJ+R0vNyN/QpMzC7?=
 =?us-ascii?Q?ZeLmLwpBmg9EuBtVwK6WDYA78uEz9vGuqZE5C+TFrm1qWuyKQYtIb8Vgnc4z?=
 =?us-ascii?Q?uM7e0KFnY7PMpZ0gCFeoYnkLJuta54UDVGdjiqwOXdfxuAdYvxGjzaOhUz/E?=
 =?us-ascii?Q?XENhIoRCd1OaxdlvvMHEDgQBbp4Gz4rTVG8lfv+f8DoYRyAnQqlHJl2G2lTI?=
 =?us-ascii?Q?eZISU9Ue4mssRqEX4F3RXktz8yZNtl0mXaeEmhr19y/yywiQzJQzi/E9ezza?=
 =?us-ascii?Q?4Ud4jPVu7C1obJl6Ihj/iQog1Tr49m/n0O2tHL566xt3YLkjB5Q0m2cZLKDC?=
 =?us-ascii?Q?BkZ5kUgUYu/ksSs5H70ate9pzVoqdytGXAzK5Qf48qYnRT1ajx/GFqG+QXI1?=
 =?us-ascii?Q?Ip0G3rJICI9+JAamL6p0H1JbCtpTdK3TpALx2sf8UXrW4SIXzM96MZ56SbWL?=
 =?us-ascii?Q?a6aP+FNzKnLE+FniESRePPjDFSwMPR+4rWB/TQRfL005V2Qrnynx5vdMIPYo?=
 =?us-ascii?Q?ynd2+diOffXnkDZwTH59jDIIqG/HbTfv/k+41BnGHzBXv+S4gbjTei4dwlUL?=
 =?us-ascii?Q?ap4qWrQYWDPp72xdAOWQy249ADADEFDNjvw0UW6w3PxfW5M5zAx+YHoL0Hdy?=
 =?us-ascii?Q?9fU6dG/gbux8qmsoT4eW2bz5+hpUUgAiBSWi/3gyyifykpgwuwK5yucLwOq9?=
 =?us-ascii?Q?RhvrFQ5NPuDAvbSTzUqCWPo8KzM=3D?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: be76203b-8849-4773-0cb7-08d9fcd25437
X-MS-Exchange-CrossTenant-AuthSource: AS1PR05MB9081.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2022 04:57:33.7737 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B1E/RBhFJg5S5413GnAqmkmDlspgGfm2EAuW+F7f9tTjTR6aupDupD5OmedzZhQI4Mv9PiuinuiHjPd4M5QgIFtiBL0gZbybbMSj4m/pros=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0502MB4025
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When enabling a bearer on a node, a kernel panic is observed:
 [ 4.498085] RIP: 0010:tipc_mon_prep+0x4e/0x130 [tipc] ... [ 4.520030] Call
 Trace: [ 4.520689] <IRQ> [ 4.521236] tipc_link_build_proto_msg+0x375/0x750
 [tipc] [ 4.522654] tipc_link_build_state_msg+0x48/ [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.94 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.94 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nPdlE-003H5U-A0
Subject: [tipc-discussion] [PATCH net 1/1] tipc: fix kernel panic when
 enabling bearer
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

When enabling a bearer on a node, a kernel panic is observed:

[    4.498085] RIP: 0010:tipc_mon_prep+0x4e/0x130 [tipc]
...
[    4.520030] Call Trace:
[    4.520689]  <IRQ>
[    4.521236]  tipc_link_build_proto_msg+0x375/0x750 [tipc]
[    4.522654]  tipc_link_build_state_msg+0x48/0xc0 [tipc]
[    4.524034]  __tipc_node_link_up+0xd7/0x290 [tipc]
[    4.525292]  tipc_rcv+0x5da/0x730 [tipc]
[    4.526346]  ? __netif_receive_skb_core+0xb7/0xfc0
[    4.527601]  tipc_l2_rcv_msg+0x5e/0x90 [tipc]
[    4.528737]  __netif_receive_skb_list_core+0x20b/0x260
[    4.530068]  netif_receive_skb_list_internal+0x1bf/0x2e0
[    4.531450]  ? dev_gro_receive+0x4c2/0x680
[    4.532512]  napi_complete_done+0x6f/0x180
[    4.533570]  virtnet_poll+0x29c/0x42e [virtio_net]
...

The node in question is receiving activate messages in another
thread after changing bearer status to allow message sending/
receiving in current thread:

         thread 1           |              thread 2
         --------           |              --------
                            |
tipc_enable_bearer()        |
  test_and_set_bit_lock()   |
    tipc_bearer_xmit_skb()  |
                            | tipc_l2_rcv_msg()
                            |   tipc_rcv()
                            |     __tipc_node_link_up()
                            |       tipc_link_build_state_msg()
                            |         tipc_link_build_proto_msg()
                            |           tipc_mon_prep()
                            |           {
                            |             ...
                            |             // null-pointer dereference
                            |             u16 gen = mon->dom_gen;
                            |             ...
                            |           }
  // Not being executed yet |
  tipc_mon_create()         |
  {                         |
    ...                     |
    // allocate             |
    mon = kzalloc();        |
    ...                     |
  }                         |

Monitoring pointer in thread 2 is dereferenced before monitoring data
is allocated in thread 1. This causes kernel panic.

This commit fixes it by allocating the monitoring data before enabling
the bearer to receive messages.

Fixes: 35c55c9877f8 ("tipc: add neighbor monitoring framework")
Reported-by: Shuang Li <shuali@redhat.com>
Acked-by: Jon Maloy <jmaloy@redhat.com>
Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
---
 net/tipc/bearer.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index 473a790f5894..63460183440d 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -252,7 +252,7 @@ static int tipc_enable_bearer(struct net *net, const char *name,
 	int with_this_prio = 1;
 	struct tipc_bearer *b;
 	struct tipc_media *m;
-	struct sk_buff *skb;
+	struct sk_buff *skb = NULL;
 	int bearer_id = 0;
 	int res = -EINVAL;
 	char *errstr = "";
@@ -352,16 +352,18 @@ static int tipc_enable_bearer(struct net *net, const char *name,
 		goto rejected;
 	}
 
-	test_and_set_bit_lock(0, &b->up);
-	rcu_assign_pointer(tn->bearer_list[bearer_id], b);
-	if (skb)
-		tipc_bearer_xmit_skb(net, bearer_id, skb, &b->bcast_addr);
-
+	/* Create monitoring data before accepting activate messages */
 	if (tipc_mon_create(net, bearer_id)) {
 		bearer_disable(net, b);
+		kfree_skb(skb);
 		return -ENOMEM;
 	}
 
+	test_and_set_bit_lock(0, &b->up);
+	rcu_assign_pointer(tn->bearer_list[bearer_id], b);
+	if (skb)
+		tipc_bearer_xmit_skb(net, bearer_id, skb, &b->bcast_addr);
+
 	pr_info("Enabled bearer <%s>, priority %u\n", name, prio);
 
 	return res;
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
