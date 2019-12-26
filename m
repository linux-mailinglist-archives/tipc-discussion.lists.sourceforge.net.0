Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DDB12AB0A
	for <lists+tipc-discussion@lfdr.de>; Thu, 26 Dec 2019 09:43:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ikOkG-00039J-IG; Thu, 26 Dec 2019 08:43:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1ikOkD-000399-3V
 for tipc-discussion@lists.sourceforge.net; Thu, 26 Dec 2019 08:43:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FaVmPJUA3dcn04zt3Vw4ff6SJ/F+ru+PHkNaNWP80vw=; b=J6jSOJEuXWDOPt4B0EGTwRq/o5
 fln8BjsYOrvk2XYEUxnuC98O1OpwcZosQl5FnfaV6j9HbAGCuHM1KEH2QJQ4nUxhqIPPvL69EcaGA
 fRCHwghNFyz6dlcE3Shmy2GVmx3Vvz/HAoC+DihUmk9L5TYR1xpyvKcB7n/6s244cpzo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FaVmPJUA3dcn04zt3Vw4ff6SJ/F+ru+PHkNaNWP80vw=; b=k
 Znt2DU7k0IZAESwEt+16OSrTJr5HNWJdpdBROCTlLvrBwszlI8LOmxQveBkLQosZByEIxJ4nyGowZ
 gDOTjdcmh0vCcciE3N7iDBTt9FVWEP2mqN7xj8jjyWTEX9LVIX8w3OoqgCHy6ZGEWAVa1TeFi+L4h
 Uur19vzfPknc8c/w=;
Received: from mail.windriver.com ([147.11.1.11])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1ikOkB-00FXlZ-DI
 for tipc-discussion@lists.sourceforge.net; Thu, 26 Dec 2019 08:43:45 +0000
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
 [147.11.189.41])
 by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xBQ8hWGH010261
 (version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
 Thu, 26 Dec 2019 00:43:32 -0800 (PST)
Received: from pek-yxue-d1.wrs.com (128.224.155.99) by ALA-HCB.corp.ad.wrs.com
 (147.11.189.41) with Microsoft SMTP Server id 14.3.468.0;
 Thu, 26 Dec 2019 00:43:19 -0800
From: Ying Xue <ying.xue@windriver.com>
To: <jon.maloy@ericsson.com>, <maloy@donjonn.com>
Date: Thu, 26 Dec 2019 16:29:51 +0800
Message-ID: <1577348991-30389-1-git-send-email-ying.xue@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [147.11.1.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ikOkB-00FXlZ-DI
Subject: [tipc-discussion] [PATCH] tipc: eliminate KMSAN: uninit-value in
 __tipc_nl_compat_dumpit error
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
Cc: tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

syzbot found the following crash on:
=====================================================
BUG: KMSAN: uninit-value in __nlmsg_parse include/net/netlink.h:661 [inline]
BUG: KMSAN: uninit-value in nlmsg_parse_deprecated
include/net/netlink.h:706 [inline]
BUG: KMSAN: uninit-value in __tipc_nl_compat_dumpit+0x553/0x11e0
net/tipc/netlink_compat.c:215
CPU: 0 PID: 12425 Comm: syz-executor062 Not tainted 5.5.0-rc1-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
Google 01/01/2011
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0x1c9/0x220 lib/dump_stack.c:118
  kmsan_report+0x128/0x220 mm/kmsan/kmsan_report.c:108
  __msan_warning+0x57/0xa0 mm/kmsan/kmsan_instr.c:245
  __nlmsg_parse include/net/netlink.h:661 [inline]
  nlmsg_parse_deprecated include/net/netlink.h:706 [inline]
  __tipc_nl_compat_dumpit+0x553/0x11e0 net/tipc/netlink_compat.c:215
  tipc_nl_compat_dumpit+0x761/0x910 net/tipc/netlink_compat.c:308
  tipc_nl_compat_handle net/tipc/netlink_compat.c:1252 [inline]
  tipc_nl_compat_recv+0x12e9/0x2870 net/tipc/netlink_compat.c:1311
  genl_family_rcv_msg_doit net/netlink/genetlink.c:672 [inline]
  genl_family_rcv_msg net/netlink/genetlink.c:717 [inline]
  genl_rcv_msg+0x1dd0/0x23a0 net/netlink/genetlink.c:734
  netlink_rcv_skb+0x431/0x620 net/netlink/af_netlink.c:2477
  genl_rcv+0x63/0x80 net/netlink/genetlink.c:745
  netlink_unicast_kernel net/netlink/af_netlink.c:1302 [inline]
  netlink_unicast+0xfa0/0x1100 net/netlink/af_netlink.c:1328
  netlink_sendmsg+0x11f0/0x1480 net/netlink/af_netlink.c:1917
  sock_sendmsg_nosec net/socket.c:639 [inline]
  sock_sendmsg net/socket.c:659 [inline]
  ____sys_sendmsg+0x1362/0x13f0 net/socket.c:2330
  ___sys_sendmsg net/socket.c:2384 [inline]
  __sys_sendmsg+0x4f0/0x5e0 net/socket.c:2417
  __do_sys_sendmsg net/socket.c:2426 [inline]
  __se_sys_sendmsg+0x97/0xb0 net/socket.c:2424
  __x64_sys_sendmsg+0x4a/0x70 net/socket.c:2424
  do_syscall_64+0xb6/0x160 arch/x86/entry/common.c:295
  entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x444179
Code: 18 89 d0 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00 48 89 f8 48 89 f7
48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff
ff 0f 83 1b d8 fb ff c3 66 2e 0f 1f 84 00 00 00 00
RSP: 002b:00007ffd2d6409c8 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
RAX: ffffffffffffffda RBX: 00000000004002e0 RCX: 0000000000444179
RDX: 0000000000000000 RSI: 0000000020000140 RDI: 0000000000000003
RBP: 00000000006ce018 R08: 0000000000000000 R09: 00000000004002e0
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000401e20
R13: 0000000000401eb0 R14: 0000000000000000 R15: 0000000000000000

Uninit was created at:
  kmsan_save_stack_with_flags mm/kmsan/kmsan.c:149 [inline]
  kmsan_internal_poison_shadow+0x5c/0x110 mm/kmsan/kmsan.c:132
  kmsan_slab_alloc+0x8a/0xe0 mm/kmsan/kmsan_hooks.c:86
  slab_alloc_node mm/slub.c:2774 [inline]
  __kmalloc_node_track_caller+0xe47/0x11f0 mm/slub.c:4382
  __kmalloc_reserve net/core/skbuff.c:141 [inline]
  __alloc_skb+0x309/0xa50 net/core/skbuff.c:209
  alloc_skb include/linux/skbuff.h:1049 [inline]
  nlmsg_new include/net/netlink.h:888 [inline]
  tipc_nl_compat_dumpit+0x6e4/0x910 net/tipc/netlink_compat.c:301
  tipc_nl_compat_handle net/tipc/netlink_compat.c:1252 [inline]
  tipc_nl_compat_recv+0x12e9/0x2870 net/tipc/netlink_compat.c:1311
  genl_family_rcv_msg_doit net/netlink/genetlink.c:672 [inline]
  genl_family_rcv_msg net/netlink/genetlink.c:717 [inline]
  genl_rcv_msg+0x1dd0/0x23a0 net/netlink/genetlink.c:734
  netlink_rcv_skb+0x431/0x620 net/netlink/af_netlink.c:2477
  genl_rcv+0x63/0x80 net/netlink/genetlink.c:745
  netlink_unicast_kernel net/netlink/af_netlink.c:1302 [inline]
  netlink_unicast+0xfa0/0x1100 net/netlink/af_netlink.c:1328
  netlink_sendmsg+0x11f0/0x1480 net/netlink/af_netlink.c:1917
  sock_sendmsg_nosec net/socket.c:639 [inline]
  sock_sendmsg net/socket.c:659 [inline]
  ____sys_sendmsg+0x1362/0x13f0 net/socket.c:2330
  ___sys_sendmsg net/socket.c:2384 [inline]
  __sys_sendmsg+0x4f0/0x5e0 net/socket.c:2417
  __do_sys_sendmsg net/socket.c:2426 [inline]
  __se_sys_sendmsg+0x97/0xb0 net/socket.c:2424
  __x64_sys_sendmsg+0x4a/0x70 net/socket.c:2424
  do_syscall_64+0xb6/0x160 arch/x86/entry/common.c:295
  entry_SYSCALL_64_after_hwframe+0x44/0xa9
=====================================================

The complaint above occurred because the memory region pointed by attrbuf
variable was not initialized. To eliminate this warning, we use kcalloc()
rather than kmalloc_array() to allocate memory for attrbuf.

Reported-by: syzbot+b1fd2bf2c89d8407e15f@syzkaller.appspotmail.com
Signed-off-by: Ying Xue <ying.xue@windriver.com>
---
 net/tipc/netlink_compat.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/tipc/netlink_compat.c b/net/tipc/netlink_compat.c
index 0254bb7..2175163 100644
--- a/net/tipc/netlink_compat.c
+++ b/net/tipc/netlink_compat.c
@@ -204,8 +204,8 @@ static int __tipc_nl_compat_dumpit(struct tipc_nl_compat_cmd_dump *cmd,
 		return -ENOMEM;
 	}
 
-	attrbuf = kmalloc_array(tipc_genl_family.maxattr + 1,
-				sizeof(struct nlattr *), GFP_KERNEL);
+	attrbuf = kcalloc(tipc_genl_family.maxattr + 1,
+			  sizeof(struct nlattr *), GFP_KERNEL);
 	if (!attrbuf) {
 		err = -ENOMEM;
 		goto err_out;
-- 
2.7.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
