Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D664B3D0B93
	for <lists+tipc-discussion@lfdr.de>; Wed, 21 Jul 2021 11:48:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m68pb-0008Mc-IK; Wed, 21 Jul 2021 09:47:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1m68pa-0008MF-5s
 for tipc-discussion@lists.sourceforge.net; Wed, 21 Jul 2021 09:47:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h5e/qXMU1sY/EAPG84Rv1fq7tMjS4V+uRD5fFtFsGAA=; b=Gjnc56ua9/eovGoadS36gqev+6
 5+X3F6x791Mn4rtM4qZtACphI9hqcdPKu9QXSkBV2jHDG8J/rLeTFzmWcDCwvtfkOXqRsYpjg3aMv
 BQxKLGqcHfBvwt+/tQux3kGxH3jycXSmLXgJKcB48VhCLRJDlU1plIKwPSy/g7mA1prY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=h5e/qXMU1sY/EAPG84Rv1fq7tMjS4V+uRD5fFtFsGAA=; b=T
 +L8cN98k5HsjwYU4Luj9Ofmxg3OxKJAAekSIxbfD9oxmW+u2y+TrKfs6I1c4ot9LQYf26rhbBEwwE
 jZT/YwXqOxsdfr2kYYDsWRzqEUN7cgmdjyyMS5fkF46hkW6TH3egk9oeEp1zLo88osnRU/FHWUDNU
 9kcBRqbim31hfe40=;
Received: from mail-am6eur05on2113.outbound.protection.outlook.com
 ([40.107.22.113] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m68pS-00FXoi-O2
 for tipc-discussion@lists.sourceforge.net; Wed, 21 Jul 2021 09:47:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uf9g7QCQX9UXia1a+Sl/A4esPW5QGVdm/jY+5eu4/dcNSmIGevIqaAGZyAAqk9x4UFXDMbXB5zuIPUmcaz8FM9NkDwvkn90H+IsU0NK6tuSiY0ZZEpqTgBvtXOP4xU1vXEud6ZcEjBDcvoiOOg4mfrFE4FLeGZaCmtCtM0PkdrK9pHK+ZZB4fgvQKc2yM/SWgEz+BSxwe+8Cm6fQabpOkMn+perVzEPayfEJ9AvczNCA3YPxhZ0HBQ/apKJcuUdLito/FM+105Cr+DibBNx+GLyAh6AQOupE2r0ppBJ9cYCsEntJRRJFmKCLLCV1lxg00Ni9zpEU1T56p027sgcyJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h5e/qXMU1sY/EAPG84Rv1fq7tMjS4V+uRD5fFtFsGAA=;
 b=FdrZJrnsR33IMyce5VrA+PPp7XzplGB0W/K+NXwOVZPHZSOAovN4ZXMp3s1/SEAEKVTWLfbbQGslvK/n34JtL8oxbk468FXzWqpsd2auVphAhlykBoLoWqtneAZdj8y2lPSpdJPxdpc0BDcokB+Gep4o5V1vkI+5nrodHyiCBgqH/RUDMnkVQsa3aoHbyzB80ATR2pZsW82y+KaEAicy+Ms6v6edBH8HNEU0ZX256F6dQ/ZMbAitg6dLCUQ68V+5Rq0ZRyoncknWFxz8evrv4WCZmzi5lbov0srKn1361Af3pWDfBBFTTGZHZzUiybpwTOwK8IcYSB0fIone+/0H3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h5e/qXMU1sY/EAPG84Rv1fq7tMjS4V+uRD5fFtFsGAA=;
 b=fodB4J1D1Z6nlRjGeraSjWXPG31w8V3clx5KreAHHcW9pIdXLiPn+L1jdwG9kZY+r/KrzEfeKwUcNqJBAUARhsdPfkxnYFCI/chX+T7UO4D+plqQPYtpq1zlyTHK33Gs/2cqLrkUc7VYarMnPUDXhdr2BIAn7DV8OzIIe3Cy3h8=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com (2603:10a6:800:1b0::18)
 by VI1PR05MB6864.eurprd05.prod.outlook.com (2603:10a6:800:18d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.25; Wed, 21 Jul
 2021 09:13:26 +0000
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::10c3:7a07:9dde:584]) by VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::10c3:7a07:9dde:584%4]) with mapi id 15.20.4331.034; Wed, 21 Jul 2021
 09:13:26 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Wed, 21 Jul 2021 16:13:12 +0700
Message-Id: <20210721091313.395334-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: SG2PR01CA0091.apcprd01.prod.exchangelabs.com
 (2603:1096:3:15::17) To VE1PR05MB7327.eurprd05.prod.outlook.com
 (2603:10a6:800:1b0::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (171.252.155.201) by
 SG2PR01CA0091.apcprd01.prod.exchangelabs.com (2603:1096:3:15::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21 via Frontend
 Transport; Wed, 21 Jul 2021 09:13:24 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 34bea623-7315-42f3-cf73-08d94c27cc29
X-MS-TrafficTypeDiagnostic: VI1PR05MB6864:
X-Microsoft-Antispam-PRVS: <VI1PR05MB6864CDD9677AA202DA77ABB4F1E39@VI1PR05MB6864.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t6/iMVcL++8INscNh6SmK3bdBwx13zywnAmysbjVaWPkuvGQvSUuqLVIKEAeTouAQPqn2/QVIdbf5yEZgHA94taC2DBfylUBfR8whTf3xIMXjQnQxjjgBDh+JSHFnrg3Fr8ov4kO7l3ifG/3/YAo62Lk1X221Zma1XF7z2N2zxR0hhYJklYoVFC/gAfwGlvzKP0ODBu7D/R4BQiR47T82wrmtpi3afIabx1xrVdnu+WdEXgUtDUsc+GiLDqlO13oGaDIVFONY9WnzBzPsRFjo9VidU8IiUDqiXUrA03Jje0oz+lIq8jeFYd4Guas0vgjA2EyTwODn/wh4fZeEb55SrFgih3ei4kn3IPLtrfQEtTINxQkI+5Vf49oyDgbm0KSGHRGczoUnRU4zlPpnouQUbBnY9j06zM8+CYdDUkNp53vfHTcFp4cnKc2JWaqaKPA4fDgjlwBlG5QrQvwGjl2OML+bzJ81ybVrp5gigJZ14o72fdaGgYJS7GJatm3OHr0pvNcSvlRTgppM4jHa2L475SUg3Qrvhv//0cEYvof6cKg4Z/HnZzxjB7r67MiGrW5uDMkHsW/AQ2EkRjZqebsPMjMRqfYfSAfXq2Vtop4RxmfjPu2jxGsqxbEjEE9lps3TLicK5d17BlOd1Y8ZKGJTFNXzim3is+R5f76e4BCOaWEQee1ZmfwvYgFMRzUSq9u
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR05MB7327.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(6666004)(5660300002)(55016002)(2906002)(8676002)(36756003)(1076003)(38350700002)(38100700002)(956004)(66476007)(2616005)(66556008)(66946007)(316002)(86362001)(26005)(83380400001)(7696005)(52116002)(186003)(55236004)(508600001)(103116003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vePPSF8F1QyJr5xm6ybz5M03Am9vOwAA7Ms2p0LFYJeIqAVjlBcMyQTP5eab?=
 =?us-ascii?Q?V4xM0rdclRGMjAfkQUVZAA+bETvD+DMybw0UjncRjcFlScyEBCL5ZK8ijXc3?=
 =?us-ascii?Q?3D+M5qZ925WqtZSLOi1+TxLbIudOBYN2skxN+oKMjKnYYCFTuJbaVzNa7n3x?=
 =?us-ascii?Q?39/JVWGIkPH+tUlLRwxcb43RHjI5SuMghawON0TS2s7tuwqqMynRt+kgWTpo?=
 =?us-ascii?Q?655EhOk75dB1OJRjVzFu8GzMoRagiPW7ZF4qcT7gZQKkLFwhss/Qd0Y8Cc2b?=
 =?us-ascii?Q?T870ggBkDN8FUkJB746TUOfa5QYkfZpff7m6yBXQm3T9jICx19NIcDtnHAN3?=
 =?us-ascii?Q?JM/BI0CQKPuRYbToDh8InF0G016yHUEJFf8AIiAaWykTzbFW+UsmFD2AUITH?=
 =?us-ascii?Q?TH/rkZXent9hxgfcrjM92Df+aaWu6QMMvEAhtJm0ZejZUDvfuQuuMhf7TRas?=
 =?us-ascii?Q?T7VvsQx4Kd88nsHrkR/GIAglxUSe4hfvl8VVWXQdBivVC4g8yzQFOg36MMlC?=
 =?us-ascii?Q?Ov5UpjxtlUFPGHbKLYO/f4l+IXSLT6csLQpYq36v6zFcOmRSJaH7IOdWAq3F?=
 =?us-ascii?Q?P23tjdyB3pqJqG1a0LesuWiK6aRTCFfJciuyo6Tbfs60uPnBSq07BLTNsMGX?=
 =?us-ascii?Q?hX7Icv0zU7t9X5q/z9/do9/2aKhwWQKkcdbt8dhM76BwgDXa5xRMrw11fMbw?=
 =?us-ascii?Q?JvnD7L9Tznin9EO9EFvd8LlbWWq9kn8+Jw8LQWNJmjMAWCBT2CQPjGeczAnm?=
 =?us-ascii?Q?vW/KD30DMCOePM3V6u93zFuTUB4sGydgPsOkueQSSuGjXV6F/etRxP73k+Se?=
 =?us-ascii?Q?AAQMocgExc8UgQuldoLZph7BMXXpxVzrhTdFyOEhwjyG7NcCIsrKJ2hSgnSM?=
 =?us-ascii?Q?TsL0rPASyG5hAZuFYWQhwTu7nSUxNaA1m1PcY6S+c5SVdUEeKUbgTSQgsgiR?=
 =?us-ascii?Q?ujdM/+izYUhzCNyIdYLSv7+N+1qcI+EFi8e+I7U6fLyEs72GckiQAkrM8tuo?=
 =?us-ascii?Q?ByYVCq/xgY0IR8Ex0Q1PSO33lo3wdBrGCcEhMm8RtmxHf0WicZPnH4C+9Jkg?=
 =?us-ascii?Q?Uoqq8fnlpHtGqcN+TNeum5rqeaSuN5GnoKSYlhWMJBeSh2GQsneqHN2pib/t?=
 =?us-ascii?Q?CXxn0Py3XglPho5/lb+illGtEygbqS56SyHPHqwIlqOAOocE22SZudIJqHG0?=
 =?us-ascii?Q?udXH9q+/oc3Rf10VYHCLC4JofK8GRM9aUoxoaupe/c2m4WAf6oyS/DHts3TK?=
 =?us-ascii?Q?AwTyYwl8GX35FmH3VeAGSlh29GIrX+al4AIxodtQpKeKi02XC0VcX+8yp9ru?=
 =?us-ascii?Q?YeTVOMbXrXClICJ6BXpCW5ey?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 34bea623-7315-42f3-cf73-08d94c27cc29
X-MS-Exchange-CrossTenant-AuthSource: VE1PR05MB7327.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2021 09:13:26.5878 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rku5Jk7fp+WtSfvjhKTfnuLylrodub3oIzSMwPRBY6CQ2KNJDV5kRkIhVL6WM0hjXbJNE1LffuCPfNlGeECYfGXGxLXGqFX9FZRXj31cfA0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6864
X-Spam-Score: 3.5 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [171.252.155.201 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.22.113 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.113 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1m68pS-00FXoi-O2
Subject: [tipc-discussion] [net] tipc: fix sleeping in tipc accept routine
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

The release_sock() is blocking function, it would change the state
after sleeping. In order to evaluate the stated condition outside
the socket lock context, switch to use wait_woken() instead.

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/socket.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 9b0b311c7ec1..2c71828b7e5c 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -2664,7 +2664,7 @@ static int tipc_listen(struct socket *sock, int len)
 static int tipc_wait_for_accept(struct socket *sock, long timeo)
 {
 	struct sock *sk = sock->sk;
-	DEFINE_WAIT(wait);
+	DEFINE_WAIT_FUNC(wait, woken_wake_function);
 	int err;
 
 	/* True wake-one mechanism for incoming connections: only
@@ -2673,12 +2673,12 @@ static int tipc_wait_for_accept(struct socket *sock, long timeo)
 	 * anymore, the common case will execute the loop only once.
 	*/
 	for (;;) {
-		prepare_to_wait_exclusive(sk_sleep(sk), &wait,
-					  TASK_INTERRUPTIBLE);
 		if (timeo && skb_queue_empty(&sk->sk_receive_queue)) {
+			add_wait_queue(sk_sleep(sk), &wait);
 			release_sock(sk);
-			timeo = schedule_timeout(timeo);
+			timeo = wait_woken(&wait, TASK_INTERRUPTIBLE, timeo);
 			lock_sock(sk);
+			remove_wait_queue(sk_sleep(sk), &wait);
 		}
 		err = 0;
 		if (!skb_queue_empty(&sk->sk_receive_queue))
@@ -2690,7 +2690,6 @@ static int tipc_wait_for_accept(struct socket *sock, long timeo)
 		if (signal_pending(current))
 			break;
 	}
-	finish_wait(sk_sleep(sk), &wait);
 	return err;
 }
 
-- 
2.30.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
