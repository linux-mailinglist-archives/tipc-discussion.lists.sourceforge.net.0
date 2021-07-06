Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBA33BDD0D
	for <lists+tipc-discussion@lfdr.de>; Tue,  6 Jul 2021 20:22:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m0piS-0001TF-Dv; Tue, 06 Jul 2021 18:22:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lucien.xin@gmail.com>) id 1m0piK-0001So-Th
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 18:22:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FbL2jB2RtsRMmAGvjxgpSEfqA0U8gzqXV43qvN9jBtI=; b=SR0ZxrP3SsXTvDORSa9jz4RP18
 mY/XT3JW+g0tM3bXEaXWVJitk6tzEb+xOp1e76OrU6euN3/kzwr7YbSyQjJc830/M5vOCJGVJ6OL3
 V92j8fcXOBB+hiJrc6MLYh8/1wil0mUu7mohQcIa4Bi/MID/pVLXDssv/9PkuYdK10/0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FbL2jB2RtsRMmAGvjxgpSEfqA0U8gzqXV43qvN9jBtI=; b=I0UWofoSvCL7YCD+bGWIQm9osz
 GqERRs8/T37eZ4U0J9pFaow6exx6pS9TRg82S9l2mIzb5SDgTu8oxe2+GlYDZ09qbd0R5Secg006b
 jIyI/fU5EO/cwpHO2DT7V629PKul/DgQWTzWexzsfdyTRebHePN+ZqHBLu8nmHxzVV4s=;
Received: from mail-wr1-f50.google.com ([209.85.221.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m0piG-00CboB-8m
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 18:22:32 +0000
Received: by mail-wr1-f50.google.com with SMTP id v5so88520wrt.3
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 06 Jul 2021 11:22:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=FbL2jB2RtsRMmAGvjxgpSEfqA0U8gzqXV43qvN9jBtI=;
 b=nXjRa0yKH+ag/I+O8i8VOeRPKu1PKvfYQGOUrTUHefL1cfZKLyszCABY6fEtPXpJE0
 x0p+nVK3GwPOFpQ8NgMSD/fIEElOZlr0Epp3FWzc4pD9TqktLEqt92fIJyJ26H0UTsfT
 VohaA+zmAFfjGRvFx3kdCy2wkPmLnH9G/vPe0nmrRkUfso4dDXJdR+Exn9DCz9MAroWL
 e5Du8EdQ6NRNopPG4KEjG4w5JHoqi6rNfLKHRNRMkmR+NK0HZ4hwKYe5TRMbIqftg0g0
 o63gv5cVXaoTslpZ3I0/IuGUjX28SeK03GzvHxWkCrkn0ZUiQ/KeAtsvuwH0LgMEnvN4
 Vyyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FbL2jB2RtsRMmAGvjxgpSEfqA0U8gzqXV43qvN9jBtI=;
 b=na9Hxjw8INKS8pV02jKgreq9IubFKcNjvQw8YP63hFDSiVL1Ht8yXlmKZdEvSuF3sc
 gLk6TtaL9KGEIAc2H+sCWfQWkmFnWcH13PFIpyN4+36U2fEHXHxVdFkGUA7T/nJ3C3jH
 t1UGLzy6qg32DEnN87y3/D2O2IaeIaQXginGB5MVKhaJ7caKVA1PM43CcFXtaBBHkzlY
 6anZzcTGL0o3L+jhwX/bNUnI1k6g48PvMgnrZeefIQMlxR7wjoNvR2Qtb7/LxyHBIpEH
 cqsH4bUwgZEeThZQiW0keMV6JF2M8lcKUYUEP3Cp28yW++DtaA4HILRJg8qoARUnG0cN
 CtnQ==
X-Gm-Message-State: AOAM5311Dzey3Y3I9SLsz5LFvwAQ+9oOVYBj9o8AAKOTNAkvjBFtsfL7
 irGBAbAX0ayE5ue8LoMONJFxWAd5Bpn9tw==
X-Google-Smtp-Source: ABdhPJyFk1kJSW8+gqo1jzSjy0jAJyPaRtRYlwbUMqghMvEOm4RBG/39Wgda9b8Vga6Xa44X4j7QSQ==
X-Received: by 2002:adf:f892:: with SMTP id u18mr23034819wrp.64.1625595741946; 
 Tue, 06 Jul 2021 11:22:21 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id a9sm18030708wrn.8.2021.07.06.11.22.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 11:22:21 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: Jon Maloy <jmaloy@redhat.com>,
	tipc-discussion@lists.sourceforge.net
Date: Tue,  6 Jul 2021 14:22:09 -0400
Message-Id: <996af81f2a8db9b6a468c189e0a952df5696e503.1625595705.git.lucien.xin@gmail.com>
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
 [209.85.221.50 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.50 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m0piG-00CboB-8m
Subject: [tipc-discussion] [PATCH net-next 3/8] tipc: build probe and its
 reply in tipc_link_build_proto_msg
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

This patch is to adjust the code in tipc_link_build_proto_msg()
to make it able to build probe packet with a specific size for
sender, and probe reply packet with mtu set.

Note that to send the probe packet, the df flag has to be set.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/link.c      | 38 +++++++++++++++++++++++---------------
 net/tipc/link.h      |  9 +++++++++
 net/tipc/msg.c       |  1 +
 net/tipc/udp_media.c |  3 ++-
 4 files changed, 35 insertions(+), 16 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 1aa775cef3bb..414f9cf543ff 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -273,8 +273,8 @@ static int link_is_up(struct tipc_link *l)
 
 static int tipc_link_proto_rcv(struct tipc_link *l, struct sk_buff *skb,
 			       struct sk_buff_head *xmitq);
-static void tipc_link_build_proto_msg(struct tipc_link *l, int mtyp, bool probe,
-				      bool probe_reply, u16 rcvgap,
+static void tipc_link_build_proto_msg(struct tipc_link *l, int mtyp,
+				      u8 ptype, u32 mtu, u16 rcvgap,
 				      int tolerance, int priority,
 				      struct sk_buff_head *xmitq);
 static void link_print(struct tipc_link *l, const char *str);
@@ -900,7 +900,7 @@ int tipc_link_timeout(struct tipc_link *l, struct sk_buff_head *xmitq)
 	}
 
 	if (state || probe || setup)
-		tipc_link_build_proto_msg(l, mtyp, probe, 0, 0, 0, 0, xmitq);
+		tipc_link_build_proto_msg(l, mtyp, PROBE_MSTATE, 0, 0, 0, 0, xmitq);
 
 	return rc;
 }
@@ -1862,8 +1862,8 @@ int tipc_link_rcv(struct tipc_link *l, struct sk_buff *skb,
 	return rc;
 }
 
-static void tipc_link_build_proto_msg(struct tipc_link *l, int mtyp, bool probe,
-				      bool probe_reply, u16 rcvgap,
+static void tipc_link_build_proto_msg(struct tipc_link *l, int mtyp,
+				      u8 ptype, u32 mtu, u16 rcvgap,
 				      int tolerance, int priority,
 				      struct sk_buff_head *xmitq)
 {
@@ -1874,7 +1874,7 @@ static void tipc_link_build_proto_msg(struct tipc_link *l, int mtyp, bool probe,
 	struct sk_buff *skb;
 	bool node_up = link_is_up(bcl);
 	u16 glen = 0, bc_rcvgap = 0;
-	int dlen = 0;
+	int dlen = 0, msg_sz;
 	void *data;
 
 	/* Don't send protocol message during reset or link failover */
@@ -1884,11 +1884,13 @@ static void tipc_link_build_proto_msg(struct tipc_link *l, int mtyp, bool probe,
 	if (!tipc_link_is_up(l) && (mtyp == STATE_MSG))
 		return;
 
-	if ((probe || probe_reply) && !skb_queue_empty(dfq))
+	if (ptype && !skb_queue_empty(dfq))
 		rcvgap = buf_seqno(skb_peek(dfq)) - l->rcv_nxt;
 
-	skb = tipc_msg_create(LINK_PROTOCOL, mtyp, INT_H_SIZE,
-			      tipc_max_domain_size + MAX_GAP_ACK_BLKS_SZ,
+	msg_sz = tipc_max_domain_size + MAX_GAP_ACK_BLKS_SZ;
+	if (ptype == PROBE_PLPMTU)
+		msg_sz = l->pl.probe_size - INT_H_SIZE;
+	skb = tipc_msg_create(LINK_PROTOCOL, mtyp, INT_H_SIZE, msg_sz,
 			      l->addr, tipc_own_addr(l->net), 0, 0, 0);
 	if (!skb)
 		return;
@@ -1915,13 +1917,19 @@ static void tipc_link_build_proto_msg(struct tipc_link *l, int mtyp, bool probe,
 		msg_set_seq_gap(hdr, rcvgap);
 		bc_rcvgap = link_bc_rcv_gap(bcl);
 		msg_set_bc_gap(hdr, bc_rcvgap);
-		msg_set_probe(hdr, probe);
-		msg_set_is_keepalive(hdr, probe || probe_reply);
+		msg_set_probe(hdr, ptype == PROBE_MSTATE || ptype == PROBE_PLPMTU);
+		msg_set_is_keepalive(hdr, !!ptype);
+		if (ptype == PROBE_REPLY)
+			msg_set_max_pkt(hdr, mtu);
 		if (l->peer_caps & TIPC_GAP_ACK_BLOCK)
 			glen = tipc_build_gap_ack_blks(l, hdr);
 		tipc_mon_prep(l->net, data + glen, &dlen, mstate, l->bearer_id);
-		msg_set_size(hdr, INT_H_SIZE + glen + dlen);
-		skb_trim(skb, INT_H_SIZE + glen + dlen);
+		if (ptype != PROBE_PLPMTU) {
+			msg_set_size(hdr, INT_H_SIZE + glen + dlen);
+			skb_trim(skb, INT_H_SIZE + glen + dlen);
+		} else {
+			skb->ignore_df = 0;
+		}
 		l->stats.sent_states++;
 		l->rcv_unacked = 0;
 	} else {
@@ -1935,7 +1943,7 @@ static void tipc_link_build_proto_msg(struct tipc_link *l, int mtyp, bool probe,
 		msg_set_size(hdr, INT_H_SIZE + TIPC_MAX_IF_NAME);
 		skb_trim(skb, INT_H_SIZE + TIPC_MAX_IF_NAME);
 	}
-	if (probe)
+	if (ptype == PROBE_MSTATE || ptype == PROBE_PLPMTU)
 		l->stats.sent_probes++;
 	if (rcvgap)
 		l->stats.sent_nacks++;
@@ -2329,7 +2337,7 @@ static int tipc_link_proto_rcv(struct tipc_link *l, struct sk_buff *skb,
 		    skb_queue_empty(&l->deferdq))
 			rcvgap = peers_snd_nxt - l->rcv_nxt;
 		if (rcvgap || reply)
-			tipc_link_build_proto_msg(l, STATE_MSG, 0, reply,
+			tipc_link_build_proto_msg(l, STATE_MSG, PROBE_REPLY, msg_size(hdr),
 						  rcvgap, 0, 0, xmitq);
 
 		released = tipc_link_advance_transmq(l, l, ack, gap, ga, xmitq,
diff --git a/net/tipc/link.h b/net/tipc/link.h
index 30bee2562987..87b3ebe5b91d 100644
--- a/net/tipc/link.h
+++ b/net/tipc/link.h
@@ -66,6 +66,15 @@ enum {
 	TIPC_LINK_SND_STATE    = (1 << 2)
 };
 
+/* Probe Type
+ */
+enum {
+	PROBE_NONE,
+	PROBE_MSTATE,
+	PROBE_REPLY,
+	PROBE_PLPMTU,
+};
+
 /* PLPMTUD state
  */
 enum {
diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 5c9fd4791c4b..6d8bcc180f8b 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -75,6 +75,7 @@ struct sk_buff *tipc_buf_acquire(u32 size, gfp_t gfp)
 		skb_put(skb, size);
 		skb->next = NULL;
 	}
+	skb->ignore_df = 1;
 	return skb;
 }
 
diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
index dc4bae965549..5078c5b19e81 100644
--- a/net/tipc/udp_media.c
+++ b/net/tipc/udp_media.c
@@ -174,6 +174,7 @@ static int tipc_udp_xmit(struct net *net, struct sk_buff *skb,
 	local_bh_disable();
 	ndst = dst_cache_get(cache);
 	if (dst->proto == htons(ETH_P_IP)) {
+		u8 df = skb->ignore_df ? 0 : htons(IP_DF);
 		struct rtable *rt = (struct rtable *)ndst;
 
 		if (!rt) {
@@ -193,7 +194,7 @@ static int tipc_udp_xmit(struct net *net, struct sk_buff *skb,
 
 		ttl = ip4_dst_hoplimit(&rt->dst);
 		udp_tunnel_xmit_skb(rt, ub->ubsock->sk, skb, src->ipv4.s_addr,
-				    dst->ipv4.s_addr, 0, ttl, 0, src->port,
+				    dst->ipv4.s_addr, 0, ttl, df, src->port,
 				    dst->port, false, true);
 #if IS_ENABLED(CONFIG_IPV6)
 	} else {
-- 
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
