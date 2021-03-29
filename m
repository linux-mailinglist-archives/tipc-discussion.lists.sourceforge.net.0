Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2058E34CDD2
	for <lists+tipc-discussion@lfdr.de>; Mon, 29 Mar 2021 12:19:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lQozW-0001Aa-RH; Mon, 29 Mar 2021 10:19:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1lQoye-0006sE-EO
 for tipc-discussion@lists.sourceforge.net; Mon, 29 Mar 2021 10:18:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DfVqJ//4YaLigpWSkwA5zHCLCnJRq2nqarOTbsy3rOw=; b=acVJgLkAAx5mu+/wOZYqz9Y7T9
 FLZ9IpyZpEcyzRruP8LdR+aQ0e3OMbcT0uNRgOXkQ7kQLiqE9bqpvp7yJjGISwO4ikf/JJCxRvtXf
 wXhbpzppYaZuhMFSot9QW88CexPU7lnNeCvy2mdmca9M//kyFijMfW/nPOeWn2P1bxl8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DfVqJ//4YaLigpWSkwA5zHCLCnJRq2nqarOTbsy3rOw=; b=C
 mRuSQ48SLSd5+Rk+6LbzjxyPk3N+ghCBy4GXPkIGiicp7ldZvo4h2Swsi4Spg1t5trVtO9HUtgli/
 qrI4nyXxQ1axIw9zvdxoxP6SUIdIM5AY/rBsGTSoj8PV56T4Ewy5maFOMsmem8oSgPH5Y2zP+POVZ
 BUtrmWXyQsZvt5Ys=;
Received: from mail-vi1eur05on2133.outbound.protection.outlook.com
 ([40.107.21.133] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lQoyY-0001T8-EH
 for tipc-discussion@lists.sourceforge.net; Mon, 29 Mar 2021 10:18:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hIZodLamNDFR/cSmgTfLtEHAIbLSPya5dqJJswV3gncgjmCzuX24vWMzIG58+Y8Rvy5bho1bB97IWpqldRHckIqsF4Naz6Jy/7LcQemraJbG/Z1dx20n71b1Hlz2GLIHmaC+40ajiDw7ZA2D2d+6qBqm6YTM0PjIO7Hh6s0ghXaNz2AyZP79eWdkpEF4NhO5E+aTuz6sb/ktdqiTJofFVZyZ+YQs/CnzW1T76W0CG3XgXkQ/mZ003tFJ8D7y50DLoUbsV/BHVD0s/P4H31/Mh6ves+VtRxJrhU+jT6ZMS22ZSC1QYI02/ukTOQr+Nc0fcfqhhs2wEJeztHpmsIYQig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DfVqJ//4YaLigpWSkwA5zHCLCnJRq2nqarOTbsy3rOw=;
 b=CmSLqYRHm0ezNvkUneIg8lvb1y2u7RsKaLtIKSoVdip62uQ134/hM4ZLcCxdBJ+qo/x8LnhzBKxzvl1XobZY4rsZsmluOEnyWxTC3KW0s9+sm7pX58vgXCjhCYpNqETk2N8Mh8feDf+SJNjgHrq5aqV7E/apQtWy+Kpi/KVc+YI4YJL4460b3NHDpyfVaBsppthGCCypyH31zTQUd130ZGgiH7POi/dzt2RrQnfSUA8ZeYucFwQO7A9uCG5DweTQmMtq/1UJUzI73rudVKp5f0ddHeCAudzbUlum+9vd7gbp0FGzXCJYq2QONNm+DZL1RiWSB9U2dezjoLdKij+8yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DfVqJ//4YaLigpWSkwA5zHCLCnJRq2nqarOTbsy3rOw=;
 b=QnGb0p6zBjj+lizSG+DqX1umTB8vPuRMXIvUaghCL/2HbdMr6+N56XHy4ts3jCkT+oCTEZ6+bztSA1ffuazUiY8a81lECKoYl9BdVjzbeCUlsR28npQNjqLesYDCp7WJpaTqEhMzgwiGZvZBlJFrCrJU/TilPDgPwowmVX49rEE=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Mon, 29 Mar
 2021 10:18:16 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3%6]) with mapi id 15.20.3955.024; Mon, 29 Mar 2021
 10:18:16 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com, tuan.a.vo@dektech.com.au,
 tung.q.nguyen@dektech.com.au
Date: Mon, 29 Mar 2021 17:18:03 +0700
Message-Id: <20210329101803.60736-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-ClientProxiedBy: SG2PR04CA0189.apcprd04.prod.outlook.com
 (2603:1096:4:14::27) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR04CA0189.apcprd04.prod.outlook.com (2603:1096:4:14::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3977.33 via Frontend Transport; Mon, 29 Mar 2021 10:18:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e26e69fb-2635-4e81-8c81-08d8f29bf7a1
X-MS-TrafficTypeDiagnostic: VI1PR05MB4605:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB46050372D5BB169E76C50CB6F17E9@VI1PR05MB4605.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AI0l+W09BL9k2ugCXMeKN3cFv0znqlUbdUyLxw5sJIYbEkY/IU5Tfjpvfwrkcx0yjSpqtFME87Wt4YrLFIu1Ywff1/1rJSDtSVtmpobNGAUMAwPSoii/zxoIih+Mn0ZKWmyoIqFFwsgiXd5NpPGklPgAbGNkNbRLX401UeRdmZcgCZd4FbipJQ1+Gr+wXoLiSkWzrGjNVjVPY4nDi7QN+JrnU+pkz4ttLs0IDo45OznhhGsTTBiFKf3VNqSN4b7PBJZZcJ22ohzBEbal8/tHbRD5kxWjeOATfbM7gOTtpFvVSQfVIbXzG0dYTOvsPtefhhYoidRwc/tQZYPpycreo7rXmZYprdjTiuACOMF5ocJOW+18bzBOgL/Akk1sjqz17D46vUeQpDneHURidNmtc6HQ2kBCS2a/G0zUHhUeZP6ojEDs6DuOe+lXWP5tGT5zN3eUM2K+agpOVMXjXgjDnoiVp96AqtRwr0rapVfFqiijV3V996wZGY7RAZR6uMUFq8K9N5Ssk/gzP1OY2WUgwVyFyn+cAWZHicUHKn7WyBXXpzgperxI+uEpjrJXXnpBKbNmXTou/O5K6vbQenYz1TcSUn9TRPmB3W5AcQU+fMI99E+/zoQgMcnDKxwFLY8BDksGBgZiStIExCFHEBL1ew==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(136003)(376002)(396003)(346002)(39840400004)(8676002)(26005)(83380400001)(2616005)(2906002)(38100700001)(16526019)(36756003)(55016002)(7696005)(956004)(316002)(1076003)(66946007)(66556008)(6636002)(8936002)(52116002)(6666004)(478600001)(5660300002)(66476007)(86362001)(186003)(103116003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?IvjRd4NZMUYJrQ3fr36Aaqe0CEEpEAWF3NPuUybBE+G8UqNbXdFcbLx3Mg0J?=
 =?us-ascii?Q?LDXwq3nqUXTXbRne+F/Ez52cPm6P/8gEMSlsvPyU4GcAeDrAx+2cg8E0FFZD?=
 =?us-ascii?Q?HJ6Nttg4gw802+kBEnlxlJbIAC0159VlTq+WqBr4VVhcGHHst2YfIrUtjZA2?=
 =?us-ascii?Q?HEEgFjm0xfSzP4q/TQAgAZ8D6LxRXQgEWX9xe8LT2+VDy+7jH3k1DLqjN+CO?=
 =?us-ascii?Q?9NIWai7N1Zf4V/Lc1Fi65iVG+O3v1E+6OLK2fbeo7Ip1x/MtboRDeusQO738?=
 =?us-ascii?Q?nIXG7fxi3e/7hX2YJmP3KfeQCvB1mR7EqkChg3WbEC6/dEjKpMHa87i3AnbG?=
 =?us-ascii?Q?7HhDt1VeaYXdWT1mHuU3TbjPSMOqY2PX0Q3OH1LZzNeb9q+FNUqOmyhvXOez?=
 =?us-ascii?Q?9sfY0Jx26qH5zTt1nFMFdED1cSRtDL1TbOpeoNjb2ySP6y3dynFOvPxzxRP0?=
 =?us-ascii?Q?SZ4rt5zEdb1/4a2HnthYfRm89Lvy3oB0DIjC03MCPwylM2kRp1RyImjzMy0Y?=
 =?us-ascii?Q?xhCLNR6a4d1iG74zYz6SXbZSyFeZV4lFD9GFKYRtq8WtL5k/l/yrh10oLFPC?=
 =?us-ascii?Q?b6O/vezeF3gq717kKqGlTL99f+aNl2TB0m94ZoBc765pZiUNfu3A+DIJ+HcL?=
 =?us-ascii?Q?slD2nugM2LNyAlUGOwUE+y8hTSXMbTli1NjRReQkhTdTXBIWY/p+gQy+dy8Z?=
 =?us-ascii?Q?d5b38IfTYF1twRexCKRtXgh0uzl/VzUSH1f5+TZ5bGDOoJgu7+jmpLq65ZPB?=
 =?us-ascii?Q?q80351A1rUfGBs7ZJbM8qfIQjVT4ytPxfVfFZzJSXPoC8A0gp8aYjDFUQd1L?=
 =?us-ascii?Q?MhXBiCBRuA5YcGxReQDETvAW4RshPMofJyPvWuCjvZ03CEpca6bX83J914BT?=
 =?us-ascii?Q?vCTUUwt8DzwIMOB97m5I4UdsoBF4vc4RLSMpNRWVT4PORMYNPF73be5xy5BM?=
 =?us-ascii?Q?2NKy2zeUFmmbrhGFuN1W+PcY8agw8OYmopAU4CHSwbQhYl4yp4PDagly0Gw8?=
 =?us-ascii?Q?WDW8VJyOsMFfj06hPoRyCpcw+reVRMIFC0xY6a9cBEXm78KC4dF5ie1J8fxK?=
 =?us-ascii?Q?2Kv8neYBLHwWzZvJFJ+5lzUV8lJhtLzhrNeca3g6rbwVlbWQDaxvnam65ksJ?=
 =?us-ascii?Q?nRFkxbpZpMwiYk4sdobcHwW9z2iYgZ6GhBVfac16h7Y8vcFjWhoVMmP0AFeC?=
 =?us-ascii?Q?UvCUWAS4lr4V/Vq6Wfov7PTIhHbJQhCWbnKHLYzq3UF0cypMkaB7nOcZeOMb?=
 =?us-ascii?Q?Jw/RB8kU958rY7EOUB7ps4ocvEcKaxxnFrNzAVgTm/5EMHu4KWCrY12WtCdc?=
 =?us-ascii?Q?JTa16IRQ0D/KZQ7hL50Vmgs7?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: e26e69fb-2635-4e81-8c81-08d8f29bf7a1
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2021 10:18:16.8463 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 96imcYEBwyQx3LvXkSnp1mKkXRWDIjmdvbHGRv7QH7j6oPYiwmKrWFmnAymj7EKPxek55GFrURxOIxOkmwli/DKThrFN0SV51oi52aNmCJg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4605
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.21.133 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.133 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lQoyY-0001T8-EH
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
 net/tipc/bearer.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index d47e0b940ac9..6fae68f0e654 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -256,6 +256,7 @@ static int tipc_enable_bearer(struct net *net, const char *name,
 	int bearer_id = 0;
 	int res = -EINVAL;
 	char *errstr = "";
+	u32 i;
 
 	if (!bearer_name_validate(name, &b_names)) {
 		errstr = "illegal name";
@@ -313,6 +314,18 @@ static int tipc_enable_bearer(struct net *net, const char *name,
 		goto rejected;
 	}
 
+	/* Check new bearer from free slot up to MAX_BEARERS */
+	for (i = bearer_id + 1; i <= MAX_BEARERS; ++i) {
+		b = rtnl_dereference(tn->bearer_list[i]);
+		if (!b)
+			continue;
+		if (!strcmp(name, b->name)) {
+			errstr = "already enabled";
+			NL_SET_ERR_MSG(extack, "Already enabled");
+			goto rejected;
+		}
+	}
+
 	b = kzalloc(sizeof(*b), GFP_ATOMIC);
 	if (!b)
 		return -ENOMEM;
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
