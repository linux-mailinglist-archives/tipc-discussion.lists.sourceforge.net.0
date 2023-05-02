Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF326F4CD0
	for <lists+tipc-discussion@lfdr.de>; Wed,  3 May 2023 00:13:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ptyFY-0004m0-Ri;
	Tue, 02 May 2023 22:13:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1ptyFU-0004lt-GU
 for tipc-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 22:13:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HgFZPI4XjlizNmEB1pNa+C6jlIbIG0Qwtes7V4DeJ2k=; b=WTbZJ4HeuJxTRmvxH6u/zBkUcY
 37iD2Buwy3hUdK1SoYvUrUsJ/lSkf+GE+ybzxx3XeBp0Zf9Xm3Oo2VePkEUj2d7PVc5NYJ0HQH305
 jzQT/vERPGVgD/Z06bewt84nhcKCjqm4B7fltBVQyn3ymXlIYcvECVSlw5Oj6WsrSv38=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HgFZPI4XjlizNmEB1pNa+C6jlIbIG0Qwtes7V4DeJ2k=; b=bkOKSBwQfhtsg/yFpMF4ZEXzxE
 U3d0V7hK0JyJbLmWEBmdRiQvfNZ+4sC6Az+THYWxQzVbc9t/F4hpYyoDesIwJ+NfwHBJpmUkrN16d
 oj7GbjqiPamXxXDPWV6MhX/JluHUnICrtb/5ora5xuM1qUzqjWYFnWl0sgdNEa23uQOE=;
Received: from mail-qt1-f182.google.com ([209.85.160.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ptyFR-0001e6-U3 for tipc-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 22:13:27 +0000
Received: by mail-qt1-f182.google.com with SMTP id
 d75a77b69052e-3ef3887e3c0so19801791cf.0
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 02 May 2023 15:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683065599; x=1685657599;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HgFZPI4XjlizNmEB1pNa+C6jlIbIG0Qwtes7V4DeJ2k=;
 b=fxbEPf0U9JIqmd0bDtIGFlLPrhzfk4EtTO/2G9wX+F4JZAqfG/nhGluYxEC8bhrPy9
 /hCOu8HiL/UDATIUXoyVpq3J+54JEKdjat2zFxdkUDe4FPb6OpbwO69uLUEbyVz8wUkQ
 oBF9RtpXGbSVez2cQ/YRT1hVxk2G2BsGfytyL15maaKdnrDap5Jhet4HnO94FeGA7DyG
 mqQsVVrJC/eZC8k4GCN2FCEvAU03EuK717nU0MMxnzOAtA3yTe8v62NyxIOk5qgcZEUZ
 98sb/4x7em5IJXHFboL/0+tY9ywf5jDQZHIKhJLAjiPZjyuyqKVx1r3URGfrCn7U8laN
 tE1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683065599; x=1685657599;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=HgFZPI4XjlizNmEB1pNa+C6jlIbIG0Qwtes7V4DeJ2k=;
 b=hQp8kk6KO7Qcj4PasaPEcZ9w9zBAHkTva1Qqa7v3j3IU637TkArH8aIVNCtU8OJeJB
 roo5dU4pgYzvJOOkUbRILviA211vWf5RryNkZ5CIgzaCBmOIUIZPPR4+9RfdbWIVi5sg
 GkWm5NvuOklcrD176hRKsJ+BC+7ht4bpBDd7xK4an1S7YxjuX7V8gMYNmPr/PGRtLc88
 A+RK79iOhC3JKJm9vNjQ+z9HKrf0jIR1WoQFBDOjNNoMLYg17iACoS9DKoLSLqJjWUDd
 SJrGWIzdhzJLNCF3BD+6COloW+N7MfxBnVNDNIYXSjeFLnYfEHy0Z86x1Ab057O5mEnj
 nYPw==
X-Gm-Message-State: AC+VfDxZ3CW9LYHFh4WGWGoAULZ4eI5eWqIRB0BR1bvA/Nra2cX8tEhm
 V+DYHH9N5J/PNn0MTw++mb0=
X-Google-Smtp-Source: ACHHUZ5en8ZtWE5b5jRUXI9QV+ICEN3FE4wpo186FfCIdPPjUU6aXleBJL3FkDU5IogICs8zOZGxXw==
X-Received: by 2002:ac8:5a54:0:b0:3ef:380a:d7bc with SMTP id
 o20-20020ac85a54000000b003ef380ad7bcmr29053674qta.54.1683065599209; 
 Tue, 02 May 2023 15:13:19 -0700 (PDT)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 cf23-20020a05622a401700b003ef58044a4bsm10362636qtb.34.2023.05.02.15.13.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 May 2023 15:13:18 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Tue,  2 May 2023 18:13:14 -0400
Message-Id: <0d328807d5087d0b6d03c3d2e5f355cd44ed576a.1683065352.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1683065352.git.lucien.xin@gmail.com>
References: <cover.1683065352.git.lucien.xin@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When doing link mtu negotiation, a malicious peer may send
 Activate msg with a very small mtu, e.g. 4 in Shuang's testing,
 without checking
 for the minimum mtu, l->mtu will be set to 4 in tipc_link_pr [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.182 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.182 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ptyFR-0001e6-U3
Subject: [tipc-discussion] [PATCHv2 net 2/3] tipc: do not update mtu if
 msg_max is too small in mtu negotiation
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
Cc: Eric Dumazet <edumazet@google.com>, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

When doing link mtu negotiation, a malicious peer may send Activate msg
with a very small mtu, e.g. 4 in Shuang's testing, without checking for
the minimum mtu, l->mtu will be set to 4 in tipc_link_proto_rcv(), then
n->links[bearer_id].mtu is set to 4294967228, which is a overflow of
'4 - INT_H_SIZE - EMSG_OVERHEAD' in tipc_link_mss().

With tipc_link.mtu = 4, tipc_link_xmit() kept printing the warning:

 tipc: Too large msg, purging xmit list 1 5 0 40 4!
 tipc: Too large msg, purging xmit list 1 15 0 60 4!

And with tipc_link_entry.mtu 4294967228, a huge skb was allocated in
named_distribute(), and when purging it in tipc_link_xmit(), a crash
was even caused:

  general protection fault, probably for non-canonical address 0x2100001011000dd: 0000 [#1] PREEMPT SMP PTI
  CPU: 0 PID: 0 Comm: swapper/0 Kdump: loaded Not tainted 6.3.0.neta #19
  RIP: 0010:kfree_skb_list_reason+0x7e/0x1f0
  Call Trace:
   <IRQ>
   skb_release_data+0xf9/0x1d0
   kfree_skb_reason+0x40/0x100
   tipc_link_xmit+0x57a/0x740 [tipc]
   tipc_node_xmit+0x16c/0x5c0 [tipc]
   tipc_named_node_up+0x27f/0x2c0 [tipc]
   tipc_node_write_unlock+0x149/0x170 [tipc]
   tipc_rcv+0x608/0x740 [tipc]
   tipc_udp_recv+0xdc/0x1f0 [tipc]
   udp_queue_rcv_one_skb+0x33e/0x620
   udp_unicast_rcv_skb.isra.72+0x75/0x90
   __udp4_lib_rcv+0x56d/0xc20
   ip_protocol_deliver_rcu+0x100/0x2d0

This patch fixes it by checking the new mtu against tipc_bearer_min_mtu(),
and not updating mtu if it is too small.

v1->v2:
  - do the msg_max check against the min MTU early, as Tung suggested.

Fixes: ed193ece2649 ("tipc: simplify link mtu negotiation")
Reported-by: Shuang Li <shuali@redhat.com>
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/link.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index b3ce24823f50..2eff1c7949cb 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -2200,7 +2200,7 @@ static int tipc_link_proto_rcv(struct tipc_link *l, struct sk_buff *skb,
 	struct tipc_msg *hdr = buf_msg(skb);
 	struct tipc_gap_ack_blks *ga = NULL;
 	bool reply = msg_probe(hdr), retransmitted = false;
-	u32 dlen = msg_data_sz(hdr), glen = 0;
+	u32 dlen = msg_data_sz(hdr), glen = 0, msg_max;
 	u16 peers_snd_nxt =  msg_next_sent(hdr);
 	u16 peers_tol = msg_link_tolerance(hdr);
 	u16 peers_prio = msg_linkprio(hdr);
@@ -2239,6 +2239,9 @@ static int tipc_link_proto_rcv(struct tipc_link *l, struct sk_buff *skb,
 	switch (mtyp) {
 	case RESET_MSG:
 	case ACTIVATE_MSG:
+		msg_max = msg_max_pkt(hdr);
+		if (msg_max < tipc_bearer_min_mtu(l->net, l->bearer_id))
+			break;
 		/* Complete own link name with peer's interface name */
 		if_name =  strrchr(l->name, ':') + 1;
 		if (sizeof(l->name) - (if_name - l->name) <= TIPC_MAX_IF_NAME)
@@ -2283,8 +2286,8 @@ static int tipc_link_proto_rcv(struct tipc_link *l, struct sk_buff *skb,
 		l->peer_session = msg_session(hdr);
 		l->in_session = true;
 		l->peer_bearer_id = msg_bearer_id(hdr);
-		if (l->mtu > msg_max_pkt(hdr))
-			l->mtu = msg_max_pkt(hdr);
+		if (l->mtu > msg_max)
+			l->mtu = msg_max;
 		break;
 
 	case STATE_MSG:
-- 
2.39.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
