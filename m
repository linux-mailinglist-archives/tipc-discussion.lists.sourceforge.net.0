Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 41BD83B8B25
	for <lists+tipc-discussion@lfdr.de>; Thu,  1 Jul 2021 02:21:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lykSS-0003Kz-Er; Thu, 01 Jul 2021 00:21:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lucien.xin@gmail.com>) id 1lykSQ-0003Ks-MT
 for tipc-discussion@lists.sourceforge.net; Thu, 01 Jul 2021 00:21:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=krrl6vl2jqjd1n9iCvsbKYFIC3+csOxVLKihFN5nFS0=; b=PK6S2nEtKtuGRArhOduZd49RHV
 A58UWAiFRq9rAH4B6QThAX0JW/oInCTvyZUA/xMqbkXkXR6MDgIcuGLhFMrrBStxZNXCo+j87Apg4
 mre5zDFvIqzSa0zil7yLXRqPtb5wSrKB9s2RQxvcolO0qh2KBik+HRI4hkgbeHACjqTg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=krrl6vl2jqjd1n9iCvsbKYFIC3+csOxVLKihFN5nFS0=; b=i
 7Gt9Il6Wx7fo2Qn09zQcLzYFGKXfaQ1dp5CSlQkCWpa+h1iJfLNximKH5uK5tCXRlEEloo2iDFORS
 fljhoCbk+m3Ddx/MDr+Z1jtP2jTy+pfKdn7dQBu6bpj562CbF+OzBbzzokkvsP3SPrITbCwHzWMo0
 RN+tJWAQroaaTrdI=;
Received: from mail-wr1-f46.google.com ([209.85.221.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lykSP-005KHl-1e
 for tipc-discussion@lists.sourceforge.net; Thu, 01 Jul 2021 00:21:30 +0000
Received: by mail-wr1-f46.google.com with SMTP id l8so5743679wry.13
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 30 Jun 2021 17:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=krrl6vl2jqjd1n9iCvsbKYFIC3+csOxVLKihFN5nFS0=;
 b=s6lm6BW9SiEaRJPwn+aKwaf2ViqKkZJebcN/0GFEdtx6sCOCPfS9D3HTfpROzzdZO0
 +JC601NslUAVes+gqbhbkD6htb81TkONs9O6hlFeWZzDT5nFgtbP5Ffz7uPmPTMwm/9f
 fUu16Cy5AJhJgsWSF3+V1flo/PQNRmvtH4zFGqwiB/s4NzSBswZstqU/6hUDLMHVTc7a
 uo4D+ojqlj99ZKZrPjBzlJkTTyVQ1zol3cX5DLGXxIWrKAsNzvxWQp6gzqHFpjlidp+M
 HDlmTeB6U4v6Cn/hqUeCPuDeFvdEVkkXwvCAOSyM901soiIxypHqr/3eLjoJLP6gJFnO
 2vBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=krrl6vl2jqjd1n9iCvsbKYFIC3+csOxVLKihFN5nFS0=;
 b=lOJx9MnnHbMdsDNFrIf518p3MgHLqAK+w6mqPj0XsYFTVwHy7OIuf4Taaqb79u/sJN
 l3zMgR3Gw4cYg6disGIqW3aNEfGWrQvAty8Xz66l0NXwblooBPnG6LBnamdcZ9U/DdZk
 Ft6/dDqmmrx2q2mByo5tG0Agxzn/ZXicANILWTpfGB89/jPMZiXpvF6WkdTafzx0EgYn
 rXD4h34+D+6xSHaem6fWe6uQ9HdfQQt4Z92KFt6lAX8ZzxCuevLQ/SPeDwIZ7f9/h6T6
 K6xgENv3uWarc38rC4sKa1bC+IdqyqyuWll41Sb8U/DYLPfY223Z+o+nK+6B7Z2VOqnI
 +wsw==
X-Gm-Message-State: AOAM530vnv5gmMsoklg/17Aph2fxIVh81WjxUjLJn21KtFJbOj3deAAP
 hd/fKEYwwre0kGRFbT6acuWwswWaqwkqYg==
X-Google-Smtp-Source: ABdhPJwxVNFtdKv88c7emqg1/SS2X6yzjWKkHD3oid4kcE+ojVte5S68gfGgWN9/4I1zuzPWYeAaIw==
X-Received: by 2002:adf:f54c:: with SMTP id j12mr26385040wrp.109.1625098882692; 
 Wed, 30 Jun 2021 17:21:22 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id 24sm7525517wmi.35.2021.06.30.17.21.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Jun 2021 17:21:22 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: Jon Maloy <jmaloy@redhat.com>, Erin Shepherd <erin.shepherd@e43.eu>,
 tipc-discussion@lists.sourceforge.net
Date: Wed, 30 Jun 2021 20:21:21 -0400
Message-Id: <8b84716568d37175790a2fe738a3bdf9de5914cb.1625098881.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.46 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lykSP-005KHl-1e
Subject: [tipc-discussion] [PATCHv2 net-next] tipc: keep the skb in rcv
 queue until the whole data is read
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

Note that this will work as above only when MSG_EOR is set in the
flags parameter of recvmsg(), so that it won't break any old user
applications.

v1->v2:
  - To enable this only when the flags with MSG_EOR is passed into
    recvmsg() to fix the compatibility isssue as Erin noticed.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
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
