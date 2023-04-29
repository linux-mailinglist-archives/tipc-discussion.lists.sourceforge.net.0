Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B15C16F2703
	for <lists+tipc-discussion@lfdr.de>; Sun, 30 Apr 2023 00:41:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pstFW-0003l1-LX;
	Sat, 29 Apr 2023 22:41:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1pstFS-0003kl-CU
 for tipc-discussion@lists.sourceforge.net;
 Sat, 29 Apr 2023 22:40:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2qHWjQ5y7sdq1lEzMlodqYYV4HxL5KkG3T5QxP3eicA=; b=QCo+gsA+I5iSP0v5EinNWAAKwy
 pmObNJ2+n/DluzmjOcFTG8PsmWfAJhUCgtBpXOZKOj69HkQcNzpKI2CB+wBspheTwuDXjZBUNkwFO
 +H9v5hn1B7K1zvYLl+EhvUjIiOTFh9YprMMgPRZ2KklUhcYjeYrkSLFmNM+RGU6LjV5A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2qHWjQ5y7sdq1lEzMlodqYYV4HxL5KkG3T5QxP3eicA=; b=aH3+HQsEw52NBvhyFNPyHhYob+
 yBEImZvym6To1pQt0/uaovbnOD4GtWuelQ2TARiuwe493AMMJscbb3Ufaz1OosqV4ygd5WHDiJZHk
 5fO03l3TIVKSZODMFI9F1WhjJQb9O1rXbw7QDDQdcytMhpNDRRhwTu4HvVvn4+AKPmYs=;
Received: from mail-qk1-f171.google.com ([209.85.222.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pstFQ-00004x-Ra for tipc-discussion@lists.sourceforge.net;
 Sat, 29 Apr 2023 22:40:57 +0000
Received: by mail-qk1-f171.google.com with SMTP id
 af79cd13be357-75131c2997bso1008361985a.1
 for <tipc-discussion@lists.sourceforge.net>;
 Sat, 29 Apr 2023 15:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682808051; x=1685400051;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2qHWjQ5y7sdq1lEzMlodqYYV4HxL5KkG3T5QxP3eicA=;
 b=RHLmr9mR/NpruWH+WAfcTvM2/fglyG8IPXWSntfy7XNz3sETdrkZhktRiEQZSSt/sB
 eG9CfKJ8RVIRyfmSVIIhvPMNgS3TZ1rWZ9Np8bBkzhtrBurLkQAQ2fxHfPQRWLAMD8Ht
 DgG26i7DnhBlpKAGPTBPmEP9bXd3c84RbFVr3TnjgvkS8A1DZDulL+XbteLUXP+qWMyu
 DtOQ0IUV97TbejGKXwUbMiI27WuXTqj80FSlgVH2+hwB8QO9JdalopyVMYU9E53nVwxG
 6A7HtjPnNvxtvvXkYj0NUgEmWB0TVMrwZOWOcJ5ojuPK/mwiM/lY67+wWim7AsGDsK9L
 eluw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682808051; x=1685400051;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2qHWjQ5y7sdq1lEzMlodqYYV4HxL5KkG3T5QxP3eicA=;
 b=jDn8njFTUk8echF5zxhBYzL0tuUt9rs7bH9VuaIqv4OQ0uh0vhdfLTvQd5Pi7xvpdw
 PQ/uJCVrjOlbiq1xpgLwrUpzqHIJzj4EB8/yA4hTB9yWNSJTgODvEdZgMgY0uglcZ4/4
 xwkNtaTnxpEF3Nfl7LoD4F5cXuDR2YSvNda/b+e8sM41z2sqXsL+2MQjSf8jZAb6f94x
 0hNmNBk/KepHyVtgFS1v2io640PLl1s50+UBwfaykniSucWtZlmECz+2TAnKkTXNYqXU
 Wa8TftlAp15gBrqhz21+LM3Em2zeyG/xY7Dur+jzvtbWT55pITrwgGFAh3DF1Gziy4ij
 jD5Q==
X-Gm-Message-State: AC+VfDzkqY2+5NfUV8rb4qaMP1z+wyt2e4u2M4fNOZwND5MDiRHHmCpC
 Pjk/tSaJ1VFKq3o28RmDxVQ=
X-Google-Smtp-Source: ACHHUZ5CAIr8mf2xf7QdnYmLVMDpGcglRjC1fgZI7nqHVq2ObmlyJF+howDznfuY3qxXnfTuR1OtOw==
X-Received: by 2002:ad4:5bc8:0:b0:5ef:5481:595 with SMTP id
 t8-20020ad45bc8000000b005ef54810595mr23543601qvt.0.1682808050922; 
 Sat, 29 Apr 2023 15:40:50 -0700 (PDT)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 p12-20020a0ce18c000000b00606322241b4sm6595741qvl.27.2023.04.29.15.40.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Apr 2023 15:40:50 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Sat, 29 Apr 2023 18:40:47 -0400
Message-Id: <22ba689983844705563c15c2f16e6381f2a0412c.1682807958.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1682807958.git.lucien.xin@gmail.com>
References: <cover.1682807958.git.lucien.xin@gmail.com>
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.171 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.171 listed in wl.mailspike.net]
X-Headers-End: 1pstFQ-00004x-Ra
Subject: [tipc-discussion] [PATCH net 2/2] tipc: do not update mtu if
 msg_max is too small
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
Cc: kuba@kernel.org, Eric Dumazet <edumazet@google.com>,
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

Fixes: ed193ece2649 ("tipc: simplify link mtu negotiation")
Reported-by: Shuang Li <shuali@redhat.com>
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/link.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index b3ce24823f50..a9e46c58b28a 100644
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
@@ -2283,8 +2283,9 @@ static int tipc_link_proto_rcv(struct tipc_link *l, struct sk_buff *skb,
 		l->peer_session = msg_session(hdr);
 		l->in_session = true;
 		l->peer_bearer_id = msg_bearer_id(hdr);
-		if (l->mtu > msg_max_pkt(hdr))
-			l->mtu = msg_max_pkt(hdr);
+		msg_max = msg_max_pkt(hdr);
+		if (msg_max >= tipc_bearer_min_mtu(l->net, l->bearer_id) && l->mtu > msg_max)
+			l->mtu = msg_max;
 		break;
 
 	case STATE_MSG:
-- 
2.39.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
