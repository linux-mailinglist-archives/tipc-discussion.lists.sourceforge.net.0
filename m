Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D134F16681E
	for <lists+tipc-discussion@lfdr.de>; Thu, 20 Feb 2020 21:11:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1j4sA5-0001Gt-Lx; Thu, 20 Feb 2020 20:11:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1j4sA4-0001Gi-NV
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Feb 2020 20:11:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g07+/zW+qR6sRAlzczaxrYAwuX1nnBEsZiVPXU+iLe8=; b=UvQw61nsPYsG3HU50BFW2uNVMH
 +/NHUqyqG9x6TBIbydDsSvtbKzXkJbOXDF01jt5fwdOTbokDsUysdGnVkri9RoQbJkFE4/xO956gF
 hCiYhKnkN74A9DRxPOGeOQEz1dIb4B/qZwybXEz2udtm3yvSm9+2nKfiUk4a4Qee9jg0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g07+/zW+qR6sRAlzczaxrYAwuX1nnBEsZiVPXU+iLe8=; b=AIckV23taRZ/KrI9OHyjguqLZp
 32udZZyi52GGpmmfrwb2YOtDyGVjigTrKnWeYEmvxybNbRfoKvpXGNfKdGMaDieuW6SNpRkcjVw5f
 6H+d/DFB2uYk+4QAab4kxDkaxQcx/gIwDij+5l/dvY5SHNQO4D9i18EfQtjm1g5aDc1s=;
Received: from mail-lf1-f67.google.com ([209.85.167.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1j4sA1-002s8n-Mw
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Feb 2020 20:11:04 +0000
Received: by mail-lf1-f67.google.com with SMTP id b15so4146061lfc.4
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 20 Feb 2020 12:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g07+/zW+qR6sRAlzczaxrYAwuX1nnBEsZiVPXU+iLe8=;
 b=HWuThVHk/458EnWPQm/IaiQbV6Vl/wlQbg6Ewy9jZW5OGAFFCrSCEnALGWFuUeUo8g
 G6ScCC7o23B046z56Z6BjPeiYGwFYXDQdKN4HDMaRGPGI2JR1ir9LLJEUwDiAaaAfovr
 cGyuqkpVTnWM82twPOjnVDGOI9iqdNK4yb2KItnRO8VbZjfsBDOnLgxdsTrHNP6z3tnn
 9+9JhlcMKZz5EpGmvV6/9euZFESzU9RxvMp7i21CT6Or2uTimds4yfi/4TlPjbo4wNEB
 gGhwv46T507C+2dgUAthlSpqOvdjmsJdle5dgJD3WSCQUVCnBgIW0BrBpAXRfmHUonVS
 sRrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g07+/zW+qR6sRAlzczaxrYAwuX1nnBEsZiVPXU+iLe8=;
 b=czRyZWQESYPc8gMYA7kqz0vUZ/7UqlbnnDL9eS65UfOiPgTZwxsuN7ZfHPgQr2lWoG
 Eml4wAQ1b1zyQIO4ZC/0vTG/v/bC/nKJYa96EbmGwuLQoAzfFFaEGLzskF19YED1lkXA
 5UAQRpu8vn2cggP3fY53+xI1TSzHoFNhLAQBxiYAgQc5K0dWuf7Wts1vDLPF9FecDD22
 okRjtJoJQQehk1NX/irmKtWKBxGruT57BFaoB4I1RMQQCUocNPCfQMXKg0vGssuMBNVo
 mxKV7XX5vWn4jwmHF8T2OuqJ2s+7qU0cw1KbCEfRoKg0XTDm25NvIXrXbkA0HZEIEvAQ
 X+Dw==
X-Gm-Message-State: APjAAAVuWl3W8TpobOovaljDU+4RkkaTtpFGiKqAH3kH7q8xCUiENzWt
 dnzy6chlVviminn9TWPHRPNSMjd16wUt9Snd90pKp8aa
X-Google-Smtp-Source: APXvYqyh6kxirB7XDIP2xm0rhgWyPUtiFR6TaoEoV4oKVXy+FyhXFAnWaG2qQTlwxFH29ikGIcyXms6tJWRmhMS+Rwo=
X-Received: by 2002:adf:fac7:: with SMTP id a7mr15383060wrs.299.1582213429534; 
 Thu, 20 Feb 2020 07:43:49 -0800 (PST)
MIME-Version: 1.0
References: <1565595162-1383-1-git-send-email-ying.xue@windriver.com>
 <1565595162-1383-4-git-send-email-ying.xue@windriver.com>
 <CACT4Y+Z6mxvuC4+cmWc++zrJrXWPNDVuguHRHyeEp-teuJ_yNA@mail.gmail.com>
 <CACT4Y+ZN_1OPukSwp6U4Z7o=8g5SsDhFZD9rtnD8CRObYZgYYg@mail.gmail.com>
In-Reply-To: <CACT4Y+ZN_1OPukSwp6U4Z7o=8g5SsDhFZD9rtnD8CRObYZgYYg@mail.gmail.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Thu, 20 Feb 2020 23:44:55 +0800
Message-ID: <CADvbK_cPqbBRvm3qGGdG_9jcShXG8Xyy6BXqzEKC-RMttHXNNw@mail.gmail.com>
To: Dmitry Vyukov <dvyukov@google.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.8 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j4sA1-002s8n-Mw
Subject: Re: [tipc-discussion] [PATCH v2 3/3] tipc: fix issue of calling
 smp_processor_id() in preemptible
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
Cc: Hillf Danton <hdanton@sina.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>, netdev <netdev@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 tipc-discussion@lists.sourceforge.net, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Wed, Feb 19, 2020 at 4:34 PM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Wed, Feb 19, 2020 at 9:29 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> >
> > On Mon, Aug 12, 2019 at 9:44 AM Ying Xue <ying.xue@windriver.com> wrote:
> > >
> > > syzbot found the following issue:
> > >
> > > [   81.119772][ T8612] BUG: using smp_processor_id() in preemptible [00000000] code: syz-executor834/8612
> > > [   81.136212][ T8612] caller is dst_cache_get+0x3d/0xb0
> > > [   81.141450][ T8612] CPU: 0 PID: 8612 Comm: syz-executor834 Not tainted 5.2.0-rc6+ #48
> > > [   81.149435][ T8612] Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> > > [   81.159480][ T8612] Call Trace:
> > > [   81.162789][ T8612]  dump_stack+0x172/0x1f0
> > > [   81.167123][ T8612]  debug_smp_processor_id+0x251/0x280
> > > [   81.172479][ T8612]  dst_cache_get+0x3d/0xb0
> > > [   81.176928][ T8612]  tipc_udp_xmit.isra.0+0xc4/0xb80
> > > [   81.182046][ T8612]  ? kasan_kmalloc+0x9/0x10
> > > [   81.186531][ T8612]  ? tipc_udp_addr2str+0x170/0x170
> > > [   81.191641][ T8612]  ? __copy_skb_header+0x2e8/0x560
> > > [   81.196750][ T8612]  ? __skb_checksum_complete+0x3f0/0x3f0
> > > [   81.202364][ T8612]  ? netdev_alloc_frag+0x1b0/0x1b0
> > > [   81.207452][ T8612]  ? skb_copy_header+0x21/0x2b0
> > > [   81.212282][ T8612]  ? __pskb_copy_fclone+0x516/0xc90
> > > [   81.217470][ T8612]  tipc_udp_send_msg+0x29a/0x4b0
In tipc_bearer_xmit_skb(), b->media->send_msg()/tipc_udp_send_msg()
is called under rcu_read_lock(), which is already ensure it's a
non-preemptible context.

What I saw here is imbalance rcu_read_(un)lock() call somewhere.

> > > [   81.222400][ T8612]  tipc_bearer_xmit_skb+0x16c/0x360
> > > [   81.227585][ T8612]  tipc_enable_bearer+0xabe/0xd20
> > > [   81.232606][ T8612]  ? __nla_validate_parse+0x2d0/0x1ee0
> > > [   81.238048][ T8612]  ? tipc_bearer_xmit_skb+0x360/0x360
> > > [   81.243401][ T8612]  ? nla_memcpy+0xb0/0xb0
> > > [   81.247710][ T8612]  ? nla_memcpy+0xb0/0xb0
> > > [   81.252020][ T8612]  ? __nla_parse+0x43/0x60
> > > [   81.256417][ T8612]  __tipc_nl_bearer_enable+0x2de/0x3a0
> > > [   81.261856][ T8612]  ? __tipc_nl_bearer_enable+0x2de/0x3a0
> > > [   81.267467][ T8612]  ? tipc_nl_bearer_disable+0x40/0x40
> > > [   81.272848][ T8612]  ? unwind_get_return_address+0x58/0xa0
> > > [   81.278501][ T8612]  ? lock_acquire+0x16f/0x3f0
> > > [   81.283190][ T8612]  tipc_nl_bearer_enable+0x23/0x40
> > > [   81.288300][ T8612]  genl_family_rcv_msg+0x74b/0xf90
> > > [   81.293404][ T8612]  ? genl_unregister_family+0x790/0x790
> > > [   81.298935][ T8612]  ? __lock_acquire+0x54f/0x5490
> > > [   81.303852][ T8612]  ? __netlink_lookup+0x3fa/0x7b0
> > > [   81.308865][ T8612]  genl_rcv_msg+0xca/0x16c
> > > [   81.313266][ T8612]  netlink_rcv_skb+0x177/0x450
> > > [   81.318043][ T8612]  ? genl_family_rcv_msg+0xf90/0xf90
> > > [   81.323311][ T8612]  ? netlink_ack+0xb50/0xb50
> > > [   81.327906][ T8612]  ? lock_acquire+0x16f/0x3f0
> > > [   81.332589][ T8612]  ? kasan_check_write+0x14/0x20
> > > [   81.337511][ T8612]  genl_rcv+0x29/0x40
> > > [   81.341485][ T8612]  netlink_unicast+0x531/0x710
> > > [   81.346268][ T8612]  ? netlink_attachskb+0x770/0x770
> > > [   81.351374][ T8612]  ? _copy_from_iter_full+0x25d/0x8c0
> > > [   81.356765][ T8612]  ? __sanitizer_cov_trace_cmp8+0x18/0x20
> > > [   81.362479][ T8612]  ? __check_object_size+0x3d/0x42f
> > > [   81.367667][ T8612]  netlink_sendmsg+0x8ae/0xd70
> > > [   81.372415][ T8612]  ? netlink_unicast+0x710/0x710
> > > [   81.377520][ T8612]  ? aa_sock_msg_perm.isra.0+0xba/0x170
> > > [   81.383051][ T8612]  ? apparmor_socket_sendmsg+0x2a/0x30
> > > [   81.388530][ T8612]  ? __sanitizer_cov_trace_const_cmp4+0x16/0x20
> > > [   81.394775][ T8612]  ? security_socket_sendmsg+0x8d/0xc0
> > > [   81.400240][ T8612]  ? netlink_unicast+0x710/0x710
> > > [   81.405161][ T8612]  sock_sendmsg+0xd7/0x130
> > > [   81.409561][ T8612]  ___sys_sendmsg+0x803/0x920
> > > [   81.414220][ T8612]  ? copy_msghdr_from_user+0x430/0x430
> > > [   81.419667][ T8612]  ? _raw_spin_unlock_irqrestore+0x6b/0xe0
> > > [   81.425461][ T8612]  ? debug_object_active_state+0x25d/0x380
> > > [   81.431255][ T8612]  ? __lock_acquire+0x54f/0x5490
> > > [   81.436174][ T8612]  ? kasan_check_read+0x11/0x20
> > > [   81.441208][ T8612]  ? _raw_spin_unlock_irqrestore+0xa4/0xe0
> > > [   81.447008][ T8612]  ? mark_held_locks+0xf0/0xf0
> > > [   81.451768][ T8612]  ? __call_rcu.constprop.0+0x28b/0x720
> > > [   81.457298][ T8612]  ? call_rcu+0xb/0x10
> > > [   81.461353][ T8612]  ? __sanitizer_cov_trace_const_cmp4+0x16/0x20
> > > [   81.467589][ T8612]  ? __fget_light+0x1a9/0x230
> > > [   81.472249][ T8612]  ? __fdget+0x1b/0x20
> > > [   81.476301][ T8612]  ? __sanitizer_cov_trace_const_cmp8+0x18/0x20
> > > [   81.482545][ T8612]  __sys_sendmsg+0x105/0x1d0
> > > [   81.487115][ T8612]  ? __ia32_sys_shutdown+0x80/0x80
> > > [   81.492208][ T8612]  ? blkcg_maybe_throttle_current+0x5e2/0xfb0
> > > [   81.498272][ T8612]  ? trace_hardirqs_on_thunk+0x1a/0x1c
> > > [   81.503726][ T8612]  ? do_syscall_64+0x26/0x680
> > > [   81.508385][ T8612]  ? entry_SYSCALL_64_after_hwframe+0x49/0xbe
> > > [   81.514444][ T8612]  ? do_syscall_64+0x26/0x680
> > > [   81.519110][ T8612]  __x64_sys_sendmsg+0x78/0xb0
> > > [   81.523862][ T8612]  do_syscall_64+0xfd/0x680
> > > [   81.528352][ T8612]  entry_SYSCALL_64_after_hwframe+0x49/0xbe
> > > [   81.534234][ T8612] RIP: 0033:0x444679
> > > [   81.538114][ T8612] Code: 18 89 d0 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 0f 83 1b d8 fb ff c3 66 2e 0f 1f 84 00 00 00 00
> > > [   81.557709][ T8612] RSP: 002b:00007fff0201a8b8 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
> > > [   81.566147][ T8612] RAX: ffffffffffffffda RBX: 00000000004002e0 RCX: 0000000000444679
> > > [   81.574108][ T8612] RDX: 0000000000000000 RSI: 0000000020000580 RDI: 0000000000000003
> > > [   81.582152][ T8612] RBP: 00000000006cf018 R08: 0000000000000001 R09: 00000000004002e0
> > > [   81.590113][ T8612] R10: 0000000000000008 R11: 0000000000000246 R12: 0000000000402320
> > > [   81.598089][ T8612] R13: 00000000004023b0 R14: 0000000000000000 R15: 0000000000
> > >
> > > In commit e9c1a793210f ("tipc: add dst_cache support for udp media")
> > > dst_cache_get() was introduced to be called in tipc_udp_xmit(). But
> > > smp_processor_id() called by dst_cache_get() cannot be invoked in
> > > preemptible context, as a result, the complaint above was reported.
> > >
> > > Fixes: e9c1a793210f ("tipc: add dst_cache support for udp media")
> > > Reported-by: syzbot+1a68504d96cd17b33a05@syzkaller.appspotmail.com
> > > Signed-off-by: Hillf Danton <hdanton@sina.com>
> > > Signed-off-by: Ying Xue <ying.xue@windriver.com>
> >
> > Hi,
> >
> > Was this ever merged?
> > The bug is still open, alive and kicking:
> > https://syzkaller.appspot.com/bug?extid=1a68504d96cd17b33a05
> >
> > and one of the top crashers currently.
> > Along with few other top crashers, these bugs prevent most of the
> > other kernel testing from happening.
>
> /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
>
> +jmaloy new email address
>
> > > ---
> > >  net/tipc/udp_media.c | 12 +++++++++---
> > >  1 file changed, 9 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
> > > index 287df687..ca3ae2e 100644
> > > --- a/net/tipc/udp_media.c
> > > +++ b/net/tipc/udp_media.c
> > > @@ -224,6 +224,8 @@ static int tipc_udp_send_msg(struct net *net, struct sk_buff *skb,
> > >         struct udp_bearer *ub;
> > >         int err = 0;
> > >
> > > +       local_bh_disable();
> > > +
> > >         if (skb_headroom(skb) < UDP_MIN_HEADROOM) {
> > >                 err = pskb_expand_head(skb, UDP_MIN_HEADROOM, 0, GFP_ATOMIC);
> > >                 if (err)
> > > @@ -237,9 +239,12 @@ static int tipc_udp_send_msg(struct net *net, struct sk_buff *skb,
> > >                 goto out;
> > >         }
> > >
> > > -       if (addr->broadcast != TIPC_REPLICAST_SUPPORT)
> > > -               return tipc_udp_xmit(net, skb, ub, src, dst,
> > > -                                    &ub->rcast.dst_cache);
> > > +       if (addr->broadcast != TIPC_REPLICAST_SUPPORT) {
> > > +               err = tipc_udp_xmit(net, skb, ub, src, dst,
> > > +                                   &ub->rcast.dst_cache);
> > > +               local_bh_enable();
> > > +               return err;
> > > +       }
> > >
> > >         /* Replicast, send an skb to each configured IP address */
> > >         list_for_each_entry_rcu(rcast, &ub->rcast.list, list) {
> > > @@ -259,6 +264,7 @@ static int tipc_udp_send_msg(struct net *net, struct sk_buff *skb,
> > >         err = 0;
> > >  out:
> > >         kfree_skb(skb);
> > > +       local_bh_enable();
> > >         return err;
> > >  }
> > >
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/1565595162-1383-4-git-send-email-ying.xue%40windriver.com.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
