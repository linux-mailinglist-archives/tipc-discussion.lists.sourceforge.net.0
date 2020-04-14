Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 025541A74D0
	for <lists+tipc-discussion@lfdr.de>; Tue, 14 Apr 2020 09:30:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jOG1o-0002p3-0T; Tue, 14 Apr 2020 07:30:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jOG1l-0002or-OE
 for tipc-discussion@lists.sourceforge.net; Tue, 14 Apr 2020 07:30:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VdxwfW5pqtrFF+DStCbu0ADgC+N02Jd5LOxh6Mu2xCY=; b=PlogQjjadPNmzZYHf0QntJsw6T
 zRkqaweEdskceVGrvEF7F9ZhqxGb4btuO9qzsJMGenH8gaI4X0Or7jKT185ikoHtvTYdsdDf4H357
 C9FveY6Sx4W0usze1odTGkkMhgv+1GSU9OsWGG9bhcd7upGMUdg40dHNb9zqLyOCskwM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=VdxwfW5pqtrFF+DStCbu0ADgC+N02Jd5LOxh6Mu2xCY=; b=X
 f80Zq4VYIpWfGGe6aW+HeOFSeduGOWxzb9KPQ+1mZfc11dPKOBmWOoneR6N5ZVgWaVbsAhYjz+f+V
 3R6U/yqjqJdus5SG9eK++IMkgzMHDOjt+K6LOBizMpyXau5R5CfhlqVvv9WzaO1V8hiBrjaNaQtcE
 f+dknTIEoyVmW0QA=;
Received: from mail-eopbgr60115.outbound.protection.outlook.com
 ([40.107.6.115] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jOG1b-00FUlq-Je
 for tipc-discussion@lists.sourceforge.net; Tue, 14 Apr 2020 07:30:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TYd4tEEORLMamOHZtuYBwc63AWG8ga1P4uI8vwuubeCkrXgCbMEKGvHb9HSynex4SCinymKNAnpOV2o5g4e3G7IwwP6akx3mVsixz7Q9iqB+lFHPmN/gxeu3XOs8d/YWTSeSXyQBllFRqUbOSu5wLc8RXeUBGoZMJNiFiRcTtCG58850Q4Uu6YvnJesCrEZLE41vwHQqxIXl8QpEbEWxhe6haSGXqK4RhOcKpDHCKDEOxlDXlHapyZtPwEL0jCuIVLfsnLMjQgWGJxa8ZKof/e0O0xvcIGW9kwync9XZHpzb4NNcn6SyK1pM6sOxMnROdP8ct2U3/li6W5jrU7yJjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VdxwfW5pqtrFF+DStCbu0ADgC+N02Jd5LOxh6Mu2xCY=;
 b=H83N+uK143RGt+9wE7px4t0z1+i/dSTFmlqzbF3hXKhB4D48azgJERaueHulpTiQdIE5YFlvDpVXxPLHeiRagdS74N+Oe4lo60drXdJI5VL4rk/o9ei1VWa03hSpotseoawPIn2YbOTpzAVqWmlRl34M7FewvcV3jPlAjH+eQymhmVj/EhLeG5vHAL6ksWrkuvFbjqcfsSUBMiJg3v8xz6rhWO8DQ9qMazG95Ulh3okmA892o6h8uGezjWRgSVeZjNQAK21YpistqXBLirAGcJPRIR03CMCkNnacfuBMeJHw9+bYGjB5uJUhANY9Fvg4yw86tC+8JCIxTZCc1KrQiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VdxwfW5pqtrFF+DStCbu0ADgC+N02Jd5LOxh6Mu2xCY=;
 b=YDi2Y0X/M0PmW/9WWburjio8kOTCn8LMJ430HdBgoQ3NXRnQB00JdhodmXCB6gTFoLnqmje8O65v62oktqcICOWfkut1ElikR54YIIPEneB/0a/HzkQ+G2GkChZPW99x1FCLZlQxoYM6u7EgMXVfrmI1Bf1p3dIjePoPhbIUWZM=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=tuong.t.lien@dektech.com.au; 
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3831.eurprd05.prod.outlook.com (2603:10a6:209:c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.28; Tue, 14 Apr
 2020 07:30:20 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c%6]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 07:30:20 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Tue, 14 Apr 2020 14:30:11 +0700
Message-Id: <20200414073011.18322-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-ClientProxiedBy: HK0PR03CA0108.apcprd03.prod.outlook.com
 (2603:1096:203:b0::24) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.22.229.239) by
 HK0PR03CA0108.apcprd03.prod.outlook.com (2603:1096:203:b0::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2900.15 via Frontend Transport; Tue, 14 Apr 2020 07:30:18 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [113.22.229.239]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 02211681-2b74-4623-5694-08d7e045af84
X-MS-TrafficTypeDiagnostic: AM6PR0502MB3831:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0502MB3831DA03CBF106858E9D1DA0E2DA0@AM6PR0502MB3831.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 0373D94D15
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(346002)(396003)(39840400004)(136003)(366004)(376002)(16526019)(55016002)(103116003)(7696005)(316002)(52116002)(1076003)(26005)(36756003)(2906002)(8676002)(956004)(81156014)(2616005)(66476007)(8936002)(478600001)(186003)(66946007)(66556008)(6666004)(86362001)(107886003)(5660300002)(4326008);
 DIR:OUT; SFP:1102; 
Received-SPF: None (protection.outlook.com: dektech.com.au does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OBtWUH8XcM1nC2I5HCN+Ei7J2j/Gfch2nfB3P4gMnvx1AoJ25e+GprAExnpcOz3+axSUqgqT7hLfb0kVP5RW6/oXMVXzCKNvIFf33BSo1fODl0xyvnix++P5VVbSOmUY+8/vx2Z4cRNZM1lnDaMxlvPB/MSnRLFEvRGKzCfEW4B9Sf01E6O0K1OF3rmnuCDFt+gCNCxbcFtnBdfkGf+pTkb9CuGHh5cjeitUZNM3Ee2J3Udl3zv7hdbxZtshtiXyIttulZOe/u9bXMNBrF2O4dutp7faOhCBuA0mfHivK6FxFHKFk3i7/sfeLd40nT6jtiE+/SRhOlK6duaIPX24ZR0xvAe9i2Kglv+1ydrDCAhOhk4xzQ54UgMu8437sYwabCaVPhNTJngQ7Q7CHhambrz6RxATvAnOZ04n2qZo02WbYEwhfgyKffw75VA7VgIi
X-MS-Exchange-AntiSpam-MessageData: O54kQFHVjybzfKsTQsspYyWfzwBu5I8IqhdTJlhLPJ2YtHgjFxMz4utQyskyE4icrEpg+rtpth08UTzQGgrtM4yA/l/of7Ua63XfHQPgr/G13s2MReHdq2vKtvMnlZNxGh5s1IdbIJao4MUT1mJnFg==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 02211681-2b74-4623-5694-08d7e045af84
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2020 07:30:20.1593 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lVdBySdgxfVYZVIUh7xsgMJmC5bCVRLpAy3ZGezAjmtcXS2bUrxfxOmpXYhs3yDClz1FTIqJ8T+UU2GupwxghFvGR3zCPiZ31b9mvVdJ1TQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3831
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.6.115 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.115 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1jOG1b-00FUlq-Je
Subject: [tipc-discussion] [PATCH RFC] tipc: make peer node cleanup timer
 configurable
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
Cc: tipc-dek@dektech.com.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Since commit 6a939f365bdb ("tipc: Auto removal of peer down node
instance"), a peer node instance is automatically clean up after 5 mins
without contact. This changed behavior is not really expected from user
who would expect to see the node with the "down" state in the node list
as before instead.
Also, the timer value is said to be small that the peer node might just
be rebooting, so will come back soon. This is absolutely no problem but
one wants to extend it to 10 minutes.

This commit makes the timer configurable via the sysctl file:

/proc/sys/net/tipc/node_cleanup

which indicates in seconds how long a peer down node should be removed.
The default value is 300 i.e. 5 mins, while a value of '0' will disable
the auto removal feature.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/core.h   |  1 +
 net/tipc/node.c   | 15 +++++++++------
 net/tipc/sysctl.c |  8 ++++++++
 3 files changed, 18 insertions(+), 6 deletions(-)

diff --git a/net/tipc/core.h b/net/tipc/core.h
index 631d83c9705f..7d07f9086936 100644
--- a/net/tipc/core.h
+++ b/net/tipc/core.h
@@ -89,6 +89,7 @@ struct tipc_crypto;
 extern unsigned int tipc_net_id __read_mostly;
 extern int sysctl_tipc_rmem[3] __read_mostly;
 extern int sysctl_tipc_named_timeout __read_mostly;
+extern int sysctl_tipc_node_cleanup __read_mostly;
 
 struct tipc_net {
 	u8  node_id[NODE_ID_LEN];
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 2373a66f3b59..5cf01e182730 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -46,8 +46,11 @@
 #include "trace.h"
 #include "crypto.h"
 
+int sysctl_tipc_node_cleanup __read_mostly = 300; /* in seconds */
+
 #define INVALID_NODE_SIG	0x10000
-#define NODE_CLEANUP_AFTER	300000
+#define NODE_CLEANUP_AFTER	\
+	msecs_to_jiffies(sysctl_tipc_node_cleanup * 1000)
 
 /* Flags used to take different actions according to flag type
  * TIPC_NOTIFY_NODE_DOWN: notify node is down
@@ -130,7 +133,7 @@ struct tipc_node {
 	unsigned long keepalive_intv;
 	struct timer_list timer;
 	struct rcu_head rcu;
-	unsigned long delete_at;
+	unsigned long checkpt;
 	struct net *peer_net;
 	u32 peer_hash_mix;
 #ifdef CONFIG_TIPC_CRYPTO
@@ -537,7 +540,7 @@ struct tipc_node *tipc_node_create(struct net *net, u32 addr, u8 *peer_id,
 	for (i = 0; i < MAX_BEARERS; i++)
 		spin_lock_init(&n->links[i].lock);
 	n->state = SELF_DOWN_PEER_LEAVING;
-	n->delete_at = jiffies + msecs_to_jiffies(NODE_CLEANUP_AFTER);
+	n->checkpt = jiffies;
 	n->signature = INVALID_NODE_SIG;
 	n->active_links[0] = INVALID_BEARER_ID;
 	n->active_links[1] = INVALID_BEARER_ID;
@@ -726,8 +729,8 @@ static bool tipc_node_cleanup(struct tipc_node *peer)
 		return false;
 
 	tipc_node_write_lock(peer);
-
-	if (!node_is_up(peer) && time_after(jiffies, peer->delete_at)) {
+	if (!node_is_up(peer) && NODE_CLEANUP_AFTER &&
+	    time_after(jiffies, peer->checkpt + NODE_CLEANUP_AFTER)) {
 		tipc_node_clear_links(peer);
 		tipc_node_delete_from_list(peer);
 		deleted = true;
@@ -1478,7 +1481,7 @@ static void node_lost_contact(struct tipc_node *n,
 	uint i;
 
 	pr_debug("Lost contact with %x\n", n->addr);
-	n->delete_at = jiffies + msecs_to_jiffies(NODE_CLEANUP_AFTER);
+	n->checkpt = jiffies;
 	trace_tipc_node_lost_contact(n, true, " ");
 
 	/* Clean up broadcast state */
diff --git a/net/tipc/sysctl.c b/net/tipc/sysctl.c
index 58ab3d6dcdce..087a89b27b9a 100644
--- a/net/tipc/sysctl.c
+++ b/net/tipc/sysctl.c
@@ -75,6 +75,14 @@ static struct ctl_table tipc_table[] = {
 		.extra1         = SYSCTL_ONE,
 	},
 #endif
+	{
+		.procname	= "node_cleanup",
+		.data		= &sysctl_tipc_node_cleanup,
+		.maxlen		= sizeof(sysctl_tipc_node_cleanup),
+		.mode		= 0644,
+		.proc_handler	= proc_dointvec_minmax,
+		.extra1         = SYSCTL_ZERO,
+	},
 	{}
 };
 
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
