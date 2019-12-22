Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EAB128C6B
	for <lists+tipc-discussion@lfdr.de>; Sun, 22 Dec 2019 04:00:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/c6oGgzC+oqif/E1j7IzK3ygHmBU+4qY20f4tytTuJg=; b=YzjI6GT2SBZl+Lq1su7G4kKLt
	5d0sBkbnyoWpQk1a81/KTjf4aZjTNmYUn5LM1Fn4DHlGCHqjwD+KiSTTq4C+RLEIBZkqpQGratb9/
	4TGSJuRg5gABvAzU3CW/oCNinm4yWa1Pvj0Y3mitvKr9BG0uSmcKhmRKL6QQM8m8gBqOE=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iirTw-0000by-5h; Sun, 22 Dec 2019 03:00:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iirTt-0000bk-Iw
 for tipc-discussion@lists.sourceforge.net; Sun, 22 Dec 2019 03:00:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MjhQSr32SUmZdN8bPRA8gZ0Sb/zizb3jvNH+yqXJncQ=; b=HzmIjUtBC4rclGMDxobEbluLax
 FqUuTzA9lUhRHtALCAE5p7UGAdKVls4yYaw5+X5fqFIkQ7tHMnu+3EwS/Xdnn9av2pAZ/Sj7B1WPI
 5btp2SdfQXGKU5cXqSppFkpc9uGi1humyFO6NmBarWlc/aYXQIF6EInCv7k17HmTk7pI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MjhQSr32SUmZdN8bPRA8gZ0Sb/zizb3jvNH+yqXJncQ=; b=fTBnrXicMTaSjfgdssgTMLuBfq
 NhUjTpagKK9Gc4MRVh+koCgEAZZ2Swj0VuGbZE5a+iaUUtj5211TrXkeaOM8wK99YM7ljv9sWmYtN
 oUlO2yvS0OzOfqmkYm9lo6iGfG82LWcLqbZ80+m1URT7AUEnWLsGQ1dU/hx1M2SnGLQc=;
Received: from mail-eopbgr60065.outbound.protection.outlook.com ([40.107.6.65]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iirTm-00CFym-4n
 for tipc-discussion@lists.sourceforge.net; Sun, 22 Dec 2019 03:00:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BmYFwIdRuxKm1Fj9xPW74oK/OhxQyhdDTXg2PYBmiktk/0oCDYBYivGy6vMeQ9UfvfurZ9F3lqGZ40Jnu2rkQ2TQsAA5ReXuaY+Hlk0HOrEyjURmRfOnHa/k3Ycv1m/tm21fDS6g5t3w8i1Yjwqf+NMrO//YxV175OsoLP1P/bRy+rMbZsOFK2Xh6M50DHbCyCmjh+51Y6drfBJ9wpsyxHOC8Ey7yeRDYwPwqKHlTk/bKsmQ9Hq2evGsW4WRz7Sqg8YM5sKc1kfBIwtZj/AmXm58vH4ehfyGK3SBs2Xxm6Z3G0kg5iUZuT4kxIkW7bxp76aQ9ij7bmw0d6UMZB8HaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MjhQSr32SUmZdN8bPRA8gZ0Sb/zizb3jvNH+yqXJncQ=;
 b=VSwhv5A2+STyWEMTsgkxTDRNDYLeeC/dy+tpHlrpyDDfc8WCHX5hesT7vcDxgdymXtSkw9lzDLv/SieFWa/9d+1UJpUR1kfDEWt/y3MgOjG+R+6vkjwRZGjPgNXmH75j/2RP5fpoRkW6WAg7/5eiq31L++YMbULcMbvd/B840C2iGCr1qgCgYo3Kq/sEMWtxExBJ0TRlDsi/xtXH8wghRgRc47bGrBzfbG7Tx3jT+2NXqURJazKtT3KEGvlACedQkXBhKRlR2FNj6ALHJZs2WZ4Ek8aEly8bDCu44atsEqnjsCe+4jSLvJqG/xrhsw+OWrVqj8Nh18MqHxWUomNPUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 192.176.1.74) smtp.rcpttodomain=lists.sourceforge.net
 smtp.mailfrom=ericsson.com; dmarc=pass (p=reject sp=none pct=100) action=none
 header.from=ericsson.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MjhQSr32SUmZdN8bPRA8gZ0Sb/zizb3jvNH+yqXJncQ=;
 b=VDgCFJC1tUi4ABtBVaDM1wSUW635mWAKSJEi44RzD4XdhdEA54BOMTqqNrIYW1oO1Hf0WU774mhXMxeEyB5UXZZ1sw7ucFCDgkjzL+lGhPJGapyjUcKATQP2N+oPmaprhSfgQtHFn99CCDBIrU16Cq4dHWoVBca9+Bi74Sl2Dhg=
Received: from DB6PR07CA0094.eurprd07.prod.outlook.com (2603:10a6:6:2b::32) by
 DB7PR07MB4585.eurprd07.prod.outlook.com (2603:10a6:5:2b::28) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.12; Sun, 22 Dec 2019 02:26:14 +0000
Received: from VE1EUR02FT047.eop-EUR02.prod.protection.outlook.com
 (2a01:111:f400:7e06::202) by DB6PR07CA0094.outlook.office365.com
 (2603:10a6:6:2b::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.7 via Frontend
 Transport; Sun, 22 Dec 2019 02:26:14 +0000
Authentication-Results: spf=pass (sender IP is 192.176.1.74)
 smtp.mailfrom=ericsson.com; lists.sourceforge.net; dkim=none (message not
 signed) header.d=none;lists.sourceforge.net; dmarc=pass action=none
 header.from=ericsson.com;
Received-SPF: Pass (protection.outlook.com: domain of ericsson.com designates
 192.176.1.74 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=192.176.1.74; helo=oa.msg.ericsson.com;
Received: from oa.msg.ericsson.com (192.176.1.74) by
 VE1EUR02FT047.mail.protection.outlook.com (10.152.13.237) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2559.14 via Frontend Transport; Sun, 22 Dec 2019 02:26:14 +0000
Received: from ESESBMB501.ericsson.se (153.88.183.168) by
 ESESSMR502.ericsson.se (153.88.183.110) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Sun, 22 Dec 2019 03:26:12 +0100
Received: from ESESSMB503.ericsson.se (153.88.183.164) by
 ESESBMB501.ericsson.se (153.88.183.168) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Sun, 22 Dec 2019 03:26:10 +0100
Received: from tipsy.lab.linux.ericsson.se (153.88.183.153) by
 smtp.internal.ericsson.com (153.88.183.191) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Sun, 22 Dec 2019 03:26:10 +0100
To: <tipc-discussion@lists.sourceforge.net>,
 <parthasarathy.bhuvaragan@gmail.com>, <tung.q.nguyen@dektech.com.au>,
 <hoang.h.le@dektech.com.au>, <jon.maloy@ericsson.com>,
 <tuong.t.lien@dektech.com.au>, <ying.xue@windriver.com>,
 <lucien.xin@gmail.com>, lxin.redhat
Date: Sun, 22 Dec 2019 03:26:08 +0100
Message-ID: <1576981569-27482-7-git-send-email-jon.maloy@ericsson.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1576981569-27482-1-git-send-email-jon.maloy@ericsson.com>
References: <1576981569-27482-1-git-send-email-jon.maloy@ericsson.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:192.176.1.74; IPV:; CTRY:SE; EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(346002)(376002)(199004)(189003)(2616005)(36756003)(26005)(7636002)(316002)(110136005)(356004)(8676002)(86362001)(956004)(8936002)(478600001)(2906002)(5660300002)(246002)(70206006)(70586007)(426003)(336012)(30864003)(44832011)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR07MB4585; H:oa.msg.ericsson.com; FPR:;
 SPF:Pass; LANG:en; PTR:office365.se.ericsson.net; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5a710114-6a09-4809-84f5-08d78686512f
X-MS-TrafficTypeDiagnostic: DB7PR07MB4585:
X-LD-Processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
X-Microsoft-Antispam-PRVS: <DB7PR07MB45851BD37E455D4932318CAD9A2F0@DB7PR07MB4585.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3173;
X-Forefront-PRVS: 02596AB7DA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FfaH+acz9iEhCPorNFGUU1SWbmtP37FjME9P8CQIJ/m8ZcQInM5/6kLz8+QDOHzQ7VIeoo+vtxBRmdVlBsPKHk2vr8pXrT00/xlYYjbNMqic86k5U6330ThAW+v/On49FdYg76gx/o097dCZJUWe/WAyvRpeR0ifx4q0cyevwuUETakljiFecXj/l8P9coXxoL0gEzdZ8vJm/1wgxs5gs+4MztY8bfsiyA3C5wPhz66bLw7fXpuE1H/1kuW5gc/HpZAxn2GvzIxFDiEJJNCpxjRwRdvuc5FSLeBcohG04MYcUmD8wzez2Y9E4lRMpMGC0KJME07XVgyEJeJcRoMsFbbcgwIqTFXaNxGfZ74wkDM1I7Fn0MwTKenSYnTbJB4Vj8Xt+sF7YGYEzIYIXTxUu2INL0PvyctfjEt5EL8diJBSUMgji9x71aoJefYNg2Lb
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2019 02:26:14.1252 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a710114-6a09-4809-84f5-08d78686512f
X-MS-Exchange-CrossTenant-Id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=92e84ceb-fbfd-47ab-be52-080c6b87953f; Ip=[192.176.1.74];
 Helo=[oa.msg.ericsson.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR07MB4585
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.6.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iirTm-00CFym-4n
Subject: [tipc-discussion] [net-next 5/6] tipc: introduce GSO
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
From: Jon Maloy via tipc-discussion <tipc-discussion@lists.sourceforge.net>
Reply-To: Jon Maloy <jon.maloy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

We introduce a generic GSO solution that works well both with TIPC/UDP
and L2 bearers. his code does not by itself give any performance
improvementsf, but it is a very useful framework for achieving
such improvemnts in later commits.

Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
---
 net/tipc/bcast.c     |  16 +--
 net/tipc/bearer.c    |  29 +++++
 net/tipc/link.c      |  44 ++++---
 net/tipc/msg.c       | 331 ++++++++++++++++++++++++++++++---------------------
 net/tipc/msg.h       |  18 ++-
 net/tipc/node.c      |   1 +
 net/tipc/socket.c    |  14 +--
 net/tipc/udp_media.c |   4 +-
 8 files changed, 286 insertions(+), 171 deletions(-)

diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
index 42e01e9..c5654d6 100644
--- a/net/tipc/bcast.c
+++ b/net/tipc/bcast.c
@@ -360,14 +360,14 @@ static int tipc_mcast_send_sync(struct net *net, struct sk_buff *skb,
 /* tipc_mcast_xmit - deliver message to indicated destination nodes
  *                   and to identified node local sockets
  * @net: the applicable net namespace
- * @pkts: chain of buffers containing message
+ * @xmitq: list containing message buffer
  * @method: send method to be used
  * @dests: destination nodes for message.
  * @cong_link_cnt: returns number of encountered congested destination links
  * Consumes buffer chain.
  * Returns 0 if success, otherwise errno
  */
-int tipc_mcast_xmit(struct net *net, struct sk_buff_head *pkts,
+int tipc_mcast_xmit(struct net *net, struct sk_buff_head *xmitq,
 		    struct tipc_mc_method *method, struct tipc_nlist *dests,
 		    u16 *cong_link_cnt)
 {
@@ -380,8 +380,8 @@ int tipc_mcast_xmit(struct net *net, struct sk_buff_head *pkts,
 	skb_queue_head_init(&inputq);
 	__skb_queue_head_init(&localq);
 
-	/* Clone packets before they are consumed by next call */
-	if (dests->local && !tipc_msg_reassemble(pkts, &localq)) {
+	/* Clone message before it is consumed by xmit call */
+	if (dests->local && !tipc_msg_clone(xmitq, &localq)) {
 		rc = -ENOMEM;
 		goto exit;
 	}
@@ -389,7 +389,7 @@ int tipc_mcast_xmit(struct net *net, struct sk_buff_head *pkts,
 	if (dests->remote) {
 		tipc_bcast_select_xmit_method(net, dests->remote, method);
 
-		skb = skb_peek(pkts);
+		skb = skb_peek(xmitq);
 		hdr = buf_msg(skb);
 		if (msg_user(hdr) == MSG_FRAGMENTER)
 			hdr = msg_inner_hdr(hdr);
@@ -401,9 +401,9 @@ int tipc_mcast_xmit(struct net *net, struct sk_buff_head *pkts,
 					     dests, cong_link_cnt);
 
 		if (method->rcast)
-			rc = tipc_rcast_xmit(net, pkts, dests, cong_link_cnt);
+			rc = tipc_rcast_xmit(net, xmitq, dests, cong_link_cnt);
 		else
-			rc = tipc_bcast_xmit(net, pkts, cong_link_cnt);
+			rc = tipc_bcast_xmit(net, xmitq, cong_link_cnt);
 	}
 
 	if (dests->local) {
@@ -412,7 +412,7 @@ int tipc_mcast_xmit(struct net *net, struct sk_buff_head *pkts,
 	}
 exit:
 	/* This queue should normally be empty by now */
-	__skb_queue_purge(pkts);
+	__skb_queue_purge(xmitq);
 	return rc;
 }
 
diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index 34ca7b7..9477e31 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -229,6 +229,19 @@ void tipc_bearer_remove_dest(struct net *net, u32 bearer_id, u32 dest)
 	rcu_read_unlock();
 }
 
+static struct sk_buff *tipc_gso_segment(struct sk_buff *skb,
+					netdev_features_t features)
+{
+	int tnl_hlen = skb->inner_mac_header - SKB_GSO_CB(skb)->mac_offset;
+	struct sk_buff_head segs;
+
+	__skb_queue_head_init(&segs);
+	if (!tipc_skb_segment_all(skb, tnl_hlen, &segs))
+		return ERR_PTR(-EINVAL);
+	skb_peek_tail(&segs)->next = NULL;
+	return __skb_peek(&segs);
+}
+
 /**
  * tipc_enable_bearer - enable bearer with the given name
  */
@@ -475,6 +488,9 @@ int tipc_l2_send_msg(struct net *net, struct sk_buff *skb,
 	skb_reset_network_header(skb);
 	skb->dev = dev;
 	skb->protocol = htons(ETH_P_TIPC);
+	skb_set_inner_protocol(skb, htons(ETH_P_TIPC));
+	if (msg_user(buf_msg(skb)) == MSG_FRAGMENTER)
+		skb_shinfo(skb)->gso_type = SKB_GSO_DODGY;
 	dev_hard_header(skb, dev, ETH_P_TIPC, dest->value,
 			dev->dev_addr, skb->len);
 	dev_queue_xmit(skb);
@@ -686,13 +702,26 @@ static struct notifier_block notifier = {
 	.priority	= 0,
 };
 
+static struct packet_offload tipc_offload = {
+	.type = htons(ETH_P_TIPC),
+	.priority = 0,
+	.callbacks = {
+		.gso_segment = tipc_gso_segment,
+		.gro_receive = NULL,
+		.gro_complete = NULL,
+		},
+	.list = {0,},
+};
+
 int tipc_bearer_setup(void)
 {
+	dev_add_offload(&tipc_offload);
 	return register_netdevice_notifier(&notifier);
 }
 
 void tipc_bearer_cleanup(void)
 {
+	dev_remove_offload(&tipc_offload);
 	unregister_netdevice_notifier(&notifier);
 }
 
diff --git a/net/tipc/link.c b/net/tipc/link.c
index e205347..8455fd1 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -980,18 +980,10 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 	int imp = msg_importance(hdr);
 	unsigned int mss = tipc_link_mss(l);
 	unsigned int cwin = l->window;
-	unsigned int mtu = l->mtu;
 	unsigned int pktcnt;
 	bool new_bundle;
 	int rc = 0;
 
-	if (unlikely(msg_size(hdr) > mtu)) {
-		pr_warn("Too large msg, purging xmit list %d %d %d %d %d!\n",
-			skb_queue_len(list), msg_user(hdr),
-			msg_type(hdr), msg_size(hdr), mtu);
-		__skb_queue_purge(list);
-		return -EMSGSIZE;
-	}
 	/* Allow oversubscription of one data msg per source at congestion */
 	if (unlikely(l->backlog[imp].len >= l->backlog[imp].limit)) {
 		if (imp == TIPC_SYSTEM_IMPORTANCE) {
@@ -1224,7 +1216,12 @@ static int tipc_link_bc_retrans(struct tipc_link *l, struct tipc_link *r,
 		if (time_before(jiffies, TIPC_SKB_CB(skb)->nxt_retr))
 			continue;
 		TIPC_SKB_CB(skb)->nxt_retr = TIPC_BC_RETR_LIM;
-		_skb = pskb_copy(skb, GFP_ATOMIC);
+		if (msg_user(hdr) == MSG_FRAGMENTER) {
+			skb->priority = TC_PRIO_CONTROL;
+			tipc_skb_segment(skb, 0, from, to, xmitq);
+			continue;
+		}
+		_skb = __pskb_copy(skb, LL_MAX_HEADER + MIN_H_SIZE, GFP_ATOMIC);
 		if (!_skb)
 			return 0;
 		_skb->priority = TC_PRIO_CONTROL;
@@ -1478,28 +1475,29 @@ static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
 				     struct sk_buff_head *xmitq)
 {
 	struct sk_buff *skb, *_skb, *tmp;
-	struct tipc_msg *hdr;
+	struct tipc_msg *hdr, *_hdr;
 	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
 	bool retransmitted = false;
 	u16 ack = l->rcv_nxt - 1;
 	bool passed = false;
+	u16 first, last, n = 0;
 	u16 released = 0;
-	u16 seqno, n = 0;
 	int pktcnt;
 	int rc = 0;
 
 	skb_queue_walk_safe(&l->transmq, skb, tmp) {
-		seqno = msg_last_seqno(buf_msg(skb));
-
+		hdr = buf_msg(skb);
+		first = msg_seqno(hdr);
+		last = msg_last_seqno(hdr);
 next_gap_ack:
-		if (less_eq(seqno, acked)) {
+		if (!more(last, acked)) {
 			/* release skb */
 			pktcnt = msg_pktcnt(buf_msg(skb));
 			__skb_unlink(skb, &l->transmq);
 			kfree_skb(skb);
 			l->transmq_len -= pktcnt;
 			released += pktcnt;
-		} else if (less_eq(seqno, acked + gap)) {
+		} else if (!more(first, acked) && !more(acked + gap, last)) {
 			/* First, check if repeated retrans failures occurs? */
 			if (!passed && link_retransmit_failure(l, l, &rc))
 				return rc;
@@ -1509,12 +1507,20 @@ static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
 			if (time_before(jiffies, TIPC_SKB_CB(skb)->nxt_retr))
 				continue;
 			TIPC_SKB_CB(skb)->nxt_retr = TIPC_UC_RETR_TIME;
-			_skb = pskb_copy(skb, GFP_ATOMIC);
+			if (msg_user(hdr) == MSG_FRAGMENTER) {
+				skb->priority = TC_PRIO_CONTROL;
+				tipc_skb_segment(skb, 0, acked, acked + gap, xmitq);
+				l->stats.retransmitted++;
+				retransmitted = true;
+				continue;
+			}
+			_skb = __pskb_copy(skb, LL_MAX_HEADER + MIN_H_SIZE,
+					   GFP_ATOMIC);
 			if (!_skb)
 				continue;
-			hdr = buf_msg(_skb);
-			msg_set_ack(hdr, ack);
-			msg_set_bcast_ack(hdr, bc_ack);
+			_hdr = buf_msg(_skb);
+			msg_set_ack(_hdr, ack);
+			msg_set_bcast_ack(_hdr, bc_ack);
 			_skb->priority = TC_PRIO_CONTROL;
 			__skb_queue_tail(xmitq, _skb);
 			l->stats.retransmitted++;
diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index a70d8a9..3c36ba2 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -141,7 +141,6 @@ int tipc_buf_append(struct sk_buff **headbuf, struct sk_buff **buf)
 
 	if (!frag)
 		goto err;
-
 	msg = buf_msg(frag);
 	fragid = msg_type(msg);
 	frag->next = NULL;
@@ -167,7 +166,6 @@ int tipc_buf_append(struct sk_buff **headbuf, struct sk_buff **buf)
 
 	if (!head)
 		goto err;
-
 	if (skb_try_coalesce(head, frag, &headstolen, &delta)) {
 		kfree_skb_partial(frag, headstolen);
 	} else {
@@ -368,115 +366,90 @@ int tipc_msg_fragment(struct sk_buff *skb, const struct tipc_msg *hdr,
 
 /**
  * tipc_msg_build - create buffer chain containing specified header and data
- * @mhdr: Message header, to be prepended to data
+ * @hdr: TIPC message header, to be prepended to data
  * @m: User message
- * @dsz: Total length of user data
- * @pktmax: Max packet size that can be used
- * @list: Buffer or chain of buffers to be returned to caller
+ * @dlen: Total length of user data
+ * @mtu: Max packet size that can be used
+ * @xmitq: Buffer or chain of buffers to be returned to caller
  *
  * Note that the recursive call we are making here is safe, since it can
  * logically go only one further level down.
  *
  * Returns message data size or errno: -ENOMEM, -EFAULT
  */
-int tipc_msg_build(struct tipc_msg *mhdr, struct msghdr *m, int offset,
-		   int dsz, int pktmax, struct sk_buff_head *list)
+int tipc_msg_build(struct tipc_msg *hdr, struct msghdr *m, int dlen,
+		   int mtu, struct sk_buff_head *list)
 {
-	int mhsz = msg_hdr_sz(mhdr);
-	struct tipc_msg pkthdr;
-	int msz = mhsz + dsz;
-	int pktrem = pktmax;
-	struct sk_buff *skb;
-	int drem = dsz;
-	int pktno = 1;
-	char *pktpos;
-	int pktsz;
-	int rc;
-
-	msg_set_size(mhdr, msz);
-
-	/* No fragmentation needed? */
-	if (likely(msz <= pktmax)) {
-		skb = tipc_buf_acquire(msz, GFP_KERNEL);
-
-		/* Fall back to smaller MTU if node local message */
-		if (unlikely(!skb)) {
-			if (pktmax != MAX_MSG_SIZE)
-				return -ENOMEM;
-			rc = tipc_msg_build(mhdr, m, offset, dsz, FB_MTU, list);
-			if (rc != dsz)
-				return rc;
-			if (tipc_msg_assemble(list))
-				return dsz;
-			return -ENOMEM;
-		}
-		skb_orphan(skb);
-		__skb_queue_tail(list, skb);
-		skb_copy_to_linear_data(skb, mhdr, mhsz);
-		pktpos = skb->data + mhsz;
-		if (copy_from_iter_full(pktpos, dsz, &m->msg_iter))
-			return dsz;
-		rc = -EFAULT;
-		goto error;
+	struct sk_buff *skb = NULL;
+	int hlen = msg_hdr_sz(hdr);
+	struct tipc_msg *seghdr;
+	int mlen = hlen + dlen;
+	unsigned char *pos;
+	skb_frag_t *frag;
+	int left = dlen;
+	int copy, rc, i;
+	int mss;
+
+	msg_set_size(hdr, mlen);
+
+	/* This also covers node internal messages */
+	if (mlen <= mtu)
+		skb = alloc_skb_fclone(BUF_HEADROOM + mlen, GFP_KERNEL);
+
+	if (!skb) {
+		skb = alloc_skb_with_frags(BUF_HEADROOM + hlen, dlen,
+					   PAGE_ALLOC_COSTLY_ORDER,
+					   &rc, GFP_KERNEL);
+		if (!skb)
+			goto error;
 	}
 
-	/* Prepare reusable fragment header */
-	tipc_msg_init(msg_prevnode(mhdr), &pkthdr, MSG_FRAGMENTER,
-		      FIRST_FRAGMENT, INT_H_SIZE, msg_destnode(mhdr));
-	msg_set_size(&pkthdr, pktmax);
-	msg_set_fragm_no(&pkthdr, pktno);
-	msg_set_pktcnt(&pkthdr, 1);
-	msg_set_importance(&pkthdr, msg_importance(mhdr));
-
-	/* Prepare first fragment */
-	skb = tipc_buf_acquire(pktmax, GFP_KERNEL);
-	if (!skb)
-		return -ENOMEM;
-	skb_orphan(skb);
 	__skb_queue_tail(list, skb);
-	pktpos = skb->data;
-	skb_copy_to_linear_data(skb, &pkthdr, INT_H_SIZE);
-	pktpos += INT_H_SIZE;
-	pktrem -= INT_H_SIZE;
-	skb_copy_to_linear_data_offset(skb, INT_H_SIZE, mhdr, mhsz);
-	pktpos += mhsz;
-	pktrem -= mhsz;
-
-	do {
-		if (drem < pktrem)
-			pktrem = drem;
-
-		if (!copy_from_iter_full(pktpos, pktrem, &m->msg_iter)) {
-			rc = -EFAULT;
+	skb_reserve(skb, BUF_HEADROOM);
+	skb_copy_to_linear_data(skb, hdr, hlen);
+	skb->len = hlen;
+	skb->tail += hlen;
+
+	if (skb_tailroom(skb) >= dlen) {
+		pos = skb->data + hlen;
+		if (!copy_from_iter_full(pos, dlen, &m->msg_iter))
 			goto error;
-		}
-		drem -= pktrem;
-
-		if (!drem)
-			break;
+		skb->len += dlen;
+		skb->tail += dlen;
+		return dlen;
+	}
 
-		/* Prepare new fragment: */
-		if (drem < (pktmax - INT_H_SIZE))
-			pktsz = drem + INT_H_SIZE;
-		else
-			pktsz = pktmax;
-		skb = tipc_buf_acquire(pktsz, GFP_KERNEL);
-		if (!skb) {
-			rc = -ENOMEM;
+	for (copy = 0, i = 0; left; left -= copy, i++) {
+		frag = &skb_shinfo(skb)->frags[i];
+		pos = page_address(frag->bv_page) + frag->bv_offset;
+		copy = skb_frag_size(frag) < left ? skb_frag_size(frag) : left;
+		if (!copy_from_iter_full(pos, copy, &m->msg_iter))
 			goto error;
-		}
-		skb_orphan(skb);
-		__skb_queue_tail(list, skb);
-		msg_set_type(&pkthdr, FRAGMENT);
-		msg_set_size(&pkthdr, pktsz);
-		msg_set_fragm_no(&pkthdr, ++pktno);
-		skb_copy_to_linear_data(skb, &pkthdr, INT_H_SIZE);
-		pktpos = skb->data + INT_H_SIZE;
-		pktrem = pktsz - INT_H_SIZE;
-
-	} while (1);
-	msg_set_type(buf_msg(skb), LAST_FRAGMENT);
-	return dsz;
+		skb->len += copy;
+		skb->data_len += copy;
+	}
+
+	if (mlen <= mtu)
+		return dlen;
+
+	/* Add outer header and prepare buffer for GSO */
+	skb_push(skb, INT_H_SIZE);
+	seghdr = buf_msg(skb);
+	tipc_msg_init(msg_prevnode(hdr), seghdr, MSG_FRAGMENTER,
+		      FIRST_FRAGMENT, INT_H_SIZE, msg_destnode(hdr));
+	msg_set_size(seghdr, INT_H_SIZE + mlen);
+	msg_set_fragm_no(seghdr, 1);
+	msg_set_importance(seghdr, msg_importance(hdr));
+	skb_reset_inner_mac_header(skb);
+	skb_reset_inner_network_header(skb);
+	skb_set_inner_transport_header(skb, INT_H_SIZE);
+	mss = mtu - INT_H_SIZE;
+	skb_shinfo(skb)->gso_size = mss;
+	skb_shinfo(skb)->gso_segs = mlen / mss + !!(mlen % mss);
+	msg_set_pktcnt(seghdr, skb_shinfo(skb)->gso_segs);
+	skb->ip_summed = CHECKSUM_UNNECESSARY;
+	skb->encapsulation = 1;
+	return dlen;
 error:
 	__skb_queue_purge(list);
 	__skb_queue_head_init(list);
@@ -632,14 +605,13 @@ bool tipc_msg_extract(struct sk_buff *skb, struct sk_buff **iskb, int *pos)
  * Replaces consumed buffer with new one when successful
  * Returns true if success, otherwise false
  */
+
 bool tipc_msg_reverse(u32 own_node,  struct sk_buff **skb, int err)
 {
 	struct sk_buff *_skb = *skb;
 	struct tipc_msg *_hdr, *hdr;
 	int hlen, dlen;
 
-	if (skb_linearize(_skb))
-		goto exit;
 	_hdr = buf_msg(_skb);
 	dlen = min_t(uint, msg_data_sz(_hdr), MAX_FORWARD_SIZE);
 	hlen = msg_hdr_sz(_hdr);
@@ -661,8 +633,11 @@ bool tipc_msg_reverse(u32 own_node,  struct sk_buff **skb, int err)
 	*skb = tipc_buf_acquire(hlen + dlen, GFP_ATOMIC);
 	if (!*skb)
 		goto exit;
+
 	memcpy((*skb)->data, _skb->data, msg_hdr_sz(_hdr));
 	memcpy((*skb)->data + hlen, msg_data(_hdr), dlen);
+	hdr = buf_msg(*skb);
+	msg_set_hdr_sz(hdr, hlen);
 
 	/* Build reverse header in new buffer */
 	hdr = buf_msg(*skb);
@@ -767,44 +742,20 @@ bool tipc_msg_assemble(struct sk_buff_head *list)
 	return false;
 }
 
-/* tipc_msg_reassemble() - clone a buffer chain of fragments and
- *                         reassemble the clones into one message
+/* tipc_msg_clone() - clone a multicast message in 'list' for local destination
+ *                    sockets, strip off fragment header and add clone to rcvq
  */
-bool tipc_msg_reassemble(struct sk_buff_head *list, struct sk_buff_head *rcvq)
+bool tipc_msg_clone(struct sk_buff_head *list, struct sk_buff_head *rcvq)
 {
-	struct sk_buff *skb, *_skb;
-	struct sk_buff *frag = NULL;
-	struct sk_buff *head = NULL;
-	int hdr_len;
-
-	/* Copy header if single buffer */
-	if (skb_queue_len(list) == 1) {
-		skb = skb_peek(list);
-		hdr_len = skb_headroom(skb) + msg_hdr_sz(buf_msg(skb));
-		_skb = __pskb_copy(skb, hdr_len, GFP_ATOMIC);
-		if (!_skb)
-			return false;
-		__skb_queue_tail(rcvq, _skb);
-		return true;
-	}
+	struct sk_buff *skb;
 
-	/* Clone all fragments and reassemble */
-	skb_queue_walk(list, skb) {
-		frag = skb_clone(skb, GFP_ATOMIC);
-		if (!frag)
-			goto error;
-		frag->next = NULL;
-		if (tipc_buf_append(&head, &frag))
-			break;
-		if (!head)
-			goto error;
-	}
-	__skb_queue_tail(rcvq, frag);
+	skb = skb_clone(skb_peek(list), GFP_KERNEL);
+	if (!skb)
+		return false;
+	__skb_queue_tail(rcvq, skb);
+	if (msg_user(buf_msg(skb)) == MSG_FRAGMENTER)
+		skb_pull(skb, INT_H_SIZE);
 	return true;
-error:
-	pr_warn("Failed do clone local mcast rcv buffer\n");
-	kfree_skb(head);
-	return false;
 }
 
 bool tipc_msg_pskb_copy(u32 dst, struct sk_buff_head *msg,
@@ -868,6 +819,10 @@ void tipc_skb_queue_copy(struct sk_buff_head *from,
 	struct sk_buff *skb, *__skb;
 
 	skb_queue_walk(from, skb) {
+		if (msg_user(buf_msg(skb)) == MSG_FRAGMENTER) {
+			tipc_skb_segment_all(skb, 0, to);
+			continue;
+		}
 		__skb = pskb_copy(skb, GFP_ATOMIC);
 		if (!__skb)
 			break;
@@ -911,3 +866,113 @@ int tipc_skb_queue_fragment(struct sk_buff_head *skbq, int pktmax,
 	skb_queue_splice_tail_init(&tmpq, skbq);
 	return rc;
 }
+
+int tipc_skb_segment(struct sk_buff *skb, int tnl_hlen, u16 from,
+		     u16 to, struct sk_buff_head *segs)
+{
+	struct skb_shared_info *shinfo = skb_shinfo(skb);
+	unsigned char *tnl_hdr = skb->data - tnl_hlen;
+	struct tipc_msg *hdr = buf_msg(skb);
+	skb_frag_t *frag = &shinfo->frags[0];
+	int frag_pos = frag->bv_offset;
+	struct tipc_msg *seg_hdr = NULL;
+	skb_frag_t *seg_frag = NULL;
+	int mss = shinfo->gso_size;
+	struct sk_buff *seg = NULL;
+	unsigned int hlen = msg_hdr_sz(hdr);
+	unsigned int left = msg_data_sz(hdr);
+	unsigned int mtyp, ihlen, dlen;
+	unsigned int seg_left = mss;
+	u16 seqno = msg_seqno(hdr);
+	int fragno = 0;
+	int segno = 1;
+
+	if (more(from, msg_last_seqno(hdr)))
+		return 0;
+
+	if (less(from, seqno))
+		from = seqno;
+
+	if (more(to, msg_last_seqno(hdr)))
+		to = msg_last_seqno(hdr);
+
+	while (!more(seqno, to)) {
+		/* Calculate but don't add segments until seqno == from */
+		if (!less(seqno,  from)) {
+			if (seqno == from) {
+				mtyp = FIRST_FRAGMENT;
+				ihlen = msg_hdr_sz(msg_inner_hdr(hdr));
+			} else {
+				mtyp = FRAGMENT;
+				ihlen = 0;
+			}
+			seg = alloc_skb(BUF_HEADROOM + ihlen, GFP_ATOMIC);
+			if (!seg)
+				goto exit;
+			__skb_queue_tail(segs, seg);
+			seg->priority = skb->priority;
+			skb_reserve(seg, BUF_HEADROOM - (tnl_hlen + hlen));
+			skb_reset_mac_header(seg);
+			skb_copy_to_linear_data(seg, tnl_hdr,
+						tnl_hlen + hlen + ihlen);
+			skb_put(seg, tnl_hlen + hlen + ihlen);
+			skb_pull(seg, tnl_hlen);
+			skb_reset_inner_mac_header(seg);
+			skb_reset_inner_network_header(seg);
+			skb_reset_inner_transport_header(seg);
+			seg->ip_summed = CHECKSUM_UNNECESSARY;
+			skb_reset_network_header(seg);
+			skb_reset_transport_header(seg);
+			seg->dev = skb->dev;
+			seg->protocol = skb->protocol;
+			skb_set_inner_protocol(seg, htons(ETH_P_TIPC));
+			seg_hdr = buf_msg(seg);
+			seg_left = left < mss ? left : mss;
+			seg_left -= ihlen;
+			left -= ihlen;
+			msg_set_size(seg_hdr, hlen + ihlen + seg_left);
+			msg_set_fragm_no(seg_hdr, segno);
+			msg_set_seqno(seg_hdr, seqno);
+			msg_set_type(seg_hdr, mtyp);
+			msg_set_pktcnt(seg_hdr, 1);
+			seg_frag = &skb_shinfo(seg)->frags[0];
+
+			/* MAC and INET GSO behave differently regarding this */
+			if (tnl_hlen == sizeof(struct ethhdr))
+				skb_push(seg, tnl_hlen);
+		}
+		while (seg_left) {
+			dlen = min(seg_left, skb_frag_size(frag) - frag_pos);
+			if (seg) {
+				page_ref_inc(frag->bv_page);
+				seg_frag->bv_page = frag->bv_page;
+				skb_shinfo(seg)->nr_frags++;
+				seg_frag->bv_len = dlen;
+				seg_frag->bv_offset = frag_pos;
+				seg->len += dlen;
+				seg->data_len += dlen;
+				seg->truesize += dlen;
+			}
+			frag_pos += dlen;
+			seg_left -= dlen;
+			left -= dlen;
+			if (frag_pos < skb_frag_size(frag))
+				continue;
+			if (++fragno > shinfo->nr_frags) {
+				pr_warn("msg_segment leaving prematurely\n");
+				goto exit;
+			}
+			frag++;
+			frag_pos = frag->bv_offset;
+			seg_frag++;
+		};
+		segno++;
+		seqno++;
+		seg = NULL;
+	}
+
+	if (!left && seg_hdr)
+		msg_set_type(seg_hdr, LAST_FRAGMENT);
+exit:
+	return skb_queue_len(segs);
+}
diff --git a/net/tipc/msg.h b/net/tipc/msg.h
index 1b5c8c8..8391581 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -1131,13 +1131,13 @@ bool tipc_msg_try_bundle(struct sk_buff *tskb, struct sk_buff **skb, u32 mss,
 bool tipc_msg_extract(struct sk_buff *skb, struct sk_buff **iskb, int *pos);
 int tipc_msg_fragment(struct sk_buff *skb, const struct tipc_msg *hdr,
 		      int pktmax, struct sk_buff_head *frags);
-int tipc_msg_build(struct tipc_msg *mhdr, struct msghdr *m,
-		   int offset, int dsz, int mtu, struct sk_buff_head *list);
+int tipc_msg_build(struct tipc_msg *hdr, struct msghdr *m, int dlen,
+		   int mtu, struct sk_buff_head *list);
 int tipc_msg_append(struct tipc_msg *hdr, struct msghdr *m, int dlen,
 		    int mss, struct sk_buff_head *txq);
 bool tipc_msg_lookup_dest(struct net *net, struct sk_buff *skb, int *err);
 bool tipc_msg_assemble(struct sk_buff_head *list);
-bool tipc_msg_reassemble(struct sk_buff_head *list, struct sk_buff_head *rcvq);
+bool tipc_msg_clone(struct sk_buff_head *list, struct sk_buff_head *rcvq);
 bool tipc_msg_pskb_copy(u32 dst, struct sk_buff_head *msg,
 			struct sk_buff_head *cpy);
 void __tipc_skb_queue_sorted(struct sk_buff_head *list, u16 seqno,
@@ -1146,6 +1146,18 @@ bool tipc_msg_skb_clone(struct sk_buff_head *msg, struct sk_buff_head *cpy);
 void tipc_skb_queue_copy(struct sk_buff_head *from, struct sk_buff_head *to);
 int tipc_skb_queue_fragment(struct sk_buff_head *skbq, int pktmax,
 			     int *pktcnt, bool frag_supp, int mtyp);
+int tipc_skb_segment(struct sk_buff *skb, int tnl_hlen, u16 from, u16 to,
+		     struct sk_buff_head *segs);
+
+static inline int tipc_skb_segment_all(struct sk_buff *skb, int tnl_hlen,
+				       struct sk_buff_head *segs)
+{
+	u16 from = msg_seqno(buf_msg(skb));
+	u16 to = from + skb_shinfo(skb)->gso_segs - 1;
+
+	return tipc_skb_segment(skb, tnl_hlen, from, to, segs);
+}
+
 static inline u16 buf_seqno(struct sk_buff *skb)
 {
 	return msg_seqno(buf_msg(skb));
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 99b28b6..4d23942 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -1865,6 +1865,7 @@ static bool tipc_node_check_state(struct tipc_node *n, struct sk_buff *skb,
 	int usr = msg_user(hdr);
 	int mtyp = msg_type(hdr);
 	u16 oseqno = msg_seqno(hdr);
+	u16 iseqno = msg_seqno(msg_inner_hdr(hdr));
 	u16 exp_pkts = msg_msgcnt(hdr);
 	u16 rcv_nxt, syncpt, dlv_nxt, inputq_len;
 	int state = n->state;
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 884dad5..5dc26f5 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -844,8 +844,8 @@ static int tipc_sendmcast(struct  socket *sock, struct tipc_name_seq *seq,
 	msg_set_nameupper(hdr, seq->upper);
 
 	/* Build message as chain of buffers */
-	__skb_queue_head_init(&pkts);
-	rc = tipc_msg_build(hdr, msg, 0, dlen, mtu, &pkts);
+	skb_queue_head_init(&pkts);
+	rc = tipc_msg_build(hdr, msg, dlen, mtu, &pkts);
 
 	/* Send message if build was successful */
 	if (unlikely(rc == dlen)) {
@@ -888,9 +888,9 @@ static int tipc_send_group_msg(struct net *net, struct tipc_sock *tsk,
 	msg_set_grp_bc_seqno(hdr, bc_snd_nxt);
 
 	/* Build message as chain of buffers */
-	__skb_queue_head_init(&pkts);
+	skb_queue_head_init(&pkts);
 	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, false);
-	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
+	rc = tipc_msg_build(hdr, m, dlen, mtu, &pkts);
 	if (unlikely(rc != dlen))
 		return rc;
 
@@ -1094,7 +1094,7 @@ static int tipc_send_group_bcast(struct socket *sock, struct msghdr *m,
 
 	/* Build message as chain of buffers */
 	__skb_queue_head_init(&pkts);
-	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
+	rc = tipc_msg_build(hdr, m, dlen, mtu, &pkts);
 	if (unlikely(rc != dlen))
 		return rc;
 
@@ -1452,7 +1452,7 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 
 	__skb_queue_head_init(&pkts);
 	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, false);
-	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
+	rc = tipc_msg_build(hdr, m, dlen, mtu, &pkts);
 	if (unlikely(rc != dlen))
 		return rc;
 	if (unlikely(syn && !tipc_msg_skb_clone(&pkts, &sk->sk_write_queue))) {
@@ -1546,7 +1546,7 @@ static int __tipc_sendstream(struct socket *sock, struct msghdr *m, size_t dlen)
 			}
 			tsk->expect_ack = true;
 		} else {
-			rc = tipc_msg_build(hdr, m, sent, send, maxpkt, txq);
+			rc = tipc_msg_build(hdr, m, send, maxpkt, txq);
 			if (unlikely(rc != send))
 				break;
 			blocks += tsk_inc(tsk, send + MIN_H_SIZE);
diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
index dcc4ba7..974d260 100644
--- a/net/tipc/udp_media.c
+++ b/net/tipc/udp_media.c
@@ -181,7 +181,9 @@ static int tipc_udp_xmit(struct net *net, struct sk_buff *skb,
 			}
 			dst_cache_set_ip4(cache, &rt->dst, fl.saddr);
 		}
-
+		if (msg_user(buf_msg(skb)) == MSG_FRAGMENTER)
+			skb_shinfo(skb)->gso_type = SKB_GSO_UDP_TUNNEL;
+		skb->dev = rt->dst.dev;
 		ttl = ip4_dst_hoplimit(&rt->dst);
 		udp_tunnel_xmit_skb(rt, ub->ubsock->sk, skb, src->ipv4.s_addr,
 				    dst->ipv4.s_addr, 0, ttl, 0, src->port,
-- 
2.1.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
