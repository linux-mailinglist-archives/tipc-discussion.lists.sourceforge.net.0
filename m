Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCF2128C49
	for <lists+tipc-discussion@lfdr.de>; Sun, 22 Dec 2019 03:26:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RYfWNZaq/cAaMDMTzJrisSAHKM9e79n4ULgQh15Ymhk=; b=mjZq1NHiZ1HpzSToBstbPmrp1
	OYnWgvNAH7yDQU/YKFVBNRCEA2MCGakmi8H4wPH3o26+iVIIrifP1C92ygTnj3HSMdWzGtCG3Dns3
	OGl19JYWuWSJh9AhMnFGm5JVyMyYnwgGwFU0rdMi3US9/IKe1S5OQubhjCTdHb0FxFKRQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iiqx1-0004kW-Ky; Sun, 22 Dec 2019 02:26:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iiqx0-0004kH-3V
 for tipc-discussion@lists.sourceforge.net; Sun, 22 Dec 2019 02:26:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qHTZFYeb2kP+WMpLVK6E+bI7JFq/EsU0hfJrBz3oJWA=; b=TNRH01IeqYP5WzzGNMkpJCtnwa
 efQH0LLj7qmpKMwHCeg09+bw5xWQ3inS1CvP+PD86zbuLj/W7+RVZ7DbMnR9YLGugh5zZAEulk92H
 D7gITXQ6hK1ldMPoIoCW7Ns7QvRc+E66peserw5/jxK0yP4xVIjpv9p2lrk87fdLDtxE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qHTZFYeb2kP+WMpLVK6E+bI7JFq/EsU0hfJrBz3oJWA=; b=fLE7JTtlglxiQCE1k4qnNqE0Mp
 ud5eCukxCY8H7eBOwRFJi/neKgSUbz0uTt6Ix8puYa8FQZWq896S7jLSerSjoyxn2AgDTZodp0B3A
 LXc1gG168opUE9xL0yrb6BHwBwbrpROQQEqTu/mLN8X/E+P3RvsW6lFnoKef59NQEvKI=;
Received: from mail-eopbgr60062.outbound.protection.outlook.com ([40.107.6.62]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iiqwr-00A5R3-Vd
 for tipc-discussion@lists.sourceforge.net; Sun, 22 Dec 2019 02:26:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N5M4QWpo+x3oa1e0+1mHrgV582GVemMvz1t51vAGnwe0KEWcHUrB1lO3/awmnJIWyfiJeQzeY1frWDiZmcZvl2f9zy+bnawAKN1UkxIQIG1rHyQk97Dc4l8TXMPMfDyQXC3G/h7A6JG0JEkvH98hoswRuUqV4Ab8rJEGfSoa3Yy+30llWxx5spol3lAWUEPa1Y8YNYVE6beA89+zTDxydGMLysDgStsBeq9+afJap09bHL2o74JQ8bUg1IqUmHz6zBeH44GTBJbnu5jKjgeduCwy+vyrJ3nDynk8LpdxZOxT/I8usM2Dqw2S6eNHUxjilGVukZ7CQbNawvudkWZWJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qHTZFYeb2kP+WMpLVK6E+bI7JFq/EsU0hfJrBz3oJWA=;
 b=ARh479uSp5B4wejpogkjmu6vO7+iWDVanr/6mypv/OPvHrGLdmvOVKwQOE2oNdp6271BEJ4eEGwAIQCbVU7soGd2s7IfdjFgpN1uIySm+q6dd1/wfeum+1tWCvuSIKXoAg+Bk3uVxYlIJtvMa8smwjuXsbNT4F7v6W9Awi9nOz8Nd3aZPBHdzG0BLUjpxBL1nmKxeLgknbR0f5NHYVNSv7Ea8k7TjoRnPIlREyuSV3BG63Nen7rFhGxp+HjETmyrv0Mz32vQ+9nuxvogorunVAPch7S/ovQs4JbuiixToBkY7rRNJ7yfZjDl0pgh5U6ThArNXVBUsctHlcKOl9Bl0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 192.176.1.74) smtp.rcpttodomain=lists.sourceforge.net
 smtp.mailfrom=ericsson.com; dmarc=pass (p=reject sp=none pct=100) action=none
 header.from=ericsson.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qHTZFYeb2kP+WMpLVK6E+bI7JFq/EsU0hfJrBz3oJWA=;
 b=O4gULdoVr19QumJ7lCmFz9e2aU6F4SkXZp1l6MyGt5EGZeNsKYGNOsHec5h+KYGHwep0LD9OjbgjyZZ+dcfNlHeD7kY99BNQfhT941bvM4juq5DRdO2U6HgZJ5ivUt6qnNhYdzgXl6x1DA3NREI2cmXOZSY0MPr8h1/s/fLrGkU=
Received: from DB6PR07CA0172.eurprd07.prod.outlook.com (2603:10a6:6:43::26) by
 VI1PR07MB4223.eurprd07.prod.outlook.com (2603:10a6:802:66::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.7; Sun, 22 Dec 2019 02:26:17 +0000
Received: from AM5EUR02FT041.eop-EUR02.prod.protection.outlook.com
 (2a01:111:f400:7e1e::202) by DB6PR07CA0172.outlook.office365.com
 (2603:10a6:6:43::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.6 via Frontend
 Transport; Sun, 22 Dec 2019 02:26:17 +0000
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
 15.20.2559.14 via Frontend Transport; Sun, 22 Dec 2019 02:26:17 +0000
Received: from ESESBMB501.ericsson.se (153.88.183.168) by
 ESESSMR503.ericsson.se (153.88.183.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Sun, 22 Dec 2019 03:26:11 +0100
Received: from ESESSMB503.ericsson.se (153.88.183.164) by
 ESESBMB501.ericsson.se (153.88.183.168) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Sun, 22 Dec 2019 03:26:11 +0100
Received: from tipsy.lab.linux.ericsson.se (153.88.183.153) by
 smtp.internal.ericsson.com (153.88.183.191) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Sun, 22 Dec 2019 03:26:10 +0100
To: <tipc-discussion@lists.sourceforge.net>,
 <parthasarathy.bhuvaragan@gmail.com>, <tung.q.nguyen@dektech.com.au>,
 <hoang.h.le@dektech.com.au>, <jon.maloy@ericsson.com>,
 <tuong.t.lien@dektech.com.au>, <ying.xue@windriver.com>,
 <lucien.xin@gmail.com>, lxin.redhat
Date: Sun, 22 Dec 2019 03:26:09 +0100
Message-ID: <1576981569-27482-8-git-send-email-jon.maloy@ericsson.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1576981569-27482-1-git-send-email-jon.maloy@ericsson.com>
References: <1576981569-27482-1-git-send-email-jon.maloy@ericsson.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:192.176.1.74; IPV:; CTRY:SE; EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(376002)(346002)(39860400002)(199004)(189003)(186003)(8676002)(426003)(2616005)(44832011)(2906002)(246002)(26005)(336012)(5660300002)(7636002)(956004)(70206006)(478600001)(110136005)(70586007)(8936002)(86362001)(356004)(316002)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR07MB4223; H:oa.msg.ericsson.com; FPR:;
 SPF:Pass; LANG:en; PTR:office365.se.ericsson.net; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2f846b0b-ea22-4896-4a0b-08d786865300
X-MS-TrafficTypeDiagnostic: VI1PR07MB4223:
X-LD-Processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
X-Microsoft-Antispam-PRVS: <VI1PR07MB4223CB54A8E2F4BC9BDB29899A2F0@VI1PR07MB4223.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 02596AB7DA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e0oSoRSjYWFknBNL5Vu1bjuebEVAlAhnL59XIjnJYsJSvBfYiT/35DD8s/UdJZvCyEIqgzcLcd0lsqw7bW5CTsX2+hdbq/0LUG1SUOwRlp6OfTh3yigsoW85ItwrBEuWKbhxZ/E4pGKBEODCxmW9n6j2UXflnaBMV3JYak1DDJ1d9rGxPV7pRufjrWvtiA5SNjskCk15XQcBzQxZGRe7LcpSDBGvJVxT2xjY7ZUsmeVfErMh7/s7HYe8Dcu7YW1wouQ//N7SkknLTEqxFs0exMBzpJC7tamp44Cullr8lgCVMo6t5U+gt4jZ6I4lwzsXsueeNxdwvj20QJcMcE4Del1Oq057VbblX6K8XeTzOnpN1b3Sv/UvT6t3bPGKpL3+RLWrMf72f6LtmDVMqwi5Q/uthzfAbO7GEnXaWKcVsuOZ2EvTewJBNymmggagITKB
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2019 02:26:17.1881 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f846b0b-ea22-4896-4a0b-08d786865300
X-MS-Exchange-CrossTenant-Id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=92e84ceb-fbfd-47ab-be52-080c6b87953f; Ip=[192.176.1.74];
 Helo=[oa.msg.ericsson.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR07MB4223
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.6.62 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iiqwr-00A5R3-Vd
Subject: [tipc-discussion] [net-next 6/6] tipc: let stream chunks bypass gso
 over udp
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

After experimenting with GSO and GRO we have found that they give very
little performance improvements. However, the previously introduced GSO
framework can be leveraged to significatly improve throughput across
TIPC/UDP/IP anyway.

We have found that we can disable the GSO callback for messages
smaller than 16k, and instead let them be transported as is by the
UDP/IP bearer. By doing this, we obtain a 45% increase of max throughput
for large messages, getting close to the values we had with the earlier
solution with an "emulated mtu". In contrast to that solution, we now
use the real mtu and the real number of outstanding network packets as
base for the link congestion control. Furthermore, if an initial 16k GSO
chunk, corresponding to eleven 1500 byte network packets, is lost, the
algorithm will retransmit the individual network packets, not the whole
message or stream chunk.

This solution seems to be sufficient robust to work well even in lossy
networks, and does not overwhelm and reset the virtio ring buffer as we
have seen in some cases before.

Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
---
 net/tipc/link.c      | 11 +++++++++--
 net/tipc/msg.c       |  9 +++++++--
 net/tipc/msg.h       | 23 +++++++++++++++++++----
 net/tipc/node.h      |  6 ++++--
 net/tipc/udp_media.c | 13 +++++++++++--
 5 files changed, 50 insertions(+), 12 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 8455fd1..7f85165 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -1000,6 +1000,8 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 		if (msg_user(hdr) == MSG_FRAGMENTER) {
 			l->stats.sent_fragmented++;
 			l->stats.sent_fragments += skb_shinfo(skb)->gso_segs;
+			TIPC_SKB_CB(skb)->peer_gso_support = 
+				!!(l->peer_caps & TIPC_GSO_SUPPORT);
 		}
 		if (likely(l->transmq_len < cwin)) {
 			msg_set_seqno(hdr, seqno);
@@ -1104,6 +1106,8 @@ static void tipc_link_advance_backlog(struct tipc_link *l,
 		skb = skb_peek(&l->backlogq);
 		if (!skb)
 			break;
+		TIPC_SKB_CB(skb)->peer_gso_support = 
+			!!(l->peer_caps & TIPC_GSO_SUPPORT);
 		_skb = skb_clone(skb, GFP_ATOMIC);
 		if (!_skb)
 			break;
@@ -1193,6 +1197,7 @@ static int tipc_link_bc_retrans(struct tipc_link *l, struct tipc_link *r,
 				u16 from, u16 to, struct sk_buff_head *xmitq)
 {
 	struct sk_buff *_skb, *skb = skb_peek(&l->transmq);
+	int mss = tipc_link_mtu(l) - 2 * INT_H_SIZE;
 	int retransmitted = 0;
 	struct tipc_msg *hdr;
 	int rc = 0;
@@ -1218,7 +1223,7 @@ static int tipc_link_bc_retrans(struct tipc_link *l, struct tipc_link *r,
 		TIPC_SKB_CB(skb)->nxt_retr = TIPC_BC_RETR_LIM;
 		if (msg_user(hdr) == MSG_FRAGMENTER) {
 			skb->priority = TC_PRIO_CONTROL;
-			tipc_skb_segment(skb, 0, from, to, xmitq);
+			tipc_skb_segment(skb, 0, from, to, mss, xmitq);
 			continue;
 		}
 		_skb = __pskb_copy(skb, LL_MAX_HEADER + MIN_H_SIZE, GFP_ATOMIC);
@@ -1474,6 +1479,7 @@ static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
 				     struct tipc_gap_ack_blks *ga,
 				     struct sk_buff_head *xmitq)
 {
+	int mss = tipc_link_mtu(l) - 2 * INT_H_SIZE;
 	struct sk_buff *skb, *_skb, *tmp;
 	struct tipc_msg *hdr, *_hdr;
 	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
@@ -1509,7 +1515,8 @@ static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
 			TIPC_SKB_CB(skb)->nxt_retr = TIPC_UC_RETR_TIME;
 			if (msg_user(hdr) == MSG_FRAGMENTER) {
 				skb->priority = TC_PRIO_CONTROL;
-				tipc_skb_segment(skb, 0, acked, acked + gap, xmitq);
+				tipc_skb_segment(skb, 0, acked, acked + gap,
+						 mss, xmitq);
 				l->stats.retransmitted++;
 				retransmitted = true;
 				continue;
diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 3c36ba2..83c2f17 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -152,6 +152,12 @@ int tipc_buf_append(struct sk_buff **headbuf, struct sk_buff **buf)
 		if (unlikely(skb_unclone(frag, GFP_ATOMIC)))
 			goto err;
 		head = *headbuf = frag;
+		if (msg_size(buf_msg(frag)) == msg_data_sz(msg)) {
+			*buf = head;
+			TIPC_SKB_CB(head)->tail = NULL;
+			*headbuf = NULL;
+			return 1;
+		}
 		*buf = NULL;
 		TIPC_SKB_CB(head)->tail = NULL;
 		if (skb_is_nonlinear(head)) {
@@ -868,7 +874,7 @@ int tipc_skb_queue_fragment(struct sk_buff_head *skbq, int pktmax,
 }
 
 int tipc_skb_segment(struct sk_buff *skb, int tnl_hlen, u16 from,
-		     u16 to, struct sk_buff_head *segs)
+		     u16 to, int mss, struct sk_buff_head *segs)
 {
 	struct skb_shared_info *shinfo = skb_shinfo(skb);
 	unsigned char *tnl_hdr = skb->data - tnl_hlen;
@@ -877,7 +883,6 @@ int tipc_skb_segment(struct sk_buff *skb, int tnl_hlen, u16 from,
 	int frag_pos = frag->bv_offset;
 	struct tipc_msg *seg_hdr = NULL;
 	skb_frag_t *seg_frag = NULL;
-	int mss = shinfo->gso_size;
 	struct sk_buff *seg = NULL;
 	unsigned int hlen = msg_hdr_sz(hdr);
 	unsigned int left = msg_data_sz(hdr);
diff --git a/net/tipc/msg.h b/net/tipc/msg.h
index 8391581..9fb02b5 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -103,6 +103,7 @@ struct plist;
 #define TIPC_MEDIA_INFO_OFFSET	5
 
 struct tipc_skb_cb {
+//<<<<<<< HEAD
 	union {
 		struct {
 			struct sk_buff *tail;
@@ -134,12 +135,25 @@ struct tipc_skb_cb {
 		};
 		u8 flags;
 	};
-	u8 reserved;
+	u8 reserved:7;
+	bool peer_gso_support:1;
 #ifdef CONFIG_TIPC_CRYPTO
 	void *crypto_ctx;
 #endif
 } __packed;
-
+#if 0
+=======
+	u32 bytes_read;
+	u32 orig_member;
+	struct sk_buff *tail;
+	unsigned long nxt_retr;
+	u16 chain_imp;
+	u16 ackers;
+	u16 peer_caps;
+	u8 validated;
+};
+>>>>>>> tipc: let stream chunks bypass gso over udp
+#endif
 #define TIPC_SKB_CB(__skb) ((struct tipc_skb_cb *)&((__skb)->cb[0]))
 
 struct tipc_msg {
@@ -1147,15 +1161,16 @@ void tipc_skb_queue_copy(struct sk_buff_head *from, struct sk_buff_head *to);
 int tipc_skb_queue_fragment(struct sk_buff_head *skbq, int pktmax,
 			     int *pktcnt, bool frag_supp, int mtyp);
 int tipc_skb_segment(struct sk_buff *skb, int tnl_hlen, u16 from, u16 to,
-		     struct sk_buff_head *segs);
+		     int mss, struct sk_buff_head *segs);
 
 static inline int tipc_skb_segment_all(struct sk_buff *skb, int tnl_hlen,
 				       struct sk_buff_head *segs)
 {
 	u16 from = msg_seqno(buf_msg(skb));
 	u16 to = from + skb_shinfo(skb)->gso_segs - 1;
+	int mss = skb_shinfo(skb)->gso_size;
 
-	return tipc_skb_segment(skb, tnl_hlen, from, to, segs);
+	return tipc_skb_segment(skb, tnl_hlen, from, to, mss, segs);
 }
 
 static inline u16 buf_seqno(struct sk_buff *skb)
diff --git a/net/tipc/node.h b/net/tipc/node.h
index a6803b4..591165c 100644
--- a/net/tipc/node.h
+++ b/net/tipc/node.h
@@ -55,7 +55,8 @@ enum {
 	TIPC_MCAST_RBCTL      = (1 << 7),
 	TIPC_GAP_ACK_BLOCK    = (1 << 8),
 	TIPC_TUNNEL_ENHANCED  = (1 << 9),
-	TIPC_NAGLE            = (1 << 10)
+	TIPC_NAGLE            = (1 << 10),
+	TIPC_GSO_SUPPORT      = (1 << 11)
 };
 
 #define TIPC_NODE_CAPABILITIES (TIPC_SYN_BIT           |  \
@@ -68,7 +69,8 @@ enum {
 				TIPC_MCAST_RBCTL       |   \
 				TIPC_GAP_ACK_BLOCK     |   \
 				TIPC_TUNNEL_ENHANCED   |   \
-				TIPC_NAGLE)
+				TIPC_NAGLE             |   \
+				TIPC_GSO_SUPPORT)
 
 #define INVALID_BEARER_ID -1
 
diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
index 974d260..210e754 100644
--- a/net/tipc/udp_media.c
+++ b/net/tipc/udp_media.c
@@ -52,6 +52,7 @@
 #include "bearer.h"
 #include "netlink.h"
 #include "msg.h"
+#include "node.h"
 
 /* IANA assigned UDP port */
 #define UDP_PORT_DEFAULT	6118
@@ -181,8 +182,16 @@ static int tipc_udp_xmit(struct net *net, struct sk_buff *skb,
 			}
 			dst_cache_set_ip4(cache, &rt->dst, fl.saddr);
 		}
-		if (msg_user(buf_msg(skb)) == MSG_FRAGMENTER)
-			skb_shinfo(skb)->gso_type = SKB_GSO_UDP_TUNNEL;
+		/* IP layer does fragm/defrag better than GSO/GRO layer */
+		if (msg_user(buf_msg(skb)) == MSG_FRAGMENTER) {
+			if (skb->len <= TIPC_MSG_CHUNK_SIZE + INT_H_SIZE * 2 &&
+			    TIPC_SKB_CB(skb)->peer_gso_support) {
+				skb_shinfo(skb)->gso_size = 0;
+				skb_shinfo(skb)->gso_segs = 0;
+			} else {
+				skb_shinfo(skb)->gso_type = SKB_GSO_UDP_TUNNEL;
+			}
+		}
 		skb->dev = rt->dst.dev;
 		ttl = ip4_dst_hoplimit(&rt->dst);
 		udp_tunnel_xmit_skb(rt, ub->ubsock->sk, skb, src->ipv4.s_addr,
-- 
2.1.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
