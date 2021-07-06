Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 772FA3BDD10
	for <lists+tipc-discussion@lfdr.de>; Tue,  6 Jul 2021 20:22:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m0pib-0001UI-1X; Tue, 06 Jul 2021 18:22:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lucien.xin@gmail.com>) id 1m0piY-0001U1-Gx
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 18:22:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Eq+EJgGvrsGMJlmOaEAZGrc1SIysYDdw1jarhjyh+Ao=; b=c2mhspo5t5XVSk1R9LZJfsTZ/w
 N4FGhH2bCsonhuBopJcE0lpJfsv4maei5yygJ2+itLyc2gyq57YyCRJgSVpGpY4ASRdtnjN2AjFK7
 lhH3vPpEYurwv7xtWCSD4LX2QmZdW4RSKvM3wzKYUkHiHa/q0+expWUJdn0RCoMuFhVc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Eq+EJgGvrsGMJlmOaEAZGrc1SIysYDdw1jarhjyh+Ao=; b=fVff9yDP8ncOQ/aOyNnnepRR1d
 IzlbRDQq7K928g5+Fg3ZRB2aNdUK2eB6iRoP9NT7Wo5Mx2B75W/hSJzBUgpAnrSTXiAEYKxeCAPlB
 MjmFGA3iPKmx1rr8MB/zAVjeJtQyUe+Oai4gt4pxQsmXPqzpsnQcV9pAXewmtcez6hvo=;
Received: from mail-wr1-f41.google.com ([209.85.221.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m0piP-0006uD-6F
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 18:22:46 +0000
Received: by mail-wr1-f41.google.com with SMTP id t6so53330wrm.9
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 06 Jul 2021 11:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Eq+EJgGvrsGMJlmOaEAZGrc1SIysYDdw1jarhjyh+Ao=;
 b=JWotUsICLcAEaWnTY5gQvyjaf1fm6Uin0RXQvLRNf/oyfPWTBOrk5BYP0wb1ko0ls3
 vcYoy5c+mJGexfmb87UbTuY74SYQrodnlEg/bmU0YHO8qAn8sVqcMG9msu5PGRGMRwwX
 l7/PbRh5tPvIb9E827q1YZoIs/F6qbrS4FxhJk0AkW+alw0Y84Jq1xb25y/RFosi9T7n
 MmHSXxGXdx36SZuHVKuU0XJW7taAEJLlkOSZ9rqHQKU4sUXcVdafjNZk+r3JbzeLpEb9
 KjNVXw/nW68xXHfPjZ+HLf3O/93edGJDiPVx9rxzjnfrtEtjKhV7PpFx6WUXIsy7mksY
 dxRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Eq+EJgGvrsGMJlmOaEAZGrc1SIysYDdw1jarhjyh+Ao=;
 b=eKd53F/02x2lVMO1R8Kw2ppDU5dINohLZ7p3uvmGNhUAqQx5N8fsNFjppiAhUqYeMR
 gnkTVJZBcSICwW+y1yNncWyXiKTdlOhpfrH21QruTswnGuK0/nkSzTljU8nq3z0jAPkk
 wElHheAShvhMPx66P5vjV4cgJLcZ0KOYSzBE0Hub7MNrtMAxt2Lgdbr/RX1Hc+BY5mE4
 JQCmw1lHjlB+tU/bUdfBdLu2c4Tf5W1pwxhZTaBHNM98aaS7A0n0WeAYPz/npE0xqdMc
 PY7S7npQp9SRkpymbVqp5RmXXu0LzoqDsSB/Vlr3PBuAwI290uy6Wak/lc2f800MfkQQ
 e6/g==
X-Gm-Message-State: AOAM531sOcniu3U5GQq3ti6Ljf41ABqEVqGO8eSs3lqi7EYYXTvtIpAi
 D+d07QqJVt4Clh2Gr3NBi6E=
X-Google-Smtp-Source: ABdhPJwtpsQp2243IRk5wu/bLLNra4fEqx14XOMH/IaLCdf/Xk8H7LsU0pAcDOU1Dd4CGTgCrUQtQg==
X-Received: by 2002:a05:6000:1842:: with SMTP id
 c2mr11169005wri.374.1625595750888; 
 Tue, 06 Jul 2021 11:22:30 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id q19sm3610727wmc.44.2021.07.06.11.22.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 11:22:30 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: Jon Maloy <jmaloy@redhat.com>,
	tipc-discussion@lists.sourceforge.net
Date: Tue,  6 Jul 2021 14:22:14 -0400
Message-Id: <70956cd091fc886c080765c8ec2cab2a76bb9fbf.1625595705.git.lucien.xin@gmail.com>
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
 [209.85.221.41 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.41 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m0piP-0006uD-6F
Subject: [tipc-discussion] [PATCH net-next 8/8] tipc: add hardware gso
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

Since there's no enough bit in netdev_features_t for
NETIF_F_GSO_TIPC_BIT, and tipc is using the simliar
code as sctp, this patch will reuse SKB_GSO_SCTP and
NETIF_F_GSO_SCTP_BIT for tipc.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 include/linux/skbuff.h |  2 --
 net/tipc/node.c        | 15 ++++++++++++++-
 net/tipc/offload.c     |  4 ++--
 3 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
index 148bf0ed7336..b2db9cd9a73f 100644
--- a/include/linux/skbuff.h
+++ b/include/linux/skbuff.h
@@ -599,8 +599,6 @@ enum {
 	SKB_GSO_UDP_L4 = 1 << 17,
 
 	SKB_GSO_FRAGLIST = 1 << 18,
-
-	SKB_GSO_TIPC = 1 << 19,
 };
 
 #if BITS_PER_LONG > 32
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 9947b7dfe1d2..17e59c8dac31 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -2068,7 +2068,7 @@ static bool tipc_node_check_state(struct tipc_node *n, struct sk_buff *skb,
  * Invoked with no locks held. Bearer pointer must point to a valid bearer
  * structure (i.e. cannot be NULL), but bearer can be inactive.
  */
-void tipc_rcv(struct net *net, struct sk_buff *skb, struct tipc_bearer *b)
+static void __tipc_rcv(struct net *net, struct sk_buff *skb, struct tipc_bearer *b)
 {
 	struct sk_buff_head xmitq;
 	struct tipc_link_entry *le;
@@ -2189,6 +2189,19 @@ void tipc_rcv(struct net *net, struct sk_buff *skb, struct tipc_bearer *b)
 	kfree_skb(skb);
 }
 
+void tipc_rcv(struct net *net, struct sk_buff *skb, struct tipc_bearer *b)
+{
+	struct sk_buff *seg, *next;
+
+	if (!skb_is_gso(skb) || !skb_is_gso_sctp(skb))
+		return __tipc_rcv(net, skb, b);
+
+	skb_list_walk_safe(skb_shinfo(skb)->frag_list, seg, next)
+		__tipc_rcv(net, seg, b);
+	skb_shinfo(skb)->frag_list = NULL;
+	consume_skb(skb);
+}
+
 void tipc_node_apply_property(struct net *net, struct tipc_bearer *b,
 			      int prop)
 {
diff --git a/net/tipc/offload.c b/net/tipc/offload.c
index d137679f4db0..26e372178635 100644
--- a/net/tipc/offload.c
+++ b/net/tipc/offload.c
@@ -5,7 +5,7 @@
 static struct sk_buff *tipc_gso_segment(struct sk_buff *skb,
 					netdev_features_t features)
 {
-	if (!(skb_shinfo(skb)->gso_type & SKB_GSO_TIPC))
+	if (!(skb_shinfo(skb)->gso_type & SKB_GSO_SCTP))
 		return ERR_PTR(-EINVAL);
 
 	return skb_segment(skb, (features | NETIF_F_HW_CSUM) & ~NETIF_F_SG);
@@ -39,7 +39,7 @@ bool tipc_msg_gso_append(struct sk_buff **p, struct sk_buff *skb, u16 segs)
 
 		skb_shinfo(nskb)->frag_list = head;
 		skb_shinfo(nskb)->gso_segs = 1;
-		skb_shinfo(nskb)->gso_type = SKB_GSO_TIPC;
+		skb_shinfo(nskb)->gso_type = SKB_GSO_SCTP;
 		skb_shinfo(nskb)->gso_size = GSO_BY_FRAGS;
 		skb_reset_network_header(head);
 
-- 
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
