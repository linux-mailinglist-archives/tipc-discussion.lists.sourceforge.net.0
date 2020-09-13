Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0A0267F56
	for <lists+tipc-discussion@lfdr.de>; Sun, 13 Sep 2020 13:38:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kHQKY-00052V-8e; Sun, 13 Sep 2020 11:38:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1kHQKX-00052C-3w
 for tipc-discussion@lists.sourceforge.net; Sun, 13 Sep 2020 11:38:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O3SsmOzr+fbC5y019x+72fktAEhgHZsYFbWAdfH2+6I=; b=K4pPNzWQylLtlVsFR5MuVulN1u
 Zw28rJLWkNsGCnu1x1zKbGMARz9dXP7yCBwbaDxkokz74Z6eP3TWn0VQ3Er39LcGoR5eKp5Gr9ofJ
 qp+un//WLSzZAbNfiSLRP4agX7cYULkUusNyi4eqlznHPrhdlLT2iZpcEtN/lCADriDQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O3SsmOzr+fbC5y019x+72fktAEhgHZsYFbWAdfH2+6I=; b=W5LGWJugkFTKUSxtwIkq4M2+/X
 InBl064hI8bAUKPCZ3nD92rXwnivB/oQDI1hHSaaoM1Q0l+DZbc15qSP76MaSb+j2k8gTGc+GLLJV
 LyVAbgwM1CtExh5QmbmXAaX7g1kz9c4gsTKEhvErOsMW/S0Mg6a+JCWwnBx4WetdhHaY=;
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kHQKO-007eHv-N6
 for tipc-discussion@lists.sourceforge.net; Sun, 13 Sep 2020 11:38:01 +0000
Received: by mail-pl1-f195.google.com with SMTP id m15so3146067pls.8
 for <tipc-discussion@lists.sourceforge.net>;
 Sun, 13 Sep 2020 04:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=O3SsmOzr+fbC5y019x+72fktAEhgHZsYFbWAdfH2+6I=;
 b=EEdOUN6E7KCLSY06sJbazMzdA60BCmFgnqX9Bep1h5357CXuV64s31cxxaOvrcCyBS
 UUvOW2Hl2YJLuUIxNpEKlZ0xXGsqmW6Ho1mKH4xUOUeHLsl+Kv0fL/a4n8J/wCcFb6Yc
 Dsne8TCdbQOwjcFvVkD96vqcPkVk4nC/ZEISmH1fG3CuDf1WJoR4pUte8LT/R3+thyOn
 WkU51X3bTCw48X4VBoF8cPQdh0/3l+yWmxh3JSwlgMvFvC+gP9HdATBj+Dy+XTn6Ir9e
 NRRgcrkjpltQ0TLAJLoVlXsGU0Ufw7tSfAK2bPEmVdJUihr+LOih4JjR26R+fcrsTs1i
 gfCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=O3SsmOzr+fbC5y019x+72fktAEhgHZsYFbWAdfH2+6I=;
 b=D5Q/EQAPDKinlui5u4Oxtp5ZX7iMGwESNPq9dEW0z3SAgxxRqSof5c2Hmlv7KBHeqP
 sCWqs6Yzp5kyncPkeeiY4Yf0gZ2NUF44DBQ+hJLq2IVJa463Hg+QCUTbjHDtDeDpqgyR
 Vu22G68apOhm/qP0KCD75PnJZJE+fEMGA7slVQ0d/WNZ4U0YcqsU7eoulBzfmRQTObAj
 oF9DGsTgJ92RSLmhYjimA7B4UqH8Rc0FBG01Yax225DBsVKf7iEO+I0KBsS0CrJWwP9h
 sef2W8tFgpCJ0+q5gGz+C8C0T1m3drhJFBDlLAoNhCDqoB/sca0DxMmV6hto/kR9upGP
 c2JA==
X-Gm-Message-State: AOAM530g19GQUysgtDnpHzMIhACQWcmlwjJg7PDH9QeYSYDQ9JAzIEyO
 ag8+LE1bFaC/XaYJZ8b6H5g=
X-Google-Smtp-Source: ABdhPJyr9SQCUN52OEa7f/Sph/5HNWLw11AIKdMMui1WiVCv8F0swvzzDbVdRpgWYjI5GUe2OD23+Q==
X-Received: by 2002:a17:90b:a44:: with SMTP id
 gw4mr9280089pjb.26.1599997060023; 
 Sun, 13 Sep 2020 04:37:40 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id j18sm5837320pgm.30.2020.09.13.04.37.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 13 Sep 2020 04:37:39 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Sun, 13 Sep 2020 19:37:31 +0800
Message-Id: <0fcddb2bab6bde5632dcd4889961ebce1ec8bb8f.1599997051.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kHQKO-007eHv-N6
Subject: [tipc-discussion] [PATCH net] tipc: use skb_unshare() instead in
 tipc_buf_append()
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
Cc: davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

In tipc_buf_append() it may change skb's frag_list, and it causes
problems when this skb is cloned. skb_unclone() doesn't really
make this skb's flag_list available to change.

Shuang Li has reported an use-after-free issue because of this
when creating quite a few macvlan dev over the same dev, where
the broadcast packets will be cloned and go up to the stack:

 [ ] BUG: KASAN: use-after-free in pskb_expand_head+0x86d/0xea0
 [ ] Call Trace:
 [ ]  dump_stack+0x7c/0xb0
 [ ]  print_address_description.constprop.7+0x1a/0x220
 [ ]  kasan_report.cold.10+0x37/0x7c
 [ ]  check_memory_region+0x183/0x1e0
 [ ]  pskb_expand_head+0x86d/0xea0
 [ ]  process_backlog+0x1df/0x660
 [ ]  net_rx_action+0x3b4/0xc90
 [ ]
 [ ] Allocated by task 1786:
 [ ]  kmem_cache_alloc+0xbf/0x220
 [ ]  skb_clone+0x10a/0x300
 [ ]  macvlan_broadcast+0x2f6/0x590 [macvlan]
 [ ]  macvlan_process_broadcast+0x37c/0x516 [macvlan]
 [ ]  process_one_work+0x66a/0x1060
 [ ]  worker_thread+0x87/0xb10
 [ ]
 [ ] Freed by task 3253:
 [ ]  kmem_cache_free+0x82/0x2a0
 [ ]  skb_release_data+0x2c3/0x6e0
 [ ]  kfree_skb+0x78/0x1d0
 [ ]  tipc_recvmsg+0x3be/0xa40 [tipc]

So fix it by using skb_unshare() instead, which would create a new
skb for the cloned frag and it'll be safe to change its frag_list.
The similar things were also done in sctp_make_reassembled_event(),
which is using skb_copy().

Reported-by: Shuang Li <shuali@redhat.com>
Fixes: 37e22164a8a3 ("tipc: rename and move message reassembly function")
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/msg.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 848fae6..52e93ba 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -150,7 +150,8 @@ int tipc_buf_append(struct sk_buff **headbuf, struct sk_buff **buf)
 	if (fragid == FIRST_FRAGMENT) {
 		if (unlikely(head))
 			goto err;
-		if (unlikely(skb_unclone(frag, GFP_ATOMIC)))
+		frag = skb_unshare(frag, GFP_ATOMIC);
+		if (unlikely(!frag))
 			goto err;
 		head = *headbuf = frag;
 		*buf = NULL;
-- 
2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
