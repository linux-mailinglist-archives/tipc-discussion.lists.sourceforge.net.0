Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A70F3534DAD
	for <lists+tipc-discussion@lfdr.de>; Thu, 26 May 2022 13:02:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nuBGK-0007lJ-MF; Thu, 26 May 2022 11:02:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1nuBGI-0007lC-PV
 for tipc-discussion@lists.sourceforge.net; Thu, 26 May 2022 11:02:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ro2y7/9ByTaMp+/Iaq8sr+Fbne1Fat4k9kvLJSxQMho=; b=UBx+MD57AbCiIM5HxwsdnhCuFw
 0jHf/MzejyeU495VvDOJvallF29aOVEol99JnZrl9h8I3q3JrO4Nfj9HqChM6BtxbecRd2XLK9VXc
 PmUsgCSx77u3iAAF077t/Wr9ZQnturj7tHYYT5jKUpQEEnaLlZ4iiix5yu0FyL26tovs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Ro2y7/9ByTaMp+/Iaq8sr+Fbne1Fat4k9kvLJSxQMho=; b=R
 AojnrPwEO2VZNCgVNmW7sp0zWxyr4KhuelxHtEvf8WegMaefpXw13MzImNTf+OwHmDqgV+Ghnz8H6
 /Uq1GdeFQEeMFogUa/KH2xIs+Mz1iZfIhALBb10X8yykC49qVFA6tOGzaQUezGO+orXfIN8b2/6Mg
 xt9yQtP0mGcDt1aE=;
Received: from mail-am6eur05on2133.outbound.protection.outlook.com
 ([40.107.22.133] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nuBGB-0007kA-SW
 for tipc-discussion@lists.sourceforge.net; Thu, 26 May 2022 11:02:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LiAEZXv8PnItSw/nEDJ1rMKh6EUDXZN0CNchGx1MMxFuOil0puFgikjuv4ptL5QgD3MFm2XeiAo6x0gHGecizl5PbA6sAoRfE5/ozXcCTgwSqJ7xlcbATSMIj2WuXgOuqNlFRV359tkDkYHXj3AzPyg/1+I1EcGroJFWuYU/MB+wu277gPwslC1xqt28dOfJ/3hyqXCsvXlPONUSBD5WCrYz/URbE3vMIuQQ+Ta7i6tLRlZuS8fLF1JFigQkoMmsXX98Rxhkyt/t4GPdo5VdYcu9LrTm7E+sE7dzIQBStugBU2WIOWrqUJFFA7mreIIfr+ewHYXHYuELgKBPKsF0Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ro2y7/9ByTaMp+/Iaq8sr+Fbne1Fat4k9kvLJSxQMho=;
 b=TSUpWAs+DAPI5BqFltJ2NaBnH0DSKYKO6GLfLRiGdkAPZvguxh+N2+n7YU2jPJ+78BgRxByI0GpcXmlY1gTmPyLXkUZdh/rIEmzxfJMXLToxlhETo5Wk7A8OM0DDG290nAeqqb+fDWS15HU/giR05+U9VWaEOoy6kgQeVdLYM35uCR4yMg6WDdCZivthqiz/cq4AhkMJFNRSsK/IHQeU9sV8rRFKeBPuh27VAMXiELEtuV9qYGmo6pMjYjOih5qPcbqQ/z51yQrQBVoZLsynEcjo4Gyp9LSvL7XWn5DuezL1ASUciAcrjg83yPdQR1mNC7JmHoGReTkS1/ka1jy+2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ro2y7/9ByTaMp+/Iaq8sr+Fbne1Fat4k9kvLJSxQMho=;
 b=oUMIVpnziqI/lXnF0w5nQqneIFnTBSC1/kO7Yz67ORDcWPsx2N2GPxcx2LL98n+5JPGswaUc1HlI4tMAreMoD2AoOv/T9x+NrS7lq3QkMJXrpWTwCp2qrs4qs4oaomwdEZKDK7nUrbY/yK5iuDkZ8gzFTt5D2TzwYnf+ilXg+k4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com (2603:10a6:10:21f::6)
 by AM6PR05MB6613.eurprd05.prod.outlook.com (2603:10a6:20b:b0::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Thu, 26 May
 2022 11:02:24 +0000
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::84e0:5f1b:9fe2:34f8]) by DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::84e0:5f1b:9fe2:34f8%2]) with mapi id 15.20.5293.013; Thu, 26 May 2022
 11:02:24 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tung.q.nguyen@dektech.com.au, tipc-discussion@lists.sourceforge.net
Date: Thu, 26 May 2022 18:02:12 +0700
Message-Id: <20220526110212.175177-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: SG2PR06CA0187.apcprd06.prod.outlook.com (2603:1096:4:1::19)
 To DB9PR05MB7641.eurprd05.prod.outlook.com
 (2603:10a6:10:21f::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3d240494-2100-48a6-aa17-08da3f0736e0
X-MS-TrafficTypeDiagnostic: AM6PR05MB6613:EE_
X-Microsoft-Antispam-PRVS: <AM6PR05MB6613CBDA269FC95E95838BE4F1D99@AM6PR05MB6613.eurprd05.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XIKjW0EBXlll1Uo4BlJuBOX6jviVyiArg1W3HwypLi/plVOh2mnx8hBQJgYXKjpxPB0v2CzRlrBfXx0RUfxc51AE/JTAhSij4j9go0evn8uQzotBZDxD6b0TkE6up9R271RhsDqUot8dEqj/kWkzE+Q4iU4POdFUm0a+okaLALmFXoUIE5KsSPbMUmacGMaPEtVU5Q11RexM/YxCFmDtlMRtzbljpd9PEKcQvWHKtOB/KsE88cuxCjPHecqAbSB3SCRrNt8ywvh3ELk7TnUShe9PtPwQvJvtjkKeYhzbW6zs2JjSYnVRMIAXq20cwtJ3cLT+VsA1lBHOTiSIwQm85J06jwtumceod1Ndt6D4V9flm64OgigsUdzwgS47cMdx0vKM/UWSaDemZMXFQDfMqodG1ImTL9MkrkkH15edEs6ugDwSIWc8/rW0P3R9KtEhhnNUgBGXq0jJY/ZmbED5j5nhbXiSd+v7VzOomCXRVOTwoCOcsfIau6lsYKW6UpDFvZhEOBfSlzo1XA0sFZjYvYCTrI9sPvHiG08QtTdH75naatd4k97fQSMkP6llx3hPmOJ2UEYm/1VCnloV4XiTuvhAYVA/mfi0u6eJSHy6jtDmMJuor7iutaRnrvYLfnDCpeJzn+ett/pPNNhNXUdef/Or/M0a7pCvuKn4aW1bZG4p4Ch6iXgjHTTK6xyJfxmM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB7641.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(136003)(346002)(396003)(376002)(39850400004)(366004)(508600001)(6666004)(6486002)(2906002)(5660300002)(8936002)(36756003)(186003)(41300700001)(1076003)(103116003)(83380400001)(6506007)(86362001)(55236004)(316002)(52116002)(66946007)(66476007)(66556008)(8676002)(38350700002)(4326008)(38100700002)(6512007)(26005)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0Ig0ogqdHH0ldwbcDapyxQS+ilsjHrOtIa8JOpxkCK4u65rqg899CPskKA58?=
 =?us-ascii?Q?NMpeDLQGix6ISqpwc2ACY3JoH3G5HCMsd0oDLMpvATEkIZ9b6kblvms9y/Y3?=
 =?us-ascii?Q?GcMtTa3fj5vmOqMdIoi1L0TdaK+EIj31O8BdLZYPkODVJt1iZIc9+tXx/0pi?=
 =?us-ascii?Q?KZ79lTdNPEgyqYNAb1TBvyzWE7voobTAsfSSeWGuaZ/qRdpQHyclZ8lBiuP4?=
 =?us-ascii?Q?+ECWe6tT3zrLd8MTkRdlTBYCWefjl+cAMeD+eLohx2ZMVxBTPOIXMFW7McZt?=
 =?us-ascii?Q?8zRV/NdFwvUJJrFe/0w7NqZWD0ynr+pW3tYPeKYtdrFPwkxe+LWzM+Zj8rpv?=
 =?us-ascii?Q?+Tq7Jd3LZHOcpsLUVNv31bMVUVpwpxd/qGHqZOheQFABNwD5gbzA10d6DNaw?=
 =?us-ascii?Q?rmZxga6+w4M51LYH84qjnKRX17njh/S/QQMHXJqhNBE0JpXZlR/ih0Yc/BJ1?=
 =?us-ascii?Q?X4AAx+eRz43RTTn9ki1pElXIp4aNF4GhVuicDoDFPGtAVJ8mmUWqnQh/FieY?=
 =?us-ascii?Q?q0key3xC37DA/UZPz1tpM22CS1DSTgRCm84EYiu469W/LrbaxW44eZ1TbKmS?=
 =?us-ascii?Q?C4a19wAKFKvqFpTrlrn9GO5SVPS/UTtreqiF9AnLqzrXgl2KesgU7f+IFS+Q?=
 =?us-ascii?Q?fPM7BzPijhHsPUW401Z/nUVgpywKE4OvzYOEOZnjt1VNCN/tdf+BnSpivvYd?=
 =?us-ascii?Q?ucPdebpcHVxpj8YZX9lqKE+npY0BfuBSVWMq18EeyIuuawhajPtGjZALg56R?=
 =?us-ascii?Q?NRngbG+bAzFCoogb+FdOpaDXLe85WFnurOOVSZH3ESXYoSy/zeAvbg1JLCL9?=
 =?us-ascii?Q?9zDN9/ltmOHp/syKJLQnDsikLnf19fU/+x4k75GYwvrNq5Ce0dYtToTBEYph?=
 =?us-ascii?Q?X7cWsy+e3eIibT3Ws9L1wV7wwvoKjxyGeUKh6xMNdGW05putUkNxkdHRgDVx?=
 =?us-ascii?Q?9Q+LwkwPEllbyvBoqmII8cUlswG3RKsXRGQewkHkt+/mf+5Mj+W9QiUix4Hy?=
 =?us-ascii?Q?pub3lHaSvCeuAy4bpJbAm/qyojxDMoOIuYgDswZozE/3trFkFJLTjiyDJrCR?=
 =?us-ascii?Q?nZ1iemUMG9OIPxEIpWIycmksgxKb6BVnUiBiSii/avO339OzFfrEL0KH9IkX?=
 =?us-ascii?Q?spDy8UGytjPHWMlwijk9H6Ld9MtDWdnvt3serzl2+EjkPi9o0v8omk0co8Ms?=
 =?us-ascii?Q?3IbpJJQ5J7Q0O5DT1baPPPcw7Fdpht6sDRkTaprh9efr9FBmqAVyyUk0AdHE?=
 =?us-ascii?Q?Jpl/2lYuFRCIqJyUxZs0Q2eXk8ICQBPB0DmBJa8GMRigvoamQQYgFz5d/KBk?=
 =?us-ascii?Q?i6Gq374QGWXS9sPbRkGD7uZ+JkC/p6Cb2/Xl0nuourWDanjR8gNbOb7qQZwF?=
 =?us-ascii?Q?4C+nThrglzeJIOOYtY1hfB+/UvhNq2li6Sc1QhH2CX8sAX9bfWNmzJcWA7ZD?=
 =?us-ascii?Q?qn1w4kk6FXhVGBnGlwmvR5xJuodtXrD/vH7TD4buwM9B4NeDrBh9RGJVdSJS?=
 =?us-ascii?Q?b9XclxMn/Xju5lPlNYfYLWyT9Pm4Sfctc05Vzf6sXN1kYMUaU6QWB1EcjfRv?=
 =?us-ascii?Q?t3eUdYR0eezkDDhsCh48srV9eoMD+w4PtFdxLcNv2/3uDggWrsE04l1DHYzP?=
 =?us-ascii?Q?9XVDgrdg37uq7K4VkembqXrqgNKzmCTukSH2Z9HD2hpW1mmpq1CDvwINPPnQ?=
 =?us-ascii?Q?KqTZLXuqvln/dsntt9gxaWMKcG62ecRL5KAtaeM6BpXvGmiAUzdy5BJuJOMs?=
 =?us-ascii?Q?YsCgwkDALHsYttB5IUohF73ghFn2oBU=3D?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d240494-2100-48a6-aa17-08da3f0736e0
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB7641.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2022 11:02:24.8578 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nYdsgvVs9AuJQHzzbbJiW+nUZwUMK0KuWSIAC3dpeZV5s3xigCsh8TXQj1cm6Bnha42YCjlKWVVpEYcjzVrXxTDNv4iEZydmHhAxTK4zHXU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB6613
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
 no trust [40.107.22.133 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.133 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nuBGB-0007kA-SW
Subject: [tipc-discussion] [net] tipc: check attribute length for bearer name
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

Reported-by: syzbot+e820fdc8ce362f2dea51@syzkaller.appspotmail.com
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/bearer.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index 6d39ca05f249..0fd7554c7cde 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -258,10 +258,10 @@ static int tipc_enable_bearer(struct net *net, const char *name,
 	char *errstr = "";
 	u32 i;
 
-	if (!bearer_name_validate(name, &b_names)) {
-		errstr = "illegal name";
+	if (strlen(name) > TIPC_MAX_BEARER_NAME ||
+	    !bearer_name_validate(name, &b_names)) {
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
