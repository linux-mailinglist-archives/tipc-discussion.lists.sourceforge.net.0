Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 195D525B6B1
	for <lists+tipc-discussion@lfdr.de>; Thu,  3 Sep 2020 00:50:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kDbaO-0001JX-5V; Wed, 02 Sep 2020 22:50:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1kDbaN-0001JF-4n
 for tipc-discussion@lists.sourceforge.net; Wed, 02 Sep 2020 22:50:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F71hyGr45NCQjn+hu5HtUTQwRn9O+TM43IT2CUJ/vR4=; b=EMval1InopPWpjzmBzvgYXSPXT
 3MlLnEZ9678u4uLxuIvWLbxsJ2gtDldXu9SbAI8jU7wUkgYWup6+H+6iuQzed7kgZJWfmydutxuR2
 e94vYNNlGr2k4h93wRaF7iTofv6GdccRfKzN18b2EP/viRbCqoD3395B2Hb47VTVRJDg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=F71hyGr45NCQjn+hu5HtUTQwRn9O+TM43IT2CUJ/vR4=; b=RIhcub/HPj9zvaj07krvy1Dxjr
 jRtz54+l3SOcA88l4AIUJ481No1ZcqvYmpvY8Hx8nejS+uo46SRGULYAJfu8lL7/1EmMOUA4Cj3vy
 CoEuRMLiIeGFm3h8Abf8IJFd+QpDvdMH7t2rnJyWBM5Gu+eB05Jjzq4/8VcZXDYFuzYw=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kDbaH-009kRF-Th
 for tipc-discussion@lists.sourceforge.net; Wed, 02 Sep 2020 22:50:35 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id E1B811574121A;
 Wed,  2 Sep 2020 15:33:31 -0700 (PDT)
Date: Wed, 02 Sep 2020 15:50:17 -0700 (PDT)
Message-Id: <20200902.155017.1839963224242775770.davem@davemloft.net>
To: penguin-kernel@I-love.SAKURA.ne.jp
From: David Miller <davem@davemloft.net>
In-Reply-To: <8267b7c2-3dc9-41ec-5490-d1080a63be11@I-love.SAKURA.ne.jp>
References: <0000000000003feb9805a9c77128@google.com>
 <1eb799fb-c6e0-3eb5-f6fe-718cd2f62e92@I-love.SAKURA.ne.jp>
 <8267b7c2-3dc9-41ec-5490-d1080a63be11@I-love.SAKURA.ne.jp>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Wed, 02 Sep 2020 15:33:32 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: i-love.sakura.ne.jp]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kDbaH-009kRF-Th
Subject: Re: [tipc-discussion] [PATCH v2] tipc: fix shutdown() of
 connectionless socket
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
Cc: syzbot+e36f41d207137b5d12f7@syzkaller.appspotmail.com,
 netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 tipc-discussion@lists.sourceforge.net, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Date: Wed, 2 Sep 2020 22:44:16 +0900

> syzbot is reporting hung task at nbd_ioctl() [1], for there are two
> problems regarding TIPC's connectionless socket's shutdown() operation.
 ...
> One problem is that wait_for_completion() from flush_workqueue() from
> nbd_start_device_ioctl() from nbd_ioctl() cannot be completed when
> nbd_start_device_ioctl() received a signal at wait_event_interruptible(),
> for tipc_shutdown() from kernel_sock_shutdown(SHUT_RDWR) from
> nbd_mark_nsock_dead() from sock_shutdown() from nbd_start_device_ioctl()
> is failing to wake up a WQ thread sleeping at wait_woken() from
> tipc_wait_for_rcvmsg() from sock_recvmsg() from sock_xmit() from
> nbd_read_stat() from recv_work() scheduled by nbd_start_device() from
> nbd_start_device_ioctl(). Fix this problem by always invoking
> sk->sk_state_change() (like inet_shutdown() does) when tipc_shutdown() is
> called.
> 
> The other problem is that tipc_wait_for_rcvmsg() cannot return when
> tipc_shutdown() is called, for tipc_shutdown() sets sk->sk_shutdown to
> SEND_SHUTDOWN (despite "how" is SHUT_RDWR) while tipc_wait_for_rcvmsg()
> needs sk->sk_shutdown set to RCV_SHUTDOWN or SHUTDOWN_MASK. Fix this
> problem by setting sk->sk_shutdown to SHUTDOWN_MASK (like inet_shutdown()
> does) when the socket is connectionless.
> 
> [1] https://syzkaller.appspot.com/bug?id=3fe51d307c1f0a845485cf1798aa059d12bf18b2
> 
> Reported-by: syzbot <syzbot+e36f41d207137b5d12f7@syzkaller.appspotmail.com>
> Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>

Applied and queued up for -stable, thank you.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
