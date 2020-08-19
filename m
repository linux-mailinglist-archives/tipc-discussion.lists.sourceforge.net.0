Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BB82498E3
	for <lists+tipc-discussion@lfdr.de>; Wed, 19 Aug 2020 10:57:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k8JuS-0003v8-Ot; Wed, 19 Aug 2020 08:57:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1k8JuR-0003v1-S3
 for tipc-discussion@lists.sourceforge.net; Wed, 19 Aug 2020 08:57:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3IDlmArv+ha2HqUtuqilQB53eBkXbwqE5RHb/bHCDeE=; b=V7j2c+nWwi6UJVoT0GRbQkhnvJ
 IX7BSwLFjBgTkoi8N+4xwlTM2x42ZWciJMLK0q8J6C6e9JEg7UA8bFOe1mCAECdVIJsATgTpznqGx
 TOfQVIYGxpGVoNsfJFBHGNlBu/L+dUJ9QGqLp+Plim07HhiYO84KolsRRrDGOaSmvIaU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3IDlmArv+ha2HqUtuqilQB53eBkXbwqE5RHb/bHCDeE=; b=huo6fF06peECf1149ZxJwF4YYl
 2ATUpY2+rBUiubzGArQ/C4Rgz1CAcOG+F/nE1DIZ0TPkj1xIanBZGQAuRb+ZyY83sDtz9LGUZi3vO
 iS9ypgBKE7MQemeykp5YJB+HpNE3/dykNAVl3r72W5X+iSAJP6hlfVnaf/9IBqGZFU/M=;
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k8JuO-00Fvub-5f
 for tipc-discussion@lists.sourceforge.net; Wed, 19 Aug 2020 08:57:27 +0000
Received: by mail-wr1-f68.google.com with SMTP id p20so20721838wrf.0
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 19 Aug 2020 01:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3IDlmArv+ha2HqUtuqilQB53eBkXbwqE5RHb/bHCDeE=;
 b=jLFOV3C93J/646mCY5hFwORqAfzjfF+jfChRKBH6730XYB9q3jyij6imWacVqqEgOq
 9AIDOxkO1XGxUB33jqXcYVgyaphb9L2m9yxu063yJE2S+Yw2ZCsIcT7B1XGnOUokispI
 0mTzZldZivb7OfrnX70Ie0qhIpQJpFuDVE6ABo245MXqu6wph7JzAdAIIWOYiOe/sjJW
 MX4C+xOxgv3EDPVUxbZsMsl+E0wi2YU4kOG07fuKrvNk6zX5d2xH9BipVj/Ax9GRwVLy
 /m9GGGCOz6+IKKmVSqrQwmYYPFBqpbicZhZv/TW6+Pgwxzkh/zTfyZl2qWz1B+Ucm9wO
 619w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3IDlmArv+ha2HqUtuqilQB53eBkXbwqE5RHb/bHCDeE=;
 b=s+LfAkMB/XYZYIipasZSwgbtFNsPzH+5NkpWHJZubdoCZB7N1zPEZHO9KijyTH+5Gw
 3t5/H95u4kQJuMxLN1KfRhmE/dVCEyc7b+kN0DhhCLQPo1M/dh3ClwjMpODMw3pQD70e
 iILaFMoHNAmkC3GGspYQ2uRuAkNEpjAiDtykVoAgBKojo7CVgLRjvB6VAXtqBYiqRax/
 Ea68R9Bv3GlC7DlhZtWzLRyUO8zwa0ui3U1zD/Um1Yt3z+37bTF7nNXOfZkOvBBCf/KH
 xB8GngEOiXQL4M0wTHIsjHbahIzVJjD2EbbWgqnt4iQJiysSWVRR2CFFBgzv707htk5G
 SsWA==
X-Gm-Message-State: AOAM531pT9vFQfI4cCC83SbPUOzaaf9qJeDCmQVSgLEsTXbAxyeuHcwg
 7u7pfuWxlNxABLVDK9Fgtx+N39Fu7Z/FA+JidCo=
X-Google-Smtp-Source: ABdhPJzCJKAynaogm/xrbpKCom0oA16u65iZqPuQmO4PBwVlBFVcOkyBzIb2BaTu5RBQcz1oLfqgTJW1hyxZnNJM+qU=
X-Received: by 2002:a5d:43ca:: with SMTP id v10mr23896375wrr.299.1597827437739; 
 Wed, 19 Aug 2020 01:57:17 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000d411cf05a8ffc4a6@google.com>
In-Reply-To: <000000000000d411cf05a8ffc4a6@google.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Wed, 19 Aug 2020 17:09:54 +0800
Message-ID: <CADvbK_dRc+Cn4wM4R9KEzoHy+jUa7uWzfA096NthsEEXxwNGOQ@mail.gmail.com>
To: syzbot <syzbot+47bbc6b678d317cccbe0@syzkaller.appspotmail.com>
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googlegroups.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -1.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k8JuO-00Fvub-5f
Subject: Re: [tipc-discussion] WARNING: suspicious RCU usage in
 tipc_l2_send_msg
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

On Sat, Jun 27, 2020 at 1:25 AM syzbot
<syzbot+47bbc6b678d317cccbe0@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following crash on:
>
> HEAD commit:    b835a71e usbnet: smsc95xx: Fix use-after-free after removal
> git tree:       net
> console output: https://syzkaller.appspot.com/x/log.txt?x=1095a51d100000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=dcc6334acae363d4
> dashboard link: https://syzkaller.appspot.com/bug?extid=47bbc6b678d317cccbe0
> compiler:       gcc (GCC) 10.1.0-syz 20200507
>
> Unfortunately, I don't have any reproducer for this crash yet.
>
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+47bbc6b678d317cccbe0@syzkaller.appspotmail.com
>
> =============================
> WARNING: suspicious RCU usage
> 5.8.0-rc1-syzkaller #0 Not tainted
> -----------------------------
> net/tipc/bearer.c:466 suspicious rcu_dereference_check() usage!
>
> other info that might help us debug this:
>
>
> rcu_scheduler_active = 2, debug_locks = 1
> 2 locks held by kworker/0:16/19143:
>  #0: ffff8880a6901d38 ((wq_completion)cryptd){+.+.}-{0:0}, at: arch_atomic64_set arch/x86/include/asm/atomic64_64.h:34 [inline]
>  #0: ffff8880a6901d38 ((wq_completion)cryptd){+.+.}-{0:0}, at: atomic64_set include/asm-generic/atomic-instrumented.h:856 [inline]
>  #0: ffff8880a6901d38 ((wq_completion)cryptd){+.+.}-{0:0}, at: atomic_long_set include/asm-generic/atomic-long.h:41 [inline]
>  #0: ffff8880a6901d38 ((wq_completion)cryptd){+.+.}-{0:0}, at: set_work_data kernel/workqueue.c:616 [inline]
>  #0: ffff8880a6901d38 ((wq_completion)cryptd){+.+.}-{0:0}, at: set_work_pool_and_clear_pending kernel/workqueue.c:643 [inline]
>  #0: ffff8880a6901d38 ((wq_completion)cryptd){+.+.}-{0:0}, at: process_one_work+0x82b/0x1670 kernel/workqueue.c:2240
>  #1: ffffc90006f9fda8 ((work_completion)(&cpu_queue->work)){+.+.}-{0:0}, at: process_one_work+0x85f/0x1670 kernel/workqueue.c:2244
>
> stack backtrace:
> CPU: 0 PID: 19143 Comm: kworker/0:16 Not tainted 5.8.0-rc1-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> Workqueue: cryptd cryptd_queue_worker
> Call Trace:
>  __dump_stack lib/dump_stack.c:77 [inline]
>  dump_stack+0x18f/0x20d lib/dump_stack.c:118
>  tipc_l2_send_msg+0x354/0x420 net/tipc/bearer.c:466
>  tipc_aead_encrypt_done+0x204/0x3a0 net/tipc/crypto.c:761
>  cryptd_aead_crypt+0xe8/0x1d0 crypto/cryptd.c:739
>  cryptd_queue_worker+0x118/0x1b0 crypto/cryptd.c:181
>  process_one_work+0x94c/0x1670 kernel/workqueue.c:2269
>  worker_thread+0x64c/0x1120 kernel/workqueue.c:2415
>  kthread+0x3b5/0x4a0 kernel/kthread.c:291
>  ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:293
>
Like in bearer.c, rcu_read_lock() is needed before calling
b->media->send_msg() in tipc_aead_encrypt_done():

@@ -757,10 +757,12 @@ static void tipc_aead_encrypt_done(struct
crypto_async_request *base, int err)
        switch (err) {
        case 0:
                this_cpu_inc(tx->stats->stat[STAT_ASYNC_OK]);
+               rcu_read_lock();
                if (likely(test_bit(0, &b->up)))
                        b->media->send_msg(net, skb, b, &tx_ctx->dst);
                else
                        kfree_skb(skb);
+               rcu_read_unlock();
                break;
>
> ---
> This bug is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
>
> syzbot will keep track of this bug report. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
