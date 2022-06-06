Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EE253ED39
	for <lists+tipc-discussion@lfdr.de>; Mon,  6 Jun 2022 19:53:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nyGuI-0002Bn-9l; Mon, 06 Jun 2022 17:52:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lucien.xin@gmail.com>) id 1nyGuH-0002Bf-OH
 for tipc-discussion@lists.sourceforge.net; Mon, 06 Jun 2022 17:52:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L2YFJL5Snddi4Ba9KDViTFV4UjUVDVedrqVavFVmF18=; b=dL0YMiXrl71rmTYMd0YK5mZa68
 dDRdIZlyhxseIC0lQD5a54NG2HpR4+xhzTxLcXVBsFbmjLpInqL7dVBC39TeeXubKNTn0mnyWQ36i
 Kent+bm6MfTtpVZ7WHnoQlmM0RoOT9wUhDK02LWVLIiZAuqOOqzaWS0WbcfHKvoP6lNw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=L2YFJL5Snddi4Ba9KDViTFV4UjUVDVedrqVavFVmF18=; b=Y
 8wy0Z+12kjksGALfygzceiavvevddzUznSlCw195+UxOV/drD4lbq7SqTaCjoJR83seum+yXOu7QO
 bWburJ5b9SUgiybb/GLWHzT/NL5PNQI/pwhvxYYGd9sP0wj0QaKIAaucGlHwNv9ev5GRAnnXSabqc
 JbkApTnADkyTSiOM=;
Received: from mail-qk1-f176.google.com ([209.85.222.176])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nyGuH-007HBa-9t
 for tipc-discussion@lists.sourceforge.net; Mon, 06 Jun 2022 17:52:49 +0000
Received: by mail-qk1-f176.google.com with SMTP id 68so2985990qkk.9
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 06 Jun 2022 10:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L2YFJL5Snddi4Ba9KDViTFV4UjUVDVedrqVavFVmF18=;
 b=WpyJ3Y50wjOA0UjXg9RsyWT7I8ExT6+LZm3uE66uWsVDaxxrcviS4BHB+s8GJpzRMt
 lmUZuKqETaEQvcVJagSleSebA3UiSukS6/o4pyUVvd0beDUVJpjc+h/D3VN7I2DdUOFq
 HXCn7cAjcwB2UdndNpBKIVK3wiXGQP5DILnZ3fakS/3TsXGKuctBt3D98E32Xz7Y/IVE
 MT9HxLRYzbIhtk+AnxX48ZrmmGZOUwIfU7CgLYdUolV/lDVvTM2E6fxTO/5o8ue+oaBI
 pydGoUKsmwuM7MzwA82yYLtuf7HrKuBZJU7OEwqA4wzKwpUsIHo0shX2BBZOuqOk8Z/3
 xsvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L2YFJL5Snddi4Ba9KDViTFV4UjUVDVedrqVavFVmF18=;
 b=PUcgXuRLm5QwA7jDlhiAO1TzpumYguvC1xdPYd7CJVCJ/sRbMN/ZeDjXU5zv+TWbGW
 zJpugCr7B70oD0u3sqr7QsIGHztkdX8BocUYbcUoQrBVQOZpRjkTBENjtzBJpuE0vpE9
 e7Y6AO2h6O2Dan1RkVEkyZH+w4/Msr34lhznraAI7sEZuxZAkjYmQWzA5GYox2GJsDTE
 v92jJEYQgScddaRSAw+mToaAPVaxqjvu8LXupvN/h0xeo/9cqXsc77MKiIHsHQSCyfvb
 hgPF1Jd84IGqvtpP3dmzrLXHjyjsbT8Plm0sTp3g94kGzk05nmnW9XdA6+FvrrAtnU21
 PcGQ==
X-Gm-Message-State: AOAM530WPjRN7g7dVJZE5WmDU26ZPnwwfbMyJKGnuqGdFQfRd6IJCbZI
 pFezxbupnTy2GPtr6BHQwfQUP4XCf0eY6Wce
X-Google-Smtp-Source: ABdhPJwQ9wVm5BmgcuJVdXNnH0nJ9GYtllinNaent/lqsJPXbpFYh3L4N4/hrnNuo+XArDQnQav2oQ==
X-Received: by 2002:a05:620a:142a:b0:6a6:8a05:f862 with SMTP id
 k10-20020a05620a142a00b006a68a05f862mr14266591qkj.11.1654537963215; 
 Mon, 06 Jun 2022 10:52:43 -0700 (PDT)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 l22-20020a05620a28d600b006a5bc8e956esm12692639qkp.133.2022.06.06.10.52.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jun 2022 10:52:42 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: tipc-discussion@lists.sourceforge.net
Date: Mon,  6 Jun 2022 13:52:41 -0400
Message-Id: <f08fdb9faeb9646f8306492f0899c5d257045c91.1654537961.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  After Commit 2af5ae372a4b ("tipc: clean up unused code and
 structures"), there is no place really using tn->bcbase->inputq. This patch
 is to delete this member from struct tipc_bc_base. Signed-off-by: Xin Long
 --- net/tipc/bcast.c | 22 + 1 file changed, 1 insertion(+), 21 deletions(-)
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.176 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.176 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nyGuH-007HBa-9t
Subject: [tipc-discussion] [PATCH net-next] tipc: remove inputq from
 tipc_bc_base
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

After Commit 2af5ae372a4b ("tipc: clean up unused code and structures"),
there is no place really using tn->bcbase->inputq. This patch is to
delete this member from struct tipc_bc_base.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/bcast.c | 22 +---------------------
 1 file changed, 1 insertion(+), 21 deletions(-)

diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
index 593846d25214..2293f6caa682 100644
--- a/net/tipc/bcast.c
+++ b/net/tipc/bcast.c
@@ -63,7 +63,6 @@ unsigned long sysctl_tipc_bc_retruni __read_mostly;
  */
 struct tipc_bc_base {
 	struct tipc_link *link;
-	struct sk_buff_head inputq;
 	int dests[MAX_BEARERS];
 	int primary_bearer;
 	bool bcast_support;
@@ -436,7 +435,6 @@ int tipc_mcast_xmit(struct net *net, struct sk_buff_head *pkts,
 int tipc_bcast_rcv(struct net *net, struct tipc_link *l, struct sk_buff *skb)
 {
 	struct tipc_msg *hdr = buf_msg(skb);
-	struct sk_buff_head *inputq = &tipc_bc_base(net)->inputq;
 	struct sk_buff_head xmitq;
 	int rc;
 
@@ -456,10 +454,6 @@ int tipc_bcast_rcv(struct net *net, struct tipc_link *l, struct sk_buff *skb)
 
 	tipc_bcbase_xmit(net, &xmitq);
 
-	/* Any socket wakeup messages ? */
-	if (!skb_queue_empty(inputq))
-		tipc_sk_rcv(net, inputq);
-
 	return rc;
 }
 
@@ -470,7 +464,6 @@ int tipc_bcast_rcv(struct net *net, struct tipc_link *l, struct sk_buff *skb)
 void tipc_bcast_ack_rcv(struct net *net, struct tipc_link *l,
 			struct tipc_msg *hdr)
 {
-	struct sk_buff_head *inputq = &tipc_bc_base(net)->inputq;
 	u16 acked = msg_bcast_ack(hdr);
 	struct sk_buff_head xmitq;
 
@@ -485,10 +478,6 @@ void tipc_bcast_ack_rcv(struct net *net, struct tipc_link *l,
 	tipc_bcast_unlock(net);
 
 	tipc_bcbase_xmit(net, &xmitq);
-
-	/* Any socket wakeup messages ? */
-	if (!skb_queue_empty(inputq))
-		tipc_sk_rcv(net, inputq);
 }
 
 /* tipc_bcast_synch_rcv -  check and update rcv link with peer's send state
@@ -499,7 +488,6 @@ int tipc_bcast_sync_rcv(struct net *net, struct tipc_link *l,
 			struct tipc_msg *hdr,
 			struct sk_buff_head *retrq)
 {
-	struct sk_buff_head *inputq = &tipc_bc_base(net)->inputq;
 	struct tipc_gap_ack_blks *ga;
 	struct sk_buff_head xmitq;
 	int rc = 0;
@@ -522,9 +510,6 @@ int tipc_bcast_sync_rcv(struct net *net, struct tipc_link *l,
 
 	tipc_bcbase_xmit(net, &xmitq);
 
-	/* Any socket wakeup messages ? */
-	if (!skb_queue_empty(inputq))
-		tipc_sk_rcv(net, inputq);
 	return rc;
 }
 
@@ -551,7 +536,6 @@ void tipc_bcast_add_peer(struct net *net, struct tipc_link *uc_l,
 void tipc_bcast_remove_peer(struct net *net, struct tipc_link *rcv_l)
 {
 	struct tipc_link *snd_l = tipc_bc_sndlink(net);
-	struct sk_buff_head *inputq = &tipc_bc_base(net)->inputq;
 	struct sk_buff_head xmitq;
 
 	__skb_queue_head_init(&xmitq);
@@ -563,10 +547,6 @@ void tipc_bcast_remove_peer(struct net *net, struct tipc_link *rcv_l)
 	tipc_bcast_unlock(net);
 
 	tipc_bcbase_xmit(net, &xmitq);
-
-	/* Any socket wakeup messages ? */
-	if (!skb_queue_empty(inputq))
-		tipc_sk_rcv(net, inputq);
 }
 
 int tipc_bclink_reset_stats(struct net *net, struct tipc_link *l)
@@ -703,7 +683,7 @@ int tipc_bcast_init(struct net *net)
 				 BCLINK_WIN_DEFAULT,
 				 BCLINK_WIN_DEFAULT,
 				 0,
-				 &bb->inputq,
+				 NULL,
 				 NULL,
 				 NULL,
 				 &l))
-- 
2.31.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
