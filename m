Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F370F54E5D2
	for <lists+tipc-discussion@lfdr.de>; Thu, 16 Jun 2022 17:16:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1o1rEJ-0000GY-5u; Thu, 16 Jun 2022 15:16:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1o1rEH-0000GS-P0
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Jun 2022 15:16:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+IBLS+iKgI/rybRk1T7CetiuuQ5OBBepiF0SUGRDq/k=; b=Wr5BSZ4Ou1dtLwNcNBA9Tw9EgX
 y8q/a6AB1DezKAPI7pbrVDbstUqVi/Fprufotpu3RLMYWaCzqvVjkkRpMJp18SX8RVp8ldq8ijIBA
 h2+ITlCR/8GfGWokB40XUYhjXiyfjKiNWOn4SpTcEDVrRFw39NU5MBXPYU+QyI/V8jxY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+IBLS+iKgI/rybRk1T7CetiuuQ5OBBepiF0SUGRDq/k=; b=L
 ASlReamFUQTu5STHBJFw23YlIzYxX+1AyCCtzC4dy7fhXMxyIxLcBi2saQD4NfL4NNpBKQXHrm3aJ
 amOPr1Q1tfjqvM47jrFJ+sgmuZZPzXIZYIq7ffOLUv6n0tvjCuO3GD+EgIhNK7BnC8YNnrjEVCN8M
 NlvUqExgIaWSKMj8=;
Received: from mail-eopbgr70121.outbound.protection.outlook.com
 ([40.107.7.121] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1rEC-004FzQ-R3
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Jun 2022 15:16:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jz1gZzowzIeBKUW1OiKtxDYEzjSxSr4jQ08z/WI6VIaPC/g6fdDI+7b3EFcwKs506wuLRZdgKQrKcy3hARn6v4jgjou5gtNZpsQWu4Heh5AqDEeUBize/3pAEPgun8Yk9jAXE5gvxSTXeWHBWYFaYihqFwlGWxIgAUKy57PAw9oS/Q6YdtgLbk98QtRlAjh7TANFVVpI1ShMmixPsUDBvBpeMAzhx75jCcXl6gKJP9CB4dvLTJ7qckbM+epMb7yyRELnZ7j99Fj1NlNiKy6ldp0VuKdwSYS9KaiU1swNCfwZUos7krd+DCRvfAF2bht5fi7i23XwCRGHrEWJHKjuwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+IBLS+iKgI/rybRk1T7CetiuuQ5OBBepiF0SUGRDq/k=;
 b=A1qsKMSnI1z/clAHbAUaSFS+k3d1XPuJSK2aqIDTQMnzKK+TXFnS49Rs+7YShJMyFAXQpQpiFDDX6yJC09bugCu4NzcZXQ4SBJQQVpFAU9zGnPhHgUxCvBeqTOwrG7cn62wAoRCs8f3qW+AIDuPM5bZoBVTG+gVb1MraQYTvXbz28Y6cftX3alS13UgLon4ldZyI1JhYhEBYLduL92A8o9XvdP5B9SDTzWmMkoDz7ilyF7WN74yWAzmqO74TDzcrFmgN1R/v2RNh+xDMx10yugI4n11ST92GmKH6iDBwMwA0zCb4fzYSPbnLJ1j92VCgu3EyLI9xq25eaOKbJfmW4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+IBLS+iKgI/rybRk1T7CetiuuQ5OBBepiF0SUGRDq/k=;
 b=oUg1opB36P0DbMR6MEvr/jcMunpXXAgxakYSKcb5n7LnfUqUker/8WarOMYduPi0fX2IpjsXL6OcbG6hPSxe7uaeMu356SxHA98H/AfLNZ5qaqeHeYYy1diJr1yi2JlKxjgz7IPCt6TPKStO4lxcC9K8Sw7opzBRG4O0HSRCcnY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com (2603:10a6:10:21f::6)
 by DB7PR05MB5034.eurprd05.prod.outlook.com (2603:10a6:10:16::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.15; Thu, 16 Jun
 2022 15:16:03 +0000
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::f429:2b60:9077:6ba8]) by DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::f429:2b60:9077:6ba8%5]) with mapi id 15.20.5353.015; Thu, 16 Jun 2022
 15:16:03 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tung.q.nguyen@dektech.com.au, kuba@kernel.org, pabeni@redhat.com,
 edumazet@google.com, tipc-discussion@lists.sourceforge.net
Date: Thu, 16 Jun 2022 22:01:29 +0700
Message-Id: <20220616150129.9187-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: SI2PR02CA0029.apcprd02.prod.outlook.com
 (2603:1096:4:195::6) To DB9PR05MB7641.eurprd05.prod.outlook.com
 (2603:10a6:10:21f::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8d9ccc19-d1de-4753-de0d-08da4fab2085
X-MS-TrafficTypeDiagnostic: DB7PR05MB5034:EE_
X-Microsoft-Antispam-PRVS: <DB7PR05MB5034085BE096F5B631EE13D8F1AC9@DB7PR05MB5034.eurprd05.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Yr6fpIdCKlFWLpneS3yvJkGNnKruwdXQ1WpYU9Rum4TVTEPELBWbeCLprATL2y/mzliI1udHtCAhHfk+Z0pQdPQNKaAaaFpl+2JIfVJk2XR4VjoTGauceYctVk+s5C8oZOYDHi+FUHvUNGMpnZTH7l+7YvciGdUwrT73q3wj1SstvCNO2ilIsTuw/fomlxIMXJ9SJr+l3UyBRQr50d27ms9/Ye16IuhqkXTw/lJSu0Wu0QqBNALaZ87LAJZjXHYmS9Lz4v07RjPgpMCoVQjS8lAVHYfQp2CJXfwYEVMu7tIbj9INGPyzxwXDueonSltMsNPbsRS/5mABBZm5WTiN5+bp47ftdheqJ8WOHy50GvMLl1NL6QDOZTfCyQ7UBcAHVrTj1nxRfXrd2QHHI+5FaLjtVHWqRhxq/IQJ652Xk/ROkDOUyTlr1Xb9RfcSEJ30cm+JFHQ9N5mc06hR8ILKTFdZPCTepRZw8Zmm804CnU7Ze8fymiLTezx+qwuQn2ZPBeRD5ACeuF2XZaKEEnvCfQW5s2KhjvNnKtIMLch/4v6ZSQJWEuFgRT688VGfqjsFgAQJw7bnxhFxJSBkFg/lVOA+pBBFN7yS5Ub76hSv4KVxDwaxkO5r4vPTEMlKF2h/1cRijQbJk5iRgjHA4xOtnCuoXW4pspUqkZG4mPz2pSk8s+QdBXXXP5Q6yvSMjzhRQcQrNsnDouFijmm0AUS83Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB7641.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39840400004)(136003)(346002)(396003)(366004)(66556008)(66946007)(83380400001)(8676002)(86362001)(66476007)(6486002)(508600001)(186003)(316002)(55236004)(52116002)(38350700002)(6666004)(26005)(6506007)(38100700002)(8936002)(103116003)(6512007)(2906002)(36756003)(41300700001)(5660300002)(1076003)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vtNZv+wj0o2FwcPFkK3W/tjTWJ3Knr5+S0kPqOxfpMGSHgWsUPB+IeWhHYCg?=
 =?us-ascii?Q?Yj+QKHVh6KoMfyAorx9gSagf0TNxWkuU9hvmgcbnmIExiIQxmOZ3Bp8SCx58?=
 =?us-ascii?Q?M/WkPzkg5Qh90/nUReQgPd8D3N7yTfLZbIIYUEWvh5juEAH+y5xjIr4lbFY1?=
 =?us-ascii?Q?dsD3/ln6qtw83NbDrPkVExb6uHVRr1tIpfvYZxioFdmODYxkVqhnZ0UsVCK+?=
 =?us-ascii?Q?M61Md26kxUAlHjqt5Ci/ZSr8a+NkPGOMv96yFwIDkTogXB4grYy9PlmoUFbX?=
 =?us-ascii?Q?nm6sMJmYiCrYq+uLtMqIP7XOnD8hedGP5JaY+4jnLaudxSpAso1n2zdfyu6S?=
 =?us-ascii?Q?h6jb1ljeBv6FyDb+XNh8AcDsQv5Ntc2ccRM/zgpYywueXpQrzX67nN33lK11?=
 =?us-ascii?Q?rWBzNQn5+l6RMcJ+IFtM6ydAZB63jVqltyiwIjfyhdyAnyE8jKU28XnhyPxS?=
 =?us-ascii?Q?wW3YhAdM2XARtzmhvEZOX//6hdqWiLeOUdjpP2tOobAPgOCRFH5SU7yLqphP?=
 =?us-ascii?Q?B3B6071999pzP18d78YZhu6+vBbYQ+YS32bkDkzlhJeBnbgQzAEQ9cYDKcWI?=
 =?us-ascii?Q?iupt1TSP8rm6WvUMOQE3cjBDlYb/SrU9Vcc7pUHBhBDn1ET+qeqvgCj6kY46?=
 =?us-ascii?Q?hiqVuX3Jq6TolfeEeJysAqOb5NBShyEFwNuVJgAS2yjUAOE57M+nzAy/deqB?=
 =?us-ascii?Q?KfVqrf7a8ibGG32j37J4rMrhPdrQeYQ+SA1Ao84lMZJt/HSS/mGvtHdGy3In?=
 =?us-ascii?Q?ZLIkzBF8mPQNAPqHj/ZyjoHrH0DbdO5VB7TAIjkjwRboYJJ/lnWS0+LJbIVT?=
 =?us-ascii?Q?5Y1KfpCo429HLzVDpm/7qK2ZX7zGOQAotgdYinvxhk1lN3c6+A3mFMHs+WaL?=
 =?us-ascii?Q?GnS16GRwKws/8RKKHJfMnRqA2OAAaH3cw5souY/OigdMt54kuZ+L+j3LBBPq?=
 =?us-ascii?Q?x7l6c5d8wMmJSmQrbIVRJ49LhbGwbDZu9cjCxtOiK3AftgCs4QcotyyZGga0?=
 =?us-ascii?Q?Qr7hl90stw893aeyItaAuqMH0fVxHfHslBxciqr4XHVgYqhCuftZVGi/CH47?=
 =?us-ascii?Q?oT/vrWanEfBdfG5GbSNnJ6YOHU9h0U6gTjfMFAoGzx/wyLGB+Ejz1WQW/eKA?=
 =?us-ascii?Q?nmZn56uhvwhQUvbBPatesZmE3V5uLS4B/R2F3/uELeaW86yXOAqM1ZtjQ7H9?=
 =?us-ascii?Q?kdQyNWsH3UeYFLiVLFsAVD3WFMEj8rmArxrZ8m5YCsR8nkOlzaobxDrdWUCD?=
 =?us-ascii?Q?dRQXnzen7wmomA0N5boabNsqF+6/G7vOwUCJ3WNhO/gfVGfB6eoWH5/DXMN6?=
 =?us-ascii?Q?WNOvvzXH1KVgK5mWzgOfGY6pLSG08+kH+vSgCNFXJlkFe1EilLvwL80jHriD?=
 =?us-ascii?Q?hZO5dbQbSxTh1dl4Ftr8aqZ/WidIl61g+T5xLa6/qCUc7vdhGIqLClTlJNFt?=
 =?us-ascii?Q?XmJafAenytz2i3nwu5DFtIwnk/tS+EBnefZRbeJp2+QIFz+jIOjalD7ZZNBb?=
 =?us-ascii?Q?6bWz3szPZcVI7ursSlvvI7d4Tfk8qVAoH+So00B7+lDo5HDfy78q/ufWwKFk?=
 =?us-ascii?Q?qSrD+qMkk++MSB//mSaYK2Nr5mrcWWs7VkiLGzmw7U8cvYRB+i9OS7oCFAT5?=
 =?us-ascii?Q?MTDQJhT3IsUr2lzz02vfgmv4n+5FIQU7MB8N2GO4xkiwfY3GMDSOKZW5Mkk1?=
 =?us-ascii?Q?Wm7/vUIO3On9TS1lnuzTLNpHNEIBhKgmvN5p/O04bN47GjpHVdnyrccHNpY4?=
 =?us-ascii?Q?aaaOlFmSOXlJHVTYeLuDea9plRah2DE=3D?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d9ccc19-d1de-4753-de0d-08da4fab2085
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB7641.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2022 15:16:03.4847 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4SHnh7cajuSOHJnWNguHun64leNZZaSY+oZnku47HCcjIgXyfPlNyaBURugyUbHnVgRrwar4KcajQ9AzQLmGIoCe8ETlm9CFnc/VCty/YaM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR05MB5034
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.121 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.121 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1o1rEC-004FzQ-R3
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
