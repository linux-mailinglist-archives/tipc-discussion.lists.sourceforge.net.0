Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EBA3BDD12
	for <lists+tipc-discussion@lfdr.de>; Tue,  6 Jul 2021 20:23:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m0pig-0005Gv-Dj; Tue, 06 Jul 2021 18:22:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1m0pie-0005GY-SU
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 18:22:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=evW3GB/T4qVPtRz48ADxIoh6urKtiHZcItIAQ1qAvDA=; b=bYwLqV+h41sPaZokMPSXc8PNYh
 dDpnYWpJAglahAya8IXS1s9Vf6cA8SzXS9wpiT+CN5hDuuQnn/tFt2VFKoJtUxlu1q1bqL/JrANjD
 CgZq1dIUSmMHaJ+bBgMN7X6tP+yCT/NrAC3BygKebYPk8phwPjh9jeJrsPwSWVPyHVyY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=evW3GB/T4qVPtRz48ADxIoh6urKtiHZcItIAQ1qAvDA=; b=JrMikeEIqWdbf8NnGnREAr0RlG
 6Eye0/Ww1IVWNJ7EsiG6wg4xOFxsiJ0ngzNQ0IEbmjG9J+qB72cQrys1qx2dPoznUbz67n1EpcP8e
 lHuGEk5v+iyHMgxHKGrLhYrlsioSAVYOUeUFr5Zovt085Uz984Bl31ZhQopyjkXobYos=;
Received: from mail-wr1-f45.google.com ([209.85.221.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m0piN-00Cbod-Dq
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 18:22:52 +0000
Received: by mail-wr1-f45.google.com with SMTP id t6so53272wrm.9
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 06 Jul 2021 11:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=evW3GB/T4qVPtRz48ADxIoh6urKtiHZcItIAQ1qAvDA=;
 b=rOfCqlAekeuxCMTEjuHkOkY2n90hoKOG7pEpb3ORJmZCTYjnU2VE+Qq0DUPB3P3tQs
 wcA0VRwzO5Ar0/RDChx3nfSiv7u5zcZFXf9k9eHb325657BQykP8ceB3RDFhqdVPeLDI
 A/0AZhwQijfqpFHzHoUAgVKFoOcdVY3/SeOlV+vY09mpjdQ4o+p6u4ZsLot26JEn0lpr
 lQF7cz9x/RufK19+SHtJyuWIcD3amObMJerOmn3D/38Dk/DxWZafukeHdcPnBeps/tME
 CiylXiAfODLFL6Y4H5Y2HxBP2dsaP84c+9pOL2X5Fa9/YSzYB3VcMJcHx0VcngrjYvH0
 KMaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=evW3GB/T4qVPtRz48ADxIoh6urKtiHZcItIAQ1qAvDA=;
 b=YBjLjDZkgm1ctw5Kk9HiYL2Fd37qqoOWIrJRfeEC/6k4Tpqo5AeqKfWO1cvER4Jmqg
 IXHL5GmLFEupaYMUlUlAKgu3jNN9olJPczzstT5tR8w8HIffIRGl79/+0FKAPEwkhJXb
 ekqq+gOHoVPwoF/I4utoh5/pSslH92TmNnjcKjy/TyxSBk+DuG+pGtD9NJDRZodjMh39
 RTr6KOWC4M56YysWBfZEMj6yW7iejqIRTMhDTWA8DVYHvTIwWM2hQReKt7Rv+LVBb+iB
 Yi47ShrG7Wsu4DFHK+JsNAxWfDysrzWy3M9HSBLJjIF8i+CPfN9vCs+xcbh3w/ZlVSEJ
 GWvQ==
X-Gm-Message-State: AOAM531wfc3d0GYvLly035gJJX7UyHXWfdrDOBlPqgXF3WW2sQwXWXuw
 z+/8sULctasioVfD6SZxPfU=
X-Google-Smtp-Source: ABdhPJzkqMg2doH0w9UoCebtBuBZPZb7X7d0YnR1PO26cxv/fBpjavxK51gsWSe5UYxYcOswAgAdDA==
X-Received: by 2002:adf:f149:: with SMTP id y9mr22881197wro.85.1625595749132; 
 Tue, 06 Jul 2021 11:22:29 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id l13sm4093309wrz.34.2021.07.06.11.22.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 11:22:28 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: Jon Maloy <jmaloy@redhat.com>,
	tipc-discussion@lists.sourceforge.net
Date: Tue,  6 Jul 2021 14:22:13 -0400
Message-Id: <209e62107ca03aeddf8434d6badd12e854b97390.1625595705.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1625595705.git.lucien.xin@gmail.com>
References: <cover.1625595705.git.lucien.xin@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.45 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.45 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m0piN-00Cbod-Dq
Subject: [tipc-discussion] [PATCH net-next 7/8] tipc: add software gso
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

TIPC GSO is implemented in the skb frag_list way as SCTP does.

We don't need to change much in the tx path, but only create
a head skb and append the skbs when there are more than one
skb ready to send. In the lower-layer gso_segment(), it does
fragmentation by copy eth header or ip/udp header to each
skb in the head_skb's frag_list and send them one by one.

This supports with both eth media and udp media.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/bearer.c    | 23 +++++++++++++++++++++--
 net/tipc/msg.h       |  1 +
 net/tipc/offload.c   | 41 +++++++++++++++++++++++++++++++++++++++++
 net/tipc/udp_media.c |  7 +++++++
 4 files changed, 70 insertions(+), 2 deletions(-)

diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index 443f8e5b9477..b0321b21bfdc 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -570,8 +570,9 @@ void tipc_bearer_xmit(struct net *net, u32 bearer_id,
 		      struct tipc_media_addr *dst,
 		      struct tipc_node *__dnode)
 {
+	struct sk_buff *head = NULL, *skb, *tmp;
 	struct tipc_bearer *b;
-	struct sk_buff *skb, *tmp;
+	u16 segs = 0;
 
 	if (skb_queue_empty(xmitq))
 		return;
@@ -585,13 +586,31 @@ void tipc_bearer_xmit(struct net *net, u32 bearer_id,
 		if (likely(test_bit(0, &b->up) || msg_is_reset(buf_msg(skb)))) {
 #ifdef CONFIG_TIPC_CRYPTO
 			tipc_crypto_xmit(net, &skb, b, dst, __dnode);
-			if (skb)
+			if (!skb)
+				continue;
 #endif
+			if (!skb->ignore_df) { /* PLPMTUD probe packet*/
 				b->media->send_msg(net, skb, b, dst);
+				continue;
+			}
+			if (!head) {
+				segs = 1;
+				head = skb;
+				continue;
+			}
+			if (tipc_msg_gso_append(&head, skb, segs)) {
+				segs++;
+				continue;
+			}
+			b->media->send_msg(net, head, b, dst);
+			segs = 1;
+			head = skb;
 		} else {
 			kfree_skb(skb);
 		}
 	}
+	if (head)
+		b->media->send_msg(net, head, b, dst);
 	rcu_read_unlock();
 }
 
diff --git a/net/tipc/msg.h b/net/tipc/msg.h
index d6c6231b8208..4d1ff666790c 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -1205,6 +1205,7 @@ bool __tipc_skb_queue_sorted(struct sk_buff_head *list, u16 seqno,
 bool tipc_msg_skb_clone(struct sk_buff_head *msg, struct sk_buff_head *cpy);
 void tipc_offload_init(void);
 void tipc_offload_exit(void);
+bool tipc_msg_gso_append(struct sk_buff **p, struct sk_buff *skb, u16 segs);
 
 static inline u16 buf_seqno(struct sk_buff *skb)
 {
diff --git a/net/tipc/offload.c b/net/tipc/offload.c
index f8a81c8886f0..d137679f4db0 100644
--- a/net/tipc/offload.c
+++ b/net/tipc/offload.c
@@ -18,6 +18,47 @@ static struct packet_offload tipc_packet_offload __read_mostly = {
 	},
 };
 
+bool tipc_msg_gso_append(struct sk_buff **p, struct sk_buff *skb, u16 segs)
+{
+	struct sk_buff *head = *p;
+	struct sk_buff *nskb;
+
+	if (head->len + skb->len >= 65535)
+		return false;
+
+	if (segs == 1) {
+		nskb = tipc_buf_acquire(0, GFP_ATOMIC);
+		if (!nskb)
+			return false;
+
+		nskb->ip_summed = CHECKSUM_UNNECESSARY;
+		nskb->truesize += head->truesize;
+		nskb->data_len += head->len;
+		nskb->len += head->len;
+		TIPC_SKB_CB(nskb)->tail = head;
+
+		skb_shinfo(nskb)->frag_list = head;
+		skb_shinfo(nskb)->gso_segs = 1;
+		skb_shinfo(nskb)->gso_type = SKB_GSO_TIPC;
+		skb_shinfo(nskb)->gso_size = GSO_BY_FRAGS;
+		skb_reset_network_header(head);
+
+		head = nskb;
+		*p = head;
+	}
+
+	head->truesize += skb->truesize;
+	head->data_len += skb->len;
+	head->len += skb->len;
+	TIPC_SKB_CB(head)->tail->next = skb;
+	TIPC_SKB_CB(head)->tail = skb;
+
+	skb_shinfo(head)->gso_segs++;
+	skb_reset_network_header(skb);
+
+	return true;
+}
+
 void tipc_offload_init(void)
 {
 	dev_add_offload(&tipc_packet_offload);
diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
index 5078c5b19e81..7da02db6a50e 100644
--- a/net/tipc/udp_media.c
+++ b/net/tipc/udp_media.c
@@ -245,6 +245,13 @@ static int tipc_udp_send_msg(struct net *net, struct sk_buff *skb,
 			goto out;
 	}
 
+	if (skb_is_gso(skb))
+		skb_shinfo(skb)->gso_type |= SKB_GSO_UDP_TUNNEL_CSUM;
+
+	skb->encapsulation = 1;
+	skb_reset_inner_mac_header(skb);
+	skb_reset_inner_network_header(skb);
+	skb_reset_inner_transport_header(skb);
 	skb_set_inner_protocol(skb, htons(ETH_P_TIPC));
 	ub = rcu_dereference(b->media_ptr);
 	if (!ub) {
-- 
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
