Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1834128C48
	for <lists+tipc-discussion@lfdr.de>; Sun, 22 Dec 2019 03:26:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W0ID6w6ygGe3HKr95FJbILJslHssMHn18edOudf+tb0=; b=luxGXaI0+9xtDvxExVGoXMyer
	HRTRK+PqyzQiC1PNWdnaLnaUAI1HDd5W62YpQsd2jXii7Xe6+N6yqWDjymmeQ8CHNEGcL0hwQG8Cb
	69Km9l3hOvaB/ZSBqsFFD0sx5xBxH9quoFQNnoUpQYrelGtbVrQyz5c1+Zzi4blYcX7UY=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iiqwz-0007nl-TD; Sun, 22 Dec 2019 02:26:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iiqwv-0007nL-Jn
 for tipc-discussion@lists.sourceforge.net; Sun, 22 Dec 2019 02:26:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zPvtmqBD/8jhtoehL6s8fSN2yWBiRk+OhArlu/ZxrBs=; b=N71v0uC+jh5LNCrIyN9Tr8+/w0
 J0o0YNYnGSiped+MAMBtBzz+2k6EfkDMt168Imp2r6fzDiEwXVSvj3zj+nEUD8k0nGwVApQXxhONt
 m8Yz4H+EnVMbiz4YymZB4k8UO1fCScn1/yQ52MTPkxrOJBLbTahvDGLAcSq4EI/y+NV8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zPvtmqBD/8jhtoehL6s8fSN2yWBiRk+OhArlu/ZxrBs=; b=C3SaEkTwdzSQY1EMGNeTydbZSN
 nhnI43tFPoJT8DbaBqlBQkEo11y8wGmDTcyJHQQvtvomydbJ5IenJIqU2XoOYB+EVEYM+NCVhhe3J
 sw4F+BNHEDt0jJX1K2xmbtpjuOdD2nOHHvDJ/1D9UcyvVxc5psHIwOtKzHczGIbkpang=;
Received: from mail-eopbgr20084.outbound.protection.outlook.com ([40.107.2.84]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iiqwn-00C6TD-OE
 for tipc-discussion@lists.sourceforge.net; Sun, 22 Dec 2019 02:26:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bkvSPUw7DvT1hCisNkAOYsl7XeCop9LyIXABE100xsOQGuipRtBammLK0wEsexAjlneMCHVtd6BvbhUdYEgvZ63GJf9zk+Yp7ROJUnaXIg03R00SaI5mrAzBWScbpM+/kXiG+0Dv3kcbfCofQaGzGPI6nbgTUdlA7wI4US310QYON7Qb3OLgUstcuP3O+JZLRCkH83bf6KWX+OdmLPc5XqQd8KGdEs44SRwPfIBUhu2IFt/7VaxTgE7WInZHQQpfiZruM3ZLGuNMoyu5gIOq/bnMadWfw5rXZKx+wpaL31rWer625tqSoL56DgGxLJUyxfGMbf6e3rh4FdFpAdosFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zPvtmqBD/8jhtoehL6s8fSN2yWBiRk+OhArlu/ZxrBs=;
 b=nUHJgCZpnCv9/rioYORmNuk6uCJbdtVazNLNWeQda+ZGDLzPCJjKd8ccILMn/eeTlpXBUguQzXfQDNOV74zLxZ8Hqq5Rh1bTDBZ3rvqLK9CSd77VXpoEF2W7A2K8nQugRX0xGln3XwP68reJNlIA8orPmnAkzl1t7ILaAol+8L0qKlwaEMn/YxAiYYv+xikHhsMcQZsPckdaoLum4ZPpNHcfb8IBndJC67Ab4LacBiIvtvN768istIkWiupEYBIjWhfdcBu5887UL1ZUwONVYPT+4z7N3OeoukKOWbGLbT7aXn4y99PTPWoaEKrB9diLuMzk2WITrHYkvM1+ODSw9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 192.176.1.74) smtp.rcpttodomain=lists.sourceforge.net
 smtp.mailfrom=ericsson.com; dmarc=pass (p=reject sp=none pct=100) action=none
 header.from=ericsson.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zPvtmqBD/8jhtoehL6s8fSN2yWBiRk+OhArlu/ZxrBs=;
 b=SFq0aXb1kHUnZElgZlxphagG9W5voh+WVqFlWIDQDhhhlafWzutRIF+Q3R5GqXbcA42QrYGtwAQrduQzIW9X/YKpdMmMZpkLZ4mR8vy5F7+uXs155iHwc19jMTpf4/7orAkTN97blC04Z2tH7rzYrvARBzMhT69H/2Wb2Zh9jh0=
Received: from AM3PR07CA0109.eurprd07.prod.outlook.com (2603:10a6:207:7::19)
 by VI1PR0701MB2638.eurprd07.prod.outlook.com (2603:10a6:801:4::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.8; Sun, 22 Dec
 2019 02:26:13 +0000
Received: from HE1EUR02FT031.eop-EUR02.prod.protection.outlook.com
 (2a01:111:f400:7e05::200) by AM3PR07CA0109.outlook.office365.com
 (2603:10a6:207:7::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.6 via Frontend
 Transport; Sun, 22 Dec 2019 02:26:13 +0000
Authentication-Results: spf=pass (sender IP is 192.176.1.74)
 smtp.mailfrom=ericsson.com; lists.sourceforge.net; dkim=none (message not
 signed) header.d=none;lists.sourceforge.net; dmarc=pass action=none
 header.from=ericsson.com;
Received-SPF: Pass (protection.outlook.com: domain of ericsson.com designates
 192.176.1.74 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=192.176.1.74; helo=oa.msg.ericsson.com;
Received: from oa.msg.ericsson.com (192.176.1.74) by
 HE1EUR02FT031.mail.protection.outlook.com (10.152.10.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2559.14 via Frontend Transport; Sun, 22 Dec 2019 02:26:13 +0000
Received: from ESESSMB503.ericsson.se (153.88.183.164) by
 ESESSMR506.ericsson.se (153.88.183.128) with Microsoft SMTP Server
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
Date: Sun, 22 Dec 2019 03:26:07 +0100
Message-ID: <1576981569-27482-6-git-send-email-jon.maloy@ericsson.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1576981569-27482-1-git-send-email-jon.maloy@ericsson.com>
References: <1576981569-27482-1-git-send-email-jon.maloy@ericsson.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:192.176.1.74; IPV:; CTRY:SE; EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(396003)(136003)(51234002)(199004)(189003)(44832011)(8676002)(478600001)(70586007)(186003)(336012)(8936002)(2906002)(426003)(956004)(2616005)(26005)(246002)(70206006)(30864003)(6666004)(356004)(7636002)(5660300002)(86362001)(316002)(110136005)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0701MB2638; H:oa.msg.ericsson.com; FPR:;
 SPF:Pass; LANG:en; PTR:office365.se.ericsson.net; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 17ab42de-97a5-4978-d033-08d78686507e
X-MS-TrafficTypeDiagnostic: VI1PR0701MB2638:
X-LD-Processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
X-Microsoft-Antispam-PRVS: <VI1PR0701MB26383A7F6B7B8FE0FEAB83FB9A2F0@VI1PR0701MB2638.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2449;
X-Forefront-PRVS: 02596AB7DA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FQlh+7t3r4PJpNiWxRnjYSQ8lpNV/gXkd16zBbJBqcisIcjA2ip7HtqETR6q+6EYjAxf1Q1luDijo4MwbkrdlekXnVdAf39iuXNqc5H/FkdBVkaj9MoHGuLW1RbRy3xXoCmXxVItBAeCaODxa9fO7k7aK9V+msSB1ynl6YUHs9TUBp0swEzexasVGkElsn0/jl6vkO2AOczFXdfkKJA1w8xdOZmcKhbFuMMqV5ZXBZEhTx5vPNPU/Gr8OijDt4lovjzXnCUnhLphLskxtZHfvgE5z+YLCNEy7SEDUlOoPiOCRWXhFVKhmh1YUPa+Nevk3xBMlv51Xk9i87ro6YL3jTRT5528TAR5aHToSCnHyF58gxeGF/+YJRpLep7IX6OkuNmj4LVIn0E/8ZwrGziSxKZ1/63itUCJNPU2I/b6ccCrWWNjtLCqHZycUc/wSXXYxV+0Qj3AFpu5Y25vEgvy2052uBfOKeQ00rzx57qhqEN40P2ctAnB3h7gQvv28MxR
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2019 02:26:13.0192 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 17ab42de-97a5-4978-d033-08d78686507e
X-MS-Exchange-CrossTenant-Id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=92e84ceb-fbfd-47ab-be52-080c6b87953f; Ip=[192.176.1.74];
 Helo=[oa.msg.ericsson.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0701MB2638
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.2.84 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iiqwn-00C6TD-OE
Subject: [tipc-discussion] [net-next 4/6] tipc: separate packet sequence
 numbering from skb numbering
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

As a preparation for introduction of GSO we we need to eliminate the
assumption that there is a one-to-one relation between queued/sent
sk_buffs and ditto sequence numbered packets.

A GSO prepared buffer may in the future represent many message
fragments, each of which having their own packet sequence number.
We therefore prepare message buffers of type FIRST_FRAGMENT so that
they may contain a complete message, comprising all its potential
fragments, -not only the first one. We do this by adding a "packet
count" field and a corresponding "last_seqno()" function to the header
of such messages, and adapt the link transmission and reception code
to handle them correctly.

Note that we don't actually intruduce multi-packet buffers in this
commit, -only some of the necessary logics to handle such packets.

Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
---
 net/tipc/link.c | 72 +++++++++++++++++++++++++++++++--------------------------
 net/tipc/msg.c  | 25 ++++++++++----------
 net/tipc/msg.h  | 18 +++++++++++++++
 3 files changed, 70 insertions(+), 45 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index f16219c..e205347 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -158,6 +158,7 @@ struct tipc_link {
 	/* Sending */
 	struct sk_buff_head transmq;
 	struct sk_buff_head backlogq;
+	u16 transmq_len;
 	struct {
 		u16 len;
 		u16 limit;
@@ -942,6 +943,7 @@ void tipc_link_reset(struct tipc_link *l)
 	l->reasm_buf = NULL;
 	l->reasm_tnlmsg = NULL;
 	l->failover_reasm_skb = NULL;
+	l->transmq_len = 0;
 	l->rcv_unacked = 0;
 	l->snd_nxt = 1;
 	l->rcv_nxt = 1;
@@ -975,11 +977,11 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
 	u16 ack = l->rcv_nxt - 1;
 	u16 seqno = l->snd_nxt;
-	int pkt_cnt = skb_queue_len(list);
 	int imp = msg_importance(hdr);
 	unsigned int mss = tipc_link_mss(l);
 	unsigned int cwin = l->window;
 	unsigned int mtu = l->mtu;
+	unsigned int pktcnt;
 	bool new_bundle;
 	int rc = 0;
 
@@ -990,7 +992,6 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 		__skb_queue_purge(list);
 		return -EMSGSIZE;
 	}
-
 	/* Allow oversubscription of one data msg per source at congestion */
 	if (unlikely(l->backlog[imp].len >= l->backlog[imp].limit)) {
 		if (imp == TIPC_SYSTEM_IMPORTANCE) {
@@ -1000,15 +1001,15 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 		rc = link_schedule_user(l, hdr);
 	}
 
-	if (pkt_cnt > 1) {
-		l->stats.sent_fragmented++;
-		l->stats.sent_fragments += pkt_cnt;
-	}
-
 	/* Prepare each packet for sending, and add to relevant queue: */
 	while ((skb = __skb_dequeue(list))) {
-		if (likely(skb_queue_len(transmq) < cwin)) {
-			hdr = buf_msg(skb);
+		hdr = buf_msg(skb);
+		pktcnt = msg_pktcnt(hdr);
+		if (msg_user(hdr) == MSG_FRAGMENTER) {
+			l->stats.sent_fragmented++;
+			l->stats.sent_fragments += skb_shinfo(skb)->gso_segs;
+		}
+		if (likely(l->transmq_len < cwin)) {
 			msg_set_seqno(hdr, seqno);
 			msg_set_ack(hdr, ack);
 			msg_set_bcast_ack(hdr, bc_ack);
@@ -1019,14 +1020,13 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 				return -ENOBUFS;
 			}
 			__skb_queue_tail(transmq, skb);
-			/* next retransmit attempt */
-			if (link_is_bc_sndlink(l))
-				TIPC_SKB_CB(skb)->nxt_retr = TIPC_BC_RETR_LIM;
+			l->transmq_len += pktcnt;
 			__skb_queue_tail(xmitq, _skb);
 			TIPC_SKB_CB(skb)->ackers = l->ackers;
+			if (link_is_bc_sndlink(l))
+				TIPC_SKB_CB(skb)->nxt_retr = TIPC_BC_RETR_LIM;
 			l->rcv_unacked = 0;
-			l->stats.sent_pkts++;
-			seqno++;
+			seqno += pktcnt;
 			continue;
 		}
 		if (tipc_msg_try_bundle(l->backlog[imp].target_bskb, &skb,
@@ -1046,10 +1046,10 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 			continue;
 		}
 		l->backlog[imp].target_bskb = NULL;
-		l->backlog[imp].len += (1 + skb_queue_len(list));
+		l->backlog[imp].len += pktcnt;
 		__skb_queue_tail(backlogq, skb);
-		skb_queue_splice_tail_init(list, backlogq);
 	}
+	l->stats.sent_pkts += mod(seqno - l->snd_nxt);
 	l->snd_nxt = seqno;
 	return rc;
 }
@@ -1118,23 +1118,22 @@ static void tipc_link_advance_backlog(struct tipc_link *l,
 		__skb_dequeue(&l->backlogq);
 		hdr = buf_msg(skb);
 		imp = msg_importance(hdr);
-		l->backlog[imp].len--;
+		l->backlog[imp].len -= msg_pktcnt(hdr);
 		if (unlikely(skb == l->backlog[imp].target_bskb))
 			l->backlog[imp].target_bskb = NULL;
 		__skb_queue_tail(&l->transmq, skb);
-		/* next retransmit attempt */
+		l->transmq_len += msg_pktcnt(hdr);
 		if (link_is_bc_sndlink(l))
 			TIPC_SKB_CB(skb)->nxt_retr = TIPC_BC_RETR_LIM;
-
 		__skb_queue_tail(xmitq, _skb);
 		TIPC_SKB_CB(skb)->ackers = l->ackers;
 		msg_set_seqno(hdr, seqno);
 		msg_set_ack(hdr, ack);
 		msg_set_bcast_ack(hdr, bc_ack);
 		l->rcv_unacked = 0;
-		l->stats.sent_pkts++;
-		seqno++;
+		seqno += msg_pktcnt(hdr);
 	}
+	l->stats.sent_pkts += mod(seqno - l->snd_nxt);
 	l->snd_nxt = seqno;
 }
 
@@ -1202,8 +1201,6 @@ static int tipc_link_bc_retrans(struct tipc_link *l, struct tipc_link *r,
 				u16 from, u16 to, struct sk_buff_head *xmitq)
 {
 	struct sk_buff *_skb, *skb = skb_peek(&l->transmq);
-	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
-	u16 ack = l->rcv_nxt - 1;
 	int retransmitted = 0;
 	struct tipc_msg *hdr;
 	int rc = 0;
@@ -1230,9 +1227,6 @@ static int tipc_link_bc_retrans(struct tipc_link *l, struct tipc_link *r,
 		_skb = pskb_copy(skb, GFP_ATOMIC);
 		if (!_skb)
 			return 0;
-		hdr = buf_msg(_skb);
-		msg_set_ack(hdr, ack);
-		msg_set_bcast_ack(hdr, bc_ack);
 		_skb->priority = TC_PRIO_CONTROL;
 		__skb_queue_tail(xmitq, _skb);
 		l->stats.retransmitted++;
@@ -1406,13 +1400,18 @@ static int tipc_link_release_pkts(struct tipc_link *l, u16 acked)
 {
 	int released = 0;
 	struct sk_buff *skb, *tmp;
+	struct tipc_msg *hdr;
+	int pktcnt;
 
 	skb_queue_walk_safe(&l->transmq, skb, tmp) {
-		if (more(buf_seqno(skb), acked))
+		hdr = buf_msg(skb);
+		pktcnt = msg_pktcnt(hdr);
+		if (more(msg_last_seqno(hdr), acked))
 			break;
 		__skb_unlink(skb, &l->transmq);
 		kfree_skb(skb);
-		released++;
+		l->transmq_len -= pktcnt;
+		released += pktcnt;
 	}
 	return released;
 }
@@ -1486,17 +1485,20 @@ static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
 	bool passed = false;
 	u16 released = 0;
 	u16 seqno, n = 0;
+	int pktcnt;
 	int rc = 0;
 
 	skb_queue_walk_safe(&l->transmq, skb, tmp) {
-		seqno = buf_seqno(skb);
+		seqno = msg_last_seqno(buf_msg(skb));
 
 next_gap_ack:
 		if (less_eq(seqno, acked)) {
 			/* release skb */
+			pktcnt = msg_pktcnt(buf_msg(skb));
 			__skb_unlink(skb, &l->transmq);
 			kfree_skb(skb);
-			released++;
+			l->transmq_len -= pktcnt;
+			released += pktcnt;
 		} else if (less_eq(seqno, acked + gap)) {
 			/* First, check if repeated retrans failures occurs? */
 			if (!passed && link_retransmit_failure(l, l, &rc))
@@ -1622,7 +1624,7 @@ int tipc_link_rcv(struct tipc_link *l, struct sk_buff *skb,
 	struct sk_buff_head *defq = &l->deferdq;
 	struct tipc_msg *hdr = buf_msg(skb);
 	u16 seqno, rcv_nxt, win_lim;
-	int released = 0;
+	int pktcnt, released = 0;
 	int rc = 0;
 
 	/* Verify and update link state */
@@ -1635,6 +1637,7 @@ int tipc_link_rcv(struct tipc_link *l, struct sk_buff *skb,
 	do {
 		hdr = buf_msg(skb);
 		seqno = msg_seqno(hdr);
+		pktcnt = msg_pktcnt(hdr);
 		rcv_nxt = l->rcv_nxt;
 		win_lim = rcv_nxt + TIPC_MAX_LINK_WIN;
 
@@ -1661,14 +1664,15 @@ int tipc_link_rcv(struct tipc_link *l, struct sk_buff *skb,
 		}
 
 		/* Deliver packet */
-		l->rcv_nxt++;
+		l->rcv_nxt += pktcnt;
 		l->stats.recv_pkts++;
+		l->rcv_unacked += pktcnt;
 
 		if (unlikely(msg_user(hdr) == TUNNEL_PROTOCOL))
 			rc |= tipc_link_tnl_rcv(l, skb, l->inputq);
 		else if (!tipc_data_input(l, skb, l->inputq))
 			rc |= tipc_link_input(l, skb, l->inputq, &l->reasm_buf);
-		if (unlikely(++l->rcv_unacked >= TIPC_MIN_LINK_WIN))
+		if (unlikely(l->rcv_unacked >= TIPC_MIN_LINK_WIN))
 			rc |= tipc_link_build_state_msg(l, xmitq);
 		if (unlikely(rc & ~TIPC_LINK_SND_STATE))
 			break;
@@ -1813,6 +1817,7 @@ void tipc_link_tnl_prepare(struct tipc_link *l, struct tipc_link *tnl,
 
 	if (!tnl)
 		return;
+
 	skb_queue_head_init(&tnlq);
 	skb_queue_head_init(&tmpxq);
 
@@ -2286,6 +2291,7 @@ void tipc_link_bc_ack_rcv(struct tipc_link *l, u16 acked,
 			break;
 		if (!--TIPC_SKB_CB(skb)->ackers) {
 			__skb_unlink(skb, &snd_l->transmq);
+			snd_l->transmq_len -= msg_pktcnt(buf_msg(skb));
 			kfree_skb(skb);
 		}
 	}
diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 812334d..a70d8a9 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -425,6 +425,7 @@ int tipc_msg_build(struct tipc_msg *mhdr, struct msghdr *m, int offset,
 		      FIRST_FRAGMENT, INT_H_SIZE, msg_destnode(mhdr));
 	msg_set_size(&pkthdr, pktmax);
 	msg_set_fragm_no(&pkthdr, pktno);
+	msg_set_pktcnt(&pkthdr, 1);
 	msg_set_importance(&pkthdr, msg_importance(mhdr));
 
 	/* Prepare first fragment */
@@ -828,27 +829,27 @@ bool tipc_msg_pskb_copy(u32 dst, struct sk_buff_head *msg,
  * @seqno: sequence number of buffer to add
  * @skb: buffer to add
  */
-void __tipc_skb_queue_sorted(struct sk_buff_head *list, u16 seqno,
+void __tipc_skb_queue_sorted(struct sk_buff_head *list, u16 first,
 			     struct sk_buff *skb)
 {
+	u16 last = msg_last_seqno(buf_msg(skb));
 	struct sk_buff *_skb, *tmp;
+	struct tipc_msg *_hdr;
+	u16 _first, _last;
 
-	if (skb_queue_empty(list) || less(seqno, buf_seqno(skb_peek(list)))) {
+	if (skb_queue_empty(list) || less(last, buf_seqno(skb_peek(list)))) {
 		__skb_queue_head(list, skb);
 		return;
 	}
-
-	if (more(seqno, buf_seqno(skb_peek_tail(list)))) {
-		__skb_queue_tail(list, skb);
-		return;
-	}
-
-	skb_queue_walk_safe(list, _skb, tmp) {
-		if (more(seqno, buf_seqno(_skb)))
+	skb_queue_reverse_walk_safe(list, _skb, tmp) {
+		_hdr = buf_msg(_skb);
+		_first = msg_seqno(_hdr);
+		_last = msg_last_seqno(_hdr);
+		if (less(last, _first))
 			continue;
-		if (seqno == buf_seqno(_skb))
+		if (!less(first, _first) && !more(last, _last))
 			break;
-		__skb_queue_before(list, _skb, skb);
+		__skb_queue_after(list, _skb, skb);
 		return;
 	}
 	kfree_skb(skb);
diff --git a/net/tipc/msg.h b/net/tipc/msg.h
index 2197f64..1b5c8c8 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -709,6 +709,24 @@ static inline void msg_set_node_capabilities(struct tipc_msg *m, u32 n)
 	msg_set_bits(m, 1, 15, 0x1fff, n);
 }
 
+static inline u16 msg_pktcnt(struct tipc_msg *m)
+{
+	if (likely(msg_user(m) != MSG_FRAGMENTER ||
+		   msg_type(m) != FIRST_FRAGMENT))
+		return 1;
+	return msg_bits(m, 1, 23, 0x3f);
+}
+
+static inline void msg_set_pktcnt(struct tipc_msg *m, u32 n)
+{
+	msg_set_bits(m, 1, 23, 0x3f, n);
+}
+
+static inline u16 msg_last_seqno(struct tipc_msg *m)
+{
+	return msg_seqno(m) + msg_pktcnt(m) - 1;
+}
+
 /*
  * Word 2
  */
-- 
2.1.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
