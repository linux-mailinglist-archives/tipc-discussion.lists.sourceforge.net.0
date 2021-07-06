Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B6D3BDD0F
	for <lists+tipc-discussion@lfdr.de>; Tue,  6 Jul 2021 20:22:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m0pia-0001sD-Mv; Tue, 06 Jul 2021 18:22:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1m0piV-0001re-BM
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 18:22:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XC3zlKR9/hMzY/fzfkpomlmNSyT1BVp2e1TZJjx5dsc=; b=bWdL7+hvh85iRSdkMYZIJqN5Fr
 Y7+x042xgs4ELYZ4yAPf0MT1pMb9I4Z+3q8dFuYLDYmYdSWOumjBkxndiw8lMdbhMbr6eYLDrX790
 pS11lFz78yviBaf5Q7GyctIxJftfUEkuQkONC/0XavYojyD4thUy/FTeDKaEoJ+ksOrY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XC3zlKR9/hMzY/fzfkpomlmNSyT1BVp2e1TZJjx5dsc=; b=MUKonFCUfMZKvdZ3/7SW+rRLJ3
 oF5zDyoS/z4pTxIZHYv4f/RMAxJOjq+zMThHHy2cxuPnkugGaqOyZd65TXJdGLhmVRmiYcBryAlMG
 4wNLa621dse8eUWCxheOVPON8vYLD0fyioMXPXTT+sJ1JMKtzWSEsIgpKn3wolR+1fc8=;
Received: from mail-wm1-f51.google.com ([209.85.128.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m0piL-00CboX-IW
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 18:22:43 +0000
Received: by mail-wm1-f51.google.com with SMTP id
 j16-20020a05600c1c10b0290204b096b0caso2892289wms.1
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 06 Jul 2021 11:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=XC3zlKR9/hMzY/fzfkpomlmNSyT1BVp2e1TZJjx5dsc=;
 b=dTJHdiF7TILyOPib0Fn+rrOQFxWlMdLQIPlaCEMUScR9YHDjYDBIw880ZG19Z7o2rF
 D/xfyaxtruCuTt4R+UVB3Zbbju2LeIk7/f0uqkQ3KCKygY6GFIwKONLuY9Sxl/qUU0Ls
 YNU5Q6jKgEKqU+PKCQzWMbh3B4SfHGEWePhohnSSkvM5gsSPkrbdX8mnRN0EEpZUc8xr
 YjxGLr2XRh4zPf25XH6Az11Fm9scBzp9VzFQ1gKQdDrXcYwaJolcavaFEnXFlTbv27er
 IvSpJkr0pA6xxbtkLug87VH+h/RY/wi2xhLe919QtHwk3HltlssR/HxXUDJmgOKwzb6O
 R5TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XC3zlKR9/hMzY/fzfkpomlmNSyT1BVp2e1TZJjx5dsc=;
 b=tng/4PtFT9ywiWp8guGG2c5zaL5vSSDwNlrLq8jCpfrLT3199Hj1A78qD37ccGEBMp
 +ar4lfnvnCZgJbtOBDuESFf0Ux4TYA6W3YDhDX7LBkZALPnT3iXQ/f/63vV6Bwb9NCG3
 HfVUl7sxxIcVSo2hX6reTizlJMrRL35IllENwFlR3oSalvXLaSKrs/ZwNOwp8FYvQN3S
 SV+irJQ4TELMchq6t9Xa089cF6KsDjR+gjckPhs6z9oUKXePo3rH83BxqeaanrwlOQCY
 5jrh+oesIFTAbuKvj5M1LwZzkbKEQ0NSCkPru20bW873k+/f1gAZxwHltxG9Tnlh5spY
 aRZQ==
X-Gm-Message-State: AOAM5321fvC1A2zSKZbUpbYuTPMzpsXBcLfPTTPrjD5cxxh66ZplIagj
 VNOxVkpLHxX74kr47vku3BI=
X-Google-Smtp-Source: ABdhPJwBEfWSgHSXVXLUlK8+FroYDdCXXznLHxFTMmLClDsljd63fkKQkPMLrW9W0XB3J/FvzKCYtA==
X-Received: by 2002:a1c:7410:: with SMTP id p16mr22770433wmc.24.1625595747311; 
 Tue, 06 Jul 2021 11:22:27 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id g15sm17300333wrs.50.2021.07.06.11.22.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 11:22:27 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: Jon Maloy <jmaloy@redhat.com>,
	tipc-discussion@lists.sourceforge.net
Date: Tue,  6 Jul 2021 14:22:12 -0400
Message-Id: <7ed646308886f35fd64da8fb4d247ebde60e53f5.1625595705.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1625595705.git.lucien.xin@gmail.com>
References: <cover.1625595705.git.lucien.xin@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.51 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.51 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m0piL-00CboX-IW
Subject: [tipc-discussion] [PATCH net-next 6/8] tipc: add offload base
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

This is the base code for tipc gso, and tipc_gso_segment() will
only be called after gso packets are built in the next patch.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 include/linux/skbuff.h |  2 ++
 net/tipc/Makefile      |  2 +-
 net/tipc/core.c        |  3 +++
 net/tipc/msg.h         |  2 ++
 net/tipc/offload.c     | 29 +++++++++++++++++++++++++++++
 5 files changed, 37 insertions(+), 1 deletion(-)
 create mode 100644 net/tipc/offload.c

diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
index b2db9cd9a73f..148bf0ed7336 100644
--- a/include/linux/skbuff.h
+++ b/include/linux/skbuff.h
@@ -599,6 +599,8 @@ enum {
 	SKB_GSO_UDP_L4 = 1 << 17,
 
 	SKB_GSO_FRAGLIST = 1 << 18,
+
+	SKB_GSO_TIPC = 1 << 19,
 };
 
 #if BITS_PER_LONG > 32
diff --git a/net/tipc/Makefile b/net/tipc/Makefile
index ee49a9f1dd4f..ff276bf78d03 100644
--- a/net/tipc/Makefile
+++ b/net/tipc/Makefile
@@ -9,7 +9,7 @@ tipc-y	+= addr.o bcast.o bearer.o \
 	   core.o link.o discover.o msg.o  \
 	   name_distr.o  subscr.o monitor.o name_table.o net.o  \
 	   netlink.o netlink_compat.o node.o socket.o eth_media.o \
-	   topsrv.o group.o trace.o
+	   topsrv.o group.o trace.o offload.o
 
 CFLAGS_trace.o += -I$(src)
 
diff --git a/net/tipc/core.c b/net/tipc/core.c
index 3f4542e0f065..1f59371aa036 100644
--- a/net/tipc/core.c
+++ b/net/tipc/core.c
@@ -186,6 +186,8 @@ static int __init tipc_init(void)
 	if (err)
 		goto out_netlink_compat;
 
+	tipc_offload_init();
+
 	pr_info("Started in single node mode\n");
 	return 0;
 
@@ -210,6 +212,7 @@ static int __init tipc_init(void)
 
 static void __exit tipc_exit(void)
 {
+	tipc_offload_exit();
 	tipc_netlink_compat_stop();
 	tipc_netlink_stop();
 	tipc_bearer_cleanup();
diff --git a/net/tipc/msg.h b/net/tipc/msg.h
index 64ae4c4c44f8..d6c6231b8208 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -1203,6 +1203,8 @@ bool tipc_msg_pskb_copy(u32 dst, struct sk_buff_head *msg,
 bool __tipc_skb_queue_sorted(struct sk_buff_head *list, u16 seqno,
 			     struct sk_buff *skb);
 bool tipc_msg_skb_clone(struct sk_buff_head *msg, struct sk_buff_head *cpy);
+void tipc_offload_init(void);
+void tipc_offload_exit(void);
 
 static inline u16 buf_seqno(struct sk_buff *skb)
 {
diff --git a/net/tipc/offload.c b/net/tipc/offload.c
new file mode 100644
index 000000000000..f8a81c8886f0
--- /dev/null
+++ b/net/tipc/offload.c
@@ -0,0 +1,29 @@
+#include <linux/netdevice.h>
+#include <linux/skbuff.h>
+#include "msg.h"
+
+static struct sk_buff *tipc_gso_segment(struct sk_buff *skb,
+					netdev_features_t features)
+{
+	if (!(skb_shinfo(skb)->gso_type & SKB_GSO_TIPC))
+		return ERR_PTR(-EINVAL);
+
+	return skb_segment(skb, (features | NETIF_F_HW_CSUM) & ~NETIF_F_SG);
+}
+
+static struct packet_offload tipc_packet_offload __read_mostly = {
+	.type = cpu_to_be16(ETH_P_TIPC),
+	.callbacks = {
+		.gso_segment = tipc_gso_segment,
+	},
+};
+
+void tipc_offload_init(void)
+{
+	dev_add_offload(&tipc_packet_offload);
+}
+
+void tipc_offload_exit(void)
+{
+	dev_remove_offload(&tipc_packet_offload);
+}
-- 
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
