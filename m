Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4EE33B4C3D
	for <lists+tipc-discussion@lfdr.de>; Sat, 26 Jun 2021 05:40:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lwzBM-0004Uu-Oq; Sat, 26 Jun 2021 03:40:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1lwzBK-0004Ug-UA
 for tipc-discussion@lists.sourceforge.net; Sat, 26 Jun 2021 03:40:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kBCrWJw5LoJXL46VamSbFRlz2bmPGoRFM/U+09o4Rlo=; b=ChboDtKEn90jB4rU5rAZgC3o09
 xDaQlIZ95nBWk6LZmo5BWXMl3ny0A8S1lz+kAXe/o7bE3uwTXsqYPA4cCVW5g5YEsp/gsnzQIrhhO
 jzRbDB/CSoOY9EkfVME2KRu2NfZf1dz/AcxUTP6gY0Ve1YJm/iiSNJclL20VLPhSMSfc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=kBCrWJw5LoJXL46VamSbFRlz2bmPGoRFM/U+09o4Rlo=; b=l
 FH7sFF+WbhjqLoStVBj/2mj/NcJnrVxCMw9lV+ciTEs0kVxUqvUHmoMR136N+nzscWyWCXwcAw100
 9WGFupXlrI01PyAaa3jfDs8ACiYnvynZYxfFItJSl9AhtUk+LUWdwI492cQ3zhmksSFSsS/MkH1Jh
 t+vT+6V2gFAvycH8=;
Received: from mail-wm1-f54.google.com ([209.85.128.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lwzB8-00050q-Dn
 for tipc-discussion@lists.sourceforge.net; Sat, 26 Jun 2021 03:40:35 +0000
Received: by mail-wm1-f54.google.com with SMTP id
 o35-20020a05600c5123b02901e6a7a3266cso4663444wms.1
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 25 Jun 2021 20:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kBCrWJw5LoJXL46VamSbFRlz2bmPGoRFM/U+09o4Rlo=;
 b=gbGRjFXLsuieKwujCK3+SDwe2PHHXeW03v1txLu8olblLX9xkXvkGyuUSra2FwE+Bh
 FJPQbIPDcDvfhiIh2S+4deAI9JM0J1bxLiqzTWKUxmHmJZskPz0g4jENBD1wwWiJlJyH
 EUfYC8Er0NWWO9VHqoeaKTwBz88m4mdqAdixiD0G89TYiwWkD0UlAtJ2k/WHZTPralNY
 1qmyTMBAva3g9UDomq+HUBWIFAOy8JGFOoYRBjyDaiuPCB/Q38FoMJAcCVxEAqFY4QQr
 e21A8S0RnJDwFUvXvvjgw0XW+Kdfaf8Eq5c8UtiU2YZ3FJbYbzrXNdkpe7eglvQAHCGf
 H1lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kBCrWJw5LoJXL46VamSbFRlz2bmPGoRFM/U+09o4Rlo=;
 b=jYrV2cUnnMY8GDlJLvIyMdkxvGpB3N1ty7KqiN1UBUys6p0WCekWXxSjt0+aVMQsOv
 dNdoUXGYxCUiICuV+Nu2It3Yh30NEUhadJvAZbfplqQXMtbZ7NPr9sOh7YxxurZw9cW+
 GfE6T8/GwlJog97Dn7fHTLCuh4JM9ksMwhZEAjlX4q7KBnUl9HFYoiYb04vomfvqbQU5
 1uVpzl3qnddyqwTyxkQYOwknrVKv4T/c2VCPZ+ZXg3SrIB2B2JY28agq6nyz+/qeus5w
 UeZ8q60Sut4i4vJkj6yup2UDJG0Mf8Eq6sZb6kMZnehn0jlz5gxACIYUecmy9pkTaOaU
 TBNg==
X-Gm-Message-State: AOAM530iGIWvvP/nMEjc/mzR/Swbdf8xrWlmpPi8mB02ggNd0oUkN081
 r69F5LbgpmO+YGyLPyN+XOS9cIOslQQAjQ==
X-Google-Smtp-Source: ABdhPJw7GRWIj/GIEV3RfbeUa1e0xSmXWaLMKrE3mWQSxnGO95Gq4ZS3m70cpZn5tcW3z2msVd8sWg==
X-Received: by 2002:a1c:a101:: with SMTP id k1mr14336010wme.17.1624678817656; 
 Fri, 25 Jun 2021 20:40:17 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id y15sm7042442wmq.17.2021.06.25.20.40.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Jun 2021 20:40:17 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: tipc-discussion@lists.sourceforge.net
Date: Fri, 25 Jun 2021 23:40:15 -0400
Message-Id: <dbb8b1824d1d701ebbd513324232eddafcad835b.1624678815.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.54 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lwzB8-00050q-Dn
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

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/socket.c | 30 +++++++++++++++++++++---------
 1 file changed, 21 insertions(+), 9 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 34a97ea36cc8..504e59838b8b 100644
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
@@ -1922,18 +1924,27 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
 
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
+			if (!(flags & MSG_PEEK))
+				skb_cb->bytes_read = offset + copy;
+		} else {
+			m->msg_flags |= MSG_EOR;
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
@@ -1956,9 +1967,10 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
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
