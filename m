Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4E53D3191
	for <lists+tipc-discussion@lfdr.de>; Fri, 23 Jul 2021 04:22:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m6kpp-00030B-Jh; Fri, 23 Jul 2021 02:22:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lucien.xin@gmail.com>) id 1m6kpn-000300-W2
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Jul 2021 02:22:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WuPMYirmoV9I5Att0oELf1y6k8RuoUeFw2T/kAQ60IQ=; b=UCWjJgImez40JfJa/QPq4/kohT
 56xBf+3124iRRyVEYslhhYVWAZWeBbC9vnxAUklNp6EM+FqbZUVFbBiNLS7rJH16bB55A/lcjoy1f
 e0bRUeA+IAyDt/iQwZ+ZciXDWcOjyWO+u0022q5GLTtzmfqR8w5YPnJ0hGdf1hEO90jc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WuPMYirmoV9I5Att0oELf1y6k8RuoUeFw2T/kAQ60IQ=; b=Ac7ZZtXdqoB0APajPDo89ijaU2
 UHxZ2qyiFNC5Evpn44ubmz7azaK3SS/aTv2Rm+I8Ls/+cwLCAoC8bZzHukWupRr0Zl+SPdaP6irh/
 8gfG0Sx90C8fWAxBDJ0VdcMcM9SiIFD7nX4yAw0ugwBGR5fTimQhuuskbiP4JaKGT2d4=;
Received: from mail-wm1-f44.google.com ([209.85.128.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m6kph-0000Hr-0G
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Jul 2021 02:22:43 +0000
Received: by mail-wm1-f44.google.com with SMTP id
 h24-20020a1ccc180000b029022e0571d1a0so705244wmb.5
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 22 Jul 2021 19:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WuPMYirmoV9I5Att0oELf1y6k8RuoUeFw2T/kAQ60IQ=;
 b=C5b5tut1SxsQeOvWwsTPnlnRRlzxNHfxQzrjIw0+/NrFz4i+rgAiu528D0S7/7k9Cy
 q+v5V+lWhSwpZe7a4mqcjelabVeP1y/GuUpzc/kOMTzbARkucHkSziS3oYFJqQJ0E3Vx
 qrVq3N06O2Kte2ntJ2ccn45KExrzyv8E9V5Ju6sVqXiolhRkPKintK4ZQ8NuJQbhAwdC
 XxaDREK7k4M1ujxvGr+9zxlYUe96Lha69H9TGh6uqMMUmTwi2rmxspCc3yyALjeV7WTO
 //j14X4rqB6BlwlV9UhAFaIlAxL6YFo+/5L3atrvqniLDJA7zQMeMKAsCVcHWcLC8pQb
 7LQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WuPMYirmoV9I5Att0oELf1y6k8RuoUeFw2T/kAQ60IQ=;
 b=aTuZxPjGWHc6I9Y1G2BEqPdWhXZyXxNbnYplTPL6KonE3ljw79qJUB87oi+elP0VRz
 DpiAujQ/Hptgtkq32+cbFy0Lstmhoj4lZAJwH39LGxlCx7lcFJKajAz+SMdyB//YOXaI
 y/qe/hbXAfr1CuJbmAYAb7K6Oozq1bT+kKkBXq+TDOWkn+8Z+/WXoR29D9BO24V/9lF2
 DniZ+bwjJvfptBLRmPNSsF65GhVOFGtjstSdch3OmHyOUw4QNcAcNQAXTiZDE0jv2NCJ
 09nCSJfUxL9WjlrcFJy/r5LX7rSpdxr6unDAEmSwN+ukTJZc4Q7TpG4uloltVTXk2uSh
 DChw==
X-Gm-Message-State: AOAM533xrTKmdLUJS+OAOScbJBy5SdknVj2K4VLoODZVahPNXs/P61a9
 YVHSfTyDql+O92WbQnD9V/oIuJD6MmkVVOa2tbw=
X-Google-Smtp-Source: ABdhPJx32bq4ZCxMM8RduW19/oYQw8rMymr/Y4rG9JDaAu5hGZsD+/EQ+rJk74AWeuW9yyTPM3pHoIqAGCgh8QlkyV4=
X-Received: by 2002:a1c:3c55:: with SMTP id j82mr573034wma.88.1627006950570;
 Thu, 22 Jul 2021 19:22:30 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000017e9a105c768f7a0@google.com>
 <VE1PR05MB7327FF783D6236E5AE98B339F1E59@VE1PR05MB7327.eurprd05.prod.outlook.com>
In-Reply-To: <VE1PR05MB7327FF783D6236E5AE98B339F1E59@VE1PR05MB7327.eurprd05.prod.outlook.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Thu, 22 Jul 2021 22:22:19 -0400
Message-ID: <CADvbK_dpvCgFrzc1TcVQTVUa-aj4mkfW6wRiNDCF3apjtb840w@mail.gmail.com>
To: Hoang Huu Le <hoang.h.le@dektech.com.au>
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googlegroups.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.44 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.44 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.5 PDS_SHORTFWD_URISHRT_QP Apparently a short fwd/re with URI shortener
X-Headers-End: 1m6kph-0000Hr-0G
Subject: Re: [tipc-discussion] FW: [syzbot] KASAN: use-after-free Read in
 tipc_recvmsg
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 Huy Xuan Nhat Hoang <huy.xn.hoang@dektech.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Thu, Jul 22, 2021 at 9:55 PM Hoang Huu Le <hoang.h.le@dektech.com.au> wrote:
>
> Hi Xin,
>
> I think the issue caused by your patch:
>
> f4919ff59c282 ("tipc: keep the skb in rcv queue until the whole data is read)
> <snip>
> 1976         if (!skb_cb->bytes_read)
> 1977                 tsk_advance_rx_queue(sk);   <-- skb free-ed here
> 1978
> 1979         if (likely(!connected) || skb_cb->bytes_read) <- use-after-free
> 1980                 goto exit;
> </snip>
>
> Can you take a look at the issue.
will do, thanks for reminding.

>
> Thanks,
> Hoang
> -----Original Message-----
> From: syzbot <syzbot+e6741b97d5552f97c24d@syzkaller.appspotmail.com>
> Sent: Monday, July 19, 2021 12:15 AM
> To: davem@davemloft.net; devicetree@vger.kernel.org; frowand.list@gmail.com; gregkh@linuxfoundation.org; jmaloy@redhat.com; kuba@kernel.org; linux-kernel@vger.kernel.org; netdev@vger.kernel.org; rafael@kernel.org; robh+dt@kernel.org; robh@kernel.org; syzkaller-bugs@googlegroups.com; tipc-discussion@lists.sourceforge.net; ying.xue@windriver.com
> Subject: [syzbot] KASAN: use-after-free Read in tipc_recvmsg
>
> Hello,
>
> syzbot found the following issue on:
>
> HEAD commit:    ab0441b4a920 Merge branch 'vmxnet3-version-6'
> git tree:       net-next
> console output: https://syzkaller.appspot.com/x/log.txt?x=1744ac6a300000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=da140227e4f25b17
> dashboard link: https://syzkaller.appspot.com/bug?extid=e6741b97d5552f97c24d
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13973a74300000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=17ffc902300000
>
> The issue was bisected to:
>
> commit 67a3156453859ceb40dc4448b7a6a99ea0ad27c7
> Author: Rob Herring <robh@kernel.org>
> Date:   Thu May 27 19:45:47 2021 +0000
>
>     of: Merge of_address_to_resource() and of_pci_address_to_resource() implementations
>
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=129b0438300000
> final oops:     https://syzkaller.appspot.com/x/report.txt?x=119b0438300000
> console output: https://syzkaller.appspot.com/x/log.txt?x=169b0438300000
>
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+e6741b97d5552f97c24d@syzkaller.appspotmail.com
> Fixes: 67a315645385 ("of: Merge of_address_to_resource() and of_pci_address_to_resource() implementations")
>
> ==================================================================
> BUG: KASAN: use-after-free in tipc_recvmsg+0xf77/0xf90 net/tipc/socket.c:1979
> Read of size 4 at addr ffff8880328cf1c0 by task kworker/u4:0/8
>
> CPU: 1 PID: 8 Comm: kworker/u4:0 Not tainted 5.14.0-rc1-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> Workqueue: tipc_rcv tipc_conn_recv_work
> Call Trace:
>  __dump_stack lib/dump_stack.c:88 [inline]
>  dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:105
>  print_address_description.constprop.0.cold+0x6c/0x309 mm/kasan/report.c:233
>  __kasan_report mm/kasan/report.c:419 [inline]
>  kasan_report.cold+0x83/0xdf mm/kasan/report.c:436
>  tipc_recvmsg+0xf77/0xf90 net/tipc/socket.c:1979
>  sock_recvmsg_nosec net/socket.c:943 [inline]
>  sock_recvmsg net/socket.c:961 [inline]
>  sock_recvmsg+0xca/0x110 net/socket.c:957
>  tipc_conn_rcv_from_sock+0x162/0x2f0 net/tipc/topsrv.c:398
>  tipc_conn_recv_work+0xeb/0x190 net/tipc/topsrv.c:421
>  process_one_work+0x98d/0x1630 kernel/workqueue.c:2276
>  worker_thread+0x658/0x11f0 kernel/workqueue.c:2422
>  kthread+0x3e5/0x4d0 kernel/kthread.c:319
>  ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:295
>
> Allocated by task 8446:
>  kasan_save_stack+0x1b/0x40 mm/kasan/common.c:38
>  kasan_set_track mm/kasan/common.c:46 [inline]
>  set_alloc_info mm/kasan/common.c:434 [inline]
>  __kasan_slab_alloc+0x84/0xa0 mm/kasan/common.c:467
>  kasan_slab_alloc include/linux/kasan.h:253 [inline]
>  slab_post_alloc_hook mm/slab.h:512 [inline]
>  slab_alloc_node mm/slub.c:2981 [inline]
>  kmem_cache_alloc_node+0x266/0x3e0 mm/slub.c:3017
>  __alloc_skb+0x20b/0x340 net/core/skbuff.c:414
>  alloc_skb_fclone include/linux/skbuff.h:1162 [inline]
>  tipc_buf_acquire+0x25/0xe0 net/tipc/msg.c:72
>  tipc_msg_build+0xf7/0x10a0 net/tipc/msg.c:386
>  __tipc_sendstream+0x6d0/0x1150 net/tipc/socket.c:1610
>  tipc_sendstream+0x4c/0x70 net/tipc/socket.c:1541
>  sock_sendmsg_nosec net/socket.c:703 [inline]
>  sock_sendmsg+0xcf/0x120 net/socket.c:723
>  sock_write_iter+0x289/0x3c0 net/socket.c:1056
>  call_write_iter include/linux/fs.h:2114 [inline]
>  new_sync_write+0x426/0x650 fs/read_write.c:518
>  vfs_write+0x75a/0xa40 fs/read_write.c:605
>  ksys_write+0x1ee/0x250 fs/read_write.c:658
>  do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>  do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
>  entry_SYSCALL_64_after_hwframe+0x44/0xae
>
> Freed by task 8:
>  kasan_save_stack+0x1b/0x40 mm/kasan/common.c:38
>  kasan_set_track+0x1c/0x30 mm/kasan/common.c:46
>  kasan_set_free_info+0x20/0x30 mm/kasan/generic.c:360
>  ____kasan_slab_free mm/kasan/common.c:366 [inline]
>  ____kasan_slab_free mm/kasan/common.c:328 [inline]
>  __kasan_slab_free+0xfb/0x130 mm/kasan/common.c:374
>  kasan_slab_free include/linux/kasan.h:229 [inline]
>  slab_free_hook mm/slub.c:1650 [inline]
>  slab_free_freelist_hook+0xdf/0x240 mm/slub.c:1675
>  slab_free mm/slub.c:3235 [inline]
>  kmem_cache_free+0x8e/0x5a0 mm/slub.c:3251
>  kfree_skbmem+0x166/0x1b0 net/core/skbuff.c:709
>  __kfree_skb net/core/skbuff.c:745 [inline]
>  kfree_skb net/core/skbuff.c:762 [inline]
>  kfree_skb+0x140/0x3f0 net/core/skbuff.c:756
>  tipc_recvmsg+0x70d/0xf90 net/tipc/socket.c:1977
>  sock_recvmsg_nosec net/socket.c:943 [inline]
>  sock_recvmsg net/socket.c:961 [inline]
>  sock_recvmsg+0xca/0x110 net/socket.c:957
>  tipc_conn_rcv_from_sock+0x162/0x2f0 net/tipc/topsrv.c:398
>  tipc_conn_recv_work+0xeb/0x190 net/tipc/topsrv.c:421
>  process_one_work+0x98d/0x1630 kernel/workqueue.c:2276
>  worker_thread+0x658/0x11f0 kernel/workqueue.c:2422
>  kthread+0x3e5/0x4d0 kernel/kthread.c:319
>  ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:295
>
> The buggy address belongs to the object at ffff8880328cf180
>  which belongs to the cache skbuff_fclone_cache of size 472
> The buggy address is located 64 bytes inside of
>  472-byte region [ffff8880328cf180, ffff8880328cf358)
> The buggy address belongs to the page:
> page:ffffea0000ca3380 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x328ce
> head:ffffea0000ca3380 order:1 compound_mapcount:0
> flags: 0xfff00000010200(slab|head|node=0|zone=1|lastcpupid=0x7ff)
> raw: 00fff00000010200 ffffea0000811500 0000000300000003 ffff8881400ee280
> raw: 0000000000000000 00000000800c000c 00000001ffffffff 0000000000000000
> page dumped because: kasan: bad access detected
> page_owner tracks the page as allocated
> page last allocated via order 1, migratetype Unmovable, gfp_mask 0xd20c0(__GFP_IO|__GFP_FS|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC), pid 8424, ts 65082628156, free_ts 64879784131
>  prep_new_page mm/page_alloc.c:2433 [inline]
>  get_page_from_freelist+0xa72/0x2f80 mm/page_alloc.c:4166
>  __alloc_pages+0x1b2/0x500 mm/page_alloc.c:5374
>  alloc_pages+0x18c/0x2a0 mm/mempolicy.c:2244
>  alloc_slab_page mm/slub.c:1713 [inline]
>  allocate_slab+0x32b/0x4c0 mm/slub.c:1853
>  new_slab mm/slub.c:1916 [inline]
>  new_slab_objects mm/slub.c:2662 [inline]
>  ___slab_alloc+0x4ba/0x820 mm/slub.c:2825
>  __slab_alloc.constprop.0+0xa7/0xf0 mm/slub.c:2865
>  slab_alloc_node mm/slub.c:2947 [inline]
>  kmem_cache_alloc_node+0x12c/0x3e0 mm/slub.c:3017
>  __alloc_skb+0x20b/0x340 net/core/skbuff.c:414
>  alloc_skb_fclone include/linux/skbuff.h:1162 [inline]
>  sk_stream_alloc_skb+0x109/0xc30 net/ipv4/tcp.c:887
>  tcp_sendmsg_locked+0xc78/0x2f10 net/ipv4/tcp.c:1309
>  tcp_sendmsg+0x2b/0x40 net/ipv4/tcp.c:1461
>  inet_sendmsg+0x99/0xe0 net/ipv4/af_inet.c:821
>  sock_sendmsg_nosec net/socket.c:703 [inline]
>  sock_sendmsg+0xcf/0x120 net/socket.c:723
>  sock_write_iter+0x289/0x3c0 net/socket.c:1056
>  call_write_iter include/linux/fs.h:2114 [inline]
>  new_sync_write+0x426/0x650 fs/read_write.c:518
>  vfs_write+0x75a/0xa40 fs/read_write.c:605
> page last free stack trace:
>  reset_page_owner include/linux/page_owner.h:24 [inline]
>  free_pages_prepare mm/page_alloc.c:1343 [inline]
>  free_pcp_prepare+0x2c5/0x780 mm/page_alloc.c:1394
>  free_unref_page_prepare mm/page_alloc.c:3329 [inline]
>  free_unref_page+0x19/0x690 mm/page_alloc.c:3408
>  unfreeze_partials+0x17c/0x1d0 mm/slub.c:2443
>  put_cpu_partial+0x13d/0x230 mm/slub.c:2479
>  qlink_free mm/kasan/quarantine.c:146 [inline]
>  qlist_free_all+0x5a/0xc0 mm/kasan/quarantine.c:165
>  kasan_quarantine_reduce+0x180/0x200 mm/kasan/quarantine.c:272
>  __kasan_slab_alloc+0x8e/0xa0 mm/kasan/common.c:444
>  kasan_slab_alloc include/linux/kasan.h:253 [inline]
>  slab_post_alloc_hook mm/slab.h:512 [inline]
>  slab_alloc_node mm/slub.c:2981 [inline]
>  slab_alloc mm/slub.c:2989 [inline]
>  kmem_cache_alloc+0x216/0x3a0 mm/slub.c:2994
>  getname_flags.part.0+0x50/0x4f0 fs/namei.c:138
>  getname_flags fs/namei.c:2747 [inline]
>  user_path_at_empty+0xa1/0x100 fs/namei.c:2747
>  user_path_at include/linux/namei.h:57 [inline]
>  vfs_statx+0x142/0x390 fs/stat.c:203
>  vfs_fstatat fs/stat.c:225 [inline]
>  vfs_lstat include/linux/fs.h:3386 [inline]
>  __do_sys_newlstat+0x91/0x110 fs/stat.c:380
>  do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>  do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
>  entry_SYSCALL_64_after_hwframe+0x44/0xae
>
> Memory state around the buggy address:
>  ffff8880328cf080: fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc fc
>  ffff8880328cf100: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
> >ffff8880328cf180: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>                                            ^
>  ffff8880328cf200: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>  ffff8880328cf280: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> ==================================================================
>
>
> ---
> This report is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
>
> syzbot will keep track of this issue. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection
> syzbot can test patches for this issue, for details see:
> https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
