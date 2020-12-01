Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C40672C9A4B
	for <lists+tipc-discussion@lfdr.de>; Tue,  1 Dec 2020 10:02:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kk1Xt-0006yz-LN; Tue, 01 Dec 2020 09:02:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kk1Xn-0006yX-K5
 for tipc-discussion@lists.sourceforge.net; Tue, 01 Dec 2020 09:01:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JPfyL7DM+q/Bb71Nh8PKSjLxyNTtfp2CgQn1OP3+6G0=; b=L9mdHFeRmtLpRDs3jRLgcdZqBl
 qJSRwYoJgdZXXoxV+QDLl7b48XcSlRwLh0yhLvHMS7rYWHqS965uyaS49ZnnaNofa5rtV6kQBIqFV
 hr8tbyYHBUSQGfqLZnf2qLFn4bqXFWvHAOhFkfUzCD+GnodYwNqcJRU5psQ25XAZIaEk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JPfyL7DM+q/Bb71Nh8PKSjLxyNTtfp2CgQn1OP3+6G0=; b=W
 4SycazusBeNXUPOS9KnEz+uOR3zqknGNoLPGOeePDN3ur2yJJdThMr98m3YAuEeUMN1TqKNTrmjmK
 mkj0vDyOd80ObXMbNWvfFItDyUoTsMMwqAuGBhc0YQKfKs7QxE5i4mqp/AiVL1HxAcBGsDgGee6DR
 T8aW+6c+mPkK3qnM=;
Received: from mail-eopbgr80113.outbound.protection.outlook.com
 ([40.107.8.113] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kk1XX-00Dh5R-4D
 for tipc-discussion@lists.sourceforge.net; Tue, 01 Dec 2020 09:01:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lroednF+As7V3lpupKVOtHpnynpY4kQrLK5HnJfxr/xWheWAD30X7aR5ea6nrS2vm5LBtHKnvUvklj6PUOGVl40MEs8aQAOTFfPeRRyl0KwEnyesVq3IQQZ9dDpJNqPAU61l9qhXPU0esQ0oZzPvVGx1/un1bs05Kjv+T+YUjcoXTXHvtTnHn1lEAqYjS6E2zTetnynt2J8tK0kXAaGnFFiJUiakeS3IBPc4Ki0GHSmFUHwrVhUKYPnJ7YQZ5KqlUGszf0Ghk+LssvBjNw5SYCw51yyHT+PDJh1Dz8fkpIhT2WB6KgRvj2h2GuvmEwK/tWJLwIiGvgDL1NHMxCsc0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JPfyL7DM+q/Bb71Nh8PKSjLxyNTtfp2CgQn1OP3+6G0=;
 b=XYz9ZwL/cUssJ7S6+scMnHxYj4X7huzn12ZWxEQSkOHzjvXlJ0H/UfK81m1Htpnvx61k5fTxAVuMbmz0TZZTp/9Hzn9ek5tqCnOOE9sUqdTDMHNUqFdR4UEV0YRdKsoCTW183JYXrVL/mK4Rz0em4MAQH/xkOj51kT/Xaeg1BZgeJXrU2C3nDdrbVjuWbhrC9cQOiFpYbwDORvvXDte87JOIAt6oRi4/Zr1+DRfN9jp4bTi/kxvcspN0ZWM4Uu6hE6ksAIX3CwTZEmcmlEaaJMBWB3pnGKLzSI6eWh8r98AFU7Rsh9k02keHoVcWv7aS2E/a7M67INJ8Pzrj3UVDqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JPfyL7DM+q/Bb71Nh8PKSjLxyNTtfp2CgQn1OP3+6G0=;
 b=Ia/nfvkfvHR8yjzzJk0V0vIOJAQhv4iJcWI0TkcN2u+RbG5LbPdues1Cv1bI5+OoO45vbZV0sfGZnAktQ38AaQiW2QFeYNcdYVL7yGttX1oub4i6IqcuuSKdy1fijwJqv8it0/ml1jOjA/nmz7T8pnUbT+K3KuiR7vaSt5lBHY8=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VE1PR05MB7247.eurprd05.prod.outlook.com (2603:10a6:800:1ae::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.22; Tue, 1 Dec
 2020 09:01:29 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::9854:ed43:372d:2883]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::9854:ed43:372d:2883%6]) with mapi id 15.20.3611.024; Tue, 1 Dec 2020
 09:01:29 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com,
 tipc-discussion@lists.sourceforge.net, ying.xue@windriver.com
Date: Tue,  1 Dec 2020 16:01:14 +0700
Message-Id: <20201201090114.3989-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-ClientProxiedBy: SG2PR01CA0091.apcprd01.prod.exchangelabs.com
 (2603:1096:3:15::17) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR01CA0091.apcprd01.prod.exchangelabs.com (2603:1096:3:15::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.20 via Frontend
 Transport; Tue, 1 Dec 2020 09:01:27 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f439d638-ffbb-4302-c3cf-08d895d7b0f6
X-MS-TrafficTypeDiagnostic: VE1PR05MB7247:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR05MB724708DFF61A31B05C9D7ECFF1F40@VE1PR05MB7247.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Nytrp6//a9SKZcioxVNeJ2JQYYGsyLR4m6TvUGwKVvxaIZr8NDkFuaCz8aDSoWiofyPWjz+xLog8ladNPvvKYn2fDTh2bA41+CT+WVJMSLXg3sSiIlAeesKzNq56okzIcU2FAZ1XoZPS+skUh6tVFwAJOgOGcL1nATeGxecj/esD/weJWVbOOauJ8ES0dc+PhYDx1/QZTnrgsmD58t1B7SKNT6Tq2SwQSHIsS1veudw/7PtV4puRO+Rw48EANvNyVOL1Cz8llQob4r58V6euISC7xWdWcQWy3X7Ckcopr2NqzDdtXiSFQGDuT8V2VhC7dtqAejj8OSqdKQ/rH7TqGg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(376002)(366004)(39850400004)(396003)(136003)(5660300002)(66476007)(66556008)(66946007)(8676002)(8936002)(103116003)(7696005)(1076003)(52116002)(55016002)(956004)(186003)(16526019)(26005)(6666004)(36756003)(86362001)(478600001)(2906002)(83380400001)(2616005)(107886003)(4326008)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?AAn/EwG0ymjm7nAaFXg7WlpgSYG1kDkUtCI90UdGxL9FUS62+3agL94WKa9I?=
 =?us-ascii?Q?9XTMdfQW1YiG6vuKmJs5S3tsO+p1X91j2wvUblzSLeTOt1FCoKRDRHtOVqje?=
 =?us-ascii?Q?38+ag9YTmf7hjHr5B8uUKqYPjMlwTuooiF/21glGfAc3r02MzmT82VB9GPIm?=
 =?us-ascii?Q?YdOlSYGGNv1JdT4ZTNadeo1o7NmWu1G8HWIe4ATYQWM8gjQ17G7MZJ6FUEOt?=
 =?us-ascii?Q?xwoxLkqjsG5dhZ+KDScn7SCviL+8oOzU0M9GdvzT3v3uJwvjAinJa9ffugRG?=
 =?us-ascii?Q?GA/1DazdH3Oe41al0EZsWPm635ogxij1H3q0+Ld69HbTM7e3sP8j90B3HQOc?=
 =?us-ascii?Q?Ss2aya/q+hmV9JSP7n3FiIvdwu0qbL8XnoZczRm5AjaHcPYKG5AwyKIXfbba?=
 =?us-ascii?Q?u39r3weD+xzVjLNB8/s0NDlAvdvq8CZuE3MT0qMrrSmvmDCF+xAOmpcbI+yO?=
 =?us-ascii?Q?Go1Af//a8U3kpBkJLlnP89p9ygkPpvuLROVLQT32HLaDE/0SgXf4DQJXKPii?=
 =?us-ascii?Q?PdlV9HsxCJ6dAwOON3Y9csjIZaABjjX+UQpye00m7HtsgavCIuzAZER6KM6T?=
 =?us-ascii?Q?55TlHSGhWb2v89qMzJhEJb5tjAfZah1jNXZMn7TLIpv/dKHParaQTn30ztde?=
 =?us-ascii?Q?xoGMlrBifbVoZMWZh5vkYz59c+sqGu7murtMGRGUbPwEguTNEH0vgI+mfJLS?=
 =?us-ascii?Q?37ELUK95fIqtdgSA4P9IizjRnu+8y4GNnx0gAwynwQyqTUYwNnXeSCajvWRb?=
 =?us-ascii?Q?mve+IXTY070XY5Vk69nIGY1vQ6kE/oHYkGWauJrb9885neZPNO42pvdsu3Os?=
 =?us-ascii?Q?iu9kvrdjLap2eFFsO5btzc/zuSAcxzRO1sEFIp5bkbP4ZnH4HZUZL/jNmO/M?=
 =?us-ascii?Q?ROkjJBqyJv8qomQ+6iTbEdz5fmHv3nKTXc36kpUw9H/DI5b8qvUX+2Fta8N6?=
 =?us-ascii?Q?ZQuHgpzA0LJal80bubTI1zDqMjDnJSz8yEo++d++u7hUjrgec50Pf8VJOEId?=
 =?us-ascii?Q?T3tV?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: f439d638-ffbb-4302-c3cf-08d895d7b0f6
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2020 09:01:29.5982 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3jqpYKca6tbvaVhQO5yFeSP/Ee18vH2/OyhfEqgKPRyOMeFIIEhPJYs1mV1EzXiS0ZXevT+vzP3265vuFBsBTstE3xL31iJhKo7vOXmbs/g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR05MB7247
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.113 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kk1XX-00Dh5R-4D
Subject: [tipc-discussion] [net-next] tipc: support 128bit node identity for
 peer removing
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

From: Hoang Le <hoang.h.le@dektech.com.au>

We add the support to remove a specific node down with 128bit
node identifier, as an alternative to legacy 32-bit node address.

example:
$tipc peer remove identiy <1001002|16777777>

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/node.c | 21 ++++++++++++++++++---
 1 file changed, 18 insertions(+), 3 deletions(-)

diff --git a/net/tipc/node.c b/net/tipc/node.c
index cd67b7d5169f..a7479f68a146 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -2195,6 +2195,9 @@ int tipc_nl_peer_rm(struct sk_buff *skb, struct genl_info *info)
 	struct tipc_net *tn = net_generic(net, tipc_net_id);
 	struct nlattr *attrs[TIPC_NLA_NET_MAX + 1];
 	struct tipc_node *peer, *temp_node;
+	u8 node_id[NODE_ID_LEN];
+	u64 *w0 = (u64 *)&node_id[0];
+	u64 *w1 = (u64 *)&node_id[8];
 	u32 addr;
 	int err;
 
@@ -2208,10 +2211,22 @@ int tipc_nl_peer_rm(struct sk_buff *skb, struct genl_info *info)
 	if (err)
 		return err;
 
-	if (!attrs[TIPC_NLA_NET_ADDR])
-		return -EINVAL;
+	/* attrs[TIPC_NLA_NET_NODEID] and attrs[TIPC_NLA_NET_ADDR] are
+	 * mutually exclusive case
+	 */
+	if (attrs[TIPC_NLA_NET_ADDR]) {
+		addr = nla_get_u32(attrs[TIPC_NLA_NET_ADDR]);
+		if (!addr)
+			return -EINVAL;
+	}
 
-	addr = nla_get_u32(attrs[TIPC_NLA_NET_ADDR]);
+	if (attrs[TIPC_NLA_NET_NODEID]) {
+		if (!attrs[TIPC_NLA_NET_NODEID_W1])
+			return -EINVAL;
+		*w0 = nla_get_u64(attrs[TIPC_NLA_NET_NODEID]);
+		*w1 = nla_get_u64(attrs[TIPC_NLA_NET_NODEID_W1]);
+		addr = hash128to32(node_id);
+	}
 
 	if (in_own_node(net, addr))
 		return -ENOTSUPP;
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
