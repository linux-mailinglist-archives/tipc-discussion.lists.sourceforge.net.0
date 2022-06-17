Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4330654EEF6
	for <lists+tipc-discussion@lfdr.de>; Fri, 17 Jun 2022 03:48:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1o215w-0001If-PD; Fri, 17 Jun 2022 01:48:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1o215v-0001IY-Bm
 for tipc-discussion@lists.sourceforge.net; Fri, 17 Jun 2022 01:48:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+IBLS+iKgI/rybRk1T7CetiuuQ5OBBepiF0SUGRDq/k=; b=nFfropfwD1zph94PkmG3GmPifx
 Jpu7lg0uE5CqpoJtcNvGI+AVsfo2kmsAHpfIfPwseFZ3mj0wfCjV0EyIuxKesZYGlvPzotEnT6vPz
 Ek9ZrBz5C77LLY6+CB+KK4YZeB2/T5lYfPIKdnhFDmllkbJvRB2jZqbmNyTm3D/f150k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+IBLS+iKgI/rybRk1T7CetiuuQ5OBBepiF0SUGRDq/k=; b=M
 hN+vG2HjbkY+fKpBIsh7AADn6BSCVFuNBzxpnrN45DHFktKC6ZPRCNchhHfH4Sd66RBiCoTqeBdgY
 o1CiTRV7FvbCyPzDGAEuKiQCl+pAh7e2mxsQOQuG3x1DpBCFSaGC33EyOOoioU/RDt4EoraHNvHvT
 +Lm0GCDNaD7B5O8I=;
Received: from mail-db8eur05on2123.outbound.protection.outlook.com
 ([40.107.20.123] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o215m-0007mY-7c
 for tipc-discussion@lists.sourceforge.net; Fri, 17 Jun 2022 01:48:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W9rpmJont0ELeVZ+WELuWfguwI13SfvBssQsgZcEsWt2T5kWkMU9tlDanr0FGXJVwSzByQa2hLay8Wmr8kWKRG5QzMj+s3aOBeFHsoCYbWIvNhkrc30gQIiyNYnkV2giSmS6YNL6yNEzcr18Tk8sss8tIAsbjdl9xVL4R/DzuSeStXbldl8VP0p2PqS0mRFv7WLaFAkLcYE6nbXv3iG7h79xeU2IrWNMNww6crYALy4ey6hRREoK3raxpwmgDuL9Eg+STat8wnHSldTYtsJ1oV9X/5YTIPO6lRtbiuBQBGhqnMnukQsOaezBSEuHjljUQVFzqAS8rmLMyEXpsOpDhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+IBLS+iKgI/rybRk1T7CetiuuQ5OBBepiF0SUGRDq/k=;
 b=ap2VjSVXpUjADUEBIEuYaGC4RICB+jtcbbjgxC6nMFMKxBfozpJupr6L7FJ0bm6pGHlvewEvx9fp8riLrXGJFqr+STUfUZJPQD2os360MR0AIlx/Y2lJROyUHJAm8psTMrloBT6bNTlgbWEDwPW7BOja9n/a1rN0y2pZWGWPoXp4+I+hAjiiaXKPaWlmA6uRimFfejKZ/GFXhOfmminKAmC6UXlqo+dTU6ihPWhJehYNEGSfLUs72dbFd4NCO3XvuJIKCZknri/hA/Q5algdD54IACD2EnLZ5jEs3gZw2RbVQMzBQYzTbhKHLbIr5tuqVqFTKsYYgxRLqUh2WuBRhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+IBLS+iKgI/rybRk1T7CetiuuQ5OBBepiF0SUGRDq/k=;
 b=FmDjYFGmvrv0VCwC1aF4WcL0PUXWRbKi6THztW6ycgj6D764NY1TkRAPvsU1KrENMdxPIsGgHQGYYFh96FjetJ5R/jW2rtLmmOsI+Wv8wDAlVom4UPQ+cXLqWFYkbwDZXkLE6+87ax2qhzuRh6Qb8aHYj7gIRAsBT/vNvf4s8zI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com (2603:10a6:10:21f::6)
 by PR3PR05MB6985.eurprd05.prod.outlook.com (2603:10a6:102:2f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.16; Fri, 17 Jun
 2022 01:48:03 +0000
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::f429:2b60:9077:6ba8]) by DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::f429:2b60:9077:6ba8%6]) with mapi id 15.20.5353.016; Fri, 17 Jun 2022
 01:48:03 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tung.q.nguyen@dektech.com.au, kuba@kernel.org, pabeni@redhat.com,
 edumazet@google.com, tipc-discussion@lists.sourceforge.net,
 netdev@vger.kernel.org
Date: Fri, 17 Jun 2022 08:47:51 +0700
Message-Id: <20220617014751.3525-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: SG2PR04CA0182.apcprd04.prod.outlook.com
 (2603:1096:4:14::20) To DB9PR05MB7641.eurprd05.prod.outlook.com
 (2603:10a6:10:21f::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e8293d34-eb31-427e-3e3c-08da50036ab6
X-MS-TrafficTypeDiagnostic: PR3PR05MB6985:EE_
X-Microsoft-Antispam-PRVS: <PR3PR05MB69856A59C4A47C3EC94C8466F1AF9@PR3PR05MB6985.eurprd05.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FeoovYMR41tdGDbutDBdwumoXmo7LDGG9NK2BHOu+e439LFtygIf6STT4md7CgGfxKD/+yYH4HyrkBmv2MLmocWJEJl+bYeJMSbNedxfC+kUcAnJ1eBnJiJH+yslYn/VaURtGdCEgUg86MZWQg3itiGB1g/fKEHiCM3348dDhl5qpsTn09MuiMj1JeDsZBOjRrRAQLukU4tuJQ9imM2m9p/qznm5jyF5Yu/9L27RpNoCCzpc0XoMA3Elq9UI+7U8U1EroH9bx853jiff87yWpnEeBBhryiTlWs71osEDyzC+XOx3b1woSEt4X/X/TYzoBPFnsy/XktBzBouKlEwZN9G+lKUg4mthSaIkoT27DFl6Pj8p+cEigW36fujC3myT9upa/mrrUAuEs5EfKP6NBd37D0bt1k6M2mfe7uuimuK8Ak9NbRBFpECBsPm99Vb78AZLCd340Yx+sD0gdN3yR7LjQSZVawo8xPUF7d6512mH7oB0UO4fF1lIF5t16wSLKdQ88w2lHz/U5XjlBfbQx0Le5pKVuabbtrXiw0hLgcewB8AqNn1MKY0MHahH9VStGErJQ9hu9hTzc4zaOsUVYKFMfa6X5TqsZByLsWUZn8k7XQ6yP3r+iIkwqZVlZy55TcVVBTN24Cj6hvoNOiN1IDwxdcOhQuS9p2G4c+LBBWuOd4thPPLu5FNbFm4Rs1W6LBrfjaHBnXWYxQYQJVrzgg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB7641.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39850400004)(136003)(346002)(366004)(396003)(508600001)(6486002)(8936002)(5660300002)(103116003)(6512007)(186003)(1076003)(83380400001)(2616005)(2906002)(6666004)(26005)(52116002)(86362001)(41300700001)(55236004)(6506007)(66946007)(66556008)(66476007)(8676002)(316002)(36756003)(38100700002)(38350700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?St4HzWnnPol4gmFbgbHNvAn1mFhezHc6+sYt0oGqMDRgJ1QrVUu8bhbPPiVT?=
 =?us-ascii?Q?AyYCul2r958uG5H10LkuWxHUQObgqJseNmB5iPj+cY0PRHqr993a2s0ovBL5?=
 =?us-ascii?Q?mmTKVQpsJi0Dr9h9zRIIfTzaY9MjZYj7syXUq85ahwjI59svwrrn7MaoqHx1?=
 =?us-ascii?Q?JM+57upp22X7dNmdKV8jpJhdEz6aU29L0PaWXZZnGW9+jUUix5Iqvjduisn0?=
 =?us-ascii?Q?exKa2Uzr2w5g3ZWBSR6mwGjy2iUvwAYxEFpBaLe5O+9kM/P5CSV6LZeOdykr?=
 =?us-ascii?Q?976t302d9vQmwTw2KwzW13RM6kjfC5VU3b3RFlOoPvfRVSoCmPMlNKA93bmP?=
 =?us-ascii?Q?zDoIi5PxD4EQE7sG62/lTO24bWcMXs2dI8WFUDOGzacC8K21CNl1RX6isKt1?=
 =?us-ascii?Q?xMmknlCKcUOcTgysApp1PRb9z734rBifgb4pCsZftpWNCuSXnanHMF4ECYtS?=
 =?us-ascii?Q?My8OtWqGAR2XFTvj82hNlAa2RZIz+alr0VtAg/fm0yt/IMxW0CgsTL2ETLLi?=
 =?us-ascii?Q?iVQHShHb8VX4QjmdX7aVh1CsFIOMtFh5H+O1MRgbI+X7H0q+mJGqeEHwS8D8?=
 =?us-ascii?Q?AXrBSLpZuGGdDXYVXuCZiq4eli0kuk8eK4O2yKZRJKDqQFyXYyYCxTAZiopB?=
 =?us-ascii?Q?WFDUiUYgrXrBcWta+EMtbus1IEKZ3+Wz9ypzxQPRVlXGAlWAKuaF0S5Ee6xe?=
 =?us-ascii?Q?iFroD1TwwkL8lPZFGQb54gHgKUNPUYea7bTa+kZ15M6/Np+mpRpZKgkfGc+8?=
 =?us-ascii?Q?r+mPUdP7NAwzJLvjOhGUaEvltp8v92eEuUzu7m5KW99U1HOsOsxGpYME+h3F?=
 =?us-ascii?Q?vFsonx0JuMrBAzG6TJtNNIO5sdDsL8h8oUOAJy4A1UKkErei6KQ+2/DcNa8s?=
 =?us-ascii?Q?RpXDEPLa0VU3K4xjVgkHTM7JQhvLZIuF6V4fPa6p/BzCtdAnuI+mfqKTx81D?=
 =?us-ascii?Q?7FLw6Qkuj3VdnMmxfd0SyN2jHZcbDmOob9yn9gy/FulX6QQZQvOF56liEitI?=
 =?us-ascii?Q?ozCpgpdsFlfenCbeFWh9dBslyUH+d7AqGIBpAjXuOroKDiSnkd8tLiPKUhCc?=
 =?us-ascii?Q?ETMWmqy4fZUfC/87jlKvyCa5MaUJ4hYHTlOaK1GuL9dHKRAIHPd3sYGZzb2F?=
 =?us-ascii?Q?fTzqbgi+BRKDDBvSnPVaU4VAEXBeeKPWA8g06eIPT6tMDrbrjW3yAHjHSlz7?=
 =?us-ascii?Q?GOluGtSXFc3ePSvzhYxmgnoT5zH6Ue4SqxBcAxflahNAuBimuIKZOQ1Nnq5p?=
 =?us-ascii?Q?+rXnx9n26XbsxXHs+9xHR2yyKNxuemuLaL78JMZ4EZV1eHvOopxY8dkwSajw?=
 =?us-ascii?Q?SDHMQFt5bB4EYZEn8yAAZGpfpZ2pv8VizYgq4FO24YV0XBQB53JKUiU/JqwO?=
 =?us-ascii?Q?PV0XkdSkEAiijPig+U+na+2sR8aU0dNiFqx6QJULS5Bhnv9JVZy7gGh5jfaI?=
 =?us-ascii?Q?a4IgjQrqbphGarNJwp+hRx9LCOOEn+Aesilp7jWRHwmxIBw5k6fMiKKB/h1F?=
 =?us-ascii?Q?ulmhH26UAa/iC9+XEj8G9Tgjg8xrtqtAwY6VKwKrnm/cvXyxAJJr0OCo2LFj?=
 =?us-ascii?Q?J27IRmKLExP2w3kRj9AjJPHrIHJEgkJ0VFvHz+LGXR+dCEbdwuEVrELGQvau?=
 =?us-ascii?Q?9NGIqQLRk/jHPFFd2GAgpFvOERLTgzdtyZny/aSmx0zXc4g67IitJKIdo2VI?=
 =?us-ascii?Q?29i+0Ia7sy8sSIoL/8508itwY4fWZVT1ad+cnuYjGQxEr8gdyjCQXUznEseB?=
 =?us-ascii?Q?03P7G+mY4NE01jClB2QKHJaKQ6JQ1WM=3D?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: e8293d34-eb31-427e-3e3c-08da50036ab6
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB7641.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2022 01:48:03.5236 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KhdYhj0bQosYWyFBfewVjwiMYqKSlyBPGCAWUKpHb2kPiC/Ou98ZooixrKcY1SiOkdTU15D33OCEDyIR9WdkOAWQgNv3/V5RxFPbjmgcU1A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR05MB6985
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: tipc_dest_list_len() is not being called anywhere. Clean it
 up. Acked-by: Jon Maloy <jmaloy@redhat.com> Signed-off-by: Hoang Le
 <hoang.h.le@dektech.com.au>
 --- net/tipc/name_table.c | 11 net/tipc/name_table.h | 1 - 2 files changed,
 12 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.123 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.123 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1o215m-0007mY-7c
Subject: [tipc-discussion] [net-next] tipc: cleanup unused function
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

tipc_dest_list_len() is not being called anywhere. Clean it up.

Acked-by: Jon Maloy <jmaloy@redhat.com>
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/name_table.c | 11 -----------
 net/tipc/name_table.h |  1 -
 2 files changed, 12 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 1d8ba233d047..d1180370fdf4 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -1202,14 +1202,3 @@ void tipc_dest_list_purge(struct list_head *l)
 		kfree(dst);
 	}
 }
-
-int tipc_dest_list_len(struct list_head *l)
-{
-	struct tipc_dest *dst;
-	int i = 0;
-
-	list_for_each_entry(dst, l, list) {
-		i++;
-	}
-	return i;
-}
diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
index 259f95e3d99c..3bcd9ef8cee3 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -151,6 +151,5 @@ bool tipc_dest_push(struct list_head *l, u32 node, u32 port);
 bool tipc_dest_pop(struct list_head *l, u32 *node, u32 *port);
 bool tipc_dest_del(struct list_head *l, u32 node, u32 port);
 void tipc_dest_list_purge(struct list_head *l);
-int tipc_dest_list_len(struct list_head *l);
 
 #endif
-- 
2.30.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
