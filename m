Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8085C17B
	for <lists+tipc-discussion@lfdr.de>; Mon,  1 Jul 2019 18:55:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hhza6-0000JF-EA; Mon, 01 Jul 2019 16:55:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1hhza5-0000J3-9q
 for tipc-discussion@lists.sourceforge.net; Mon, 01 Jul 2019 16:55:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rsYSRMQDvpj2JBh7T2693BdOfBG3YhePj+PlQvXlBd8=; b=LdWqMfpLs1RF2eEyhupPenHYg2
 EFsxpR8uk+hYaBpTahl+/vvDvM+JuJ2q2c2L8IVIaUdsLs5DVEnSVu+WAzTnQiMltQRX0ANxm3Jci
 7VULrozihv+dAP/MaT0wAHn5d4/5g2GLGj5gK35poksrVge6zzmFij5eS5TGAKdl4W1w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rsYSRMQDvpj2JBh7T2693BdOfBG3YhePj+PlQvXlBd8=; b=Jg2S8nfiQhw/EavIX1CejJeRNg
 h4JuLrPnVy7rUHT739Uj4RxcB9SWg8ZwTengQgdqjupXZ8S8oKUDkg6CbFCT21E42pMloKylfi3Yv
 YcXJnzaHNpWY26kxA+k8bT5YdMdVvXQk/rU8puZMTS0qbvZ26pgn0+64Obmxa+TSVyfY=;
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hhza8-000p2y-T9
 for tipc-discussion@lists.sourceforge.net; Mon, 01 Jul 2019 16:55:10 +0000
Received: by mail-pf1-f194.google.com with SMTP id j2so6861374pfe.6
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 01 Jul 2019 09:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=rsYSRMQDvpj2JBh7T2693BdOfBG3YhePj+PlQvXlBd8=;
 b=fvmqgVy5oZgunW7Ma7iI4wG/lLhzPJmly7bbH+BVuMdq9KDJM+gpETB0C/Xwo8hG4P
 a5kJXf/+9pZpcXeHmdxhlCklV7ELAOJaw3TSw+T2fpnvG0JCjQNGDdTuCE38zQYcV7JM
 pOO+ks2aYSiIalNVomh3S+wHdH+njjZKlMHtZOktxisWpE+1rBU5vDWAkN3d05HJiqiS
 3Tkhj9nfDe3wFwNPuXksH+lqMXLQvgKSdTeV86uv9PKEq9GnbbjNn0W7Z5A8dUKaissV
 gnZ/XC6+6uvebJhQAfwohr7/lwTmxb1EXQfUky+fOtsg5RpmuuP+lTL9uS3xaaL61Ye9
 Y0uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rsYSRMQDvpj2JBh7T2693BdOfBG3YhePj+PlQvXlBd8=;
 b=IAje6VrhW0s4c0JOqSm9Q4n5ZxbAZgBYppP9lyUXp8+rcKXzxsJSComtKVrfAr9eCL
 0mGegs53RYd/sEarPruHwlKsT5QezgL7AEFmjdvqHmC6+gmOZ0FKotTLI515AqgP6/PB
 Z2iIFsGjfivgS2zU89iGn8HWwb4FeTgAMRmN8rHp1sso2SwIR/iQ8d5HM6U7UIItYtKE
 G6Am782hCJvrcS/bT5YMy2mxsluEktdyHI2V3yGGAfBpnErjPH5+4opk9DXLRxg44BNv
 tel+EH+ZncIGZljMIWoe31TyOTGxQR8VSqSg50o7WxEEdSXXRm/2hhAOZVFze2Cch1jc
 2jrA==
X-Gm-Message-State: APjAAAVA/JeMnL30ROvJZ4K2rNb9kQganP8ph0CrLOvYxpw24H+buMh9
 7123vV406t/67oTjwHhAbfs=
X-Google-Smtp-Source: APXvYqw9uJNB5GOH0xPlKlKWbq8dUZhRQ4jDCyQeGsNYwENWoPo1uTpv0f6HGD+A3TwIh8WgH9AzUg==
X-Received: by 2002:a17:90a:2ec1:: with SMTP id
 h1mr246012pjs.101.1562000103119; 
 Mon, 01 Jul 2019 09:55:03 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id j23sm10404074pgb.63.2019.07.01.09.55.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Jul 2019 09:55:02 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>
Date: Tue,  2 Jul 2019 00:54:55 +0800
Message-Id: <07e0518ac689f5919890a38634df38edf95d34a1.1562000095.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hhza8-000p2y-T9
Subject: [tipc-discussion] [PATCH net-next] tipc: use rcu dereference
 functions properly
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
Cc: tipc-discussion@lists.sourceforge.net, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

For these places are protected by rcu_read_lock, we change from
rcu_dereference_rtnl to rcu_dereference, as there is no need to
check if rtnl lock is held.

For these places are protected by rtnl_lock, we change from
rcu_dereference_rtnl to rtnl_dereference/rcu_dereference_protected,
as no extra memory barriers are needed under rtnl_lock() which also
protects tn->bearer_list[] and dev->tipc_ptr/b->media_ptr updating.

rcu_dereference_rtnl will be only used in the places where it could
be under rcu_read_lock or rtnl_lock.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/bearer.c    | 14 +++++++-------
 net/tipc/udp_media.c |  8 ++++----
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index 2bed658..a809c0e 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -62,7 +62,7 @@ static struct tipc_bearer *bearer_get(struct net *net, int bearer_id)
 {
 	struct tipc_net *tn = tipc_net(net);
 
-	return rcu_dereference_rtnl(tn->bearer_list[bearer_id]);
+	return rcu_dereference(tn->bearer_list[bearer_id]);
 }
 
 static void bearer_disable(struct net *net, struct tipc_bearer *b);
@@ -210,7 +210,7 @@ void tipc_bearer_add_dest(struct net *net, u32 bearer_id, u32 dest)
 	struct tipc_bearer *b;
 
 	rcu_read_lock();
-	b = rcu_dereference_rtnl(tn->bearer_list[bearer_id]);
+	b = rcu_dereference(tn->bearer_list[bearer_id]);
 	if (b)
 		tipc_disc_add_dest(b->disc);
 	rcu_read_unlock();
@@ -222,7 +222,7 @@ void tipc_bearer_remove_dest(struct net *net, u32 bearer_id, u32 dest)
 	struct tipc_bearer *b;
 
 	rcu_read_lock();
-	b = rcu_dereference_rtnl(tn->bearer_list[bearer_id]);
+	b = rcu_dereference(tn->bearer_list[bearer_id]);
 	if (b)
 		tipc_disc_remove_dest(b->disc);
 	rcu_read_unlock();
@@ -444,7 +444,7 @@ int tipc_l2_send_msg(struct net *net, struct sk_buff *skb,
 	struct net_device *dev;
 	int delta;
 
-	dev = (struct net_device *)rcu_dereference_rtnl(b->media_ptr);
+	dev = (struct net_device *)rcu_dereference(b->media_ptr);
 	if (!dev)
 		return 0;
 
@@ -481,7 +481,7 @@ int tipc_bearer_mtu(struct net *net, u32 bearer_id)
 	struct tipc_bearer *b;
 
 	rcu_read_lock();
-	b = rcu_dereference_rtnl(tipc_net(net)->bearer_list[bearer_id]);
+	b = rcu_dereference(tipc_net(net)->bearer_list[bearer_id]);
 	if (b)
 		mtu = b->mtu;
 	rcu_read_unlock();
@@ -574,8 +574,8 @@ static int tipc_l2_rcv_msg(struct sk_buff *skb, struct net_device *dev,
 	struct tipc_bearer *b;
 
 	rcu_read_lock();
-	b = rcu_dereference_rtnl(dev->tipc_ptr) ?:
-		rcu_dereference_rtnl(orig_dev->tipc_ptr);
+	b = rcu_dereference(dev->tipc_ptr) ?:
+		rcu_dereference(orig_dev->tipc_ptr);
 	if (likely(b && test_bit(0, &b->up) &&
 		   (skb->pkt_type <= PACKET_MULTICAST))) {
 		skb_mark_not_on_list(skb);
diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
index b8962df..62b85db 100644
--- a/net/tipc/udp_media.c
+++ b/net/tipc/udp_media.c
@@ -231,7 +231,7 @@ static int tipc_udp_send_msg(struct net *net, struct sk_buff *skb,
 	}
 
 	skb_set_inner_protocol(skb, htons(ETH_P_TIPC));
-	ub = rcu_dereference_rtnl(b->media_ptr);
+	ub = rcu_dereference(b->media_ptr);
 	if (!ub) {
 		err = -ENODEV;
 		goto out;
@@ -490,7 +490,7 @@ int tipc_udp_nl_dump_remoteip(struct sk_buff *skb, struct netlink_callback *cb)
 		}
 	}
 
-	ub = rcu_dereference_rtnl(b->media_ptr);
+	ub = rtnl_dereference(b->media_ptr);
 	if (!ub) {
 		rtnl_unlock();
 		return -EINVAL;
@@ -532,7 +532,7 @@ int tipc_udp_nl_add_bearer_data(struct tipc_nl_msg *msg, struct tipc_bearer *b)
 	struct udp_bearer *ub;
 	struct nlattr *nest;
 
-	ub = rcu_dereference_rtnl(b->media_ptr);
+	ub = rtnl_dereference(b->media_ptr);
 	if (!ub)
 		return -ENODEV;
 
@@ -806,7 +806,7 @@ static void tipc_udp_disable(struct tipc_bearer *b)
 {
 	struct udp_bearer *ub;
 
-	ub = rcu_dereference_rtnl(b->media_ptr);
+	ub = rtnl_dereference(b->media_ptr);
 	if (!ub) {
 		pr_err("UDP bearer instance not found\n");
 		return;
-- 
2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
