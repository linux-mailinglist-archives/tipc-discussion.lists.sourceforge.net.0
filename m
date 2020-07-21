Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AADEA227E78
	for <lists+tipc-discussion@lfdr.de>; Tue, 21 Jul 2020 13:12:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jxqBv-0007uk-QU; Tue, 21 Jul 2020 11:12:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1jxqBt-0007ud-QO
 for tipc-discussion@lists.sourceforge.net; Tue, 21 Jul 2020 11:12:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VjDtzsU+b3387n6phjrIUfDrd8oinDl1wvNnY6/De3s=; b=XfsqhdSKTbkrxxhPb9d1yN2igp
 HByFkTrfepaNWCXOCcO2QC1hOZyl9HrKspy9hbyRVbzzO8SzKzg2v/zScgbvP1GzJgTbfuumFdQaN
 IzEcliDyBEjsdp8S+iQIblmgSfQNv3RMI/ogt9XmevddnK88m1NIKCVu08qw4OXv4EjM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VjDtzsU+b3387n6phjrIUfDrd8oinDl1wvNnY6/De3s=; b=NANrNr11C8c0z7cYnJD/4MxbbJ
 5crB2Trzj60qXdet3rgXKghUCCxCcx1Vr/mJjLi/iKhvGJGDHXIS8RcqcInl26coSVuo/VPJEXqAd
 lyKuIuccbgduTILpBuERRgNwOWeTc4t6ZioqwtZASGHsJc7Zd0p1IlYs/+Fd5QWWFF1s=;
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jxqBr-00Bz4Q-C6
 for tipc-discussion@lists.sourceforge.net; Tue, 21 Jul 2020 11:12:09 +0000
Received: by mail-wr1-f66.google.com with SMTP id y3so3440603wrl.4
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 21 Jul 2020 04:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VjDtzsU+b3387n6phjrIUfDrd8oinDl1wvNnY6/De3s=;
 b=hj+JdctktnbYyPUKenL1uf/EoqZtDfxE1Qy+0vCjbTDIYF0TfXpYfXQaqgjSJ7pLya
 zXEkQn4Hy+FGZk/VQtTHIeHT2UW+j2RKS16o4bqom0RXyZid+2Wuro0oi2+Cc22VkaVw
 UXakAtRhxXplxqPsa/Vni0xwXDVt3h7tOi0ViCv1pOPoODgNCGXXY5kMsToD6kjU0Ajj
 EYUR66/T4EqsjaXaHnhMJ1pCs7+2EDruN4IXBbzHMmsX2vbX0L3XmTycfUvJpGBFydmn
 rt5qv6WLwPXXiOdsThDliFChEC8UAfgOdmhtz7TKYK8MDkeJCUA/2mi9Boy83t5LMmQR
 sznw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VjDtzsU+b3387n6phjrIUfDrd8oinDl1wvNnY6/De3s=;
 b=g2zCAxtWX40obaFaZezlR6Z9qd0t9da/r4FjKWgu/jdSUmHxxkz7yHEyUQ4t+f62iN
 nnD6zc7xcljQC9fi7G5RVAEu1C9NcRLJq7U6QPDJVWv1v6+6galZ9QnubuezOHOBZw6n
 pEq6sTLcjkdiIFpHJobSJKwBFSwQ8Eo7NMD4io7tX4JQ2Qeoq+YOMIhqun4khKnB4GsU
 gIAxQEAcqfkbTvtJhmIXYg2tZ1jFJ24V6kPCFEs00bAZezZg9iJ8ELQUhnZyr/7k/58H
 EgxBHH0fKVpSYeCAQXLFGkSE+iw4gVynVXIZDid08HER3LyGPF49G4oR/fI2D9wSb50y
 hp+Q==
X-Gm-Message-State: AOAM533s+PFUbCIYIWjmnhHnx59wiTj+8AeHuMH0lNqMtpuqR06JUuXh
 2G3z8DspAw2lWgp7Jox1lMp0iHX96Tbz5uK7mUM=
X-Google-Smtp-Source: ABdhPJyXYjw72mecD/DK7SF//ph7xuZaDp/NAt/qv5zi+jWVviJR2TeK+x3Nkhtcuhno2PgbNP1sFW8MoGcyls2IgWc=
X-Received: by 2002:a5d:4649:: with SMTP id j9mr24967504wrs.270.1595329913924; 
 Tue, 21 Jul 2020 04:11:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200603050601.19570-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20200603050601.19570-1-tuong.t.lien@dektech.com.au>
From: Xin Long <lucien.xin@gmail.com>
Date: Tue, 21 Jul 2020 19:22:36 +0800
Message-ID: <CADvbK_cE8boY0Y7CcNS_Vh5gZGf4+Pb2urG993V9wnuS=vQK3g@mail.gmail.com>
To: Tuong Lien <tuong.t.lien@dektech.com.au>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jxqBr-00Bz4Q-C6
Subject: Re: [tipc-discussion] [net-next] tipc: fix NULL pointer dereference
 in streaming
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
Cc: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net,
 davem <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Wed, Jun 3, 2020 at 1:06 PM Tuong Lien <tuong.t.lien@dektech.com.au> wrote:
>
> syzbot found the following crash:
>
> general protection fault, probably for non-canonical address 0xdffffc0000000019: 0000 [#1] PREEMPT SMP KASAN
> KASAN: null-ptr-deref in range [0x00000000000000c8-0x00000000000000cf]
> CPU: 1 PID: 7060 Comm: syz-executor394 Not tainted 5.7.0-rc6-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> RIP: 0010:__tipc_sendstream+0xbde/0x11f0 net/tipc/socket.c:1591
> Code: 00 00 00 00 48 39 5c 24 28 48 0f 44 d8 e8 fa 3e db f9 48 b8 00 00 00 00 00 fc ff df 48 8d bb c8 00 00 00 48 89 fa 48 c1 ea 03 <80> 3c 02 00 0f 85 e2 04 00 00 48 8b 9b c8 00 00 00 48 b8 00 00 00
> RSP: 0018:ffffc90003ef7818 EFLAGS: 00010202
> RAX: dffffc0000000000 RBX: 0000000000000000 RCX: ffffffff8797fd9d
> RDX: 0000000000000019 RSI: ffffffff8797fde6 RDI: 00000000000000c8
> RBP: ffff888099848040 R08: ffff88809a5f6440 R09: fffffbfff1860b4c
> R10: ffffffff8c305a5f R11: fffffbfff1860b4b R12: ffff88809984857e
> R13: 0000000000000000 R14: ffff888086aa4000 R15: 0000000000000000
> FS:  00000000009b4880(0000) GS:ffff8880ae700000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 0000000020000140 CR3: 00000000a7fdf000 CR4: 00000000001406e0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> Call Trace:
>  tipc_sendstream+0x4c/0x70 net/tipc/socket.c:1533
>  sock_sendmsg_nosec net/socket.c:652 [inline]
>  sock_sendmsg+0xcf/0x120 net/socket.c:672
>  ____sys_sendmsg+0x32f/0x810 net/socket.c:2352
>  ___sys_sendmsg+0x100/0x170 net/socket.c:2406
>  __sys_sendmmsg+0x195/0x480 net/socket.c:2496
>  __do_sys_sendmmsg net/socket.c:2525 [inline]
>  __se_sys_sendmmsg net/socket.c:2522 [inline]
>  __x64_sys_sendmmsg+0x99/0x100 net/socket.c:2522
>  do_syscall_64+0xf6/0x7d0 arch/x86/entry/common.c:295
>  entry_SYSCALL_64_after_hwframe+0x49/0xb3
> RIP: 0033:0x440199
> ...
>
> This bug was bisected to commit 0a3e060f340d ("tipc: add test for Nagle
> algorithm effectiveness"). However, it is not the case, the trouble was
> from the base in the case of zero data length message sending, we would
> unexpectedly make an empty 'txq' queue after the 'tipc_msg_append()' in
> Nagle mode.
>
> A similar crash can be generated even without the bisected patch but at
> the link layer when it accesses the empty queue.
>
> We solve the issues by building at least one buffer to go with socket's
> header and an optional data section that may be empty like what we had
> with the 'tipc_msg_build()'.
>
> Note: the previous commit 4c21daae3dbc ("tipc: Fix NULL pointer
> dereference in __tipc_sendstream()") is obsoleted by this one since the
> 'txq' will be never empty and the check of 'skb != NULL' is unnecessary
> but it is safe anyway.
Hi, Tuong

If commit 4c21daae3dbc is obsoleted by this one, can you please
send a patch to revert it?

Thanks.

>
> Reported-by: syzbot+8eac6d030e7807c21d32@syzkaller.appspotmail.com
> Fixes: c0bceb97db9e ("tipc: add smart nagle feature")
> Acked-by: Jon Maloy <jmaloy@redhat.com>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>  net/tipc/msg.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/net/tipc/msg.c b/net/tipc/msg.c
> index c0afcd627c5e..046e4cb3acea 100644
> --- a/net/tipc/msg.c
> +++ b/net/tipc/msg.c
> @@ -221,7 +221,7 @@ int tipc_msg_append(struct tipc_msg *_hdr, struct msghdr *m, int dlen,
>         accounted = skb ? msg_blocks(buf_msg(skb)) : 0;
>         total = accounted;
>
> -       while (rem) {
> +       do {
>                 if (!skb || skb->len >= mss) {
>                         skb = tipc_buf_acquire(mss, GFP_KERNEL);
>                         if (unlikely(!skb))
> @@ -245,7 +245,7 @@ int tipc_msg_append(struct tipc_msg *_hdr, struct msghdr *m, int dlen,
>                 skb_put(skb, cpy);
>                 rem -= cpy;
>                 total += msg_blocks(hdr) - curr;
> -       }
> +       } while (rem);
>         return total - accounted;
>  }
>
> --
> 2.13.7
>
>
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
