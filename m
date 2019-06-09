Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D791F3AB34
	for <lists+tipc-discussion@lfdr.de>; Sun,  9 Jun 2019 20:45:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ha2oG-0002ik-UI; Sun, 09 Jun 2019 18:44:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1ha2oF-0002iY-IE
 for tipc-discussion@lists.sourceforge.net; Sun, 09 Jun 2019 18:44:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Da88wBTs9LOEdvHpH2F2PYZaKc1cITGuLPz23cQj6Ag=; b=fgWPKt2+pnIr0FInXd5kzoqQkn
 jJKMCYSV07FRlnNGEe2WBtpqDE+7Tak8TK/zllqWdNAQjiuPuRUHExSRm7uPZ0ovlxcoL3SBtUhrs
 aEv7njetC/3v3gquHTOjgSrshr+pnWcBHR7sh3UWRgZgoYGAUQ1BKe74cT1DjnBoCvPY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Da88wBTs9LOEdvHpH2F2PYZaKc1cITGuLPz23cQj6Ag=; b=ROan5VHIhg6fzJmEFbyWyBLOU4
 +DJW2Ub9PHZFA+l+EtjYTmEu3JBsnp9cUD/b24gq3AgCac1wgoMS7CpcHkXpGcasDSHvgR9/aHPIE
 4WHBnBALPlZ4JDsplktSXIv+R2Lr1k0v8rVtzE5Uutc8Kfxa67vyRIa+hCX4jEB78SaU=;
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1ha2oD-004u6G-7m
 for tipc-discussion@lists.sourceforge.net; Sun, 09 Jun 2019 18:44:50 +0000
Received: by mail-wr1-f67.google.com with SMTP id m3so6967742wrv.2
 for <tipc-discussion@lists.sourceforge.net>;
 Sun, 09 Jun 2019 11:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Da88wBTs9LOEdvHpH2F2PYZaKc1cITGuLPz23cQj6Ag=;
 b=h0Y28na4yaGSKJOIZYvb5yRmSHL+BSW5/OYxulXPUMGZozJHavvZTrcnT1OPF4U8Xb
 umOrC40tx/FkQ6BIWEoIW6cFcCuHFt8S5Io+8JXpkpr6Qr1PyQIoEcGLovmDDvzNymE9
 CNJ9L362LGrwzUBET0Ik8cvX+ULEqYFLBQ7lSKemj7wP8tejb8ylyOJxHrS49xgzKeEV
 UmFV0yhmm8j12+2kw/9EfsjhK6BPxEHAuuzov9g3kRMZ5f1FdQizLBPv4NQaY6WioHOz
 IENoLihYeZqjY7CvsE8ixOZrEwptSvpxzXUlSP+Kv+xVMr8uqxOENokQaQKPuWFoclei
 WeGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Da88wBTs9LOEdvHpH2F2PYZaKc1cITGuLPz23cQj6Ag=;
 b=QSX13vZQW6cANgrL9hVwbwrL/2AF7FMnsZay46HOVj3jsVwQq2dbwJU/raVuthMEo4
 f5KTgme/4WXG+srujfa/AGqW2QXYwngGHFcrMkCkVhZPa0N2/TcjejP62yfMjDsC6xS1
 2tUz8JY4JLVNamkOlNlbOQSmww9NxkY90OycUDH0rISVKWcGzOxpUHVc/NbQPG2dzbjo
 0eTpeQcKFimhutD++NUWgBCmAcjgAa/AK2eu7nGH9hx024Nmcozuvakx2DLEzXiExjO1
 lpHFM1Pu8MJTwQeF03LcuTknHr4L3ZceBE8G+Yoj5fD6WJ77kmdpfTi2z2Ek9d3vDOQZ
 fWvA==
X-Gm-Message-State: APjAAAVzjrGDEhuEHSFwLIxhLWTK9VNiGOOrxw3TvbEu9Q3UF5Y3HRKU
 +CsIY1jv9qFzn7GTdY9hBnWJSG/QgoyKd6BDTmU=
X-Google-Smtp-Source: APXvYqwp9fw8BNZ8G6/ahEMiAGVzOVt0NDgzKLcIgA+sQlsmmP6spzQBpRXteWAuZFWqs8Nl83+DjDIokSPKvT0A4h4=
X-Received: by 2002:adf:fb81:: with SMTP id a1mr2702407wrr.329.1560105881662; 
 Sun, 09 Jun 2019 11:44:41 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000000c060589a8bc66@google.com>
In-Reply-To: <000000000000000c060589a8bc66@google.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Mon, 10 Jun 2019 02:44:30 +0800
Message-ID: <CADvbK_cMohjd3U=8H8ECT74rK85Tjy1FZYAXQQ_CsWgFq3c5gA@mail.gmail.com>
To: syzbot <syzbot+78fbe679c8ca8d264a8d@syzkaller.appspotmail.com>
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ha2oD-004u6G-7m
Subject: Re: [tipc-discussion] memory leak in tipc_buf_acquire
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
Cc: network dev <netdev@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, tipc-discussion@lists.sourceforge.net,
 davem <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Sat, May 25, 2019 at 5:18 AM syzbot
<syzbot+78fbe679c8ca8d264a8d@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following crash on:
>
> HEAD commit:    4dde821e Merge tag 'xfs-5.2-fixes-1' of git://git.kernel.o..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=107db73aa00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=61dd9e15a761691d
> dashboard link: https://syzkaller.appspot.com/bug?extid=78fbe679c8ca8d264a8d
> compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=162bd84ca00000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=160c605ca00000
>
Looks we need to purge each member's deferredq list in tipc_group_delete():
diff --git a/net/tipc/group.c b/net/tipc/group.c
index 992be61..23823eb 100644
--- a/net/tipc/group.c
+++ b/net/tipc/group.c
@@ -218,6 +218,7 @@ void tipc_group_delete(struct net *net, struct
tipc_group *grp)

  rbtree_postorder_for_each_entry_safe(m, tmp, tree, tree_node) {
  tipc_group_proto_xmit(grp, m, GRP_LEAVE_MSG, &xmitq);
+ __skb_queue_purge(&m->deferredq);
  list_del(&m->list);
  kfree(m);
  }

> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+78fbe679c8ca8d264a8d@syzkaller.appspotmail.com
>
> type=1400 audit(1558701681.775:36): avc:  denied  { map } for  pid=7128
> comm="syz-executor987" path="/root/syz-executor987656147" dev="sda1"
> ino=15900 scontext=unconfined_u:system_r:insmod_t:s0-s0:c0.c1023
> tcontext=unconfined_u:object_r:user_home_t:s0 tclass=file permissive=1
> executing program
> executing program
> executing program
> executing program
> BUG: memory leak
> unreferenced object 0xffff88810df83c00 (size 512):
>    comm "softirq", pid 0, jiffies 4294942354 (age 19.830s)
>    hex dump (first 32 bytes):
>      38 1a 0d 0f 81 88 ff ff 38 1a 0d 0f 81 88 ff ff  8.......8.......
>      00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
>    backtrace:
>      [<000000009375ee42>] kmemleak_alloc_recursive
> include/linux/kmemleak.h:55 [inline]
>      [<000000009375ee42>] slab_post_alloc_hook mm/slab.h:439 [inline]
>      [<000000009375ee42>] slab_alloc_node mm/slab.c:3269 [inline]
>      [<000000009375ee42>] kmem_cache_alloc_node+0x153/0x2a0 mm/slab.c:3579
>      [<000000004c563922>] __alloc_skb+0x6e/0x210 net/core/skbuff.c:198
>      [<00000000ec87bfa1>] alloc_skb_fclone include/linux/skbuff.h:1107
> [inline]
>      [<00000000ec87bfa1>] tipc_buf_acquire+0x2f/0x80 net/tipc/msg.c:66
>      [<00000000d151ef84>] tipc_msg_create+0x37/0xe0 net/tipc/msg.c:98
>      [<000000008bb437b0>] tipc_group_create_event+0xb3/0x1b0
> net/tipc/group.c:679
>      [<00000000947b1d0f>] tipc_group_proto_rcv+0x569/0x640
> net/tipc/group.c:781
>      [<00000000b75ab039>] tipc_sk_proto_rcv net/tipc/socket.c:1996 [inline]
>      [<00000000b75ab039>] tipc_sk_filter_rcv+0x9ac/0xf20
> net/tipc/socket.c:2163
>      [<000000000dab7a6c>] tipc_sk_enqueue net/tipc/socket.c:2255 [inline]
>      [<000000000dab7a6c>] tipc_sk_rcv+0x494/0x8a0 net/tipc/socket.c:2306
>      [<00000000023a7ddd>] tipc_node_xmit+0x196/0x1f0 net/tipc/node.c:1442
>      [<00000000337dd9eb>] tipc_node_xmit_skb net/tipc/node.c:1491 [inline]
>      [<00000000337dd9eb>] tipc_node_distr_xmit+0x7d/0x120
> net/tipc/node.c:1506
>      [<00000000b6375182>] tipc_group_delete+0xe6/0x130 net/tipc/group.c:224
>      [<000000000361ba2b>] tipc_sk_leave+0x57/0xb0 net/tipc/socket.c:2925
>      [<000000009df90505>] tipc_release+0x7b/0x5e0 net/tipc/socket.c:584
>      [<000000009f3189da>] __sock_release+0x4b/0xe0 net/socket.c:607
>      [<00000000d3568ee0>] sock_close+0x1b/0x30 net/socket.c:1279
>      [<00000000266a6215>] __fput+0xed/0x300 fs/file_table.c:280
>
> BUG: memory leak
> unreferenced object 0xffff888111895400 (size 1024):
>    comm "softirq", pid 0, jiffies 4294942354 (age 19.830s)
>    hex dump (first 32 bytes):
>      00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
>      00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
>    backtrace:
>      [<00000000e2e2855e>] kmemleak_alloc_recursive
> include/linux/kmemleak.h:55 [inline]
>      [<00000000e2e2855e>] slab_post_alloc_hook mm/slab.h:439 [inline]
>      [<00000000e2e2855e>] slab_alloc_node mm/slab.c:3269 [inline]
>      [<00000000e2e2855e>] kmem_cache_alloc_node_trace+0x15b/0x2a0
> mm/slab.c:3597
>      [<00000000a5030ce7>] __do_kmalloc_node mm/slab.c:3619 [inline]
>      [<00000000a5030ce7>] __kmalloc_node_track_caller+0x38/0x50
> mm/slab.c:3634
>      [<0000000039212451>] __kmalloc_reserve.isra.0+0x40/0xb0
> net/core/skbuff.c:142
>      [<00000000307cb4cf>] __alloc_skb+0xa0/0x210 net/core/skbuff.c:210
>      [<00000000ec87bfa1>] alloc_skb_fclone include/linux/skbuff.h:1107
> [inline]
>      [<00000000ec87bfa1>] tipc_buf_acquire+0x2f/0x80 net/tipc/msg.c:66
>      [<00000000d151ef84>] tipc_msg_create+0x37/0xe0 net/tipc/msg.c:98
>      [<000000008bb437b0>] tipc_group_create_event+0xb3/0x1b0
> net/tipc/group.c:679
>      [<00000000947b1d0f>] tipc_group_proto_rcv+0x569/0x640
> net/tipc/group.c:781
>      [<00000000b75ab039>] tipc_sk_proto_rcv net/tipc/socket.c:1996 [inline]
>      [<00000000b75ab039>] tipc_sk_filter_rcv+0x9ac/0xf20
> net/tipc/socket.c:2163
>      [<000000000dab7a6c>] tipc_sk_enqueue net/tipc/socket.c:2255 [inline]
>      [<000000000dab7a6c>] tipc_sk_rcv+0x494/0x8a0 net/tipc/socket.c:2306
>      [<00000000023a7ddd>] tipc_node_xmit+0x196/0x1f0 net/tipc/node.c:1442
>      [<00000000337dd9eb>] tipc_node_xmit_skb net/tipc/node.c:1491 [inline]
>      [<00000000337dd9eb>] tipc_node_distr_xmit+0x7d/0x120
> net/tipc/node.c:1506
>      [<00000000b6375182>] tipc_group_delete+0xe6/0x130 net/tipc/group.c:224
>      [<000000000361ba2b>] tipc_sk_leave+0x57/0xb0 net/tipc/socket.c:2925
>      [<000000009df90505>] tipc_release+0x7b/0x5e0 net/tipc/socket.c:584
>      [<000000009f3189da>] __sock_release+0x4b/0xe0 net/socket.c:607
>
> BUG: memory leak
> unreferenced object 0xffff88810e63de00 (size 512):
>    comm "softirq", pid 0, jiffies 4294943548 (age 7.890s)
>    hex dump (first 32 bytes):
>      38 10 0d 0f 81 88 ff ff 38 10 0d 0f 81 88 ff ff  8.......8.......
>      00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
>    backtrace:
>      [<000000009375ee42>] kmemleak_alloc_recursive
> include/linux/kmemleak.h:55 [inline]
>      [<000000009375ee42>] slab_post_alloc_hook mm/slab.h:439 [inline]
>      [<000000009375ee42>] slab_alloc_node mm/slab.c:3269 [inline]
>      [<000000009375ee42>] kmem_cache_alloc_node+0x153/0x2a0 mm/slab.c:3579
>      [<000000004c563922>] __alloc_skb+0x6e/0x210 net/core/skbuff.c:198
>      [<00000000ec87bfa1>] alloc_skb_fclone include/linux/skbuff.h:1107
> [inline]
>      [<00000000ec87bfa1>] tipc_buf_acquire+0x2f/0x80 net/tipc/msg.c:66
>      [<00000000d151ef84>] tipc_msg_create+0x37/0xe0 net/tipc/msg.c:98
>      [<000000008bb437b0>] tipc_group_create_event+0xb3/0x1b0
> net/tipc/group.c:679
>      [<00000000947b1d0f>] tipc_group_proto_rcv+0x569/0x640
> net/tipc/group.c:781
>      [<00000000b75ab039>] tipc_sk_proto_rcv net/tipc/socket.c:1996 [inline]
>      [<00000000b75ab039>] tipc_sk_filter_rcv+0x9ac/0xf20
> net/tipc/socket.c:2163
>      [<000000000dab7a6c>] tipc_sk_enqueue net/tipc/socket.c:2255 [inline]
>      [<000000000dab7a6c>] tipc_sk_rcv+0x494/0x8a0 net/tipc/socket.c:2306
>      [<00000000023a7ddd>] tipc_node_xmit+0x196/0x1f0 net/tipc/node.c:1442
>      [<00000000337dd9eb>] tipc_node_xmit_skb net/tipc/node.c:1491 [inline]
>      [<00000000337dd9eb>] tipc_node_distr_xmit+0x7d/0x120
> net/tipc/node.c:1506
>      [<00000000b6375182>] tipc_group_delete+0xe6/0x130 net/tipc/group.c:224
>      [<000000000361ba2b>] tipc_sk_leave+0x57/0xb0 net/tipc/socket.c:2925
>      [<000000009df90505>] tipc_release+0x7b/0x5e0 net/tipc/socket.c:584
>      [<000000009f3189da>] __sock_release+0x4b/0xe0 net/socket.c:607
>      [<00000000d3568ee0>] sock_close+0x1b/0x30 net/socket.c:1279
>      [<00000000266a6215>] __fput+0xed/0x300 fs/file_table.c:280
>
>
>
> ---
> This bug is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
>
> syzbot will keep track of this bug report. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> syzbot can test patches for this bug, for details see:
> https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
