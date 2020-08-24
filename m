Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CA824FAE6
	for <lists+tipc-discussion@lfdr.de>; Mon, 24 Aug 2020 12:01:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kA9Hw-0005QJ-GK; Mon, 24 Aug 2020 10:01:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kA9Hv-0005Pz-82
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Aug 2020 10:01:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9YRc9Dnaz4DAHXxj3AQAO6fKr1lS82JhDwyGH6UyLpw=; b=TPoEBScGZUuSnVm1AVnyNRqk2j
 gWjeV1sNznPatlSdxhOBjcnhAtB0SmSdFsASfYfVn2zbq5NKny5Ly8mytc9nolobolqVSiCIKLQai
 TRzLIIhBTNRGSqqgC9+LdducI+7R2HVoYuga/XpruVLBazfkLA7AmzaIMCnhuUyPQTiY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9YRc9Dnaz4DAHXxj3AQAO6fKr1lS82JhDwyGH6UyLpw=; b=R
 JqrX4Ga2mJ48QjL5kHwwAx/Qf0jgJXm6hlxkqvGbYnNvgoneOiKYSFhJ/pbIBl/TpMJH5gDJjumjx
 7chUiNYyVolX83n4L5JredGa+BBPqVFe83uX/jR+FegUnVkmcRb4SzVoHGA7m89fhe4YNwXoYYILb
 ZuGjl23PvhnyPBqU=;
Received: from mail-eopbgr70113.outbound.protection.outlook.com
 ([40.107.7.113] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kA9Ht-002Nn6-Bt
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Aug 2020 10:01:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PYIShBQNMfGrIrRen+Ims3RGBIOV8P0B2Hx27Yh6zMNI5OiMk336mw3e9aAq0DXQ2ZhVODLz0AEd76G5MSZ2U26msynA3u0S2mh7uvUWY6gCaTP3d1lbFs8oWNwZeyYlS4gK0hXtSs3rIJHciyghCv5YMI7V1eVWFCYr2/ckQC0jl8LnCvA9yWjNH4fawsFQT9kJPe2b54uJyTPHLmaP7qTncQxqEnF5eH448hhU8OhwPysB0m9rPquR0ve3JgmNK962iMy5p42sQPeR3s4IhvwxMDQ63OpZBLo6U6f9H5Q23mqnybsbFklGXQBMJcozu+l2pAzbYOqy6nUojiGW3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9YRc9Dnaz4DAHXxj3AQAO6fKr1lS82JhDwyGH6UyLpw=;
 b=YxIzkZZIm0GDm5DRNQDCDh6V4K4si9qUdRaGqsw7wlYRwzyDOcjLwWB/7/gqS0+ypWps3JfVJSR5kd6wOcFWIdrGwc2ISR3tuAsniLMT8rJLCQYqyCsVvAwI9T/5ZPlo8x9O5uSNZNmfRNrXaKWEZ48kJ3l5Ois+2d3YcLFYsMiYn3JcGkyFosGqMKcFs+6Gd4bOoy/9cn4xjTgKmCl4i27iFpTEays1EKEePMFeOKo0n3QrDOVbNufIhPVO6bH9d/QVRwsUX2UDnDT1iAgXPyR3/SzJxuo50WCG3vpJPO2j2WYVcpTMusVxG9I/1xYjZ5meYYubfUJuw8rmSigvJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9YRc9Dnaz4DAHXxj3AQAO6fKr1lS82JhDwyGH6UyLpw=;
 b=UcWZykLSLQioahyyfbqeLyWEaQoiFIzd0U+qcDbMYnG2GLXq7umieLy8mIdLGv0pSfsxKRCg/KzyrJ46I6RajoL8xWcK6qxLREY7AlfHDJOgUhmbgb331IVd/3DryrctneikMndtTGkkcH+dnNwQ1pp0N9uSZ6rzVrM6cpV8gyE=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB3342.eurprd05.prod.outlook.com (2603:10a6:802:1d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.26; Mon, 24 Aug
 2020 10:00:58 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::8dac:a296:42d9:e90b%7]) with mapi id 15.20.3305.026; Mon, 24 Aug 2020
 10:00:58 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, tipc-discussion@lists.sourceforge.net
Date: Mon, 24 Aug 2020 17:00:44 +0700
Message-Id: <20200824100044.14438-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: SG2PR06CA0157.apcprd06.prod.outlook.com
 (2603:1096:1:1e::11) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR06CA0157.apcprd06.prod.outlook.com (2603:1096:1:1e::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.24 via Frontend Transport; Mon, 24 Aug 2020 10:00:56 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fb518c30-dce5-4b52-9a66-08d848149913
X-MS-TrafficTypeDiagnostic: VI1PR05MB3342:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB3342ED407B9017EEC7134186F1560@VI1PR05MB3342.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:773;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lsBwHerEXM0DhXun1fdCRJPOkHEM0DFQ4dzKgZ6TY9uBrArB8jkgBAdoQXnnEAXL0mUXYJ5Grhg2vGaVnP1VTDkLzcrXNeUR5a9P5WeW0KdveWE+ZbjCDakar0fNHvDx7e5bbkOE0NK8QzXNEXUr+I98K+fbwhUUqcn8hDyyptT/lbyMyaFWKixvzK53KFLZJztOLYBCJp27iXi6oBW2/a5lR1K65wZ5g7mpTbgmlpMEp1j1smWKG9lHIWXIOQ0NOAhI5p7WG9pYaMY0PfvVZKXWFibXJ1dhZNWX4nyUnOYTXmuBnp42ZzlSEXm9lA3E6q/4B9k1ihe+6n7UzDSAfg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(39850400004)(396003)(346002)(376002)(366004)(4326008)(478600001)(107886003)(5660300002)(55016002)(103116003)(2616005)(956004)(316002)(2906002)(16526019)(86362001)(26005)(66946007)(66556008)(66476007)(52116002)(8676002)(36756003)(1076003)(8936002)(186003)(83380400001)(6666004)(7696005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: QwQCyeHdU9CdbbRcY15QgDFiWnouQrN/Mshnlmww1l/WbUCYWaB7dLDUR5aj9zhS/iecW0XGm/CyEWFDFe75JUE98AaKXiYOu6lUydLzjJePC0XtJdPI95MVbcC/++ZZ4yEVwtFQXSC36/RKqNdaGzE/SJKTHmmUH7hoz54DNq6xx+szKiEJA882OSa84ufsoyG/22P+Yz7IlnjMP1lLU5yVYz/FpGstPzI3XEndhdqAsFrimkw9hObWQtOK3BJmglSo6M6OV9IqtEdCf5QM1mfP1m5rm4hA4gBe6eVUm2OJo05YqhXxnzJ8HftRRB6Wee8tXOyRIC5ezY2huwWew0xpbL8bYIpWZKjsOgcqNTPyIv1etc0qiwi0jOqjEcAj3a5fuGQy/xeGW062H3Alv8xrDiSVYig66XXkyrmohw3jA7m0e2xC81d8Rxm+DOJwWE8ExQ8KaTFA0E1YlWuUVLPBIYpUFg+VHiyZVOkB2AemT3sdilEnmqqBaBs31J4cZADnUzhJE8EnZyE1bf91Fdlzo/tsW6+ne8LRfmoFk9hx2Rowfx5LuFJAZUyU5+7m45QykyOPSFQuKSN7+XnDjKMIreMLnMFG57wHj/k5XSbGWpDtPu+oifU6jPxPHCtJAOchheDZOqeHxUh9mLyfCQ==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: fb518c30-dce5-4b52-9a66-08d848149913
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2020 10:00:58.1187 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KCHVvpKtoWsBpGf4fBAuTj3WHzDHSRtFtt+OIOvAgdMPe3lQzJUXw9AfLAzubrfe8gKadTzMbabLr/EdaesXEZSVeNqm/0lLlLMhMG8/Ov8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB3342
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.7.113 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.113 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kA9Ht-002Nn6-Bt
Subject: [tipc-discussion] [iproute2-next v2] tipc: support 128bit node
 identity for peer removing
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

Problem:
In kernel upstream, we add the support to set node identity with
128bit. However, we are still using legacy format in command tipc
peer removing. Then, we got a problem when trying to remove
offline node i.e:

$ tipc node list
Node Identity                    Hash     State
d6babc1c1c6d                     1cbcd7ca down

$ tipc peer remove address d6babc1c1c6d
invalid network address, syntax: Z.C.N
error: No such device or address

Solution:
We add the support to remove a specific node down with 128bit
node identifier, as an alternative to legacy 32-bit node address.

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
---
 tipc/peer.c | 53 ++++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 52 insertions(+), 1 deletion(-)

diff --git a/tipc/peer.c b/tipc/peer.c
index f6380777033d..f14ec35e6f71 100644
--- a/tipc/peer.c
+++ b/tipc/peer.c
@@ -59,17 +59,68 @@ static int cmd_peer_rm_addr(struct nlmsghdr *nlh, const struct cmd *cmd,
 	return msg_doit(nlh, NULL, NULL);
 }
 
+static int cmd_peer_rm_nodeid(struct nlmsghdr *nlh, const struct cmd *cmd,
+			      struct cmdl *cmdl, void *data)
+{
+	char buf[MNL_SOCKET_BUFFER_SIZE];
+	__u8 id[16] = {0,};
+	__u64 *w0 = (__u64 *)&id[0];
+	__u64 *w1 = (__u64 *)&id[8];
+	struct nlattr *nest;
+	char *str;
+
+	if (cmdl->argc != cmdl->optind + 1) {
+		fprintf(stderr, "Usage: %s peer remove identity NODEID\n",
+			cmdl->argv[0]);
+		return -EINVAL;
+	}
+
+	str = shift_cmdl(cmdl);
+	if (str2nodeid(str, id)) {
+		fprintf(stderr, "Invalid node identity\n");
+		return -EINVAL;
+	}
+
+	nlh = msg_init(buf, TIPC_NL_PEER_REMOVE);
+	if (!nlh) {
+		fprintf(stderr, "error, message initialisation failed\n");
+		return -1;
+	}
+
+	nest = mnl_attr_nest_start(nlh, TIPC_NLA_NET);
+	mnl_attr_put_u64(nlh, TIPC_NLA_NET_NODEID, *w0);
+	mnl_attr_put_u64(nlh, TIPC_NLA_NET_NODEID_W1, *w1);
+	mnl_attr_nest_end(nlh, nest);
+
+	return msg_doit(nlh, NULL, NULL);
+}
+
 static void cmd_peer_rm_help(struct cmdl *cmdl)
+{
+	fprintf(stderr, "Usage: %s peer remove PROPERTY\n\n"
+		"PROPERTIES\n"
+		" identity NODEID         - Remove peer node identity\n",
+		cmdl->argv[0]);
+}
+
+static void cmd_peer_rm_addr_help(struct cmdl *cmdl)
 {
 	fprintf(stderr, "Usage: %s peer remove address ADDRESS\n",
 		cmdl->argv[0]);
 }
 
+static void cmd_peer_rm_nodeid_help(struct cmdl *cmdl)
+{
+	fprintf(stderr, "Usage: %s peer remove identity NODEID\n",
+		cmdl->argv[0]);
+}
+
 static int cmd_peer_rm(struct nlmsghdr *nlh, const struct cmd *cmd,
 			struct cmdl *cmdl, void *data)
 {
 	const struct cmd cmds[] = {
-		{ "address",	cmd_peer_rm_addr,	cmd_peer_rm_help },
+		{ "address",  cmd_peer_rm_addr,   cmd_peer_rm_addr_help },
+		{ "identity", cmd_peer_rm_nodeid, cmd_peer_rm_nodeid_help },
 		{ NULL }
 	};
 
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
