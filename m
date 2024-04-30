Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD908B7810
	for <lists+tipc-discussion@lfdr.de>; Tue, 30 Apr 2024 16:03:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1s1o5F-0007WC-39;
	Tue, 30 Apr 2024 14:03:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1s1o5C-0007W2-F3
 for tipc-discussion@lists.sourceforge.net;
 Tue, 30 Apr 2024 14:03:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aJnYUGWwY/oqAOMwIFkx0qsRQso5ETFxAxoqD0BCIVA=; b=JSJdRqDQ/B9ten0SJJuUu6KNEP
 jYd6djxHHviBuAxvQGUnNpPE+jKCORo5q0dylGnUAdABv041s/bsLuUvqGlFa8nQrd5Wdjdzo58C3
 wRTTiVfjA+G+38jmvVbvCoo9yjnU+PxqEnhemvOZo4LmwJjUQ6XbPjgaVa2Rop8D/Qv0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=aJnYUGWwY/oqAOMwIFkx0qsRQso5ETFxAxoqD0BCIVA=; b=L
 eHQ5O3MUncxa5AzZhsD5zVMSa5+ZI0hABpN/zHL1+boyGs9HTs673a+JjUCRsExo8mrgBcXRSvT+r
 UDzJjAOCSHVAjeZBkiLV9/dDg4VzFzOapDGwdcdUFCl3/oy/hxqI2DaC64Fd4DX8cjoI1IXemwSMD
 BS4k5Qi5P6F7YyQE=;
Received: from mail-qv1-f45.google.com ([209.85.219.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1s1o5B-00079R-PO for tipc-discussion@lists.sourceforge.net;
 Tue, 30 Apr 2024 14:03:46 +0000
Received: by mail-qv1-f45.google.com with SMTP id
 6a1803df08f44-69b5ece41dfso23627416d6.2
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 30 Apr 2024 07:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1714485820; x=1715090620; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=aJnYUGWwY/oqAOMwIFkx0qsRQso5ETFxAxoqD0BCIVA=;
 b=KvRGdd1uPkPVyFvX85ov9jGSf49+VUbheXdrO1mtU+guuac+nDrJDBedJP0ubkgoqR
 CwX1ps5sprPPdmX73/rbaG4nVBS5ThmzwOGlGTpHJxleAwnb3rG5IDzuOThlDi9Y0WyD
 ygMe94siv1AKvJlAi1viOiC+zaiwIA+uKdVmOI1Z2TjsTr/X6MZqq9+FSCR7wWPJS+n9
 xY9uYn+jMqqmx+6KurQSwof9n9H2x1MXREdWDwS53WyxqsoQhE/ejb2VU4hwtrjEsR1i
 oOsD5nVnyiJP9IAfdpkRxID6JBf8D1lMD+VMMjdVlLwmls+YQYXH1YXnURQvp1lNfej3
 TIWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714485820; x=1715090620;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=aJnYUGWwY/oqAOMwIFkx0qsRQso5ETFxAxoqD0BCIVA=;
 b=iz/bK+8A0yZA/ScKq1K78Gm9C9Nv85dueWzpz+H2xGlvF0CPZEfpq4gaLSUlOypcvz
 pnOT7KEzpz/IvXUysbcYuK95r+qm6Vq9KgQSHGYPh9NpuN5R6q3QOobqjfQIbcEMKnpB
 p6MK+YwWr0ToHCJ/kJC1tVwrS4hbppio9CFBaHNjJ+O6zBZSyYzN41hgbMZGAg3lIBgx
 v4B3GKKUhAYZI6DNWiQgaYBJufMfivXF0+Fpae6HupreHCYmde1J1I+wkJhCHCWCTIC0
 05M3x9WAJdpGlR97U0/d2ZfFMXTqcBB8X13jEqptCfvn9CbrmTS12FyXBy/6AFn0/PTh
 7IVg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVjq0LCjjhZE68heT+6L1RO7wnbjcXcuDdobD72E4qlYxK6MvCPf1t6LUM5UUdVFjDZ6i5E81OiVB+qxOTMjJzYwirP0qzuDhjI+W+F6zwilAnRneS1
X-Gm-Message-State: AOJu0YwneHD4AQ/+KjKZ3unUvExpQ/E2ySdxatD/GhwtOUrO58kY6wdz
 +PnzaKpm7o6vDLVI2fDTGW5f/HIP/Q13CTFf098c69tTAKjPrtk+
X-Google-Smtp-Source: AGHT+IGMwTZBAt46LWw96I8o5TFU1PZR61lxjz2FkRE5rHPSJxdGcmX1PxGSs8uMCxNnJYtZAC8EOQ==
X-Received: by 2002:ad4:5be2:0:b0:6a0:6668:f3f6 with SMTP id
 k2-20020ad45be2000000b006a06668f3f6mr16722073qvc.21.1714485820015; 
 Tue, 30 Apr 2024 07:03:40 -0700 (PDT)
Received: from wsfd-netdev15.anl.eng.rdu2.dc.redhat.com ([66.187.232.140])
 by smtp.gmail.com with ESMTPSA id
 qb6-20020ad44706000000b006994062299dsm4512692qvb.33.2024.04.30.07.03.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Apr 2024 07:03:38 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Tue, 30 Apr 2024 10:03:38 -0400
Message-ID: <90710748c29a1521efac4f75ea01b3b7e61414cf.1714485818.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  __skb_linearize() doesn't free the skb when it fails, so move
 '*buf = NULL' after __skb_linearize(), so that the skb can be freed on the
 err path. Fixes: b7df21cf1b79 ("tipc: skb_linearize the head skb when
 reassembling
 msgs") Reported-by: Paolo Abeni Signed-off-by: Xin Long --- net/tipc/msg.c
 | 2 +- 1 file changed, 1 insertion(+), 1 deletio [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.45 listed in wl.mailspike.net]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.219.45 listed in list.dnswl.org]
X-Headers-End: 1s1o5B-00079R-PO
Subject: [tipc-discussion] [PATCH net] tipc: fix a possible memleak in
 tipc_buf_append
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

__skb_linearize() doesn't free the skb when it fails, so move
'*buf = NULL' after __skb_linearize(), so that the skb can be
freed on the err path.

Fixes: b7df21cf1b79 ("tipc: skb_linearize the head skb when reassembling msgs")
Reported-by: Paolo Abeni <pabeni@redhat.com>
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/msg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 5c9fd4791c4b..c52ab423082c 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -142,9 +142,9 @@ int tipc_buf_append(struct sk_buff **headbuf, struct sk_buff **buf)
 	if (fragid == FIRST_FRAGMENT) {
 		if (unlikely(head))
 			goto err;
-		*buf = NULL;
 		if (skb_has_frag_list(frag) && __skb_linearize(frag))
 			goto err;
+		*buf = NULL;
 		frag = skb_unshare(frag, GFP_ATOMIC);
 		if (unlikely(!frag))
 			goto err;
-- 
2.43.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
