Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E928C128C45
	for <lists+tipc-discussion@lfdr.de>; Sun, 22 Dec 2019 03:26:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9h8tqZEWUr7CJnhKZkLd1BYaqJ82bHsE/4Zm8Ct6FLs=; b=ACmdgLEZpZQxOr/8Wz+8EIJeX
	Ongy2FTvk0+4JMYJIoU4D+QHksOWoFJUI9/hp1FDf/EWmC6ecE859rGaMR4lyX1XUm4SvoYjV0WTx
	tVQId4y28KeVv4Qtbpb4Eat+KKmdxqCgFSVaeBy6LpyYa2UwYrTQe7T4mqEkNQFnug+oc=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iiqwx-000457-CW; Sun, 22 Dec 2019 02:26:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iiqwv-00044i-Jc
 for tipc-discussion@lists.sourceforge.net; Sun, 22 Dec 2019 02:26:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v6sQ+8gSTwLNI73hQcoqcuUCaIP+Tx8OWh5bosUtIOk=; b=H31qtqJ8zKwtZpI8d4gwtvbKQx
 +j1A7t5oSmcuImsvaouEjLFOUqgqpl30vERcSyvNHh5FeH1Q37Vw4+Ilqhkxh0vuX85HmAw+2h0bq
 KGif8MYDWrK4MaW8XkG9teN1e22aAEsxZs+Pff3HkLwgfj9eKiGel/HadK5FItdqBSA8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v6sQ+8gSTwLNI73hQcoqcuUCaIP+Tx8OWh5bosUtIOk=; b=QcM+1elV672sMXaA41qf4FwRgg
 7XDZm7H6dwXUEztfWDHd4h8KeHu5tNLkrC4C2Qq5OZ8YlUbbIz2ISzl07iNOFcpG5AYHfYUSTdBgT
 suDI62YGDATeetnXP/nbejhsIuVsDfT5+K82WI4M3QZuKGyNnKeqDsxeX/ujUcXGMNt8=;
Received: from mail-eopbgr40087.outbound.protection.outlook.com ([40.107.4.87]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iiqwq-00C6TH-J5
 for tipc-discussion@lists.sourceforge.net; Sun, 22 Dec 2019 02:26:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kew/UZvJUgdxBQgrqcxUfimLYe5a+nNkO2t20+39VPz5ZdGIQmUXGCqdKcl4eWMxrtG87Of/dh2gt22wSHwvion4HPcmW9xab8LfElqgWuQfZSryIe3U89sKY5asw/mJ/iULzsJis4zG5M40Vxw/9hS8ZN6f8qUJut9Zvx+rMOe80oqMeTblQUoO7VD+e31wsXbDxY9eZH4fgFUm/i4y4Lhr1ZhgdTcYU7igudyZP7kitH3TqiM+6Ugg0mDuNoqKemtH2mGuUT5FII6qjnzwa3DQy2f/7452sRIRj7gKjput4Ba68s50W0pjPG+5X6ryVZ/p+ROMwATdgzuL4EnBug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v6sQ+8gSTwLNI73hQcoqcuUCaIP+Tx8OWh5bosUtIOk=;
 b=RWG1CtFS048xu96oEWAIrfzJhwF9D8lEuDo8IlgaURMYnpzORHt+ElDijU2BnZRQpZCIeWLBAvRk/Oi4L3TjF0P0q+J9nY7aqT5ywT6QjPhKvq+DkFkihJxI227NT6eGYJJ2SwXjEMbESO528xsY5aFRoSAu5ajJyoFO/k0g2gPLAF8ygeRZvarS4W5rBgMpZfj4Fr/RsGSqQiums0cZthjW7grLhsJgrFNKZekQBosc+ZSJjgKiF79lsyroEAWDp5KKugSt/+aSKGWIXE75UiF4PF3psLE6IyGPkoCobD1wGh9VzBjbJqQ0Jt+OzEDXyYYA1F8TCw+gf7oEs81ITA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 192.176.1.74) smtp.rcpttodomain=lists.sourceforge.net
 smtp.mailfrom=ericsson.com; dmarc=pass (p=reject sp=none pct=100) action=none
 header.from=ericsson.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v6sQ+8gSTwLNI73hQcoqcuUCaIP+Tx8OWh5bosUtIOk=;
 b=QOiSR/CyDOB0C6HYKMs3qlniYIWs+bvAjAnQEFg0viDlJ+w0AwLo11YFAFC9YCgmJHlK8fP9cV6rf0fX2WBQHtuL81Wfve5WGOrINOwAn3JMRdnozlXXOeFGFFbMRLRrqR22iOudCJjtJrs5fcMJhO49SJfDruGBM0OYSBHiRFk=
Received: from DB6PR07CA0172.eurprd07.prod.outlook.com (2603:10a6:6:43::26) by
 VI1PR07MB3293.eurprd07.prod.outlook.com (2603:10a6:802:1d::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Sun, 22 Dec 2019 02:26:16 +0000
Received: from AM5EUR02FT041.eop-EUR02.prod.protection.outlook.com
 (2a01:111:f400:7e1e::202) by DB6PR07CA0172.outlook.office365.com
 (2603:10a6:6:43::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.6 via Frontend
 Transport; Sun, 22 Dec 2019 02:26:16 +0000
Authentication-Results: spf=pass (sender IP is 192.176.1.74)
 smtp.mailfrom=ericsson.com; lists.sourceforge.net; dkim=none (message not
 signed) header.d=none;lists.sourceforge.net; dmarc=pass action=none
 header.from=ericsson.com;
Received-SPF: Pass (protection.outlook.com: domain of ericsson.com designates
 192.176.1.74 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=192.176.1.74; helo=oa.msg.ericsson.com;
Received: from oa.msg.ericsson.com (192.176.1.74) by
 AM5EUR02FT041.mail.protection.outlook.com (10.152.9.100) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2559.14 via Frontend Transport; Sun, 22 Dec 2019 02:26:16 +0000
Received: from ESESSMB503.ericsson.se (153.88.183.164) by
 ESESSMR503.ericsson.se (153.88.183.112) with Microsoft SMTP Server
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
Date: Sun, 22 Dec 2019 03:26:06 +0100
Message-ID: <1576981569-27482-5-git-send-email-jon.maloy@ericsson.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1576981569-27482-1-git-send-email-jon.maloy@ericsson.com>
References: <1576981569-27482-1-git-send-email-jon.maloy@ericsson.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:192.176.1.74; IPV:; CTRY:SE; EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(39860400002)(346002)(396003)(199004)(189003)(7636002)(70206006)(186003)(246002)(336012)(6666004)(2616005)(44832011)(956004)(8676002)(8936002)(26005)(5660300002)(356004)(86362001)(426003)(478600001)(2906002)(36756003)(70586007)(316002)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR07MB3293; H:oa.msg.ericsson.com; FPR:;
 SPF:Pass; LANG:en; PTR:office365.se.ericsson.net; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 50e1a6f9-f230-4ea9-ff85-08d7868652a0
X-MS-TrafficTypeDiagnostic: VI1PR07MB3293:
X-LD-Processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
X-Microsoft-Antispam-PRVS: <VI1PR07MB32938B6A310105B3FFE0490F9A2F0@VI1PR07MB3293.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1388;
X-Forefront-PRVS: 02596AB7DA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PwwbLc3PJBJovF3lMtx19BvDcSkksHXgoo6LaL1Jzabpt/AHsj2e/Fi5BDACvzLgLvVcQ/wGmeuMMQsZ71G9rwr6aforYaM8Tm5pDPxo6frevlaPEZners+XKiTfizmg86MKdQ3Hp0vm6zziw7PEQ1CVhjjl2A8q42GPy5flZbOgy5AMV+oXNLNoFE197rNglnge8h1eKm3aYOFUTixVnbDefBajC7slEErNQi80qZgLzNDYWcgtJZ3qd23UaizCOymXG06uwhelDHbAcnIMYTU8oq5tkB6PkB6w5HaTABjUThrIMZUY+eotzNfhQbYWIc9J9LuQk70P2jHSwX6tuG3dxdJr9RghUUbJUi0aBmOrpU3ZcEAOsrS7iWzyhdsNxobTHHZ4uxGTfJ3/WyN3FcJw3g3/pRe/qPSp2UjXPuaa9IKNKxmqx/HfeKbfkiNs
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2019 02:26:16.5526 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 50e1a6f9-f230-4ea9-ff85-08d7868652a0
X-MS-Exchange-CrossTenant-Id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=92e84ceb-fbfd-47ab-be52-080c6b87953f; Ip=[192.176.1.74];
 Helo=[oa.msg.ericsson.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR07MB3293
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.4.87 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iiqwq-00C6TH-J5
Subject: [tipc-discussion] [net-next 3/6] tipc: refactor function
 tipc_link_tnl_prepare()
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

In the coming commits we need a more generic tunneling prepare function.
As a preparation for this, we refactor it in a separate commit.

Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
---
 net/tipc/link.c | 148 +++++++++++++++++++-------------------------------------
 net/tipc/msg.c  |  50 +++++++++++++++++++
 net/tipc/msg.h  |   4 +-
 3 files changed, 104 insertions(+), 98 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 2531f94..f16219c 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -1801,132 +1801,86 @@ void tipc_link_create_dummy_tnl_msg(struct tipc_link *l,
 void tipc_link_tnl_prepare(struct tipc_link *l, struct tipc_link *tnl,
 			   int mtyp, struct sk_buff_head *xmitq)
 {
+	bool enhanced = tnl->peer_caps & TIPC_TUNNEL_ENHANCED;
 	struct sk_buff_head *fdefq = &tnl->failover_deferdq;
-	struct sk_buff *skb, *tnlskb;
-	struct tipc_msg *hdr, tnlhdr;
-	struct sk_buff_head *queue = &l->transmq;
-	struct sk_buff_head tmpxq, tnlq, frags;
-	u16 pktlen, pktcnt, seqno = l->snd_nxt;
-	bool pktcnt_need_update = false;
-	u16 syncpt;
-	int rc;
+	u32 self = tipc_own_addr(l->net);
+	struct sk_buff_head tnlq, tmpxq;
+	struct tipc_msg hdr, *_hdr;
+	u16 inner_seqno, syncpt;
+	struct sk_buff *skb;
+	int pktcnt, rc;
+	int inner_len;
 
 	if (!tnl)
 		return;
+	skb_queue_head_init(&tnlq);
+	skb_queue_head_init(&tmpxq);
 
-	__skb_queue_head_init(&tnlq);
-	/* Link Synching:
-	 * From now on, send only one single ("dummy") SYNCH message
-	 * to peer. The SYNCH message does not contain any data, just
-	 * a header conveying the synch point to the peer.
+	/* When TUNNEL_ENHANCED is supported, it is sufficient to send a
+	 * single empty SYNCH message to peer, conveying the synch point
 	 */
-	if (mtyp == SYNCH_MSG && (tnl->peer_caps & TIPC_TUNNEL_ENHANCED)) {
-		tnlskb = tipc_msg_create(TUNNEL_PROTOCOL, SYNCH_MSG,
-					 INT_H_SIZE, 0, l->addr,
-					 tipc_own_addr(l->net),
-					 0, 0, 0);
-		if (!tnlskb) {
-			pr_warn("%sunable to create dummy SYNCH_MSG\n",
-				link_co_err);
+	if (mtyp == SYNCH_MSG && enhanced) {
+
+		skb = tipc_msg_create(TUNNEL_PROTOCOL, SYNCH_MSG, INT_H_SIZE, 0,
+				      l->addr, tipc_own_addr(l->net), 0, 0, 0);
+		if (!skb) {
+			pr_warn("%sfailed to create SYNCH_MSG\n", link_co_err);
 			return;
 		}
-
-		hdr = buf_msg(tnlskb);
+		_hdr = buf_msg(skb);
 		syncpt = l->snd_nxt + skb_queue_len(&l->backlogq) - 1;
-		msg_set_syncpt(hdr, syncpt);
-		msg_set_bearer_id(hdr, l->peer_bearer_id);
-		__skb_queue_tail(&tnlq, tnlskb);
+		msg_set_syncpt(_hdr, syncpt);
+		msg_set_bearer_id(_hdr, l->peer_bearer_id);
+		__skb_queue_tail(&tnlq, skb);
 		tipc_link_xmit(tnl, &tnlq, xmitq);
 		return;
 	}
-
-	__skb_queue_head_init(&tmpxq);
-	__skb_queue_head_init(&frags);
-	/* At least one packet required for safe algorithm => add dummy */
-	skb = tipc_msg_create(TIPC_LOW_IMPORTANCE, TIPC_DIRECT_MSG,
-			      BASIC_H_SIZE, 0, l->addr, tipc_own_addr(l->net),
-			      0, 0, TIPC_ERR_NO_PORT);
+	/* At least one packet is required for safe algorithm => add dummy */
+	skb = tipc_msg_create(TIPC_LOW_IMPORTANCE, TIPC_CONN_MSG, BASIC_H_SIZE,
+			      0, l->addr, self, 0, 0, TIPC_ERR_NO_PORT);
 	if (!skb) {
 		pr_warn("%sunable to create tunnel packet\n", link_co_err);
 		return;
 	}
-	__skb_queue_tail(&tnlq, skb);
+	skb_queue_tail(&tnlq, skb);
 	tipc_link_xmit(l, &tnlq, &tmpxq);
 	__skb_queue_purge(&tmpxq);
 
-	/* Initialize reusable tunnel packet header */
-	tipc_msg_init(tipc_own_addr(l->net), &tnlhdr, TUNNEL_PROTOCOL,
-		      mtyp, INT_H_SIZE, l->addr);
+	/* Number of packets to report depends on if transmitq is linear */
 	if (mtyp == SYNCH_MSG)
 		pktcnt = l->snd_nxt - buf_seqno(skb_peek(&l->transmq));
 	else
 		pktcnt = skb_queue_len(&l->transmq);
 	pktcnt += skb_queue_len(&l->backlogq);
-	msg_set_msgcnt(&tnlhdr, pktcnt);
-	msg_set_bearer_id(&tnlhdr, l->peer_bearer_id);
-tnl:
-	/* Wrap each packet into a tunnel packet */
-	skb_queue_walk(queue, skb) {
-		hdr = buf_msg(skb);
-		if (queue == &l->backlogq)
-			msg_set_seqno(hdr, seqno++);
-		pktlen = msg_size(hdr);
-
-		/* Tunnel link MTU is not large enough? This could be
-		 * due to:
-		 * 1) Link MTU has just changed or set differently;
-		 * 2) Or FAILOVER on the top of a SYNCH message
-		 *
-		 * The 2nd case should not happen if peer supports
-		 * TIPC_TUNNEL_ENHANCED
-		 */
-		if (pktlen > tnl->mtu - INT_H_SIZE) {
-			if (mtyp == FAILOVER_MSG &&
-			    (tnl->peer_caps & TIPC_TUNNEL_ENHANCED)) {
-				rc = tipc_msg_fragment(skb, &tnlhdr, tnl->mtu,
-						       &frags);
-				if (rc) {
-					pr_warn("%sunable to frag msg: rc %d\n",
-						link_co_err, rc);
-					return;
-				}
-				pktcnt += skb_queue_len(&frags) - 1;
-				pktcnt_need_update = true;
-				skb_queue_splice_tail_init(&frags, &tnlq);
-				continue;
-			}
-			/* Unluckily, peer doesn't have TIPC_TUNNEL_ENHANCED
-			 * => Just warn it and return!
-			 */
-			pr_warn_ratelimited("%stoo large msg <%d, %d>: %d!\n",
-					    link_co_err, msg_user(hdr),
-					    msg_type(hdr), msg_size(hdr));
-			return;
-		}
 
-		msg_set_size(&tnlhdr, pktlen + INT_H_SIZE);
-		tnlskb = tipc_buf_acquire(pktlen + INT_H_SIZE, GFP_ATOMIC);
-		if (!tnlskb) {
-			pr_warn("%sunable to send packet\n", link_co_err);
-			return;
-		}
-		skb_copy_to_linear_data(tnlskb, &tnlhdr, INT_H_SIZE);
-		skb_copy_to_linear_data_offset(tnlskb, INT_H_SIZE, hdr, pktlen);
-		__skb_queue_tail(&tnlq, tnlskb);
+	/* Copy all buffers into a temporary queue */
+	inner_seqno = l->snd_nxt;
+	skb_queue_walk(&l->backlogq, skb) {
+		msg_set_seqno(buf_msg(skb), inner_seqno++);
+	}
+	tipc_skb_queue_copy(&l->transmq, &tnlq);
+	tipc_skb_queue_copy(&l->backlogq, &tnlq);
+
+	/* Fragment the buffers if applicable */
+	rc = tipc_skb_queue_fragment(&tnlq, tnl->mtu, &pktcnt, enhanced, mtyp);
+	if (rc) {
+		pr_warn("%sunable to frag msg: rc %d\n", link_co_err, rc);
+		__skb_queue_purge(&tnlq);
+		return;
 	}
-	if (queue != &l->backlogq) {
-		queue = &l->backlogq;
-		goto tnl;
+	/* Create reusable tunnel header and prepend to packets */
+	tipc_msg_init(self, &hdr, TUNNEL_PROTOCOL, mtyp, INT_H_SIZE, l->addr);
+	msg_set_msgcnt(&hdr, pktcnt);
+	msg_set_bearer_id(&hdr, l->peer_bearer_id);
+	skb_queue_walk(&tnlq, skb) {
+		inner_len = msg_size(buf_msg(skb));
+		skb_push(skb, INT_H_SIZE);
+		msg_set_size(&hdr, inner_len + INT_H_SIZE);
+		skb_copy_to_linear_data(skb, &hdr, INT_H_SIZE);
 	}
-
-	if (pktcnt_need_update)
-		skb_queue_walk(&tnlq, skb) {
-			hdr = buf_msg(skb);
-			msg_set_msgcnt(hdr, pktcnt);
-		}
-
 	tipc_link_xmit(tnl, &tnlq, xmitq);
 
+	/* Prepare for receiving failover packets, if any */
 	if (mtyp == FAILOVER_MSG) {
 		tnl->drop_point = l->rcv_nxt;
 		tnl->failover_reasm_skb = l->reasm_buf;
diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 0d515d2..812334d 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -860,3 +860,53 @@ void tipc_skb_reject(struct net *net, int err, struct sk_buff *skb,
 	if (tipc_msg_reverse(tipc_own_addr(net), &skb, err))
 		__skb_queue_tail(xmitq, skb);
 }
+
+void tipc_skb_queue_copy(struct sk_buff_head *from,
+			 struct sk_buff_head *to)
+{
+	struct sk_buff *skb, *__skb;
+
+	skb_queue_walk(from, skb) {
+		__skb = pskb_copy(skb, GFP_ATOMIC);
+		if (!__skb)
+			break;
+		__skb_queue_tail(to, __skb);
+	}
+}
+
+/* tipc_skb_queue_fragment(): Fragment tunnel packets if applicable
+ * Two cases:
+ * 1) Tunnel link MTU has just changed or is set differently
+ * 2) FAILOVER on top of a SYNCH message.
+ */
+int tipc_skb_queue_fragment(struct sk_buff_head *skbq, int pktmax,
+			     int *pktcnt, bool frag_supp, int mtyp)
+{
+	struct sk_buff_head frags, tmpq;
+	struct tipc_msg *hdr;
+	struct sk_buff *skb;
+	int rc = 0;
+
+	__skb_queue_head_init(&frags);
+	__skb_queue_head_init(&tmpq);
+	skb_queue_splice_tail_init(skbq, &tmpq);
+
+	skb_queue_walk(&tmpq, skb) {
+		hdr = buf_msg(skb);
+		if (msg_size(hdr) <= pktmax - INT_H_SIZE)
+			continue;
+		if (mtyp == FAILOVER_MSG && !frag_supp) {
+			rc = -1;
+			goto exit;
+		}
+		rc = tipc_msg_fragment(skb, hdr, pktmax, &frags);
+		if (rc)
+			goto exit;
+		*pktcnt += skb_queue_len(&frags) - 1;
+		skb_queue_splice_tail_init(&frags, &tmpq);
+	}
+exit:
+	__skb_queue_purge(&frags);
+	skb_queue_splice_tail_init(&tmpq, skbq);
+	return rc;
+}
diff --git a/net/tipc/msg.h b/net/tipc/msg.h
index e4c13f2..2197f64 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -1125,7 +1125,9 @@ bool tipc_msg_pskb_copy(u32 dst, struct sk_buff_head *msg,
 void __tipc_skb_queue_sorted(struct sk_buff_head *list, u16 seqno,
 			     struct sk_buff *skb);
 bool tipc_msg_skb_clone(struct sk_buff_head *msg, struct sk_buff_head *cpy);
-
+void tipc_skb_queue_copy(struct sk_buff_head *from, struct sk_buff_head *to);
+int tipc_skb_queue_fragment(struct sk_buff_head *skbq, int pktmax,
+			     int *pktcnt, bool frag_supp, int mtyp);
 static inline u16 buf_seqno(struct sk_buff *skb)
 {
 	return msg_seqno(buf_msg(skb));
-- 
2.1.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
