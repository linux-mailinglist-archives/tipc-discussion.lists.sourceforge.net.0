Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF10282348
	for <lists+tipc-discussion@lfdr.de>; Sat,  3 Oct 2020 11:41:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kOe2W-0004qJ-6A; Sat, 03 Oct 2020 09:41:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1kOe2V-0004qC-7m
 for tipc-discussion@lists.sourceforge.net; Sat, 03 Oct 2020 09:41:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0vRevFnLp+dCP9fxTy/bWpVHIqth1uDaev5KBbbd0sg=; b=KNfbcs/noBhd409h++4lfu5eGn
 /peTPSsxx5IUw5UTEnrw1ff2FBusRyL6tlZDjnDYFeaFeLX4j/1IfY2jJipJV3z+IlMCOuTn6HUZl
 QQ7kP+0i15Q4Wf+E8t+lo3GPwFfR+RxmdsGbqP3RQ4mbHyas7zecE1GrTU/ZCjAyJGCQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0vRevFnLp+dCP9fxTy/bWpVHIqth1uDaev5KBbbd0sg=; b=KRgG6OaRabVbKR3Zc9eQDy2zd2
 JyXjqsxH0C9NDXubSdIvtlvhPUg9NFcxyTFp6oCbmMB1YKnJGVZUw0m2XW2oBgrfCP04gWP5e2NcZ
 f7hyWEW9lOQZVVv3v5/NulZzvgr3S4VHa5Rt7NAp6YI2uqrzQa2b6TZCTz6A8mulPp78=;
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kOe2P-000yJB-FW
 for tipc-discussion@lists.sourceforge.net; Sat, 03 Oct 2020 09:41:15 +0000
Received: by mail-wm1-f65.google.com with SMTP id x23so3902458wmi.3
 for <tipc-discussion@lists.sourceforge.net>;
 Sat, 03 Oct 2020 02:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0vRevFnLp+dCP9fxTy/bWpVHIqth1uDaev5KBbbd0sg=;
 b=LDmcnl+VJDpxJYR1MF8vM2+84vCCkm9PfohtmoZutsKEST4H7jBMX8fJwMAO7sSh8n
 aALCHt01V/lZbJW0JbQDoC9uJpC4xNDcJ27n5f8Ejj+nDNmyxvUen8zRF/iByUd4xqNA
 VdCUm2CSWowwr06LEfIP/kSyvF9b4PuueAloVFXb58MhtaiusKjd0YDNJhTIQ6NWmMbN
 o9r9OI/kbTmqyONbeiyDTIhRBiiDxYTGNmzzN7ds9Ozh13xzaZ2tM4KjhGF1uhU1guAv
 CPu9w0LkFEND9fcTzFWCJoG8bdsBYuKUk64EJW0un7DM/0kjqgw48772wdWh3dqGqlBW
 ydLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0vRevFnLp+dCP9fxTy/bWpVHIqth1uDaev5KBbbd0sg=;
 b=uge78yy7TtJv9wgr4Pd0AbvyBhPD98jarAGjcrIymHXvI3gSvfYbOyv+aoWhbbEbxN
 ZquV12sexk0HYojbZPx6HofDPoyurX6nY6EvqhKyTbxlv5oxhFndE/G7UJ76QFuuotBL
 HwQ/kfjoxUcuMaCI/ftfRKuOplomAs23HymxpuCBh/o/Y6zEvTzicgkw2ALfMuMQw5cD
 wxfj+PloPQgbC15ccUvpACSQhUJdIOGxRUiYIRqfvdhMMYCN9uqGx7Cd2I5FnbT1BVOl
 Q/KTzx2jZTP6GbL7kyfC3GS52G+DgZ9AlDI6HW6ttWLdOYWuJwMivivVAI1ia5zP7Gfh
 W+mQ==
X-Gm-Message-State: AOAM531Tf1JC6xp7AE9EsTzoDYDuTyjV19umQrA0QzlK2CqAt34Rqws7
 1QM0KgQTwWnOtoCPLiAeZf4ZGJhGANqM7DzOBVE=
X-Google-Smtp-Source: ABdhPJx8cHkLlo7C22KdJ4ufC/eeWIDgm40E9r0Ulil4kv03hIsOUC94v0R9GJpyrCHknRtaxiUDXhxUK50ZVCZotbw=
X-Received: by 2002:a1c:4b04:: with SMTP id y4mr6902421wma.111.1601718055810; 
 Sat, 03 Oct 2020 02:40:55 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000fe183705b0b1eb20@google.com>
In-Reply-To: <000000000000fe183705b0b1eb20@google.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Sat, 3 Oct 2020 17:56:21 +0800
Message-ID: <CADvbK_c=3U9OpAVR8RUx49KvyJgYUGTMGAXOc-jC+Kw-OGHNxA@mail.gmail.com>
To: syzbot <syzbot+e96a7ba46281824cc46a@syzkaller.appspotmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kOe2P-000yJB-FW
Subject: Re: [tipc-discussion] KASAN: use-after-free Read in tipc_mcast_xmit
 (2)
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
 Jakub Kicinski <kuba@kernel.org>, davem <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Fri, Oct 2, 2020 at 11:38 PM syzbot
<syzbot+e96a7ba46281824cc46a@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following issue on:
>
> HEAD commit:    a59cf619 Merge branch 'Fix-bugs-in-Octeontx2-netdev-driver'
> git tree:       bpf
> console output: https://syzkaller.appspot.com/x/log.txt?x=163c2467900000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=99a7c78965c75e07
> dashboard link: https://syzkaller.appspot.com/bug?extid=e96a7ba46281824cc46a
> compiler:       gcc (GCC) 10.1.0-syz 20200507
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15ada44d900000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14007467900000
>
> The issue was bisected to:
>
> commit ff48b6222e65ebdba5a403ef1deba6214e749193
> Author: Xin Long <lucien.xin@gmail.com>
> Date:   Sun Sep 13 11:37:31 2020 +0000
>
>     tipc: use skb_unshare() instead in tipc_buf_append()
>
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=125402b3900000
> final oops:     https://syzkaller.appspot.com/x/report.txt?x=115402b3900000
> console output: https://syzkaller.appspot.com/x/log.txt?x=165402b3900000
>
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+e96a7ba46281824cc46a@syzkaller.appspotmail.com
> Fixes: ff48b6222e65 ("tipc: use skb_unshare() instead in tipc_buf_append()")
>
> R10: 0000000000000000 R11: 0000000000000246 R12: 00000000004028a0
> R13: 0000000000402930 R14: 0000000000000000 R15: 0000000000000000
> tipc: Failed do clone local mcast rcv buffer
> ==================================================================
> BUG: KASAN: use-after-free in __skb_unlink include/linux/skbuff.h:2063 [inline]
> BUG: KASAN: use-after-free in __skb_dequeue include/linux/skbuff.h:2082 [inline]
> BUG: KASAN: use-after-free in __skb_queue_purge include/linux/skbuff.h:2793 [inline]
> BUG: KASAN: use-after-free in tipc_mcast_xmit+0xfaa/0x1170 net/tipc/bcast.c:422
> Read of size 8 at addr ffff8880a73e2040 by task syz-executor657/6887
>
> CPU: 1 PID: 6887 Comm: syz-executor657 Not tainted 5.9.0-rc6-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> Call Trace:
>  __dump_stack lib/dump_stack.c:77 [inline]
>  dump_stack+0x198/0x1fd lib/dump_stack.c:118
>  print_address_description.constprop.0.cold+0xae/0x497 mm/kasan/report.c:383
>  __kasan_report mm/kasan/report.c:513 [inline]
>  kasan_report.cold+0x1f/0x37 mm/kasan/report.c:530
>  __skb_unlink include/linux/skbuff.h:2063 [inline]
>  __skb_dequeue include/linux/skbuff.h:2082 [inline]
>  __skb_queue_purge include/linux/skbuff.h:2793 [inline]
>  tipc_mcast_xmit+0xfaa/0x1170 net/tipc/bcast.c:422
>  tipc_sendmcast+0xaaf/0xef0 net/tipc/socket.c:865
>  __tipc_sendmsg+0xee3/0x18a0 net/tipc/socket.c:1454
>  tipc_sendmsg+0x4c/0x70 net/tipc/socket.c:1387
>  sock_sendmsg_nosec net/socket.c:651 [inline]
>  sock_sendmsg+0xcf/0x120 net/socket.c:671
>  ____sys_sendmsg+0x6e8/0x810 net/socket.c:2353
>  ___sys_sendmsg+0xf3/0x170 net/socket.c:2407
>  __sys_sendmsg+0xe5/0x1b0 net/socket.c:2440
>  do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
>  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> RIP: 0033:0x4419d9
> Code: e8 cc ac 02 00 48 83 c4 18 c3 0f 1f 80 00 00 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 0f 83 3b 0a fc ff c3 66 2e 0f 1f 84 00 00 00 00
> RSP: 002b:00007ffe0cace4c8 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
> RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00000000004419d9
> RDX: 0000000000000000 RSI: 0000000020000280 RDI: 0000000000000004
> RBP: 000000000000f0ee R08: 0000000000000001 R09: 0000000000402930
> R10: 0000000000000000 R11: 0000000000000246 R12: 00000000004028a0
> R13: 0000000000402930 R14: 0000000000000000 R15: 0000000000000000
>
> Allocated by task 6887:
>  kasan_save_stack+0x1b/0x40 mm/kasan/common.c:48
>  kasan_set_track mm/kasan/common.c:56 [inline]
>  __kasan_kmalloc.constprop.0+0xbf/0xd0 mm/kasan/common.c:461
>  slab_post_alloc_hook mm/slab.h:518 [inline]
>  slab_alloc_node mm/slab.c:3254 [inline]
>  kmem_cache_alloc_node+0x136/0x430 mm/slab.c:3574
>  __alloc_skb+0x71/0x550 net/core/skbuff.c:198
>  alloc_skb_fclone include/linux/skbuff.h:1144 [inline]
>  tipc_buf_acquire+0x28/0xf0 net/tipc/msg.c:76
>  tipc_msg_build+0x6b8/0x10c0 net/tipc/msg.c:428
>  tipc_sendmcast+0x855/0xef0 net/tipc/socket.c:859
>  __tipc_sendmsg+0xee3/0x18a0 net/tipc/socket.c:1454
>  tipc_sendmsg+0x4c/0x70 net/tipc/socket.c:1387
>  sock_sendmsg_nosec net/socket.c:651 [inline]
>  sock_sendmsg+0xcf/0x120 net/socket.c:671
>  ____sys_sendmsg+0x6e8/0x810 net/socket.c:2353
>  ___sys_sendmsg+0xf3/0x170 net/socket.c:2407
>  __sys_sendmsg+0xe5/0x1b0 net/socket.c:2440
>  do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
>  entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> Freed by task 6887:
>  kasan_save_stack+0x1b/0x40 mm/kasan/common.c:48
>  kasan_set_track+0x1c/0x30 mm/kasan/common.c:56
>  kasan_set_free_info+0x1b/0x30 mm/kasan/generic.c:355
>  __kasan_slab_free+0xd8/0x120 mm/kasan/common.c:422
>  __cache_free mm/slab.c:3418 [inline]
>  kmem_cache_free.part.0+0x74/0x1e0 mm/slab.c:3693
>  kfree_skbmem+0x166/0x1b0 net/core/skbuff.c:643
>  kfree_skb+0x7d/0x100 include/linux/refcount.h:270
>  tipc_buf_append+0x6dc/0xcf0 net/tipc/msg.c:198
>  tipc_msg_reassemble+0x175/0x4f0 net/tipc/msg.c:790
>  tipc_mcast_xmit+0x699/0x1170 net/tipc/bcast.c:386
>  tipc_sendmcast+0xaaf/0xef0 net/tipc/socket.c:865
>  __tipc_sendmsg+0xee3/0x18a0 net/tipc/socket.c:1454
>  tipc_sendmsg+0x4c/0x70 net/tipc/socket.c:1387
>  sock_sendmsg_nosec net/socket.c:651 [inline]
>  sock_sendmsg+0xcf/0x120 net/socket.c:671
>  ____sys_sendmsg+0x6e8/0x810 net/socket.c:2353
>  ___sys_sendmsg+0xf3/0x170 net/socket.c:2407
>  __sys_sendmsg+0xe5/0x1b0 net/socket.c:2440
>  do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
>  entry_SYSCALL_64_after_hwframe+0x44/0xa9
in tipc_msg_reassemble():

                if ((&head, &frag))
                        break;
                if (!head)
                        goto error; <--- [1]
        }
        __skb_queue_tail(rcvq, frag);
        return true;
error:
        pr_warn("Failed do clone local mcast rcv buffer\n");
        kfree_skb(head); <---[2]
        return false;

when head is NULL at [1], it goes [2] and could cause a crash.
from the log, we can see "Failed do clone local mcast rcv buffer" as well.

will check and make a fix for this.

Thanks.

>
> The buggy address belongs to the object at ffff8880a73e2040
>  which belongs to the cache skbuff_fclone_cache of size 456
> The buggy address is located 0 bytes inside of
>  456-byte region [ffff8880a73e2040, ffff8880a73e2208)
> The buggy address belongs to the page:
> page:000000001368f319 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0xa73e2
> flags: 0xfffe0000000200(slab)
> raw: 00fffe0000000200 ffff8880a9050f50 ffffea00028ff188 ffff8880a903dc00
> raw: 0000000000000000 ffff8880a73e2040 0000000100000006 0000000000000000
> page dumped because: kasan: bad access detected
>
> Memory state around the buggy address:
>  ffff8880a73e1f00: fb fb fb fb fb fb fb fc fc fc fc fc fc fc fc fc
>  ffff8880a73e1f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
> >ffff8880a73e2000: fc fc fc fc fc fc fc fc fa fb fb fb fb fb fb fb
>                                            ^
>  ffff8880a73e2080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>  ffff8880a73e2100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
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
