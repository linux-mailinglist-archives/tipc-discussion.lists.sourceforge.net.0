Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CD7559E7C
	for <lists+tipc-discussion@lfdr.de>; Fri, 24 Jun 2022 18:24:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1o4m6q-0005I7-NW; Fri, 24 Jun 2022 16:24:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lucien.xin@gmail.com>) id 1o4m6q-0005I1-5S
 for tipc-discussion@lists.sourceforge.net; Fri, 24 Jun 2022 16:24:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V+Xo5Z+4GigNUMqqi7J1sIaRxnSMMyJNzyBU9jsG/jk=; b=DL4UUDsCslSPSGytgSR+YJ507t
 8QX/agEbT93VOpmGGNY6u0FGmdpeOGdqLmNsHVDZ1bl4HzimX1L3mAruK62Or4OnsyiqzGj/oNxYO
 6QV1K657P/qcd19ERQ379gQYLeuqdHwOMzW0zvhHBFE9cANPCtgW9G35hF0kwveslw/0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=V+Xo5Z+4GigNUMqqi7J1sIaRxnSMMyJNzyBU9jsG/jk=; b=H
 BlVtO7zDpyQxfjv56NHctBQgsYWdK2L/SWAFS+p+BFtM40cMKCpkStvMMB+agDZjbFulNL103tYfU
 xmnP9teOtR53gWDRC6U/vbmEzO82bhzjXO5EZMQQIRWqyu8KrJQoj6PT2PhzRwua0c1aXX0j3w4fM
 cj64nGx48FBIIEhI=;
Received: from mail-qk1-f174.google.com ([209.85.222.174])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o4m6q-00CJ10-4r
 for tipc-discussion@lists.sourceforge.net; Fri, 24 Jun 2022 16:24:40 +0000
Received: by mail-qk1-f174.google.com with SMTP id b24so1500514qkn.4
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 24 Jun 2022 09:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=V+Xo5Z+4GigNUMqqi7J1sIaRxnSMMyJNzyBU9jsG/jk=;
 b=lLkF5lDQyf5QWfmlR9hn0mgcfC76zUlI+2cOjQTvpZlfDtehRVpGpkfCP5WstjOusa
 rvJoi0HoifdAIeQ4XQSOw8FALLo/zd0KD8YGGOCOpUTzcIcUX+7WqlZn61gJ6KoyS18I
 2imCEF45eZo9CNSM9/BExm1T8xDA1uRx9maLmjHgUjc8Fw2LoVLstas0+Gg4tdWeaKJ1
 PFzhFUIxC7ej6mhoMRpNmc05srLpTEApcud9SJqDv3fnAj27h21cSJo41rQ0mYLXBTbY
 j1JUh/q1RFV2LxJ6MDoLf4sH3JMSuRa3a7kuWXvxR16hL7Z59Trh71Vx3HZJCtqVTwyv
 r/6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=V+Xo5Z+4GigNUMqqi7J1sIaRxnSMMyJNzyBU9jsG/jk=;
 b=Nl9xfVMwi+4VOKt0j7AKlf2OnhcFad70VX0gaqAo4MYg9Ik2f9Gh/LEj9++Y/FPlc8
 jWMdgrfw0RERolwwRC6HKQqupSBSB/aDtzazTrjSPvrcIs32DyZEtLpN7uUTzYsWITJ4
 Hc6n8ZPZvgkzPM0kiH3BgJKwCA4p531uHg2X3majGb+m0zKic3JboZJL2fnvxQUS8yfR
 sutQwnMt5rFf0i+P23TWNFXgos1z2xefZXJMb/gnZo5syFaiYelIhFmnxghHhkVl4L1l
 T3s/Zkxl8dDX0c3PmHj9g2ID4X2SgQ26pZRc2ZVCI1kQc/naKq+TVDumI7mOBAJCBGF0
 R89g==
X-Gm-Message-State: AJIora+eJxxIdqd6vgsvYI8NxEToU7xUusP3bq1x9BFXyxmWmU8RnKpC
 GO3BvZhESeeooxzcdOIGO7uqiK6czdn8PWx8
X-Google-Smtp-Source: AGRyM1uIFWrCnDTMOYgBMczFj2/o9o1rKsbbrZF0sMSyct5hvhiI/QUbthvYEiTQMdf8GUctN9xdkg==
X-Received: by 2002:ae9:f40b:0:b0:6ae:fdd7:1939 with SMTP id
 y11-20020ae9f40b000000b006aefdd71939mr5537062qkl.657.1656087874176; 
 Fri, 24 Jun 2022 09:24:34 -0700 (PDT)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 k20-20020a05620a07f400b006a6ab259261sm1928647qkk.29.2022.06.24.09.24.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jun 2022 09:24:33 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Fri, 24 Jun 2022 12:24:31 -0400
Message-Id: <fe367ef0159c2f41e475bd1d00e0dc8d8a85b224.1656087871.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.174 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.174 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o4m6q-00CJ10-4r
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
Cc: kuba@kernel.org, davem@davemloft.net
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
Acked-by: Jon Maloy <jmaloy@redhat.com>
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
