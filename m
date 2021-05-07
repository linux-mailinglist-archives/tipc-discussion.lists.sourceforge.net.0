Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D73376AE8
	for <lists+tipc-discussion@lfdr.de>; Fri,  7 May 2021 21:57:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lf6bG-0001SK-FJ; Fri, 07 May 2021 19:57:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1lf6bF-0001SE-OB
 for tipc-discussion@lists.sourceforge.net; Fri, 07 May 2021 19:57:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=keKVx8ecKfHyBnMmZojREe/lOoF10dNBHzj+OjKNMnM=; b=kOFhWxYbe988E89CyUU53ySmAr
 JtcKuCX/RRoE6da4QyoPF2/zBmI1bM5xaomAjVrY/VyLhQjxs7f4/hlzKyoHJxW5ssQjQOm4uVUCY
 Zhm+RNdgf1rBL6xhzd62M1hNe6fIao6q74g8x+VQ7+Pr22j0sSWkwfyTbQo6Re7JFGDg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=keKVx8ecKfHyBnMmZojREe/lOoF10dNBHzj+OjKNMnM=; b=c9OYuRVgBkSQwUKNZzDHPztrxx
 ShsHGX2zUTC9NnMwgQLOhACof8+ocmYA3JVhtfTYm6BGJ5oYFTbYN1sqW+D+644hzsnIAvqN/slv6
 gryN4+bC8OSh/13EAO7yyld2FbTs41I2pCNZ1FPdiT/gNfOi3smcmkDpjBwg4nwvrVwg=;
Received: from mail-pf1-f179.google.com ([209.85.210.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lf6b7-00B16v-6W
 for tipc-discussion@lists.sourceforge.net; Fri, 07 May 2021 19:57:27 +0000
Received: by mail-pf1-f179.google.com with SMTP id k19so8640329pfu.5
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 07 May 2021 12:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=keKVx8ecKfHyBnMmZojREe/lOoF10dNBHzj+OjKNMnM=;
 b=rH0D6MrG6wmI/a62m2Xn1N1ki/V5y7mrOnbtmLEUYmfET5P3XB33PsZCDZqsm1ykfe
 Kwf5Tqzn6l817FDNjOAxpQeF5Hsn0RS+gxp5ZVa3o4ItpVTUmH/iezmpG6GvekkoaRgC
 1IQgZh/NKmY7z71zGV7TjY6SEAALQ8MsknyeAm40SD2QLga7s3l1FtX78yMv5Hm0hijS
 tv2UTXZWRJapgD7zL4ZWEcS7m3EQ2M1Kh9cl4z1BDkpvJcHV/4rDWVefjX72hb4N731Z
 tcvR90XrUAbBhAlROzq7mHdYHv3GUDgnfR7HHnyPkgkR+kzOydluM8rQ4qBLBLJb/btI
 52jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=keKVx8ecKfHyBnMmZojREe/lOoF10dNBHzj+OjKNMnM=;
 b=QOG411wzhJrQ39Q9VGBP3xZEfVSLMWenHakZze2EmKGNRhVnQIf8cKHGoJFe8BVJTw
 xsgU6mJkMcnOdewAyzZnKWxqLt4LvzPf45cd3qB1PvmglLCYo+fgfWrZz0EFaAt0uP/n
 C514jzY7W6Xc5Y/7foUlAmJeF9yO1vUx+7J9Dz9JIHyL2T/fPUefVQfmdhEaDE563eyU
 6rx6iVy3BtpwDWNv57rEvuFBQw5rXkL4tpJKFGnf5ieCEH2VRu0cfAduSP6J7lH8ohjU
 GLO5dI1qlNN7rnE9ql2zIG2vqhXjrpv/JsVbeQfYvcSBdmziME8Z8Tr5Myd1HpoWA8V1
 6bgw==
X-Gm-Message-State: AOAM531WWd7KKy4nrqAjP4MMeqCnp6n3ypkO+3ds6knYhGAQd2F2uV3O
 ysHrKgeURAWQDVD3XodyUY8=
X-Google-Smtp-Source: ABdhPJzWuxzny4VEzZk7kyZgVllaH8qgykh/x7dK1QbbnOEdvp/AJysSqO4Tl7jOP+pF5AakrD4JFw==
X-Received: by 2002:a63:e443:: with SMTP id i3mr11903574pgk.114.1620417431570; 
 Fri, 07 May 2021 12:57:11 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id f1sm12312498pjt.50.2021.05.07.12.57.10
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 May 2021 12:57:10 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Sat,  8 May 2021 03:57:03 +0800
Message-Id: <c7d752b5522360de0a6886202c59fe49524a9fda.1620417423.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.179 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.179 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lf6b7-00B16v-6W
Subject: [tipc-discussion] [PATCH net] tipc: skb_linearize the head skb when
 reassembling msgs
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
Cc: kuba@kernel.org, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

It's not a good idea to append the frag skb to a skb's frag_list if
the frag_list already has skbs from elsewhere, such as this skb was
created by pskb_copy() where the frag_list was cloned (all the skbs
in it were skb_get'ed) and shared by multiple skbs.

However, the new appended frag skb should have been only seen by the
current skb. Otherwise, it will cause use after free crashes as this
appended frag skb are seen by multiple skbs but it only got skb_get
called once.

The same thing happens with a skb updated by pskb_may_pull() with a
skb_cloned skb. Li Shuang has reported quite a few crashes caused
by this when doing testing over macvlan devices:

  [] kernel BUG at net/core/skbuff.c:1970!
  [] Call Trace:
  []  skb_clone+0x4d/0xb0
  []  macvlan_broadcast+0xd8/0x160 [macvlan]
  []  macvlan_process_broadcast+0x148/0x150 [macvlan]
  []  process_one_work+0x1a7/0x360
  []  worker_thread+0x30/0x390

  [] kernel BUG at mm/usercopy.c:102!
  [] Call Trace:
  []  __check_heap_object+0xd3/0x100
  []  __check_object_size+0xff/0x16b
  []  simple_copy_to_iter+0x1c/0x30
  []  __skb_datagram_iter+0x7d/0x310
  []  __skb_datagram_iter+0x2a5/0x310
  []  skb_copy_datagram_iter+0x3b/0x90
  []  tipc_recvmsg+0x14a/0x3a0 [tipc]
  []  ____sys_recvmsg+0x91/0x150
  []  ___sys_recvmsg+0x7b/0xc0

  [] kernel BUG at mm/slub.c:305!
  [] Call Trace:
  []  <IRQ>
  []  kmem_cache_free+0x3ff/0x400
  []  __netif_receive_skb_core+0x12c/0xc40
  []  ? kmem_cache_alloc+0x12e/0x270
  []  netif_receive_skb_internal+0x3d/0xb0
  []  ? get_rx_page_info+0x8e/0xa0 [be2net]
  []  be_poll+0x6ef/0xd00 [be2net]
  []  ? irq_exit+0x4f/0x100
  []  net_rx_action+0x149/0x3b0

  ...

This patch is to fix it by linearizing the head skb if it has frag_list
set in tipc_buf_append(). Note that we choose to do this before calling
skb_unshare(), as __skb_linearize() will avoid skb_copy(). Also, we can
not just drop the frag_list either as the early time.

Fixes: 45c8b7b175ce ("tipc: allow non-linear first fragment buffer")
Reported-by: Li Shuang <shuali@redhat.com>
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/msg.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 3f0a253..ce6ab54 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -149,18 +149,13 @@ int tipc_buf_append(struct sk_buff **headbuf, struct sk_buff **buf)
 		if (unlikely(head))
 			goto err;
 		*buf = NULL;
+		if (skb_has_frag_list(frag) && __skb_linearize(frag))
+			goto err;
 		frag = skb_unshare(frag, GFP_ATOMIC);
 		if (unlikely(!frag))
 			goto err;
 		head = *headbuf = frag;
 		TIPC_SKB_CB(head)->tail = NULL;
-		if (skb_is_nonlinear(head)) {
-			skb_walk_frags(head, tail) {
-				TIPC_SKB_CB(head)->tail = tail;
-			}
-		} else {
-			skb_frag_list_init(head);
-		}
 		return 0;
 	}
 
-- 
2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
