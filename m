Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B39D9350CDF
	for <lists+tipc-discussion@lfdr.de>; Thu,  1 Apr 2021 05:03:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lRncW-0001ex-1x; Thu, 01 Apr 2021 03:03:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1lRncT-0001ee-Vw
 for tipc-discussion@lists.sourceforge.net; Thu, 01 Apr 2021 03:03:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AVLay29BjkiDbNTUaJKTsZ7EtWjHXOw54/lCqSy6Wxs=; b=DR30lkdXzETA8NL3XZ2CKn9in8
 sEVJixwr0p7Yh9yRBFJlovHszEsycduZ7zu46Z0jv4LRQ5xmFtPK0ARLSY7CloN04q4NGqBAeDUIF
 vkRW+2qd1FrV6XbuK1MpNEX35UOp0YpnH7Vlr1dmHz3242i1LDYKMWdPv+2i9/5BRqFI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AVLay29BjkiDbNTUaJKTsZ7EtWjHXOw54/lCqSy6Wxs=; b=c
 uyGR38SjlnnVwx0a0ZW1ZLRg0gTTAEbnsc3JC+TVIUQkKp0ctr4M4gcV8lZFJKXfmtrBbzIuyizLf
 OyrqP89utyh1wqioQ8yC6tZxguOTpWXeBED8ymCath8LAgmrcJCSZ2mX5zLRT9CSIwudfBw7FdLI4
 dPfG/5UV+qYaLrk4=;
Received: from mail-vi1eur05on2117.outbound.protection.outlook.com
 ([40.107.21.117] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lRncH-001cyH-Kw
 for tipc-discussion@lists.sourceforge.net; Thu, 01 Apr 2021 03:03:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D6FZKUCfhdb0csNii42ohiT2L44sBZHLjOl39Mk755eC/MxTZLOgrg/crpDuS9n3tdkT2Q26LYcY+oNvli14h/1z9YV5yXvNcW/wVx4H1RQL6ocCOv/ADt9puZj1jwECYmp0UlqXxbw48EaAwvHJ30oBu3fzP4omTQbvaTswV1YY+JS3CXzjBBEWqJvLtfaciC002UK2sLKdjf8cJAWkh8sM8f9k6BRLynOT9CHqANKOQdE+s9S4sOpMuYP2hUI+Es2oUVo/l+6bHjr+Jze9TEJcD5l3lxAAR4wzCX3DGIelMnc22qj7JDLQij44kSvK5eaFmk/mKSFE4g8NL8DaYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AVLay29BjkiDbNTUaJKTsZ7EtWjHXOw54/lCqSy6Wxs=;
 b=RVVXd1M6uRhniapHTcHpG2KSJrha1yXE3S8NavhjRbbWf5MYj++eeNZY6wp3618yHHhr2jjf7R1NHp/aOvV0TfpRyXnz9BdhX+stsU8f97fSFOVQjxLK5K0NE5NJ4h+AeNZOrwpMKS6R8s9oa/tP6xg1FlCc3NFeNYDvJqron5+z9KdANFseBicEzHRyaxfEp8DB4yVvfBCQ0CGdG3PACuYTdWx8U1zKql6SRKpJ5lAsp20oq6Wa07L6NyggpC4ik7dHP7gGOnuuJE12e7p43z+t4ekOGCOBzWkxv2oyCFTzsNFOyPeTKcFhLbbEhpjN4as+AO8Td+ND354UyafjoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AVLay29BjkiDbNTUaJKTsZ7EtWjHXOw54/lCqSy6Wxs=;
 b=sqyFbsQ5vGCoC5AnamcbhwbhGPCLCtqPzhpMPYQ6jDDyknbmkkPqCx9plK9GXXcELKsLCKlputunbBWNqLlr83V48VW/M0JttCarknfGappI3rVb7vCyH5rlPzf+WSEz7yDgnnEGlezyPVvf4GrjeFwCOifdmIWlQ7StgBFFtnc=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB3231.eurprd05.prod.outlook.com (2603:10a6:802:1f::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.33; Thu, 1 Apr
 2021 02:31:05 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3%6]) with mapi id 15.20.3955.024; Thu, 1 Apr 2021
 02:31:05 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: netdev@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tuan.a.vo@dektech.com.au, tung.q.nguyen@dektech.com.au
Date: Thu,  1 Apr 2021 09:30:48 +0700
Message-Id: <20210401023048.5006-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [113.20.114.51]
X-ClientProxiedBy: HK2P15301CA0003.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::13) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.20.114.51) by
 HK2P15301CA0003.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4020.0 via Frontend Transport; Thu, 1 Apr 2021 02:31:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1e6d3d0a-2edf-4681-7e4d-08d8f4b632c4
X-MS-TrafficTypeDiagnostic: VI1PR05MB3231:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB3231E93956DFCF4933F3CC9EF17B9@VI1PR05MB3231.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:370;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ddlSffL+F5oFOqM0tuPFzxXNYAQoSPqlHeGPP8AsJUV2w5ckdy6G6eIxdYOhqfnRq75/OdEX5ZQWZM2ruUarvmCmYIYWIsHs8+FTxzvJ1DmjZAtT15eUUo1xTytoTtKnn0eq0yZsH/o0ME1MRakSIBEQLH2b0aj0NuJCakhp5mOlOqHI9gQvbzlyJaVW2L72WjlgJA/IpuGMKlP9TBpn4y7gAM6lCM/OIQ96820xBqnWR8pBXZt3p1PeoRwYwJOggfY3tqCROBSQKehcHOCNCDtk4sZ0SN1SHB5JHz3YHbyVOBbv+15ujmbI6YthHqhzEqKw5mi4ReWImtIS6XjCt0sZs9dDbOlyR+LGAn10c90RZUI45Ff5zFB6+jXrChsUdoi6x7MnzcgBZOxpvFkyi1IO7OoJqDjzzk4n24Ht5f0yLropZ9y4Gu3q3aa3wn4bamFS8jspcH0RN20RbpJ8TRZm7sRla0Xc1Nj9n1tROyLaMBvYQVY0DvQI/G7F6vNy039+D/AXGPJlFyrRphxmx3XITZDWF5aIhVH5Gwofsk8DX+Ilg6wEakTsM1MTNRLKq3u5pSyXhsZlWRIx9wA7rUuvYHDsvceCZmgD44ePA3yRvKUtyKreBvNxIVApWikcvHpwy6g2kHpIfW44oVkOdw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(376002)(396003)(346002)(39840400004)(366004)(186003)(316002)(2616005)(16526019)(86362001)(38100700001)(26005)(4326008)(7696005)(2906002)(52116002)(55016002)(66476007)(66946007)(1076003)(66556008)(956004)(6666004)(8936002)(8676002)(5660300002)(103116003)(36756003)(83380400001)(478600001)(6636002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?CF3DHYxXPdufcMamI3qL8L5klOAjj8Zw2KsFLbAUNcJC5X+oCGSRykpvQLdq?=
 =?us-ascii?Q?MdQV+MA9CR9ALSRbBUGKsGO3GcxkDJ46MCpXx1R9XzV0DbEWH2eNXPYAdqi+?=
 =?us-ascii?Q?KvdW1jV4iFImEyCYvaacKA5ovFTGvnFeiWW1gCd/vS7Hoc9waySx1LRO4MyG?=
 =?us-ascii?Q?ABRCq1u3Fj5a4zl6r2tXHx2uWblbYh3oCR0zeDTo0ZqmF7GMIM5VKitb4DeV?=
 =?us-ascii?Q?HUtY82sfHMSSkmIXx/36lCRs1f5NC0IGb3XYTYeHwGkpbfzHNnCqN68+Nref?=
 =?us-ascii?Q?0x2uSeb358ehVNlOeOb2jPZqiJw7V+fTuZyXL1LghIoN8drMl4w4wwYIfBgl?=
 =?us-ascii?Q?gAPjXdftSAu8juwAtBUAOasr7M15H4FG89sARcOI5KCVSX1aT9eIMHLf7N4f?=
 =?us-ascii?Q?ynHx/iNhgQViCBFNqzm22CepibHu2HZOgrJXTIHCGwppeWCMlEQQg0hVaask?=
 =?us-ascii?Q?HWyXvcO/TZGDvVQ2n5XUcCugG85Zz50eGkdBBjZF6glhTeHCvXyLrg1EJRZb?=
 =?us-ascii?Q?5pvjZfK8takVWp6kmqA2jzQD7dIZGLIbV+lV9swrGgFdXQJcP0XNfRjpcyjN?=
 =?us-ascii?Q?bR4Ed8GlqjRgaEfz4DiBfyZ8cQ/frGWC3VkUFovXhPMK4N4aCjlW9hee3KfA?=
 =?us-ascii?Q?Zj6PDGTbKorEAmygopjElYf85lBWNMKSlHg7Pl5XniK96vj4klx36qrl7Rkz?=
 =?us-ascii?Q?OFzk/Drt65Q6SDGVZSVeiL4/yQ57Pd8sqG8xnMn0Hgj/f84a4dT8iWEvXZNN?=
 =?us-ascii?Q?rrXQDgsOH0qxg7OWmHe83syDZjYBWmf/Jm8ESbzEYA66OWzY+oqii7aipqsd?=
 =?us-ascii?Q?D5HbnFcHDd4DhpOJB95qZSg38pAs6NKy8+oiQiyQXQb4+4AGGhVsaa9IUZZK?=
 =?us-ascii?Q?jYcudTULvRaGwx4A55FYiVytj4ikOzdqUnsfmTQtvwLcpdh2BFvZ9yY7tvQW?=
 =?us-ascii?Q?D2a8Kvt7sJ+I5nMITO0AUBckd7Wg41VRM/mobX3pUoXL1z1RbF0AcJIL+Q/7?=
 =?us-ascii?Q?6rH6cPLdzPK8Oz4sN2wbNhO5JfSuHD6pzYCRE6KPD0pDDDgPoqhGudBhXuVn?=
 =?us-ascii?Q?dnii6HwjsUGxBwW4UIk5uBSFmc+X5PUIas09xQLr+OCcRZGNYPyr5oIazQ7I?=
 =?us-ascii?Q?cTg2j/3Pl1pvKDrbZcDDCw7GU8jUA8BxGH3wcnqoZFVdZ7kn2KQi63k5TwQZ?=
 =?us-ascii?Q?ZKn8WPcU+mgXxKay5g/1OxqUHMbNdsk5mSdKj7aT1d/s8BTRroc9JH2NC4l7?=
 =?us-ascii?Q?njJ8WAAnr3hGa/vs9uCDM4+SF6/Ex9UXh+1wM8iuUGIpdnT718nXSWdkRtHB?=
 =?us-ascii?Q?+Iaxms133FhclTA5orS5GhUY?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e6d3d0a-2edf-4681-7e4d-08d8f4b632c4
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2021 02:31:04.8726 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RNiDjmKStGFh987WYA9xx3uamd9sms6Tm+PjfJ7qZh6BmiJCwyqKSwyRf4hT7dAWQ4AieLyuZieAFwKjTJs42mxO/wsxSRE1ORvYsWiU6kg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB3231
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.117 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lRncH-001cyH-Kw
Subject: [tipc-discussion] [net] tipc: fix unique bearer names sanity check
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

When enabling a bearer by name, we don't sanity check its name with
higher slot in bearer list. This may have the effect that the name
of an already enabled bearer bypasses the check.

To fix the above issue, we just perform an extra checking with all
existing bearers.

Fixes: cb30a63384bc9 ("tipc: refactor function tipc_enable_bearer()")
Cc: stable@vger.kernel.org
Acked-by: Jon Maloy <jmaloy@redhat.com>
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/bearer.c | 46 +++++++++++++++++++++++++++-------------------
 1 file changed, 27 insertions(+), 19 deletions(-)

diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index d47e0b940ac9..443f8e5b9477 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -256,6 +256,7 @@ static int tipc_enable_bearer(struct net *net, const char *name,
 	int bearer_id = 0;
 	int res = -EINVAL;
 	char *errstr = "";
+	u32 i;
 
 	if (!bearer_name_validate(name, &b_names)) {
 		errstr = "illegal name";
@@ -280,31 +281,38 @@ static int tipc_enable_bearer(struct net *net, const char *name,
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
+			pr_warn("Bearer <%s>: trying with adjusted priority\n",
+				name);
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
