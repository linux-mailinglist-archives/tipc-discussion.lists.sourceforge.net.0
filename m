Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F63B34DE80
	for <lists+tipc-discussion@lfdr.de>; Tue, 30 Mar 2021 04:33:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lR4Bd-0005n7-Qh; Tue, 30 Mar 2021 02:32:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1lR4Bc-0005mw-7h
 for tipc-discussion@lists.sourceforge.net; Tue, 30 Mar 2021 02:32:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HL2X2TCYZBLW17iooEAb9UfR7soS6WeFrtzuJ2NvWHo=; b=YvHtDB4riW/Qnk+WAo+uEXeXVK
 iUY/buH+a/Oujf1IzOD1F36a2ylTUjpLAeE0SDKfob0qDaGs3qLiE4vXPeAR6I5h61EFVsuLcujJF
 hl0tEWph/JOw6Goj5FAzISzNdqorA6fchn4mdBejl8pg+p8+T717DuQWYpuh2tRzbFKk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HL2X2TCYZBLW17iooEAb9UfR7soS6WeFrtzuJ2NvWHo=; b=a
 qPH7Y3zvhy+mkBr1pv9wpcWDRjQbhzp26ON/YuL1LgPVo8lRiGpgcxqB2rTlhyjM2CGDO8PJqO5Hb
 hHQVnNNp1Exv3Wa5ayHFNuhxrz6BLv07gZfzXinrE2VkioC83NoZd2WV33EDz8q+gaqtAvdDKv2f0
 LwviMRi/LFD4s14E=;
Received: from mail-vi1eur05on2101.outbound.protection.outlook.com
 ([40.107.21.101] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lR4BP-00B1lh-DC
 for tipc-discussion@lists.sourceforge.net; Tue, 30 Mar 2021 02:32:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M/V9mEDHONzQ1R//M+YndQT4E5oFsubydZdqNbVJQiwQuVUcb3G1i/xqW8q9awPF+xuPoxixWZtp//S06So/qqEQ6XQU1eucjltP1+7GvJi0ppSL5f7gk9PwGGQOB7+0rdq8ID+BzFvWdOsODrgqRZV+1xLn1JcE4tB/6YgOnNWMUfGqifeDV6WI/Sn8Nf7MBdOkw2WrdLNw8xJ2rzIqDU1lENgAo6XzGljPuKiEO8j9cYl/xF0B3b326jXwHDfs4UPj+1LsOTpRNCSS9hXe6IVyTqqOBijSkFf+PvMzycH9c7rbJrwdl0hTbIyurdt3C5/h2s46zMs0t/PyVwFB2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HL2X2TCYZBLW17iooEAb9UfR7soS6WeFrtzuJ2NvWHo=;
 b=g0tPoBkSRja8StK82fCQtNNsf8dIevYuABpeJ4lwRcHxf5JUoiOZ9l0321/A9vxpD4Wz1rXD03AnxykmkQYB54JlYd353GTDrOSwSXmXdEjqdU6a21lP/5IyLeGNg2RN4y++eFcwhTENnqoqERWvy/G8MQ77VakJZbvLJqVfopII8e2LpDE0jud2aA77g8Cq2IGPxB7S3gZjLNMKvds+886CkECT0dMpj/UgWYWUXim/LwyuA08oGWd2azY16A6KhY/IrtNA3KZtAE9bhsx+49QvIKDK08t9X8sDHzyViBNUCmAnaxUC6pyVcc47MW1eMqNxaGSxoJWnJELzkLuB+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HL2X2TCYZBLW17iooEAb9UfR7soS6WeFrtzuJ2NvWHo=;
 b=tfeGdHoF9vm5TTVglVep6h5Cbo/eEB6vLhN71Fdif1Bx+FbYSzVt5dH8xshCF86x+af55TsbpoLPe9pksRifKNBIdRah3X98ptq4sPIkpaOC626qCKTX8dttuE1vuhpzR8EK5mMCYxXWu19Njo00RbX4JCAP+MRA8+2nc6Fe/Wk=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR0502MB2942.eurprd05.prod.outlook.com (2603:10a6:800:bb::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.26; Tue, 30 Mar
 2021 02:16:59 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3%6]) with mapi id 15.20.3955.024; Tue, 30 Mar 2021
 02:16:59 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com, tuan.a.vo@dektech.com.au,
 tung.q.nguyen@dektech.com.au
Date: Tue, 30 Mar 2021 09:16:45 +0700
Message-Id: <20210330021645.15387-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [113.20.114.51]
X-ClientProxiedBy: HK0PR03CA0112.apcprd03.prod.outlook.com
 (2603:1096:203:b0::28) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.20.114.51) by
 HK0PR03CA0112.apcprd03.prod.outlook.com (2603:1096:203:b0::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3977.26 via Frontend Transport; Tue, 30 Mar 2021 02:16:57 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bd0476f5-536e-4e9c-6ee8-08d8f321e5f6
X-MS-TrafficTypeDiagnostic: VI1PR0502MB2942:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0502MB2942DC1B8234C59E38544080F17D9@VI1PR0502MB2942.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:318;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Xe8NtRUwiKeHWU4YgyaeUf9w7GbU8+S97mkEmQQ8LJ0zdkmrt5RggPW/hqbZ+7cLry+wVnl7XCnfwyJXMxcavXIXzQayH0cMWAS7wdJCMrUwHeJNcUmer3LTETbV16LAYNHiQwg0Mi9wJROaPFKm99b7WXPw6u0zuIgVbHhi0kK6wSiSO8ffjKTd8ZnmRmfqsLPGD4aabJiGm870ZNRMQpjJSk5NWLadA9zTRSvXTbXmxf/2mxgzfAZf9WaFkUkF47a/Ub66tx2pcOIgN+qLKZ9FRJ3pqIk07Fmao5GlZcFgS8FYr2HIMQjnGsdWisI8mSHsC34IrGqnpuItSEofXzoIysw7uVXu/FZeRxm6mziemX0Mu3sXxidmzRluxp1YV4o5hjFQovqmKVqCspuke2jnuyMd9e1g7LhA/ypzjFV9r8J+V35qCkoOxu5Gssym2WVdwD0nIaMuYYgZJAsA6XMEfdNpKgiZC7gJMwpXYUseIxMcvGmllBZr5F10GRA8K+oCJV6V05OEmwDgBsobaearS5dtCR1lbQYyauofyA7Orb+yutWnMf1XiG7cQPhY1X8kyYMi4RaRtuih73F413x++9/TYJvFz0GypEOhKr//zAOb5hYiBRmszWmF258JGU7595lFKKOqIgOwIF7jMzYMmC1bAhnuGaDejTOEpl4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(103116003)(83380400001)(66946007)(26005)(52116002)(86362001)(956004)(66476007)(36756003)(66556008)(16526019)(8936002)(5660300002)(7696005)(6666004)(186003)(38100700001)(55016002)(2616005)(498600001)(8676002)(6636002)(2906002)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?znqwZRhyIwQIww5joN5Si3RWbRDlHfJtdfoqM+iGqVobgFjiSXMrs/LhX3Xy?=
 =?us-ascii?Q?u80k7jOjAHwm4/gemHdnJeEXcyWyDYtsk1GK0bpamMATzZhLtWaupDET6RnC?=
 =?us-ascii?Q?pI/B3yAcxsEr54wm2BpW86xVdm4CS4hOOD6G0Mrc/HAyIfDNXF6y+ZavvHeS?=
 =?us-ascii?Q?XNXJHTFFFuGcwy9eZulm00DM4WAPcAheuMMpejQoJapOJXySCNs5RG1Em+5f?=
 =?us-ascii?Q?oN670PzXlJ1DjIEsH/G/6wHa3hlQZcJg3MZ/rM58/eZrVFLVZfMvAeKq8ZBZ?=
 =?us-ascii?Q?BGu4x61L4qrLNIJ69vaJPNP0iRRdhhwKJ7FZt3WhCFupkaUN1HPUZSjK/dQR?=
 =?us-ascii?Q?BNeFpcI9sNODOwrvH6thvC6KUojL4PbHfzxZEbcbnO+NpmE1XFV6IL/vMFRU?=
 =?us-ascii?Q?J16SKeJs8hEgy5B35Bysvc2A+0J6dbChUCEBLaiq0gj3E/ws+HvS+bwHQV5y?=
 =?us-ascii?Q?VEoLTzsoENt1+qXnoojgbQRaA2gGKfAhxU8KO/SlubzPYfMQSgy5We8520vp?=
 =?us-ascii?Q?2J6yX36hVcv/DDtyUR+JkJuL3BLHB1iLj5bkAfv4q002KigOJXpx75+KV7q2?=
 =?us-ascii?Q?ULUzFoJ7pfXYF+DAEY7gFJKBwz8bcQVPuWBv66L0/ZbLetB5r3j8NG7haH3m?=
 =?us-ascii?Q?p3FI3YJDn1HtYFB+W3SKeIjWwuDIEzWkLOkh26xFbfPA/hZoDk3+W2uLHBPU?=
 =?us-ascii?Q?r4/1NXv74A7NE3+vR2sa8GYLo/bGNcIm6orFoo6BWahRezeqB6qAj4BXFT5A?=
 =?us-ascii?Q?91GMIfrYMMIsfeZ5SfVBUN0rjbN3a0GthHNvaMQvqbiBb+gH55WexXB0/PMa?=
 =?us-ascii?Q?+CaYtYY3XGNB27MPRbREZ0QvBho6h22AawhWJvvl/nwD0qDlWKtxPULSnraE?=
 =?us-ascii?Q?q+yHmszWhv+oWw8GAPE5Xuz9av49sn5PYLEBioLt/5XYflXacapi0boDyWac?=
 =?us-ascii?Q?+NB7FLJtsZZpALx49yYZi6b7B1shzReCjP5aAKSwfWmJOmG8oaNYfEj1bMiL?=
 =?us-ascii?Q?yM+3S9yQTTfnpdTebYKEBp/g3SYceayGwfnnmwRMthD6gEwVw5JMNf2tCq2D?=
 =?us-ascii?Q?zuUKSTZB9t1gl3/VAY8z1MpapHifwixQ00QOP1mX+dhlhsAYiTdBw58E2Gw8?=
 =?us-ascii?Q?GFxiT3RDd5IoqMtQMXF7yCnT0wyDiihpYCGQfJ1SsfIuH4Cvir9SLfs1F2Eq?=
 =?us-ascii?Q?fcbesdy69l2KOxRsmNOgh7ljUqmJlZFnG34ntSVaJnaAXI8OlgSb6ABZAWLB?=
 =?us-ascii?Q?5+7LLt15mfhz8YZ8RzOfUayjjKYGBRiUtPSpd/YMo6ImP3d/Nsx32QP3EfKj?=
 =?us-ascii?Q?3oeI12OrLnPsKQJcb+sOdvXW?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: bd0476f5-536e-4e9c-6ee8-08d8f321e5f6
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2021 02:16:59.2637 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tYLNWzne5RjBZW9JGZHG+S079vhHVnAFPtTQQ88UZCkh+qOHyP/ycc1LbfH75kfNM/JzCdTcWUqyFo9HrYRgXLidGTYM1puKfeiVVXadiF8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2942
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.21.101 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lR4BP-00B1lh-DC
Subject: [tipc-discussion] [net v2] tipc: fix unique bearer names sanity
 check
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

When enabling a bearer with identify by name, we don't sanity check
its name with higher slot in bearer list. This lead to duplicate
bearer names bypassed the check.

To fix the above issue, we just perform an extra checking with all
existing bearers.

Fixes: cb30a63384bc9 ("tipc: refactor function tipc_enable_bearer()")
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/bearer.c | 45 ++++++++++++++++++++++++++-------------------
 1 file changed, 26 insertions(+), 19 deletions(-)

diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index d47e0b940ac9..94eddc67d52e 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -256,6 +256,7 @@ static int tipc_enable_bearer(struct net *net, const char *name,
 	int bearer_id = 0;
 	int res = -EINVAL;
 	char *errstr = "";
+	u32 i;
 
 	if (!bearer_name_validate(name, &b_names)) {
 		errstr = "illegal name";
@@ -280,31 +281,37 @@ static int tipc_enable_bearer(struct net *net, const char *name,
 		prio = m->priority;
 
 	/* Check new bearer vs existing ones and find free bearer id if any */
-	while (bearer_id < MAX_BEARERS) {
-		b = rtnl_dereference(tn->bearer_list[bearer_id]);
-		if (!b)
-			break;
+	bearer_id = MAX_BEARERS;
+	i = MAX_BEARERS;
+	while (i-- != 0) {
+		b = rtnl_dereference(tn->bearer_list[i]);
+		if (!b) {
+			bearer_id = i;
+			continue;
+		}
 		if (!strcmp(name, b->name)) {
 			errstr = "already enabled";
 			NL_SET_ERR_MSG(extack, "Already enabled");
 			goto rejected;
 		}
-		bearer_id++;
-		if (b->priority != prio)
-			continue;
-		if (++with_this_prio <= 2)
-			continue;
-		pr_warn("Bearer <%s>: already 2 bearers with priority %u\n",
-			name, prio);
-		if (prio == TIPC_MIN_LINK_PRI) {
-			errstr = "cannot adjust to lower";
-			NL_SET_ERR_MSG(extack, "Cannot adjust to lower");
-			goto rejected;
+
+		if (b->priority == prio &&
+		    (++with_this_prio > 2)) {
+			pr_warn("Bearer <%s>: already 2 bearers with priority %u\n",
+				name, prio);
+
+			if (prio == TIPC_MIN_LINK_PRI) {
+				errstr = "cannot adjust to lower";
+				NL_SET_ERR_MSG(extack, "Cannot adjust to lower");
+				goto rejected;
+			}
+
+			pr_warn("Bearer <%s>: trying with adjusted priority\n", name);
+			prio--;
+			bearer_id = MAX_BEARERS;
+			i = MAX_BEARERS;
+			with_this_prio = 1;
 		}
-		pr_warn("Bearer <%s>: trying with adjusted priority\n", name);
-		prio--;
-		bearer_id = 0;
-		with_this_prio = 1;
 	}
 
 	if (bearer_id >= MAX_BEARERS) {
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
