Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8C2539B32
	for <lists+tipc-discussion@lfdr.de>; Wed,  1 Jun 2022 04:23:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nwE0o-0002OP-Lh; Wed, 01 Jun 2022 02:23:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1nwE0m-0002OJ-RP
 for tipc-discussion@lists.sourceforge.net; Wed, 01 Jun 2022 02:23:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1MV7zhXjLAZejUu+fXaByXEEJzTQFk6yfQpKcEstC0c=; b=SEKNFZdWDd8RQQT7PRJx7MD+2Q
 IcDZaO4FRcpbofMage8Wmc+5QJIdv7R0OZ3TSYy0e1+Ko/Hf0ctzb895vkKRylqitPtoXSXoFP1vE
 RtksOfBNaSHkSXcVvmh1D1H81Zc47qdwY2sxC2ROkqu/RBELXmfqUxiBegH2Mh3DXJcw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1MV7zhXjLAZejUu+fXaByXEEJzTQFk6yfQpKcEstC0c=; b=I
 jSGisQNZJtY+NsMZNsxAI5VdK6bKj4CUOH9RDeZ7ynb0I4JOwpYFy4PDoJYwe+ZqCf8Qo9FP7Z3SK
 e10tPPI4OVdd+fFhbhAQ0ldWxuWnV+sl3qZe/Yb01T1F6Ov54cQ6C3pR6wFQQ4cerDV+SU0oM24CC
 1UKgtzCGS7nrgDoI=;
Received: from mail-eopbgr80107.outbound.protection.outlook.com
 ([40.107.8.107] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nwE0i-00EFcv-4H
 for tipc-discussion@lists.sourceforge.net; Wed, 01 Jun 2022 02:23:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fUQuyXhpJW7kWJE13W07CtscDXe0RZAQnKkIKiMk20Ka8T3FOR4BTRd8lSPok2NeEHPyIMHB0v/JixMlyp+diaMuZ/85IfEiYNK7oi60UwjBJs8qAwp8jrG9CU8yOljhBNETd/YQFPCIMmD7U8zhJaVsVVKXnjB6QWyYMUYln90yIlW5ZiAUpgL5/qL+a3awnZjExuCoyh20WGngFM9E+Y17P8FMe408yyE4ZydYAWEjTOg1dcm52f92vJHjWVTXMb9YsDg2FJcWi5yiR6yPXCDuyKpWy/MwaMMM2MyC0guE9WYRn72AIwYCnvP5gFOYirmMw/b94njxLqIG7hCrMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1MV7zhXjLAZejUu+fXaByXEEJzTQFk6yfQpKcEstC0c=;
 b=QnAga8AspuyBrp/Z12PXY0IIVnMRjdFjJsuxHFSNkNAZd4i+Oe7+5BaMKES56Zl6xd5W/cWseu2JiDTlNkybm3d0cscFoyDbxT+LDdo8Bb1PL6WjUJcyqo1IvFE9FCVoUP2HgGY+8nEink8tkQJfka+3+/+/kk8WYdzV4A4Wg1bwIdenrKYkQ9XESpBkqzNP7NXNQBzniB2qM93cxQzAFbGdqKSd+xpDdfcifSP7mtNmZLT/YsdqPWB9LdTXYsQ+w9BYBdQLBukTMFAwW/+iAIB6zUCtDxJuJiEmiG+77subOj1wjgQFyKUIyIUGyxyPKAnUEF8hOwmYm8Ts3D5Q/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1MV7zhXjLAZejUu+fXaByXEEJzTQFk6yfQpKcEstC0c=;
 b=hGFG66YpF4CJ/cWFABTCpVxxJDFCCDKABmSt20Ybu8LooQil2HjQla5UE0hKP0wJJETA/7m9S4e253k8tnPU23drOO5noWs2uEopNAY96S0xKdvFjx2FdbR7uNhjmNRKKnQOThNJLEJA4szt2EmFxWRDzWfhBn41MYL5MtTh/kw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com (2603:10a6:10:21f::6)
 by DB9PR05MB8059.eurprd05.prod.outlook.com (2603:10a6:10:257::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.13; Wed, 1 Jun
 2022 01:49:07 +0000
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::84e0:5f1b:9fe2:34f8]) by DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::84e0:5f1b:9fe2:34f8%2]) with mapi id 15.20.5314.013; Wed, 1 Jun 2022
 01:49:07 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tung.q.nguyen@dektech.com.au, kuba@kernel.org, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Wed,  1 Jun 2022 08:48:53 +0700
Message-Id: <20220601014853.4904-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: SG2PR02CA0067.apcprd02.prod.outlook.com
 (2603:1096:4:54::31) To DB9PR05MB7641.eurprd05.prod.outlook.com
 (2603:10a6:10:21f::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7935cb79-e19c-4a6b-5419-08da4370e9e7
X-MS-TrafficTypeDiagnostic: DB9PR05MB8059:EE_
X-Microsoft-Antispam-PRVS: <DB9PR05MB8059B7450F6D304373AC6EE3F1DF9@DB9PR05MB8059.eurprd05.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2CJtF2X4bb0jXT99ZtkAmnzpislKwB19QA0kd47ICbU1xRUBjFvqMtG7usnjiE63HlkHxnl0zV796bQOZfZgPGlfWQW+A6PvYXFjVrbzlybTLfHesQzi+a1CDe0yMTiHNGWJzGfX8xMM8ji7olfiVVbx0oZ8FinyHLoGnQaTtyfZsnnWE+mdP7dPzNKCEoFqLHjlZPU1OpSKRDFNhn5r8hfdnt/QTliHEKQUGgk+JPY7p2M+1Vlpe3ROoHueTjxFXCYs2b+P4LuLkJ7n90Elq/2b1adhqUeaN2ZUKS2BYNVEA5PkO3FNH9u4l5MKBfZXcj5B4x9EV38Wg8o220g9+YHKkQkjLnp5ChiprCLN6hOY2ZVC4z/k47XtT+8jxxkgfexVR/XgkJlTM6y+dIrmHIdP86V06WC6lf2nIQDZDGhdGN36Wps/jvH14F8WIvCtwqLhOFeFfG6DW5Qc4SarqMEyVVVfbXeg1FcV3kF5fPu/RE6enJzTZuUQagY8UeXgzWMhSV6uhLUhV75TA3PMkaVsQUTk5B5Km7qw0LUrOx+hfWcz2PRET/K7kpZTe4IEaeoxL96yte3Frsrjn2GJJRXteFdhuYG6v63+njFpoMy6VEIuW4ZS03fkryxZs2yiTUArSeJzuKWTAqpUoK+lhNAhn65bbEPHAe4GMgGDONxfB1LCJ8xOR8fyWqD/jN0n
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB7641.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(136003)(376002)(39850400004)(346002)(396003)(366004)(38100700002)(186003)(103116003)(66946007)(66476007)(66556008)(36756003)(2616005)(8936002)(8676002)(5660300002)(38350700002)(41300700001)(1076003)(26005)(6506007)(83380400001)(508600001)(55236004)(52116002)(6512007)(86362001)(6666004)(6486002)(2906002)(4326008)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OqDxQdvFK7UcQYd8OL94DDYWN//O0UBrzjOMSYX0DC7KD02V9Ok1zZJBne5/?=
 =?us-ascii?Q?FKIslKQb9XiU248vHxM0JpEaZ3KgSsjmS3cWYrhEp2bQYcvpGnEE9WoLKWxS?=
 =?us-ascii?Q?hbkmxTzblG8hMMKm+sFkklYi1zT8Y/y5qW31e2ggNA+f9XWzk0EGnpMKAKZT?=
 =?us-ascii?Q?BYczonPRYygN2JLZ4iPfH4QkAUeN/EJtIyusb5EiG6z6R+JKBYOXRD+GgaTH?=
 =?us-ascii?Q?37dHemymuVOIBMEykMXlByY4IQuECGJnv+qk/pGSI/vODtg6eIXk5xix6zBr?=
 =?us-ascii?Q?/VZZq7gU9cYbXfRnB+A9+bXuWgudevn2EWeLxKwmAJYGlrmsY3fqSkwA/uQD?=
 =?us-ascii?Q?V7eTaZe5SqlDIb8KMfmOZXZOnwTXm9HkaJA++EjwZyq8GSKPoV3qtx0AkZXQ?=
 =?us-ascii?Q?xVjXOnrKJPduWu7DnJ7ISLdMneRSUuxKjzz3rtzPn8ZckpOMtwyEHPYboIlG?=
 =?us-ascii?Q?FQa0tnZAiScxaCDy88wtq2iDIig0NY1cJOjU72iyhxmsXsPG7ozjujU4NJiX?=
 =?us-ascii?Q?TS+KPsK8kQdq+s7lIdLn8YCZv0NuxCIHkv1cYHpz/TpluTGGlQ1hEsmKm46D?=
 =?us-ascii?Q?j5F0FOfwNjBM9tophxwHHFkpr6BfvajZr9hF2LK0o542CplLJxkPjrDYiO2b?=
 =?us-ascii?Q?S9o47pJK3MzwZl3t3fgS8Zo5IDEZW8myXjJT+6w6GUf2HeQ3uxs30QIuG6Z7?=
 =?us-ascii?Q?I8KH+mFXtb0KU15X0BGh/slVy2RIiQWoO44k81ZBpIUkhKlfT9wdTN7b4/CO?=
 =?us-ascii?Q?76kgDmfjrdqTIw/6fAX8r3/UDXB9EAibTr1Hb/USYB3jD4/sCzEpL/uUR8pb?=
 =?us-ascii?Q?sdU0vu/OSAaW1o+g5zE3XCSxvmgnborcaAen+X2o/p3Nq7LyC6Mezew+F6oT?=
 =?us-ascii?Q?84RQP4mvcVtKsrHvfJHDp0EY7oUxp1q8RG0csRI0CG23xnT5J4jYXpZLncb2?=
 =?us-ascii?Q?BmkqHO9P1ggGXPUbEsshYgJ8VYHcCBiMc2ADzR1PdNH8JFsjnWxnJlBugj6p?=
 =?us-ascii?Q?fNNTn5VFhIiWJQtxJXczkA9n6NReubrjOHodF3A4C7E8SNuGoOm4LuXzLUD0?=
 =?us-ascii?Q?Q1BEuAkLW3gNTDqmWgk5TFEAWCDB7vmzKye8e11law3tRhHbjtAW8n0HOF4i?=
 =?us-ascii?Q?SJgVT7Tgk5jol7EwTp6NtA/9lvZrqhjsg4Rh9LTgmqfHfpzRNdXXuVckFkqI?=
 =?us-ascii?Q?CAi6g+YdfrvBsLe92LAQnp4gZHen5+Fb/3wR4y3vNTRdUExd6dFRnoyxm8DP?=
 =?us-ascii?Q?6m2GFv091t0YPVpDlyWah7K17wKf2Zo3SkXMtMckj6ScPblFKejKJ6vlZ7C2?=
 =?us-ascii?Q?egttNictYopm5xbGknbVDqpCGXWBz3BuAcoLjMrWvAHrT1nSIEi+sZdkB3Ne?=
 =?us-ascii?Q?OUlZCSo4GgTX6cuFKU48dvMFEIUcLwqvvIer0APQp91x9Kt/e9W0PJzohF1g?=
 =?us-ascii?Q?nAzCBHHViKjd8WlxAqppUunLrNzmcWZdXLWfJINYq8fgVISALC/irRkR84SZ?=
 =?us-ascii?Q?7qgSZk3Ajyz69QqXZBykvi4nuBzkkk4aelyOQHR/sQVn43jjbGsREXrh/SUv?=
 =?us-ascii?Q?QWa41BvYAAQaZXjO1wsdEaa32b3E0nRAd/lttlaYrV9ozmlzpGeBLQc8MOHc?=
 =?us-ascii?Q?+Nv9H1ZtSkGbwuPmYnUQwzZL6qctwmz4G7ayEyp62Z1tNLag+Nb36TVFmBFZ?=
 =?us-ascii?Q?K5utUvyfg29hFVG0/M/h3UbVYm9JW9ukRne/bFmW2fspPAniUZqZb/xWOxDO?=
 =?us-ascii?Q?vUHjuYFk0/5AzVUBBpu+XDikNjLgA7g=3D?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 7935cb79-e19c-4a6b-5419-08da4370e9e7
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB7641.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2022 01:49:07.0057 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FQoRA6zoN3He2VK0e2JmKm83SbuXEen9Oa3djqfr4EU7MnWgg2CCdvrCvjZCfBz2MdAceB2tyaPNtr2VGwPdJ71z/a/7QMRfjxuzIaEAMw0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR05MB8059
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 no trust [40.107.8.107 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.107 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nwE0i-00EFcv-4H
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
Acked-by: Jon Maloy <jmaloy@redhat.com>
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
