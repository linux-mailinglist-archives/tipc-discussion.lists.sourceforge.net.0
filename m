Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE18A4CC92
	for <lists+tipc-discussion@lfdr.de>; Thu, 20 Jun 2019 13:04:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hdurE-00010w-0m; Thu, 20 Jun 2019 11:03:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1hdurD-00010p-Ld
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Jun 2019 11:03:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dhJS+UTa7Xaxux/qzHKdqUfyfQxBKVh+dm16ec6/L3g=; b=Leq3X29/s/jICb2r+p0YHxDpvh
 s4pxjuS0uEbrEiFBc41eDMJxmxUfB+kJR8Mwhcsp1+JlGsps6FRIYD67Y8ceSjCa157C0UXPRF9pe
 mYBqkuyv85lRVbhAfbMIS+BNzrNxsORHXYNdrv3vMeegkBxZtf6Gd9bwrQqYcjyfrg1k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dhJS+UTa7Xaxux/qzHKdqUfyfQxBKVh+dm16ec6/L3g=; b=EWNwaoNQbGUrKS3E9Hd8bx9AdN
 ZACtfWrX8ALJvMui0OFYMHz2PWsWc0f7xsAUCEhKqFGYj87XXLtRw89hsYUW8FZuvou0Eky9LKgdA
 /df3OCEMDrOimeZOb/0SylZGAH9mysIjyPmdfphwnIssFczm+opji36yBFZMVjbdrx20=;
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hdurC-006NiE-Ub
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Jun 2019 11:03:56 +0000
Received: by mail-pl1-f193.google.com with SMTP id a93so1257167pla.7
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 20 Jun 2019 04:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=dhJS+UTa7Xaxux/qzHKdqUfyfQxBKVh+dm16ec6/L3g=;
 b=nDMKsQiV/lu5RdyJ7YI6CvrChybj7OmvrtsUT3aZXAXLZ/ME3P9dJyskkiCIBxuU0h
 FFrVcXOpRlpyQF5WJhzt5zkqnTRO1bIfI4qH6ibN9xtAXPWJQfKl2+iMNQtikv7tIzoO
 wS0UXIoaRBL+1909XTGf9UfOA1+26NdokWiuoF9jkTrynjIGFpH40XJ7GKwBN5uVTomw
 uwfgTigjS2r2PJRvsWQNniNC7OGWwVbaHSWYsSAtMhhY4/UJw3nTzp1QxWNtmKS6IKpa
 KANCyS5cxJExurUeLEgcBQo7O1xQMGf3k0p73eEI2/9/m8RQFFQQfQtTu6sv7b2Tmw0B
 OUwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=dhJS+UTa7Xaxux/qzHKdqUfyfQxBKVh+dm16ec6/L3g=;
 b=JKFZmx2l9b49gkzlyIBn7h2z4yZBrILX5PUzAo0yBNSk4NIu/xjhyZCH1aNHcMu04Z
 RiyRYc/gMuylgFfuPbiynTzuC8MqZrMHn9ZYlHeHZsSnlb6Wa68zaFIBYpxW6XaAMJZY
 9JDSXMkWXCYaWprst6lD2h74xHV+prZTOYBSVpIQrgJH+JhESwzRuufyKstJlHUtGpt5
 /s/BnyGryKceCiBhJ4j8oaXxTPBj3vG/4hD+MGjKWxMmScRhkS7/bLZornrIF4p1+r1m
 UDmpjji1xbCQv7O2pvSVmzcxZxDWzM9RpWi3hgfe8NSNFg5P17RhixVgU2u1XkcF/4ZG
 VqSA==
X-Gm-Message-State: APjAAAXX10fZXszNAYfLYOCbCd5CiPtqlxjpFYkqgaRaIN+4yenpw1/x
 ZFFwQKYlVL1UyxCixgkgKsc=
X-Google-Smtp-Source: APXvYqyTDLsEu9VHn9G0ZvAYtH8T89/ERghlrSBY3mMW2XR9CoTrqwkSsX1w+b2T8IEtp22w4Wt5Zg==
X-Received: by 2002:a17:902:ba82:: with SMTP id
 k2mr118614178pls.323.1561028629321; 
 Thu, 20 Jun 2019 04:03:49 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id u128sm5708880pfu.26.2019.06.20.04.03.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 04:03:48 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>
Date: Thu, 20 Jun 2019 19:03:41 +0800
Message-Id: <0ea2e8519f14d5c9e7bb7ba82a5be371bd4cb9ab.1561028621.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hdurC-006NiE-Ub
Subject: [tipc-discussion] [PATCH net] tipc: add dst_cache support for udp
 media
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
Cc: Paolo Abeni <pabeni@redhat.com>, tipc-discussion@lists.sourceforge.net,
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

As other udp/ip tunnels do, tipc udp media should also have a
lockless dst_cache supported on its tx path.

Here we add dst_cache into udp_replicast to support dst cache
for both rmcast and rcast, and rmcast uses ub->rcast and each
rcast uses its own node in ub->rcast.list.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/udp_media.c | 72 ++++++++++++++++++++++++++++++++++------------------
 1 file changed, 47 insertions(+), 25 deletions(-)

diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
index 1405ccc..b8962df 100644
--- a/net/tipc/udp_media.c
+++ b/net/tipc/udp_media.c
@@ -76,6 +76,7 @@ struct udp_media_addr {
 /* struct udp_replicast - container for UDP remote addresses */
 struct udp_replicast {
 	struct udp_media_addr addr;
+	struct dst_cache dst_cache;
 	struct rcu_head rcu;
 	struct list_head list;
 };
@@ -158,22 +159,27 @@ static int tipc_udp_addr2msg(char *msg, struct tipc_media_addr *a)
 /* tipc_send_msg - enqueue a send request */
 static int tipc_udp_xmit(struct net *net, struct sk_buff *skb,
 			 struct udp_bearer *ub, struct udp_media_addr *src,
-			 struct udp_media_addr *dst)
+			 struct udp_media_addr *dst, struct dst_cache *cache)
 {
+	struct dst_entry *ndst = dst_cache_get(cache);
 	int ttl, err = 0;
-	struct rtable *rt;
 
 	if (dst->proto == htons(ETH_P_IP)) {
-		struct flowi4 fl = {
-			.daddr = dst->ipv4.s_addr,
-			.saddr = src->ipv4.s_addr,
-			.flowi4_mark = skb->mark,
-			.flowi4_proto = IPPROTO_UDP
-		};
-		rt = ip_route_output_key(net, &fl);
-		if (IS_ERR(rt)) {
-			err = PTR_ERR(rt);
-			goto tx_error;
+		struct rtable *rt = (struct rtable *)ndst;
+
+		if (!rt) {
+			struct flowi4 fl = {
+				.daddr = dst->ipv4.s_addr,
+				.saddr = src->ipv4.s_addr,
+				.flowi4_mark = skb->mark,
+				.flowi4_proto = IPPROTO_UDP
+			};
+			rt = ip_route_output_key(net, &fl);
+			if (IS_ERR(rt)) {
+				err = PTR_ERR(rt);
+				goto tx_error;
+			}
+			dst_cache_set_ip4(cache, &rt->dst, fl.saddr);
 		}
 
 		ttl = ip4_dst_hoplimit(&rt->dst);
@@ -182,17 +188,19 @@ static int tipc_udp_xmit(struct net *net, struct sk_buff *skb,
 				    dst->port, false, true);
 #if IS_ENABLED(CONFIG_IPV6)
 	} else {
-		struct dst_entry *ndst;
-		struct flowi6 fl6 = {
-			.flowi6_oif = ub->ifindex,
-			.daddr = dst->ipv6,
-			.saddr = src->ipv6,
-			.flowi6_proto = IPPROTO_UDP
-		};
-		err = ipv6_stub->ipv6_dst_lookup(net, ub->ubsock->sk, &ndst,
-						 &fl6);
-		if (err)
-			goto tx_error;
+		if (!ndst) {
+			struct flowi6 fl6 = {
+				.flowi6_oif = ub->ifindex,
+				.daddr = dst->ipv6,
+				.saddr = src->ipv6,
+				.flowi6_proto = IPPROTO_UDP
+			};
+			err = ipv6_stub->ipv6_dst_lookup(net, ub->ubsock->sk,
+							 &ndst, &fl6);
+			if (err)
+				goto tx_error;
+			dst_cache_set_ip6(cache, ndst, &fl6.saddr);
+		}
 		ttl = ip6_dst_hoplimit(ndst);
 		err = udp_tunnel6_xmit_skb(ndst, ub->ubsock->sk, skb, NULL,
 					   &src->ipv6, &dst->ipv6, 0, ttl, 0,
@@ -230,7 +238,8 @@ static int tipc_udp_send_msg(struct net *net, struct sk_buff *skb,
 	}
 
 	if (addr->broadcast != TIPC_REPLICAST_SUPPORT)
-		return tipc_udp_xmit(net, skb, ub, src, dst);
+		return tipc_udp_xmit(net, skb, ub, src, dst,
+				     &ub->rcast.dst_cache);
 
 	/* Replicast, send an skb to each configured IP address */
 	list_for_each_entry_rcu(rcast, &ub->rcast.list, list) {
@@ -242,7 +251,8 @@ static int tipc_udp_send_msg(struct net *net, struct sk_buff *skb,
 			goto out;
 		}
 
-		err = tipc_udp_xmit(net, _skb, ub, src, &rcast->addr);
+		err = tipc_udp_xmit(net, _skb, ub, src, &rcast->addr,
+				    &rcast->dst_cache);
 		if (err)
 			goto out;
 	}
@@ -286,6 +296,11 @@ static int tipc_udp_rcast_add(struct tipc_bearer *b,
 	if (!rcast)
 		return -ENOMEM;
 
+	if (dst_cache_init(&rcast->dst_cache, GFP_ATOMIC)) {
+		kfree(rcast);
+		return -ENOMEM;
+	}
+
 	memcpy(&rcast->addr, addr, sizeof(struct udp_media_addr));
 
 	if (ntohs(addr->proto) == ETH_P_IP)
@@ -742,6 +757,10 @@ static int tipc_udp_enable(struct net *net, struct tipc_bearer *b,
 	tuncfg.encap_destroy = NULL;
 	setup_udp_tunnel_sock(net, ub->ubsock, &tuncfg);
 
+	err = dst_cache_init(&ub->rcast.dst_cache, GFP_ATOMIC);
+	if (err)
+		goto err;
+
 	/**
 	 * The bcast media address port is used for all peers and the ip
 	 * is used if it's a multicast address.
@@ -756,6 +775,7 @@ static int tipc_udp_enable(struct net *net, struct tipc_bearer *b,
 
 	return 0;
 err:
+	dst_cache_destroy(&ub->rcast.dst_cache);
 	if (ub->ubsock)
 		udp_tunnel_sock_release(ub->ubsock);
 	kfree(ub);
@@ -769,10 +789,12 @@ static void cleanup_bearer(struct work_struct *work)
 	struct udp_replicast *rcast, *tmp;
 
 	list_for_each_entry_safe(rcast, tmp, &ub->rcast.list, list) {
+		dst_cache_destroy(&rcast->dst_cache);
 		list_del_rcu(&rcast->list);
 		kfree_rcu(rcast, rcu);
 	}
 
+	dst_cache_destroy(&ub->rcast.dst_cache);
 	if (ub->ubsock)
 		udp_tunnel_sock_release(ub->ubsock);
 	synchronize_net();
-- 
2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
