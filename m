Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FF13CBEB7
	for <lists+tipc-discussion@lfdr.de>; Fri, 16 Jul 2021 23:44:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m4Vd6-0006Wl-84; Fri, 16 Jul 2021 21:44:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1m4Vd4-0006WU-2x
 for tipc-discussion@lists.sourceforge.net; Fri, 16 Jul 2021 21:44:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=05I6T4y1TAStE9/dQzJnO6wGH+WxC5k7nootATM77EE=; b=jzAqsCN4Ke5e5prWgqm3UMBuJt
 jFuNfpyOAQgFeuxXEiopVPJgBIKDUS6KQU5th2feIm5HSCVGaVR8ioxYUpn/SfVnmln1WpQgJwGAy
 3sLPM8Qmzl4WW8VlkMwisLytsoXfmHrCg9zssoebD5qOlJxXnNJDf8EcgwZFhbPH2/nw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=05I6T4y1TAStE9/dQzJnO6wGH+WxC5k7nootATM77EE=; b=L
 osLPbVlWlUx+rmSUD7jbE7vRQ8rU0mVP2c2CjDaYPDQBW6TdywlIfYk726F38nho3RRo8LeIQO/vg
 QdRobhz9pHP8YbZbefyHadi97agD6uKVvnXwugC74GCQeocIsothZbbXOgCCPfRQEVOKWcHlE4pWl
 sHiwn5UkxJSHl0bo=;
Received: from mail-wm1-f50.google.com ([209.85.128.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m4Vd2-0004D0-8G
 for tipc-discussion@lists.sourceforge.net; Fri, 16 Jul 2021 21:44:17 +0000
Received: by mail-wm1-f50.google.com with SMTP id
 o30-20020a05600c511eb029022e0571d1a0so6689564wms.5
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 16 Jul 2021 14:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=05I6T4y1TAStE9/dQzJnO6wGH+WxC5k7nootATM77EE=;
 b=lQj6O3icJGzrCo7DAPwL2cjseX728QVZzqKkefKwU99+NpbDvglGWAGJvvvQQleWE3
 4HBkbDoDEKX8Cy+VFomIcqH+cNSaaLAcfdmp+gJf8ZPM2fMle26Gijb09b9Qm+ycczP7
 b6Ad0g3N/H5+Q3OmSuVjLn8OCqWFyKfFP1mHL6a9HKxfNfsm8BUbToOZ0UdkeOdfO9MW
 dAN7EdrTioYs80d0WsvfvtTgRuS4DE5oxXKMzWOOAgFgmu9oMDU+U6k0yl5RG1g6x4ke
 A9q+q5vWnYN083dRga2KNjCXHHObFE99eFysJfBULpEEYJLXAcg2JoeR7k2m5MUu0z1i
 NlDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=05I6T4y1TAStE9/dQzJnO6wGH+WxC5k7nootATM77EE=;
 b=rI+TScRquHico4Yt8gwR+j4m0r3xpMyZQUpUTEEy//c/vKD5d5IlZEco/eYk8dPPpp
 iqT0hmavpcXNHax6/sQKVyS667Gkwh8se3IU6bB1Lz0i0c7vG3kmIY//O+rSltwwLcKj
 hsfgMjCt5Sys3SDo0msnfybjs+oPC3+3TiVHyp69yCqoF/aVBgDEsnV68ALa+Z9nIdHf
 DxVJ2spihd+TI11gSTdJkNgw5HQDuRzuvUxsYo33RCInyhnkKHi2y21A6lykWEGbQC4H
 37wgixrHXskjzIqAhvcoYC49JeK0bYQ0xqlZ9ijpfQKT07L/e3yfO2md/RjECJyA1Sg+
 Q94Q==
X-Gm-Message-State: AOAM532SiYIUoFqjeBGEl2syva0HH9n1p7nJwTGph5oveSSb6cp9yxiN
 5Y4b+1STdK/xFUkCPYw/aeS/tEF1YG4=
X-Google-Smtp-Source: ABdhPJxgfosGf0pxBJ76Ow+krBnHAp2Auo7cthzPyz/Wn3k/1N0WzZsEKDaDwrC2UKgRB02RhRUiTQ==
X-Received: by 2002:a1c:a9c6:: with SMTP id s189mr8028836wme.143.1626471849874; 
 Fri, 16 Jul 2021 14:44:09 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id n7sm11496808wmq.37.2021.07.16.14.44.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Jul 2021 14:44:09 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, davem@davemloft.net, kuba@kernel.org,
 Jon Maloy <jmaloy@redhat.com>, tipc-discussion@lists.sourceforge.net
Date: Fri, 16 Jul 2021 17:44:07 -0400
Message-Id: <57cb295272cdeedec04ac2f920a1fd37446163c6.1626471847.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.50 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m4Vd2-0004D0-8G
Subject: [tipc-discussion] [PATCH net-next] tipc: keep the skb in rcv queue
 until the whole data is read
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
Cc: Erin Shepherd <erin.shepherd@e43.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Currently, when userspace reads a datagram with a buffer that is
smaller than this datagram, the data will be truncated and only
part of it can be received by users. It doesn't seem right that
users don't know the datagram size and have to use a huge buffer
to read it to avoid the truncation.

This patch to fix it by keeping the skb in rcv queue until the
whole data is read by users. Only the last msg of the datagram
will be marked with MSG_EOR, just as TCP/SCTP does.

Note that this will work as above only when MSG_EOR is set in the
flags parameter of recvmsg(), so that it won't break any old user
applications.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
Acked-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/socket.c | 36 +++++++++++++++++++++++++++---------
 1 file changed, 27 insertions(+), 9 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 34a97ea36cc8..9b0b311c7ec1 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1880,6 +1880,7 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
 	bool connected = !tipc_sk_type_connectionless(sk);
 	struct tipc_sock *tsk = tipc_sk(sk);
 	int rc, err, hlen, dlen, copy;
+	struct tipc_skb_cb *skb_cb;
 	struct sk_buff_head xmitq;
 	struct tipc_msg *hdr;
 	struct sk_buff *skb;
@@ -1903,6 +1904,7 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
 		if (unlikely(rc))
 			goto exit;
 		skb = skb_peek(&sk->sk_receive_queue);
+		skb_cb = TIPC_SKB_CB(skb);
 		hdr = buf_msg(skb);
 		dlen = msg_data_sz(hdr);
 		hlen = msg_hdr_sz(hdr);
@@ -1922,18 +1924,33 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
 
 	/* Capture data if non-error msg, otherwise just set return value */
 	if (likely(!err)) {
-		copy = min_t(int, dlen, buflen);
-		if (unlikely(copy != dlen))
-			m->msg_flags |= MSG_TRUNC;
-		rc = skb_copy_datagram_msg(skb, hlen, m, copy);
+		int offset = skb_cb->bytes_read;
+
+		copy = min_t(int, dlen - offset, buflen);
+		rc = skb_copy_datagram_msg(skb, hlen + offset, m, copy);
+		if (unlikely(rc))
+			goto exit;
+		if (unlikely(offset + copy < dlen)) {
+			if (flags & MSG_EOR) {
+				if (!(flags & MSG_PEEK))
+					skb_cb->bytes_read = offset + copy;
+			} else {
+				m->msg_flags |= MSG_TRUNC;
+				skb_cb->bytes_read = 0;
+			}
+		} else {
+			if (flags & MSG_EOR)
+				m->msg_flags |= MSG_EOR;
+			skb_cb->bytes_read = 0;
+		}
 	} else {
 		copy = 0;
 		rc = 0;
-		if (err != TIPC_CONN_SHUTDOWN && connected && !m->msg_control)
+		if (err != TIPC_CONN_SHUTDOWN && connected && !m->msg_control) {
 			rc = -ECONNRESET;
+			goto exit;
+		}
 	}
-	if (unlikely(rc))
-		goto exit;
 
 	/* Mark message as group event if applicable */
 	if (unlikely(grp_evt)) {
@@ -1956,9 +1973,10 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
 		tipc_node_distr_xmit(sock_net(sk), &xmitq);
 	}
 
-	tsk_advance_rx_queue(sk);
+	if (!skb_cb->bytes_read)
+		tsk_advance_rx_queue(sk);
 
-	if (likely(!connected))
+	if (likely(!connected) || skb_cb->bytes_read)
 		goto exit;
 
 	/* Send connection flow control advertisement when applicable */
-- 
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
