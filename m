Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 141F953B148
	for <lists+tipc-discussion@lfdr.de>; Thu,  2 Jun 2022 03:34:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nwZjS-0007m5-ME; Thu, 02 Jun 2022 01:34:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1nwZjR-0007gF-06
 for tipc-discussion@lists.sourceforge.net; Thu, 02 Jun 2022 01:34:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n6OVEvpy3PxAEc33HlXp+dyGvVIlYeivQfhqDHVUPRk=; b=nSu5ovp6LgAF71MhVS3h4DR/vY
 NvVN76HqsyAm6daX658PEsDYp0GeRxTK1VCfAQPbZJs9qnE8X22Knd02ZKds4EgXxc/Xnr/lcOhP0
 m7MfDQ6ZZtipQXOAfvXfMtWp665KQEjO14EgytRwMDHzPJGdFEUXg3zNBHiAKCdRvzno=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=n6OVEvpy3PxAEc33HlXp+dyGvVIlYeivQfhqDHVUPRk=; b=Z
 P3bhNacnC2RNP0Pa019K1Jc312GvfxW2wAGumu4YQlDgK33iRiwbXAgbGkRUV3HwRfKRmTbXrzV3W
 o0Okheocq12xbwkFE7CsxA4bde6nsT6Nt5P5suoSMrP6v6Pz6L9Vi/B7C95msfwKhHz4Hel1v+9iX
 t5f0Jp359094ZofE=;
Received: from mail-db8eur05on2090.outbound.protection.outlook.com
 ([40.107.20.90] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nwZjM-001ceZ-Cz
 for tipc-discussion@lists.sourceforge.net; Thu, 02 Jun 2022 01:34:37 +0000
Received: from PR3PR05MB7500.eurprd05.prod.outlook.com (2603:10a6:102:90::15)
 by DB8PR05MB5963.eurprd05.prod.outlook.com (2603:10a6:10:a8::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.12; Thu, 2 Jun
 2022 01:34:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GiJ5XA5TQauIoAsKduZKr29xvXu+1YJw8yVyqpJ73kS4tu9h0EFF6TopUyINPUe3OywlHE0PflAuI5lMbN6f3sAL/r27GmczAa5FnMPSXmWsdh3ldZka3obyDrgmuE6VDIhuhSJNtgc6ArUw6up9IEal9S1PPHflJHpdO6gz5rDE+EOqC58OFLYEWCoRPo+M7eL6FrK8CIoJyn9e1mVwiK5hD3OiAYfr7pxuy8hqkKleZE6PP1Qr4esjkcCYjQGDzL+TpfE/BQjw0a5phJ+l2kwfijeMQ6KrHkdUGMPo217lYEXuDqIhhkHZctrHmvjiYXh+04SHgOcEf/jLzMCDvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n6OVEvpy3PxAEc33HlXp+dyGvVIlYeivQfhqDHVUPRk=;
 b=n5jCkXlEPr0dkdz1jSj22VvPyJj/hGyGcyykno+tl8UlhOVPNpQlbbSJXkHVM0ya3U5nZ3Bgqv/dVtJAAu/48WTl5qD6tDmF7YdCtFHsHl4bmJEDOnFydKB5Aes6ILLHanloy8Gmk/m6BD6UQ35w8pYiwC1E4fcOMlr43+L/wELtE430RSUWhtHdLlAgrUpUvzeN8+y8ytsv8nkt9FXzi2YcDE435Itv+NHuj0al58N1pzoNCWCemKM1OTT1BoPAatZfp3HoKidzir0uMLCY+9vIgY6BtFo8WAL+v0IYRhJPfPcdpTqeSeFxAOKKgb+FzHf34QJ5ATqpetOV9po5EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n6OVEvpy3PxAEc33HlXp+dyGvVIlYeivQfhqDHVUPRk=;
 b=qb5NDfW/lM6yEPFQu5/FIXfru5LJ6f3baR4tTAoXgzA8Wb0OoGTUfGDTn7z6gW9Qeau014Oxaj2fTfhB28jGCxvJLnog1osemI3rzrJUnEy9irPDPBZMyTey+50WqA68K7gFhmJOCceGujXk94dgVetCgB/qqRSVtdHlmZHbaIE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
Received: from PA4PR05MB7647.eurprd05.prod.outlook.com (2603:10a6:102:fb::12)
 by PR3PR05MB7500.eurprd05.prod.outlook.com (2603:10a6:102:90::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.12; Thu, 2 Jun
 2022 01:23:27 +0000
Received: from PA4PR05MB7647.eurprd05.prod.outlook.com
 ([fe80::e463:62e0:e49c:634b]) by PA4PR05MB7647.eurprd05.prod.outlook.com
 ([fe80::e463:62e0:e49c:634b%6]) with mapi id 15.20.5314.012; Thu, 2 Jun 2022
 01:23:27 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tung.q.nguyen@dektech.com.au, kuba@kernel.org, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Thu,  2 Jun 2022 08:23:13 +0700
Message-Id: <20220602012313.4255-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: HK0PR03CA0118.apcprd03.prod.outlook.com
 (2603:1096:203:b0::34) To PA4PR05MB7647.eurprd05.prod.outlook.com
 (2603:10a6:102:fb::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0844342d-a824-4278-2008-08da44367ebf
X-MS-TrafficTypeDiagnostic: PR3PR05MB7500:EE_|DB8PR05MB5963:EE_
X-Microsoft-Antispam-PRVS: <PR3PR05MB75007C3C2B3EE16AEF763AB3F1DE9@PR3PR05MB7500.eurprd05.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XXolzljJWQmDr5SgvdnwuzWltFl8PNLshM1lX0OrdA8FOHB4Z/Bz5+JktVx02k98ykvtirMsq62vrU53KZ2UeyA5C9hZQobRkEKyDR5nvs2YaodDoXPwrPt9uCItmmLi7bYERlZ5rVMixJMZoMx14/pb5zCBYlTPjlq0hj36Ef3tBuLzigBVheR3S8U/QR1Yzq8pAJb7OCqVPHM8/a442nnHcMcf6ktRx8iZClg5wAPaGAYTmvxo9BhKEuXbB4NII8mcddkxJp4ITD9aL/tip84JKUnZJpPkQ0BQPjzJhS1hWY76nR9np40YonLAK9UFXa8D5j30eD4dkkaKAM/1MXHXAg9UjX8rtUeNoo2ONkC6O4Duq0uKt80gcAREvvZ6V/qdDcU9kAzGjlrMwIz3Dyr9vsC4+/vVcGajaWHubNk7pMlNzYsK//WysIBmJNj5QpuLUnOqbLVaIZmwYLIFEp/4/ltbtJF2cMHBwS1l1t3J+dY4e90aU3+KSpMotc4BEPkT8QJtqFrFK7H0msN71fhwQSr9N7GAzqOQzxuT4K/XyOaz/97NmaFQ0PTSApWskQgfeDZbglvNvOskTGn0nLAP//bSD4Ar17AolqqXX6zri9Qg/iMuaWRsQIcyp0gbqGaGG+rgcfqYOgE9XWEDhZLoZjuov/KJGNQ2IxfIoVhIHkz3EvkBfrvFmmBZBF27FS+25WoQ9Dra/5a0ASgtlQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PA4PR05MB7647.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(136003)(346002)(396003)(376002)(39830400003)(366004)(316002)(6486002)(6666004)(41300700001)(6506007)(52116002)(2616005)(55236004)(86362001)(103116003)(36756003)(83380400001)(38100700002)(2906002)(38350700002)(4326008)(66476007)(66556008)(66946007)(8676002)(6512007)(26005)(508600001)(5660300002)(186003)(8936002)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TOMKXvF48q5muwwyFxtQRwkAd3zaQXockxGuhmayvaYxYGQhfB+AJa0i0+CP?=
 =?us-ascii?Q?hWhE1sXrpQRXzfNsQzyszgsjoUrU+jms7ipcdUtiHNyQJCz9RPOjKQIP9OZ3?=
 =?us-ascii?Q?bNC+lqPlJ04xSI7s7zaRfMjL5GaXLCGVblORnUmbXHoLllqJhbsoXTKxYdX/?=
 =?us-ascii?Q?Wcs/Uc2Z4UGocOQdIx06hH4YzCgMBC1RZDuBlzjnhaf2/sTVWGmM5YQkBIP0?=
 =?us-ascii?Q?JI9f081XpIaZ+r8Sul6LiMbtvb83yaPn4/R4qtyJ+kelx851izaGqKOztpPF?=
 =?us-ascii?Q?YnUOE9w6MttCu6NjncrBqLg8uwxfI4Ft5xZdJSm9XODfsptcMD8NBpoazK9r?=
 =?us-ascii?Q?cRvRKoL9WkssA0Mf3DDAei08FrtagHGwQG7cwOeabGdco4/WTg/DaqOedq/G?=
 =?us-ascii?Q?bs8dF+EJB55ZgciG8O4OXFWROaBnMyozU8TQ03YLieL8j/EPaNf5/Gw7lAd6?=
 =?us-ascii?Q?s1LW/r+eR5ceTWlJhq4LK2egeUvverl0cGlbqWSHqD5UBWIwqyK/JD4mKRRb?=
 =?us-ascii?Q?EnLsdWJbqqEaBRLGlrfUSmxe0nSLR6xNpIWGazGetENhjRQ1xvCE75NYSlxv?=
 =?us-ascii?Q?o5oFuX+Ree2Lq2fkmzJ8jHkBnWm0Y6PzSUQ+o1nEL8XP7hEOHqT2EwYuS59l?=
 =?us-ascii?Q?jgyQQ3AYAkSw9NflqpZLavN63ZSsG3DsPHzo9wCPc5YMWMfyWPGQAok8Y4Bi?=
 =?us-ascii?Q?MB7qpAkrjAb4SWO712rqEzcbL81CqGhIerR8We03/1DYpJzdrjT+mbktFu7G?=
 =?us-ascii?Q?sERyjrSUBzWzw3Z1oQDtoshtQTROXg/bbOb1GMBzOzBJejg444n3Hq9occu0?=
 =?us-ascii?Q?RNiwIuqdBuPxpeXY41zAl+kj1st8Py94RRlfvDXdWDF20R2bGe00maffW7k/?=
 =?us-ascii?Q?TAERR/aSrZQHu9uFh3ECHkczU3Q9HuUWrZmuPtylFqbFRVAzhZGeXeVYmTjP?=
 =?us-ascii?Q?9J0W0/uN7vpEvpqSUcI70V1dl2juOBBhcQzmIL+VXZKhsF3XKEmaz1vw2COA?=
 =?us-ascii?Q?ekIhBDZoXEvGJNu8x+6ArtDiONCB9YJPgQpdxoN+K3gNd0jqgsrD5ct4zDvi?=
 =?us-ascii?Q?LSMYIlihORujkL8FmOWlCedtVnDnJ229pbppSQr77C9BgOd+io/3opFdWq7O?=
 =?us-ascii?Q?DfZvxB3Kgi7HIcNT6zHtca4gY9qySF/G8TB79ANITofaOegfD1khUbZJ5Otn?=
 =?us-ascii?Q?w9vCyL/wC+NgAgrvqkv7K60TEyckmqKSMfiunUe2KNre9+DvRQiffjjxqJDh?=
 =?us-ascii?Q?ClbjhVTy7LZE5BsAASHZTyMb7Pp3FnIYK1FXqx272mvLILjZa6GbrK3OLO4x?=
 =?us-ascii?Q?XtG25rUFZcP3/1rc7ZvkRlrANE4ZxM1oukqX3iRyVg8q9/zFRNyoLwK4orjH?=
 =?us-ascii?Q?J3TZQOkVzRsWE4UcpBXajbolfBeCfAGZH0i47dN+yCrYghHrehPh1fXj7r3j?=
 =?us-ascii?Q?PewQblPrOmZRnPQpGZVbZ7n0Y7Javdfu+pJl/g0sgJS6nYc1/k2cbnmo8Dd4?=
 =?us-ascii?Q?oSWteZZrLXxpfoOHtQZdTEha4HO+ygi5TalR/cy0wERaZSWydrB6J6GrAErP?=
 =?us-ascii?Q?a0UcabM2U1RVS454KzvS93dN7GYLdq6ZupBkC6g1TvTzQ7Q8Sw9DzIbT3k7H?=
 =?us-ascii?Q?8zd/0tc5FVYSdi2ghleHS80Y2qRaGepZgk/a8h1Io74XfvNSS+bcZkQ3gati?=
 =?us-ascii?Q?NOiS6pj+qvwCD2pO4NR14yOHFszhZgwYRhzzFtuT8M4x0zGEVGzD86aB+/ud?=
 =?us-ascii?Q?e8vsMjXY+OyBpo6IwgKrxmfNJYlUBYg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0844342d-a824-4278-2008-08da44367ebf
X-MS-Exchange-CrossTenant-AuthSource: PA4PR05MB7647.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2022 01:23:27.4848 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vPV+zHj4XKFcGtI9B4QL9pb4KHOmJYqNWvodpXScbvjMKfeq73xnBeqivuTyuXyowBGdBPLiTAC+fiwxHofxqefsq++ui6Q85zM28KY8nFQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR05MB7500
X-OriginatorOrg: dektech.com.au
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot reported uninit-value:
 =====================================================
 BUG: KMSAN: uninit-value in string_nocheck lib/vsprintf.c:644 [inline] BUG:
 KMSAN: uninit-value in string+0x4f9/0x6f [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.90 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.90 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nwZjM-001ceZ-Cz
Subject: [tipc-discussion] [net v2] tipc: check attribute length for bearer
 name
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
Cc: syzbot+e820fdc8ce362f2dea51@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

syzbot reported uninit-value:
=====================================================
BUG: KMSAN: uninit-value in string_nocheck lib/vsprintf.c:644 [inline]
BUG: KMSAN: uninit-value in string+0x4f9/0x6f0 lib/vsprintf.c:725
 string_nocheck lib/vsprintf.c:644 [inline]
 string+0x4f9/0x6f0 lib/vsprintf.c:725
 vsnprintf+0x2222/0x3650 lib/vsprintf.c:2806
 vprintk_store+0x537/0x2150 kernel/printk/printk.c:2158
 vprintk_emit+0x28b/0xab0 kernel/printk/printk.c:2256
 vprintk_default+0x86/0xa0 kernel/printk/printk.c:2283
 vprintk+0x15f/0x180 kernel/printk/printk_safe.c:50
 _printk+0x18d/0x1cf kernel/printk/printk.c:2293
 tipc_enable_bearer net/tipc/bearer.c:371 [inline]
 __tipc_nl_bearer_enable+0x2022/0x22a0 net/tipc/bearer.c:1033
 tipc_nl_bearer_enable+0x6c/0xb0 net/tipc/bearer.c:1042
 genl_family_rcv_msg_doit net/netlink/genetlink.c:731 [inline]

- Do sanity check the attribute length for TIPC_NLA_BEARER_NAME.
- Do not use 'illegal name' in printing message.

v2: remove unnecessary sanity check as Jakub's comment

Reported-by: syzbot+e820fdc8ce362f2dea51@syzkaller.appspotmail.com
Acked-by: Jon Maloy <jmaloy@redhat.com>
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/bearer.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index 6d39ca05f249..932c87b98eca 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -259,9 +259,8 @@ static int tipc_enable_bearer(struct net *net, const char *name,
 	u32 i;
 
 	if (!bearer_name_validate(name, &b_names)) {
-		errstr = "illegal name";
 		NL_SET_ERR_MSG(extack, "Illegal name");
-		goto rejected;
+		return res;
 	}
 
 	if (prio > TIPC_MAX_LINK_PRI && prio != TIPC_MEDIA_LINK_PRI) {
-- 
2.30.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
