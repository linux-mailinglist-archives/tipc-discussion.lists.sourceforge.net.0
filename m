Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5952CCD77
	for <lists+tipc-discussion@lfdr.de>; Thu,  3 Dec 2020 04:51:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kkfej-0006XK-VD; Thu, 03 Dec 2020 03:51:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kkfeR-0006Td-5V
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Dec 2020 03:51:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s5mBuNvvg878YUKgLOgtN3OaiLM6DiWrH+8fcbonyr0=; b=cbsr9pFVlAMmnGNH7NqIp36lGN
 ytMasv3nr2mzha3Bj0b+9yggFPcTJl9gjQpuMfYgliIy2eypKgQ5xgPx3bq7dIHmZ4EcsPHhtaBpZ
 k8i/6n4weTJwy5cub1YlM2Iw+ft083fnxXwBoBHU6u2JUTRtOp0s/g/UeLq9Ae1Sjf1s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=s5mBuNvvg878YUKgLOgtN3OaiLM6DiWrH+8fcbonyr0=; b=b
 4bE3ulM5Q0wZevH5uWT+KTUTMNJ/uqdZ65AeZgh9i5EBVbuMVAmArY0BrEmRKJDCYFYs5vadZ30/P
 o0tfmA4Z61KzsdSNJ1RLrrOXkQ+74LLEXPiCReglcyMrhDAwy53uOPntUzqFsGPiGoYhwsgQGWa3F
 lhD68yB7Pe8+9C6Y=;
Received: from mail-am6eur05on2114.outbound.protection.outlook.com
 ([40.107.22.114] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kkfeD-00H1Eb-9f
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Dec 2020 03:51:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WIJRWKedrBLlSwm3I9MdSGiVAtCNe7o7ApBO3/Dkzslz8NG3hz1e4/RoY7hloi24G/J0g+TCAfHdWN4LyUg99j6kUMRpXPYXm2ivhEXmXjhRKzPXZ0yLZozi+RdSlwq3RjPQ8jmiaWx1/R0GD5T9f2LHBEpvO5iHh/osKVffKff4/ORUmqluJokQw85J6p2I+/V6IyCmye0ugKUwty0ZxYaPtiINOqPV22X0Hj6D+Kje0cDJLlmKPNLzuSGYOunOoaTDU5/IfhquglLqyn7qQrgVbvPHSD2zrVurWU3XzJHZr50LL1J7hkayIyMpLNV8FoXZx5XdS4/23ykDlbODmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s5mBuNvvg878YUKgLOgtN3OaiLM6DiWrH+8fcbonyr0=;
 b=dt35b/A84AS2mjhyGGREls8Z3o7brts/bTvTl0IAAx5thdwyM4FUMbqhq8l7y7bIqFaC4HE/LpTTOgxAigpQO6tUL7RB6YOvlyX9hD+Aa9Ro4SAuNRgPZ8uQgZ6l+yTEZwJymjQa+KUml6E2b8EdLF4nWzLQheQRgmL23OD/fj90bUjJILWVe7l9CHpP8dZaTEkkCPs/+ve41u4Uuzol3zJyqY3EQfU4Fp4VQNRrWZcs1mS8JeohknSrlQdMWHVHcTeyIUXbabGP+Yr6JUQYHjTo1OHMB0ReTRdcj4e07n5/MsOqLGLz2X5J/CkwMBGVlVTCsJ4hIPLD3TyD00ycuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s5mBuNvvg878YUKgLOgtN3OaiLM6DiWrH+8fcbonyr0=;
 b=IB990/LBhKgg5Laz0r7np3fHtwP2TB27L7jm1yOBE1/3XhjNKE08bigAHIic8EhntcJPMRugp1j/foybReGfSt5Cqo57cxrx69EhpKKrS8CCnokHOLLTTFDUV4PIlatseVZBmAZF1CyZmSxvSV0qpBv9PAYAtKIuesZP562aoFI=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB4525.eurprd05.prod.outlook.com (2603:10a6:802:5e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20; Thu, 3 Dec
 2020 03:51:04 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::9854:ed43:372d:2883]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::9854:ed43:372d:2883%6]) with mapi id 15.20.3611.024; Thu, 3 Dec 2020
 03:51:02 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 netdev@vger.kernel.org, tipc-discussion@lists.sourceforge.net
Date: Thu,  3 Dec 2020 10:50:45 +0700
Message-Id: <20201203035045.4564-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-ClientProxiedBy: HKAPR03CA0003.apcprd03.prod.outlook.com
 (2603:1096:203:c8::8) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 HKAPR03CA0003.apcprd03.prod.outlook.com (2603:1096:203:c8::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3632.19 via Frontend Transport; Thu, 3 Dec 2020 03:50:57 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e48642f6-fec4-413d-8cba-08d8973ea58f
X-MS-TrafficTypeDiagnostic: VI1PR05MB4525:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB45255FF1A7D9D7B428BC96CEF1F20@VI1PR05MB4525.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t4RL938u0pjiJDC575MIRFjCwI6gxcNm8j11euzYgIVJei/Qg6QHkEEMfoHIwTbtjtJJY8PSd6CuVdWXNot61UM7ldkMjC86A6SuM1SBAxes/k/AWgtz6VJ9z8nBp2AlHFvvm5LGXvLsukdE3RBNDbkuYepUJWyg4JsPEsVpReHh2aNNPsSf4gbqVzIFiEKuyRKKrx/BOuruo2bcjuEZETO84E6BxSL8TvxkliR22S9sgEX+mFZO94ooTQ0GpjZPMW/V2giK4rrWdKAEDlTtMmlYSIlXOuoU9MJbBQrvPkr7mrSpNnqjVjAnXnpRp4Uy
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(136003)(39830400003)(346002)(396003)(366004)(478600001)(8676002)(16526019)(103116003)(2616005)(956004)(66946007)(6666004)(66476007)(55016002)(2906002)(66556008)(1076003)(5660300002)(36756003)(26005)(83380400001)(4326008)(8936002)(7696005)(86362001)(186003)(107886003)(316002)(52116002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?/jIzUhkAh7yA4Iw+Ffwh4M/syn0JM2tRhxyUfm2EwqgebkvD09ZkFxpM7DED?=
 =?us-ascii?Q?HWEfjcuJeCRN4Hthv0kz6RUG/fH09qPlMsF07u1PsiCtPyUybODps4EKBNda?=
 =?us-ascii?Q?LuXmhuHP72G+YbP1+rO+3feux3ZFbcqxwnltxTRHYJfeFRKu85SfV08X3VtW?=
 =?us-ascii?Q?a7E6q6KxwWBkZF+NCOGMMcFevFs9KcgAAY66aqp1Mq95vse2ntY+Sg3srwKC?=
 =?us-ascii?Q?P68ZJW8JL5iiocoXv/JGESBYDGb9K+7M2eofMIkJlu2xtzW24MF658BmFTq9?=
 =?us-ascii?Q?I91hi5rVHQKzMU6jGPor/b2ZzrsVxjV0W+Hi/74mcYDJ6HdPZkfWNeE2fTrL?=
 =?us-ascii?Q?ZrFS/YQUrfoAte7yNj8DG00WCs1xYc9ueitMSH2mh95hrgLKTBEvRQctJ4Qv?=
 =?us-ascii?Q?J8///B55tA/H0RDEkiMhM1tPN4NjxaH2A9I3MxKvFhIOF4ZPi2xxildtmKXX?=
 =?us-ascii?Q?QOjxkc9svdeHCuuL/odgJChDd9Waq2yi8l0dGa5hk6z2WjvbR3X7b5y7JHUK?=
 =?us-ascii?Q?qi3uZyqFiwB+IYE1v7xw70fPmNbJ1SdeWqyyBrIklTj/wGLe1LvQhAyDv/jf?=
 =?us-ascii?Q?7+YDmIc8U5M/xWApnDenMjUG+2X+VCZkJrtDPFKQRFpNI4/Hfv6ZJVEChc+L?=
 =?us-ascii?Q?Ixo4TYolbF4nPWYX42Sz81oHfeLZhfPKNlaa2Env80q6mm8VP+Ll7nG4pCqk?=
 =?us-ascii?Q?qoFoRStrZhuyYHjQ3kcuVd2BMv4UKgCKTEti8NK6xgECwVGQel+QSuJLccud?=
 =?us-ascii?Q?EfU6kN2jrb2GqQz8BLTJ2Hilqd4UKZkIclA6bLeWMLHcBgmoner7KpM3cJ2z?=
 =?us-ascii?Q?wQV39qlafycSe+XtPzVbPe0eXo+K1iuZGcR4MnIx+n3RKsbscCqoTwzsu71e?=
 =?us-ascii?Q?308emvgIsC7d/BuEol2LZSJzhQ/3Tx5Kc+Nvfc0eau9bc2CaPkGjtW9gGki6?=
 =?us-ascii?Q?bJ5ucBHQ4/XDyGccLQ5rJ0g6t9MP0gVtO6wjYmxM5+ZUmyIUkwYlLcuBCFcV?=
 =?us-ascii?Q?7JWP?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: e48642f6-fec4-413d-8cba-08d8973ea58f
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2020 03:51:02.5831 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0YFx/JLkqlNM9KmoqCnF05XbDtRkpaNLXDPh361yE4ZEPT1LjjeNrIbo7KwQKQcxeSigFRFtahfVDQKAvyYbdnq8wyxTjWFo0Q1LsRgvQ4g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4525
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.114 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kkfeD-00H1Eb-9f
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

Acked-by: Jon Maloy <jmaloy@redhat.com>
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/node.c | 21 ++++++++++++++++++---
 1 file changed, 18 insertions(+), 3 deletions(-)

diff --git a/net/tipc/node.c b/net/tipc/node.c
index 032d8fc09894..81d69779016c 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -2220,6 +2220,9 @@ int tipc_nl_peer_rm(struct sk_buff *skb, struct genl_info *info)
 	struct tipc_net *tn = net_generic(net, tipc_net_id);
 	struct nlattr *attrs[TIPC_NLA_NET_MAX + 1];
 	struct tipc_node *peer, *temp_node;
+	u8 node_id[NODE_ID_LEN];
+	u64 *w0 = (u64 *)&node_id[0];
+	u64 *w1 = (u64 *)&node_id[8];
 	u32 addr;
 	int err;
 
@@ -2233,10 +2236,22 @@ int tipc_nl_peer_rm(struct sk_buff *skb, struct genl_info *info)
 	if (err)
 		return err;
 
-	if (!attrs[TIPC_NLA_NET_ADDR])
-		return -EINVAL;
+	/* attrs[TIPC_NLA_NET_NODEID] and attrs[TIPC_NLA_NET_ADDR] are
+	 * mutually exclusive cases
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
