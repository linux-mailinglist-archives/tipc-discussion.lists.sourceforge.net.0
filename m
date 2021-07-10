Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 166603C3592
	for <lists+tipc-discussion@lfdr.de>; Sat, 10 Jul 2021 18:46:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m2G7p-00017L-F8; Sat, 10 Jul 2021 16:46:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1m2G7o-00017F-AG
 for tipc-discussion@lists.sourceforge.net; Sat, 10 Jul 2021 16:46:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=thCYdwKxX5qi2ESl+qIZOCm9o/KTLPJiXpULrJUDw9I=; b=cU6bi9ay/n84yfzM9UoPfb+H/N
 uSVfvtv2kGriDswBkPcdmZWoecZ73DQxgkGEXiE5/n8PdAkIhFFTQi3sis5ld4JtwRTqo1zrXZhSg
 imgCt1n28Q9AXW4bJfzauxTqNSJOBQ2v0t5sENs18EhPfWFhTntakog4z/0va0aDKxn8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=thCYdwKxX5qi2ESl+qIZOCm9o/KTLPJiXpULrJUDw9I=; b=Z
 Sc8fIIPFDVHixTCvUXARsCcM2uSq5QMD2GYl8c/Afe/whH8NKJrhDQnnBM3OfZy2b7/oSsPI4+8H1
 3lc9EeEyHq5kCMzqZ0zEaEkAQey46oZBditQR9H/tTiBJW2TJYGQHU+9p7GfR7D/b/8cmd7LTW720
 IuKfPsK4XI1qN/Xo=;
Received: from mail-wm1-f46.google.com ([209.85.128.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m2G7Z-0004dN-Ku
 for tipc-discussion@lists.sourceforge.net; Sat, 10 Jul 2021 16:46:44 +0000
Received: by mail-wm1-f46.google.com with SMTP id w13so8224688wmc.3
 for <tipc-discussion@lists.sourceforge.net>;
 Sat, 10 Jul 2021 09:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=thCYdwKxX5qi2ESl+qIZOCm9o/KTLPJiXpULrJUDw9I=;
 b=GZyZTJ2FrUDHs7h5uvShf5gOGs4HHiMCMcNH40lPBNotgdY8PHH9cLIKAXDE4rI36f
 a1m1upDrIoTcqbSxZ+c1mBipqiLy/QNPbclFPHm8SkL1scnp6E8z8QWZawGbmfgye2xi
 IG0JJdqyPmF46ljn2ybVv+wo3HE0q0qI4Ay1sto0T2IFsuv8TSnoVIYCYSjgyE2E6G/d
 0Gvlhreqg3sAAyrIH8XG4SM6cNDp2i12aZdFIojhDwirCZ2qLQrBD+QYyP0zuivCtE3c
 5vZc6lpjlKeXFE5d2PCMNXExuWiw3YcmvyCcT/FhZClk/7I0VA6+eeM5XygYBmvfGOvV
 h7oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=thCYdwKxX5qi2ESl+qIZOCm9o/KTLPJiXpULrJUDw9I=;
 b=pDmeXghv6Zx8K+tQkWicNqGfDmi6JfeeC648szmmOqiy5ikJH/lDkd702csGdmFHgl
 nv0vmNWEt6K1plE6Qly107x6TRKxemYcufzbERKNfDf3WDeBIJ+QCImFMU63Zq7BDkPs
 x3awoSQiH3HOH+TGWjwvt5QMWtfxZNlncNad3mrqyWT5t/lfO9c0SoiAguzocvL0qcVp
 j1/6hzlIFcsjt61IDcyFX7PiT2QgueufX89EuFwZWkRAoWBqmL9s+tF+j+P5wK70Zz6h
 nhRNUUy1bJUALIyhHjyjOMldsw0tPL5Ane2BpKr9cKu0eAjmD3sxm3gzRVkcxZK/6yIz
 1p7Q==
X-Gm-Message-State: AOAM5312j2chMqY4GeGdqFzdsaI9T7oO0UpPOzcfEtftZKqPX3b8vueG
 7GomrgUSL68RH7Gle60aXSQwRB1VUZohTQ==
X-Google-Smtp-Source: ABdhPJxCR2YmPEZPcBoyRP5vTFg2HGkG9QJoaOBjs5PTcahQrpE7rjY1bxL30j928d4M2sohQ5M1RQ==
X-Received: by 2002:a1c:9886:: with SMTP id
 a128mr29152542wme.150.1625935583058; 
 Sat, 10 Jul 2021 09:46:23 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id m12sm7576737wms.24.2021.07.10.09.46.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jul 2021 09:46:22 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: tipc-discussion@lists.sourceforge.net
Date: Sat, 10 Jul 2021 12:46:19 -0400
Message-Id: <721bd5e84b3c4eb906014377d569e6074046b26b.1625935579.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.46 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.46 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m2G7Z-0004dN-Ku
Subject: [tipc-discussion] [PATCH net] tipc: fix implicit-connect for SYN+
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

For implicit-connect, when it's either SYN- or SYN+, an ACK should
be sent back to the client immediately. It's not appropriate for
the client to enter established state only after receiving data
from the server.

On client side, after the SYN is sent out, tipc_wait_for_connect()
should be called to wait for the ACK if timeout is set.

This patch also restricts __tipc_sendstream() to call __sendmsg()
only when it's in TIPC_OPEN state, so that the client can program
in a single loop doing both connecting and data sending like:

  for (...)
      sendmsg(dest, buf);

This makes the implicit-connect more implicit.

Fixes: b97bf3fd8f6a ("[TIPC] Initial merge")
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/socket.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 34a97ea36cc8..ebd300c26a44 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -158,6 +158,7 @@ static void tipc_sk_remove(struct tipc_sock *tsk);
 static int __tipc_sendstream(struct socket *sock, struct msghdr *m, size_t dsz);
 static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dsz);
 static void tipc_sk_push_backlog(struct tipc_sock *tsk, bool nagle_ack);
+static int tipc_wait_for_connect(struct socket *sock, long *timeo_p);
 
 static const struct proto_ops packet_ops;
 static const struct proto_ops stream_ops;
@@ -1515,8 +1516,13 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 		rc = 0;
 	}
 
-	if (unlikely(syn && !rc))
+	if (unlikely(syn && !rc)) {
 		tipc_set_sk_state(sk, TIPC_CONNECTING);
+		if (timeout) {
+			timeout = msecs_to_jiffies(timeout);
+			tipc_wait_for_connect(sock, &timeout);
+		}
+	}
 
 	return rc ? rc : dlen;
 }
@@ -1564,7 +1570,7 @@ static int __tipc_sendstream(struct socket *sock, struct msghdr *m, size_t dlen)
 		return -EMSGSIZE;
 
 	/* Handle implicit connection setup */
-	if (unlikely(dest)) {
+	if (unlikely(dest && sk->sk_state == TIPC_OPEN)) {
 		rc = __tipc_sendmsg(sock, m, dlen);
 		if (dlen && dlen == rc) {
 			tsk->peer_caps = tipc_node_get_capabilities(net, dnode);
@@ -2689,9 +2695,10 @@ static int tipc_accept(struct socket *sock, struct socket *new_sock, int flags,
 		       bool kern)
 {
 	struct sock *new_sk, *sk = sock->sk;
-	struct sk_buff *buf;
 	struct tipc_sock *new_tsock;
+	struct msghdr m = {NULL,};
 	struct tipc_msg *msg;
+	struct sk_buff *buf;
 	long timeo;
 	int res;
 
@@ -2737,19 +2744,17 @@ static int tipc_accept(struct socket *sock, struct socket *new_sock, int flags,
 	}
 
 	/*
-	 * Respond to 'SYN-' by discarding it & returning 'ACK'-.
-	 * Respond to 'SYN+' by queuing it on new socket.
+	 * Respond to 'SYN-' by discarding it & returning 'ACK'.
+	 * Respond to 'SYN+' by queuing it on new socket & returning 'ACK'.
 	 */
 	if (!msg_data_sz(msg)) {
-		struct msghdr m = {NULL,};
-
 		tsk_advance_rx_queue(sk);
-		__tipc_sendstream(new_sock, &m, 0);
 	} else {
 		__skb_dequeue(&sk->sk_receive_queue);
 		__skb_queue_head(&new_sk->sk_receive_queue, buf);
 		skb_set_owner_r(buf, new_sk);
 	}
+	__tipc_sendstream(new_sock, &m, 0);
 	release_sock(new_sk);
 exit:
 	release_sock(sk);
-- 
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
