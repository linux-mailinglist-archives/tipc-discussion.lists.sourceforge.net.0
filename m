Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B99872F7
	for <lists+tipc-discussion@lfdr.de>; Fri,  9 Aug 2019 09:30:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hvzLe-0002zB-FR; Fri, 09 Aug 2019 07:30:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1hvzLd-0002z0-SH
 for tipc-discussion@lists.sourceforge.net; Fri, 09 Aug 2019 07:30:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=def7mrpUJhxaJx5/C8iJM9/XPHGwX14pbkP5P1pCg0k=; b=V8ULo933CuGGHiQ3FzCJKOSk9I
 KGq1KtfLOstWrbCaAFW4+gVsA2AyPYmBpLTjNj8rl8iEvgSA9fIl80vcRMnNoe2nGB1S5LAE+DdwA
 DZrpWhllqD4Z8evaCU8QLBKYoSoH3+MyoUq1ok3KuUy5bHyPrHTYFB+bYxkfbCaOPCTM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=def7mrpUJhxaJx5/C8iJM9/XPHGwX14pbkP5P1pCg0k=; b=iOwWy7rbhvs0S4KUXLDQ0LQmHz
 mHW7OektD4Geqkeq/ED999Lbvjr4RIJkqojlP8r9D/N/dU1VSk5wQ1+9n9mxmerEYmMEQIf1QASxi
 HIzB3OIpo3aGN9UM8GBsWhovb/icgKAplZuuknjUxhXmoZal68SGtm/Zd3zK7jt18Tbs=;
Received: from mail5.windriver.com ([192.103.53.11] helo=mail5.wrs.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hvzLb-00G62N-T3
 for tipc-discussion@lists.sourceforge.net; Fri, 09 Aug 2019 07:30:01 +0000
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
 [147.11.189.41])
 by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x797SGKJ017009
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Fri, 9 Aug 2019 00:28:57 -0700
Received: from pek-yxue-d1.wrs.com (128.224.155.90) by ALA-HCB.corp.ad.wrs.com
 (147.11.189.41) with Microsoft SMTP Server id 14.3.468.0;
 Fri, 9 Aug 2019 00:28:41 -0700
From: Ying Xue <ying.xue@windriver.com>
To: <davem@davemloft.net>, <netdev@vger.kernel.org>
Date: Fri, 9 Aug 2019 15:16:55 +0800
Message-ID: <1565335017-21302-2-git-send-email-ying.xue@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565335017-21302-1-git-send-email-ying.xue@windriver.com>
References: <1565335017-21302-1-git-send-email-ying.xue@windriver.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sina.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hvzLb-00G62N-T3
Subject: [tipc-discussion] [PATCH 1/3] tipc: fix memory leak issue
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
Cc: syzkaller-bugs@googlegroups.com, hdanton@sina.com,
 tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

syzbot found the following memory leak:

[   68.602482][ T7130] kmemleak: 2 new suspected memory leaks (see /sys/kernel/debug/kmemleak)
BUG: memory leak
unreferenced object 0xffff88810df83c00 (size 512):
  comm "softirq", pid 0, jiffies 4294942354 (age 19.830s)
  hex dump (first 32 bytes):
    38 1a 0d 0f 81 88 ff ff 38 1a 0d 0f 81 88 ff ff  8.......8.......
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
  backtrace:
    [<000000009375ee42>] kmem_cache_alloc_node+0x153/0x2a0
    [<000000004c563922>] __alloc_skb+0x6e/0x210
    [<00000000ec87bfa1>] tipc_buf_acquire+0x2f/0x80
    [<00000000d151ef84>] tipc_msg_create+0x37/0xe0
    [<000000008bb437b0>] tipc_group_create_event+0xb3/0x1b0
    [<00000000947b1d0f>] tipc_group_proto_rcv+0x569/0x640
    [<00000000b75ab039>] tipc_sk_filter_rcv+0x9ac/0xf20
    [<000000000dab7a6c>] tipc_sk_rcv+0x494/0x8a0
    [<00000000023a7ddd>] tipc_node_xmit+0x196/0x1f0
    [<00000000337dd9eb>] tipc_node_distr_xmit+0x7d/0x120
    [<00000000b6375182>] tipc_group_delete+0xe6/0x130
    [<000000000361ba2b>] tipc_sk_leave+0x57/0xb0
    [<000000009df90505>] tipc_release+0x7b/0x5e0
    [<000000009f3189da>] __sock_release+0x4b/0xe0
    [<00000000d3568ee0>] sock_close+0x1b/0x30
    [<00000000266a6215>] __fput+0xed/0x300

Reported-by: syzbot+78fbe679c8ca8d264a8d@syzkaller.appspotmail.com
Signed-off-by: Hillf Danton <hdanton@sina.com>
Signed-off-by: Ying Xue <ying.xue@windriver.com>
---
 net/tipc/node.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/net/tipc/node.c b/net/tipc/node.c
index 7ca0190..d1852fc 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -1469,10 +1469,13 @@ int tipc_node_xmit(struct net *net, struct sk_buff_head *list,
 	spin_unlock_bh(&le->lock);
 	tipc_node_read_unlock(n);
 
-	if (unlikely(rc == -ENOBUFS))
+	if (unlikely(rc == -ENOBUFS)) {
 		tipc_node_link_down(n, bearer_id, false);
-	else
+		skb_queue_purge(list);
+		skb_queue_purge(&xmitq);
+	} else {
 		tipc_bearer_xmit(net, bearer_id, &xmitq, &le->maddr);
+	}
 
 	tipc_node_put(n);
 
-- 
2.7.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
