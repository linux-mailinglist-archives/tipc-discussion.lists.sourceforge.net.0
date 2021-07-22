Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF9D3D2740
	for <lists+tipc-discussion@lfdr.de>; Thu, 22 Jul 2021 18:06:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m6bCu-0007wz-VB; Thu, 22 Jul 2021 16:05:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1m6bCu-0007wt-G7
 for tipc-discussion@lists.sourceforge.net; Thu, 22 Jul 2021 16:05:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LcdkUBavjDbrAs7Vlr0AuUelUjYUB1tsVVkbu76Tqy8=; b=MzFkAx/H23Wfl0ouV7QkokUlFO
 9oqDfQU6mbLcVNmzMbhFcTqOnjW7dQv7wU+/K1qnwM6XAZfECKpmILPIpJIzvr69Hmb0wPExRiEUZ
 wyxp5Kl3fVVQ7uGeFJDGL2Q84X+QTiLAB1w/7Gh3g3Q9USTwXlaBCpjn9pjP6GE5oIZQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=LcdkUBavjDbrAs7Vlr0AuUelUjYUB1tsVVkbu76Tqy8=; b=W
 +hB+7VynL/j1xiaGPjZ2HVo7+hRoAxyV6s50bKucQf367NdlJze8FclHt5TqBl0AMEqsEdb2n2MP6
 FoyR8jDWzJI1anuA53sJqsu926gKQAJ+4O84PXEoMBD9Q4g4c+QH5uoJtx0Nz4VBNiDw8grEvqZKg
 BksGPlnbJ52kCE9Q=;
Received: from mail-qv1-f48.google.com ([209.85.219.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m6bCn-00Gz3w-7Z
 for tipc-discussion@lists.sourceforge.net; Thu, 22 Jul 2021 16:05:56 +0000
Received: by mail-qv1-f48.google.com with SMTP id a10so2813445qvj.11
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 22 Jul 2021 09:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LcdkUBavjDbrAs7Vlr0AuUelUjYUB1tsVVkbu76Tqy8=;
 b=s/VcMshKKlprUR+cDoR+uiDzsjAIjhVmOeRDWt/jrLqlS8wYnkSGBnOnx2cc4b0ODT
 EbK/AFX9XDT+iw3HfJK+rqih584UuJMn2BpbvAYntxzaWbWsijKEg56SKn0eMqvogUkz
 w0tuYkDaOLJxymZISm6O9a+eJZC+rXZUgKPFmBcHR6BqD57cPhpOBdNnvve2wwm4mgsW
 J04Q5U1Dot5xQk4z9fFqksWLmxMZNwJg+ruqKNXAVbVlqAsVaL8+5P2FCNEIrmysBzF+
 benBokb7saQ6s0nKOuhMi+byeSuNesQH/yB34ShuXrAhLMXhOiSo9cV770xuf8ld4th2
 u+oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LcdkUBavjDbrAs7Vlr0AuUelUjYUB1tsVVkbu76Tqy8=;
 b=ExpgqwsrA8vA7vQhlPgoHdkC16kE0vOoOpo9GYb6iJF1QBRFGNZf3FAFuVN8vcvDYk
 Jd/6Zv7ei0OJV5FiuStmYDjHbjBMyN2P61MAcHSFw/t5EK4WPqlybk91CO5+oiLPBvJ5
 VGUrjBw1cNziPnozlWyhULPH4hk7sWqmbls9mcIUDS99ktpUbSsspEjOL3qqdfmPqGpF
 WTzTJ4Dg1cL9+1KhOjTxP5r9PnaN18dIL+bVcygz7o84RtHBLmWFl3kfchoY5admLosk
 P78EctotnisJ172EKZuD5m/sBpKEjOrDIh0yd8D896ZlPWa8b2RuS8IiQhCHcrEl6sIl
 OUGQ==
X-Gm-Message-State: AOAM5334QTcgW8Tun/8b9qCIEWSx4f6Wk6+yO5YJg6lZvkpNnD5Py/C4
 gejsTpdFsr338BI+xImqZ/0=
X-Google-Smtp-Source: ABdhPJyn4BMFf/ULemWQpWhvlDU4NqjR6XZ6wwneWdHcRhLyiD+IHjeRPAP06/nJpMwOjdjv0WBHzQ==
X-Received: by 2002:a05:6214:1cb:: with SMTP id
 c11mr661094qvt.47.1626969943474; 
 Thu, 22 Jul 2021 09:05:43 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id 12sm12883718qkr.10.2021.07.22.09.05.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jul 2021 09:05:43 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, davem@davemloft.net, kuba@kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-sctp@vger.kernel.org
Date: Thu, 22 Jul 2021 12:05:41 -0400
Message-Id: <9f7076d5dd455e26df404b917bfe99f301c0eb72.1626969941.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.48 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.48 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m6bCn-00Gz3w-7Z
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
Acked-by: Jon Maloy <jmaloy@redhat.com>
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
