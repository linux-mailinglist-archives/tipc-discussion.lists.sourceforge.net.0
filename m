Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1B9264EAF
	for <lists+tipc-discussion@lfdr.de>; Thu, 10 Sep 2020 21:23:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kGS9v-0003I9-9j; Thu, 10 Sep 2020 19:23:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1kGS9t-0003I2-PB
 for tipc-discussion@lists.sourceforge.net; Thu, 10 Sep 2020 19:23:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UNGM61D1NO6XVNwEZJUbCKjqzlr6/XJyC2y43IcSOcY=; b=Y7HaxPkyY/V4pMPAFcrrZFYNbb
 Y5VVjjte1+Q+huRi6rZlpW5CoYCPdwP/oE4KbXYUOmc4lEhFNOETnDHiUk/kueACycBdEIws0b/x5
 3mFil7e8BOzL5s3GmaDEf9RYDYZuElHvLAnvzWVtjdNqS2v9k6kBLSWNMHwsMC87vhpY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UNGM61D1NO6XVNwEZJUbCKjqzlr6/XJyC2y43IcSOcY=; b=WhGYnemm3+lt7SbxjBRLOIHFzh
 Ur5lVVkjOlW1QX0PvgixQzk3aWjWJYzyonwEea9yPpQ2OGhQOJvtlas2v93wICX5ZvLQAb2ZCV0Jm
 I6nbt1CNZiFX5AqILofXt/GbCM/jr1j1sh3Q9Y900rBS49/+kpFwnqPXz7Miv3GN9J6U=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kGS9k-002dXo-8j
 for tipc-discussion@lists.sourceforge.net; Thu, 10 Sep 2020 19:23:01 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 8FACF12A2A765;
 Thu, 10 Sep 2020 12:05:55 -0700 (PDT)
Date: Thu, 10 Sep 2020 12:22:41 -0700 (PDT)
Message-Id: <20200910.122241.1357846174503997660.davem@davemloft.net>
To: penguin-kernel@I-love.SAKURA.ne.jp
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200905061447.3463-1-penguin-kernel@I-love.SAKURA.ne.jp>
References: <20200905061447.3463-1-penguin-kernel@I-love.SAKURA.ne.jp>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Thu, 10 Sep 2020 12:05:55 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: i-love.sakura.ne.jp]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kGS9k-002dXo-8j
Subject: Re: [tipc-discussion] [PATCH] tipc: fix shutdown() of connection
 oriented socket
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
Cc: netdev@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Date: Sat,  5 Sep 2020 15:14:47 +0900

> I confirmed that the problem fixed by commit 2a63866c8b51a3f7 ("tipc: fix
> shutdown() of connectionless socket") also applies to stream socket.
> 
> ----------
> #include <sys/socket.h>
> #include <unistd.h>
> #include <sys/wait.h>
> 
> int main(int argc, char *argv[])
> {
>         int fds[2] = { -1, -1 };
>         socketpair(PF_TIPC, SOCK_STREAM /* or SOCK_DGRAM */, 0, fds);
>         if (fork() == 0)
>                 _exit(read(fds[0], NULL, 1));
>         shutdown(fds[0], SHUT_RDWR); /* This must make read() return. */
>         wait(NULL); /* To be woken up by _exit(). */
>         return 0;
> }
> ----------
> 
> Since shutdown(SHUT_RDWR) should affect all processes sharing that socket,
> unconditionally setting sk->sk_shutdown to SHUTDOWN_MASK will be the right
> behavior.
> 
> Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>

Applied and queued up for -stable, thank you.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
