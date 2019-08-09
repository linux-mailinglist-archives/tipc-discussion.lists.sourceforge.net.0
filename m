Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDBB872F0
	for <lists+tipc-discussion@lfdr.de>; Fri,  9 Aug 2019 09:29:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hvzL3-0003dx-9v; Fri, 09 Aug 2019 07:29:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1hvzL1-0003dk-33
 for tipc-discussion@lists.sourceforge.net; Fri, 09 Aug 2019 07:29:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RLgxWqUZrC2Qh3UiRW3qEJtIPFI3EfVgQ9ax2w+svL8=; b=PyDhc3VDi6+DmFscnQIoUS8FKt
 GGcw868fwKlkMecg0OtDbjSTEib0yC4skAnu2UxvN7KL3FTFFvXpR0CXaTXgLPhCknJkBA3DKrs9u
 Am46at6mOeVvjbo2KQoTBE7N17Jzd8XXmtxfAIP5Cz/TVxQQtgqi/lS7yaD8wNnCMNZA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RLgxWqUZrC2Qh3UiRW3qEJtIPFI3EfVgQ9ax2w+svL8=; b=eV+0SXs4kOoMtkKZAZcmvzJ02d
 33VnZzKbtWO7wdWPrjUaJfXoiC89ce8g1Vmx2fNt/qeQX3MBvyo51fAreOr7EgDfNA/7VucAzElMu
 /bBJZFx/DSmvJwDjaZXVH17HUEHpQp9GYV7+wQqK1HrIZQ3EnCj3vPLNkV3HJOiTWpRs=;
Received: from mail.windriver.com ([147.11.1.11])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.90_1) id 1hvzKx-00G60I-8O
 for tipc-discussion@lists.sourceforge.net; Fri, 09 Aug 2019 07:29:23 +0000
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
 by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x797T7d1028596
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Fri, 9 Aug 2019 00:29:07 -0700 (PDT)
Received: from pek-yxue-d1.wrs.com (128.224.155.90) by ALA-HCB.corp.ad.wrs.com
 (147.11.189.41) with Microsoft SMTP Server id 14.3.468.0;
 Fri, 9 Aug 2019 00:28:59 -0700
From: Ying Xue <ying.xue@windriver.com>
To: <davem@davemloft.net>, <netdev@vger.kernel.org>
Date: Fri, 9 Aug 2019 15:16:56 +0800
Message-ID: <1565335017-21302-3-git-send-email-ying.xue@windriver.com>
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
 for more information. [URIs: appspotmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hvzKx-00G60I-8O
Subject: [tipc-discussion] [PATCH 2/3] tipc: fix memory leak issue
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

syzbot found the following memory leak issue:

[   72.286706][ T7064] kmemleak: 1 new suspected memory leaks (see /sys/kernel/debug/kmemleak)
BUG: memory leak
unreferenced object 0xffff888122bca200 (size 128):
  comm "syz-executor232", pid 7065, jiffies 4294943817 (age 8.880s)
  hex dump (first 32 bytes):
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
    00 00 00 00 00 00 00 00 18 a2 bc 22 81 88 ff ff  ..........."....
  backtrace:
    [<000000005bada299>] kmem_cache_alloc_trace+0x145/0x2c0
    [<00000000e7bcdc9f>] tipc_group_create_member+0x3c/0x190
    [<0000000005f56f40>] tipc_group_add_member+0x34/0x40
    [<0000000044406683>] tipc_nametbl_build_group+0x9b/0xf0
    [<000000009f71e803>] tipc_setsockopt+0x170/0x490
    [<000000007f61cbc2>] __sys_setsockopt+0x10f/0x220
    [<00000000cc630372>] __x64_sys_setsockopt+0x26/0x30
    [<00000000ec30be33>] do_syscall_64+0x76/0x1a0
    [<00000000271be3e6>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

Reported-by: syzbot+f95d90c454864b3b5bc9@syzkaller.appspotmail.com
Signed-off-by: Hillf Danton <hdanton@sina.com>
Signed-off-by: Ying Xue <ying.xue@windriver.com>
---
 net/tipc/group.c | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/net/tipc/group.c b/net/tipc/group.c
index 5f98d38..cbc540a 100644
--- a/net/tipc/group.c
+++ b/net/tipc/group.c
@@ -273,8 +273,8 @@ static struct tipc_member *tipc_group_find_node(struct tipc_group *grp,
 	return NULL;
 }
 
-static void tipc_group_add_to_tree(struct tipc_group *grp,
-				   struct tipc_member *m)
+struct tipc_member *tipc_group_add_to_tree(struct tipc_group *grp,
+					   struct tipc_member *m)
 {
 	u64 nkey, key = (u64)m->node << 32 | m->port;
 	struct rb_node **n, *parent = NULL;
@@ -282,7 +282,6 @@ static void tipc_group_add_to_tree(struct tipc_group *grp,
 
 	n = &grp->members.rb_node;
 	while (*n) {
-		tmp = container_of(*n, struct tipc_member, tree_node);
 		parent = *n;
 		tmp = container_of(parent, struct tipc_member, tree_node);
 		nkey = (u64)tmp->node << 32 | tmp->port;
@@ -291,17 +290,18 @@ static void tipc_group_add_to_tree(struct tipc_group *grp,
 		else if (key > nkey)
 			n = &(*n)->rb_right;
 		else
-			return;
+			return tmp;
 	}
 	rb_link_node(&m->tree_node, parent, n);
 	rb_insert_color(&m->tree_node, &grp->members);
+	return m;
 }
 
 static struct tipc_member *tipc_group_create_member(struct tipc_group *grp,
 						    u32 node, u32 port,
 						    u32 instance, int state)
 {
-	struct tipc_member *m;
+	struct tipc_member *m, *n;
 
 	m = kzalloc(sizeof(*m), GFP_ATOMIC);
 	if (!m)
@@ -315,10 +315,14 @@ static struct tipc_member *tipc_group_create_member(struct tipc_group *grp,
 	m->instance = instance;
 	m->bc_acked = grp->bc_snd_nxt - 1;
 	grp->member_cnt++;
-	tipc_group_add_to_tree(grp, m);
-	tipc_nlist_add(&grp->dests, m->node);
-	m->state = state;
-	return m;
+	n = tipc_group_add_to_tree(grp, m);
+	if (n == m) {
+		tipc_nlist_add(&grp->dests, m->node);
+		m->state = state;
+	} else {
+		kfree(m);
+	}
+	return n;
 }
 
 void tipc_group_add_member(struct tipc_group *grp, u32 node,
-- 
2.7.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
