Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5368B53E563
	for <lists+tipc-discussion@lfdr.de>; Mon,  6 Jun 2022 17:24:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nyEar-000404-A7; Mon, 06 Jun 2022 15:24:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lucien.xin@gmail.com>) id 1nyEaq-0003zx-47
 for tipc-discussion@lists.sourceforge.net; Mon, 06 Jun 2022 15:24:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3qr4m/xCzUtCdha08YRjTfN5Xh8JFHbqWv2oSBxABiM=; b=mTJMgNw3JrYZi8IUCosHpTzkjQ
 YBN53T2BxfaxtC09QOxjcSsROlXVgFkp3lbAh/yn+Itp7LfeoHE14+cxM5RxvEJc6Kas1gx3pB6nl
 jaN1WMP5MrqrPCuyerWyXSck15pyYnaccVg5BeTvE3/vorSh03u6rbLicKNOAqxadYFw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3qr4m/xCzUtCdha08YRjTfN5Xh8JFHbqWv2oSBxABiM=; b=S
 WD2dSqsx+QIDzwFfmWhL22ot9jBl9PIuhCC59FDp/SPJ29EDB/SodWIjJNCV98AgCtB1hoYI60bug
 3iq1aZ9wchhE6KYB+eLjoIsccK7ytDdZM5kkOgqaGlvZbR0IKyqi6PjCPESz+UIrMZaSJNT9z1X6i
 sMJW0Z6II7oDHV9I=;
Received: from mail-qv1-f44.google.com ([209.85.219.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nyEal-0004Bf-Iz
 for tipc-discussion@lists.sourceforge.net; Mon, 06 Jun 2022 15:24:34 +0000
Received: by mail-qv1-f44.google.com with SMTP id bc11so3024125qvb.3
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 06 Jun 2022 08:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3qr4m/xCzUtCdha08YRjTfN5Xh8JFHbqWv2oSBxABiM=;
 b=VwkSFxD4VnMkgE545h/Cx8WYoWh34UQe0LgebKbspbTCcD86kltMJdxHg4o0HZz8NM
 qbXnqTUSPr3/DmY1s6BPcDI+h279vXhkgPO7M9+V2PpVHIHbVdapNkksejvUITjtAYWj
 PaVaychdNYq5F/E88s+zlT70e76PEBDFzQC3+UtReJMznDpaEseqTy4U/4ZfVN+zXNBI
 YVEkB553KqtqyBoCRpNicKecogIVswOTRiv3dZQrXGeA9nb6bGDLL3pg8bexIMm/b1VU
 pSpkCUfv0F6E4xb3c+UReepaVlQibO+OoDwJ77RZR2jGaOVnVyp/grUpUcWqCX00SJSa
 eOMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3qr4m/xCzUtCdha08YRjTfN5Xh8JFHbqWv2oSBxABiM=;
 b=wk0aGGSNFI7BjWILB+CfVkdsvAWT1uFFEIZp74rDHoSk17VzMnX+dlC/SXaMzkFyX2
 Axv9T5iTzuDNcJnZ1RQSj7338xkLBOB+KQuejRVMz5pTxiKaBRc47l+3LkqLo4hP47kr
 Nol5uch4HsbAsqk55wlPx7jHgrRstzOwV4Y3O8H16sesIXmpGYBb5TCLSGAi+Pkujy5s
 bZDbTGLqoj88N92T483i0wrn9WgOj+QQk5kRnG8u+KG5cRbplIo3mo+OIDFOuBHqkHw8
 EOKWbaxMl+h4nXApL4e4g9zUqgWi0EQlRnjMk9viVx5yaXBhh2UVi4fXBYlBXufek1Pf
 eM2Q==
X-Gm-Message-State: AOAM531wQmLlwYr/TRosE5t2qFZ2MOpdSgqzWHOuMlJKRcnBcmVHahiI
 VOU60boy9BFw3OQ3aPK0X13I1CUoCHMpoQ==
X-Google-Smtp-Source: ABdhPJwIo6daNcmcAFQgoSyB3aBG5MZiXDP8cKlitx+Zc4AsHwVWyvg+AAHGzvXMPhUEArjryfD8qw==
X-Received: by 2002:a05:6214:2421:b0:468:58c5:697 with SMTP id
 gy1-20020a056214242100b0046858c50697mr12010249qvb.8.1654529066761; 
 Mon, 06 Jun 2022 08:24:26 -0700 (PDT)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 y14-20020a05622a164e00b00304c13ec6c8sm10914311qtj.30.2022.06.06.08.24.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jun 2022 08:24:26 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: tipc-discussion@lists.sourceforge.net
Date: Mon,  6 Jun 2022 11:24:25 -0400
Message-Id: <26087ae4e2a26e0995b8ae98dbe302960ed97bdd.1654529065.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Shuang Li reported a NULL pointer dereference crash: [] BUG:
 kernel NULL pointer dereference,
 address: 0000000000000068 [] RIP: 0010:tipc_link_is_up+0x5/0x10
 [tipc] [] Call Trace: [] <IRQ> [] tipc_bcast_rcv+0xa2/0x190 [tipc] []
 tipc_node_bc_rcv+0x8b/0x [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.44 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.44 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nyEal-0004Bf-Iz
Subject: [tipc-discussion] [PATCH net] tipc: move bc link creation back to
 tipc_node_create
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
Cc: Jon Maloy <jon.maloy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Shuang Li reported a NULL pointer dereference crash:

  [] BUG: kernel NULL pointer dereference, address: 0000000000000068
  [] RIP: 0010:tipc_link_is_up+0x5/0x10 [tipc]
  [] Call Trace:
  []  <IRQ>
  []  tipc_bcast_rcv+0xa2/0x190 [tipc]
  []  tipc_node_bc_rcv+0x8b/0x200 [tipc]
  []  tipc_rcv+0x3af/0x5b0 [tipc]
  []  tipc_udp_recv+0xc7/0x1e0 [tipc]

It was caused by the 'l' passed into tipc_bcast_rcv() is NULL. When it
creates a node in tipc_node_check_dest(), after inserting the new node
into hashtable in tipc_node_create(), it creates the bc link. However,
there is a gap between this insert and bc link creation, a bc packet
may come in and get the node from the hashtable then try to dereference
its bc link, which is NULL.

This patch is to fix it by moving the bc link creation before inserting
into the hashtable.

Note that for a preliminary node becoming "real", the bc link creation
should also be called before it's rehashed, as we don't create it for
preliminary nodes.

Fixes: 4cbf8ac2fe5a ("tipc: enable creating a "preliminary" node")
Reported-by: Shuang Li <shuali@redhat.com>
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/node.c | 41 ++++++++++++++++++++++-------------------
 1 file changed, 22 insertions(+), 19 deletions(-)

diff --git a/net/tipc/node.c b/net/tipc/node.c
index 6ef95ce565bd..b48d97cbbe29 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -472,8 +472,8 @@ struct tipc_node *tipc_node_create(struct net *net, u32 addr, u8 *peer_id,
 				   bool preliminary)
 {
 	struct tipc_net *tn = net_generic(net, tipc_net_id);
+	struct tipc_link *l, *snd_l = tipc_bc_sndlink(net);
 	struct tipc_node *n, *temp_node;
-	struct tipc_link *l;
 	unsigned long intv;
 	int bearer_id;
 	int i;
@@ -488,6 +488,16 @@ struct tipc_node *tipc_node_create(struct net *net, u32 addr, u8 *peer_id,
 			goto exit;
 		/* A preliminary node becomes "real" now, refresh its data */
 		tipc_node_write_lock(n);
+		if (!tipc_link_bc_create(net, tipc_own_addr(net), addr, peer_id, U16_MAX,
+					 tipc_link_min_win(snd_l), tipc_link_max_win(snd_l),
+					 n->capabilities, &n->bc_entry.inputq1,
+					 &n->bc_entry.namedq, snd_l, &n->bc_entry.link)) {
+			pr_warn("Broadcast rcv link refresh failed, no memory\n");
+			tipc_node_write_unlock_fast(n);
+			tipc_node_put(n);
+			n = NULL;
+			goto exit;
+		}
 		n->preliminary = false;
 		n->addr = addr;
 		hlist_del_rcu(&n->hash);
@@ -567,7 +577,16 @@ struct tipc_node *tipc_node_create(struct net *net, u32 addr, u8 *peer_id,
 	n->signature = INVALID_NODE_SIG;
 	n->active_links[0] = INVALID_BEARER_ID;
 	n->active_links[1] = INVALID_BEARER_ID;
-	n->bc_entry.link = NULL;
+	if (!preliminary &&
+	    !tipc_link_bc_create(net, tipc_own_addr(net), addr, peer_id, U16_MAX,
+				 tipc_link_min_win(snd_l), tipc_link_max_win(snd_l),
+				 n->capabilities, &n->bc_entry.inputq1,
+				 &n->bc_entry.namedq, snd_l, &n->bc_entry.link)) {
+		pr_warn("Broadcast rcv link creation failed, no memory\n");
+		kfree(n);
+		n = NULL;
+		goto exit;
+	}
 	tipc_node_get(n);
 	timer_setup(&n->timer, tipc_node_timeout, 0);
 	/* Start a slow timer anyway, crypto needs it */
@@ -1155,7 +1174,7 @@ void tipc_node_check_dest(struct net *net, u32 addr,
 			  bool *respond, bool *dupl_addr)
 {
 	struct tipc_node *n;
-	struct tipc_link *l, *snd_l;
+	struct tipc_link *l;
 	struct tipc_link_entry *le;
 	bool addr_match = false;
 	bool sign_match = false;
@@ -1175,22 +1194,6 @@ void tipc_node_check_dest(struct net *net, u32 addr,
 		return;
 
 	tipc_node_write_lock(n);
-	if (unlikely(!n->bc_entry.link)) {
-		snd_l = tipc_bc_sndlink(net);
-		if (!tipc_link_bc_create(net, tipc_own_addr(net),
-					 addr, peer_id, U16_MAX,
-					 tipc_link_min_win(snd_l),
-					 tipc_link_max_win(snd_l),
-					 n->capabilities,
-					 &n->bc_entry.inputq1,
-					 &n->bc_entry.namedq, snd_l,
-					 &n->bc_entry.link)) {
-			pr_warn("Broadcast rcv link creation failed, no mem\n");
-			tipc_node_write_unlock_fast(n);
-			tipc_node_put(n);
-			return;
-		}
-	}
 
 	le = &n->links[b->identity];
 
-- 
2.31.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
