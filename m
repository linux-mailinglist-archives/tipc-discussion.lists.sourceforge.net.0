Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 614904E208
	for <lists+tipc-discussion@lfdr.de>; Fri, 21 Jun 2019 10:39:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1heF4z-0007pq-GW; Fri, 21 Jun 2019 08:39:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1heF4y-0007pX-Cs
 for tipc-discussion@lists.sourceforge.net; Fri, 21 Jun 2019 08:39:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2X/Vwx/s3L58Q0MZKkvfHIkdcQDmB8vSD9+Ww3/y5uE=; b=kFGFkW2KGRLoOmGM9ZcJzlug9q
 iraUcByfgBc56sWCWqw43mOUfjfI5ybv/mXqfIeKn7TzTVKl0hpRElW8U2JFp7awLm6XQMU5sRYp/
 ZANO5NtLznEXBMEsovy4q2CkkS0q09/5SxNc43oCtxzdN+6VJu2lV18JJNALXpim6ZQI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2X/Vwx/s3L58Q0MZKkvfHIkdcQDmB8vSD9+Ww3/y5uE=; b=LFR8UDZijp+4ECy2/ubSDlNSrL
 22heM0NmSqRbkuJbmMfAye5KX1q1cx37mVaFlxKDkDDj8RwgYlseWROSJVIZkT0Mjdih1FBPAb0af
 vDNrWzjtP8Xec1XiiR3I9xQ+YqIB0CrG/iZbW3HSBqiAccVreM4ZwSbfCNbRTRySHdmQ=;
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1heF4z-007Wiv-4b
 for tipc-discussion@lists.sourceforge.net; Fri, 21 Jun 2019 08:39:30 +0000
Received: by mail-wr1-f66.google.com with SMTP id n4so5652166wrw.13
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 21 Jun 2019 01:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2X/Vwx/s3L58Q0MZKkvfHIkdcQDmB8vSD9+Ww3/y5uE=;
 b=S0Et/q1t0biciguO86myWT/3NPmNceQfQ18CV87GLOFA1Nyo2Ym+Cw7Vlif7b8qIYL
 FOFEYunTwMydKR5m1ADtUv178hEFiQFGDtvB29ew4rEwqPLOM/8cU7N3eSAuJ9LAF33k
 8ytoU7RjrvOGbRTI3NbLh+0wQiOdQa9Fnd7qP0KkzOyh7mAdaLpN6UDyI+fKJpWCJ5E6
 VCAI6pjEl5kLnsRSA0rmKt2+aqe+qgzmwisxS3k2PdROAWO3Ei2ibGs4T+TgennAqaJZ
 /uZzaNwrbKXwzOrAiTZti1xhcMpgM5NiV1HcoRT2ErJ6gsLQLbBNNlwDVli+Gat+PVze
 gWSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2X/Vwx/s3L58Q0MZKkvfHIkdcQDmB8vSD9+Ww3/y5uE=;
 b=Kef/8H5y1af474eUDfYrg76RzaZmfD85+Y/DM1NVBsjsmbkRPY1nhtn4PjL7t3k2i0
 haFcCoXYtqloeQKbn2lhfgG7Spu8rchXmjNcqkRXBGP0kw0/m7ha1yA8tenTzc0li/ED
 MTkKmFkKeDZ7viE0o8PhPh5JAzOa14D/aHgimhFechf/mzwtd20HqinW604xQClNEJHc
 /mOOnNYzWEhMHfAimTDq1hkO/9aSTKx7GcP//+B0Cph2kUYaH1I29Q5Tiaxiy6/6OUTl
 iB2N8zbRKqXzBEFUbU5xOFM9H/MCDQS5K0NpoqHQBK+G5hw2z8w3sHSa9dQkKVQfo86+
 bIEQ==
X-Gm-Message-State: APjAAAXf6VufGQFbw3Pk1S2BxdqYHx3CZBEpFpQuhv5026ScDfktj9YC
 snslPOmsnWZXAHINE8P2KInFeMhE2FJMXzjKFpk=
X-Google-Smtp-Source: APXvYqyGLGIFTq7u7gwpiI+A54k0uzIdZ4ailEEMxv4AKJL0dxlWlocnsA70jg8tDyTk0FvxLkgIVLM+u1ZPPfpATbY=
X-Received: by 2002:adf:fb81:: with SMTP id a1mr10750363wrr.329.1561106362613; 
 Fri, 21 Jun 2019 01:39:22 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000045db72058baf24f7@google.com>
In-Reply-To: <00000000000045db72058baf24f7@google.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Fri, 21 Jun 2019 16:39:11 +0800
Message-ID: <CADvbK_dzcTTRpZVssQZEGhHGJMqPnv+-my8_wdobEUfvbVTEyg@mail.gmail.com>
To: syzbot <syzbot+30eaa8bf392f7fafffaf@syzkaller.appspotmail.com>
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googlegroups.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -1.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1heF4z-007Wiv-4b
Subject: Re: [tipc-discussion] KMSAN: uninit-value in
 tipc_nl_compat_bearer_disable
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
 LKML <linux-kernel@vger.kernel.org>, Alexander Potapenko <glider@google.com>,
 tipc-discussion@lists.sourceforge.net, davem <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Wed, Jun 19, 2019 at 11:48 PM syzbot
<syzbot+30eaa8bf392f7fafffaf@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following crash on:
>
> HEAD commit:    f75e4cfe kmsan: use kmsan_handle_urb() in urb.c
> git tree:       kmsan
> console output: https://syzkaller.appspot.com/x/log.txt?x=13d0a6fea00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=602468164ccdc30a
> dashboard link: https://syzkaller.appspot.com/bug?extid=30eaa8bf392f7fafffaf
> compiler:       clang version 9.0.0 (/home/glider/llvm/clang
> 06d00afa61eef8f7f501ebdb4e8612ea43ec2d78)
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15b4a95aa00000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=162fc761a00000
>
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+30eaa8bf392f7fafffaf@syzkaller.appspotmail.com
>
> IPv6: ADDRCONF(NETDEV_CHANGE): hsr0: link becomes ready
> 8021q: adding VLAN 0 to HW filter on device batadv0
> ==================================================================
> BUG: KMSAN: uninit-value in memchr+0xce/0x110 lib/string.c:981
> CPU: 0 PID: 12554 Comm: syz-executor731 Not tainted 5.1.0+ #1
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
> Google 01/01/2011
> Call Trace:
>   __dump_stack lib/dump_stack.c:77 [inline]
>   dump_stack+0x191/0x1f0 lib/dump_stack.c:113
>   kmsan_report+0x130/0x2a0 mm/kmsan/kmsan.c:622
>   __msan_warning+0x75/0xe0 mm/kmsan/kmsan_instr.c:310
>   memchr+0xce/0x110 lib/string.c:981
>   string_is_valid net/tipc/netlink_compat.c:176 [inline]
>   tipc_nl_compat_bearer_disable+0x2a1/0x480 net/tipc/netlink_compat.c:449
TLV_GET_DATA_LEN(msg->req) may return a negtive value, which will be
used as size_t (a big unsigned long) passed into  memchr(),
triggered this issue.

@@ -446,7 +446,7 @@ static int tipc_nl_compat_bearer_disable(struct
tipc_nl_compat_cmd_doit *cmd,
  return -EMSGSIZE;

  len = min_t(int, TLV_GET_DATA_LEN(msg->req), TIPC_MAX_BEARER_NAME);
- if (!string_is_valid(name, len))
+ if (len <=0 || !string_is_valid(name, len))
  return -EINVAL;

The same fix is needed for some other places, and I will give a fix-ups.

>   __tipc_nl_compat_doit net/tipc/netlink_compat.c:327 [inline]
>   tipc_nl_compat_doit+0x3ac/0xb00 net/tipc/netlink_compat.c:360
>   tipc_nl_compat_handle net/tipc/netlink_compat.c:1178 [inline]
>   tipc_nl_compat_recv+0x1b1b/0x27b0 net/tipc/netlink_compat.c:1281
>   genl_family_rcv_msg net/netlink/genetlink.c:602 [inline]
>   genl_rcv_msg+0x185a/0x1a40 net/netlink/genetlink.c:627
>   netlink_rcv_skb+0x431/0x620 net/netlink/af_netlink.c:2486
>   genl_rcv+0x63/0x80 net/netlink/genetlink.c:638
>   netlink_unicast_kernel net/netlink/af_netlink.c:1311 [inline]
>   netlink_unicast+0xf3e/0x1020 net/netlink/af_netlink.c:1337
>   netlink_sendmsg+0x127e/0x12f0 net/netlink/af_netlink.c:1926
>   sock_sendmsg_nosec net/socket.c:651 [inline]
>   sock_sendmsg net/socket.c:661 [inline]
>   ___sys_sendmsg+0xcc6/0x1200 net/socket.c:2260
>   __sys_sendmsg net/socket.c:2298 [inline]
>   __do_sys_sendmsg net/socket.c:2307 [inline]
>   __se_sys_sendmsg+0x305/0x460 net/socket.c:2305
>   __x64_sys_sendmsg+0x4a/0x70 net/socket.c:2305
>   do_syscall_64+0xbc/0xf0 arch/x86/entry/common.c:291
>   entry_SYSCALL_64_after_hwframe+0x63/0xe7
> RIP: 0033:0x442639
> Code: 41 02 00 85 c0 b8 00 00 00 00 48 0f 44 c3 5b c3 90 48 89 f8 48 89 f7
> 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff
> ff 0f 83 fb 10 fc ff c3 66 2e 0f 1f 84 00 00 00 00
> RSP: 002b:00000000007efea8 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
> RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 0000000000442639
> RDX: 0000000000000000 RSI: 0000000020000080 RDI: 0000000000000003
> RBP: 00000000007eff00 R08: 0000000000000003 R09: 0000000000000003
> R10: 00000000bb1414ac R11: 0000000000000246 R12: 0000000000000003
> R13: 0000000000403c50 R14: 0000000000000000 R15: 0000000000000000
>
> Uninit was created at:
>   kmsan_save_stack_with_flags mm/kmsan/kmsan.c:208 [inline]
>   kmsan_internal_poison_shadow+0x92/0x150 mm/kmsan/kmsan.c:162
>   kmsan_kmalloc+0xa4/0x130 mm/kmsan/kmsan_hooks.c:175
>   kmsan_slab_alloc+0xe/0x10 mm/kmsan/kmsan_hooks.c:184
>   slab_post_alloc_hook mm/slab.h:442 [inline]
>   slab_alloc_node mm/slub.c:2771 [inline]
>   __kmalloc_node_track_caller+0xcba/0xf30 mm/slub.c:4399
>   __kmalloc_reserve net/core/skbuff.c:140 [inline]
>   __alloc_skb+0x306/0xa10 net/core/skbuff.c:208
>   alloc_skb include/linux/skbuff.h:1059 [inline]
>   netlink_alloc_large_skb net/netlink/af_netlink.c:1183 [inline]
>   netlink_sendmsg+0xb81/0x12f0 net/netlink/af_netlink.c:1901
>   sock_sendmsg_nosec net/socket.c:651 [inline]
>   sock_sendmsg net/socket.c:661 [inline]
>   ___sys_sendmsg+0xcc6/0x1200 net/socket.c:2260
>   __sys_sendmsg net/socket.c:2298 [inline]
>   __do_sys_sendmsg net/socket.c:2307 [inline]
>   __se_sys_sendmsg+0x305/0x460 net/socket.c:2305
>   __x64_sys_sendmsg+0x4a/0x70 net/socket.c:2305
>   do_syscall_64+0xbc/0xf0 arch/x86/entry/common.c:291
>   entry_SYSCALL_64_after_hwframe+0x63/0xe7
> ==================================================================
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
