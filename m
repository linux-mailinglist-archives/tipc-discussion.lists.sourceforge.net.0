Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FD2249147
	for <lists+tipc-discussion@lfdr.de>; Wed, 19 Aug 2020 01:00:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k8Aa6-0004KA-6z; Tue, 18 Aug 2020 22:59:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1k8Aa4-0004K0-Ho
 for tipc-discussion@lists.sourceforge.net; Tue, 18 Aug 2020 22:59:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v0pfWRcY3lE1b3pexJ7P2osjDcYyovoM4icFONFJQBY=; b=YqdHAHhDcv3icOrhnsoBWolWzN
 guE/BGLep6ID+sRiuekGxXGL8mt0M/1AeApVXuUojrcLhUOeqnGiGtvnyzx/kzi1ETLoY1BnHcXUM
 X6Juj3kCwzo5DHmm784avpW6yPitD2Vgz7mLynoVqfy61EuqtmqXm+pFSZQu/ORZPqIw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v0pfWRcY3lE1b3pexJ7P2osjDcYyovoM4icFONFJQBY=; b=DUr8q9unQVlf5Wqwf1lt1OTcfD
 uvtvki1M3odo1vKY5xqMvsVutVwHr7D21CmAcn/SiZCKF+5gMFf+ikZa9kCQiJrWDk929mp26UhoH
 /tCtso2xJOp0A6rFgMDvbtCa6sPEW7HQR0bWu8BN/JtrD6D6tBHTD3UrjGUOVwtr8ZZg=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k8Aa0-00Fdtw-LK
 for tipc-discussion@lists.sourceforge.net; Tue, 18 Aug 2020 22:59:48 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id BAC8A127E56E7;
 Tue, 18 Aug 2020 15:42:39 -0700 (PDT)
Date: Tue, 18 Aug 2020 15:59:25 -0700 (PDT)
Message-Id: <20200818.155925.247746694282898053.davem@davemloft.net>
To: lucien.xin@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <1e29a394c9ccb72126dbc3e9769a59c0234f8649.1597645849.git.lucien.xin@gmail.com>
References: <1e29a394c9ccb72126dbc3e9769a59c0234f8649.1597645849.git.lucien.xin@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 18 Aug 2020 15:42:40 -0700 (PDT)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: miraclelinux.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k8Aa0-00Fdtw-LK
Subject: Re: [tipc-discussion] [PATCH net] ipv6: some fixes for
 ipv6_dev_find()
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
Cc: netdev@vger.kernel.org, hideaki.yoshifuji@miraclelinux.com,
 tipc-discussion@lists.sourceforge.net, dsahern@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Xin Long <lucien.xin@gmail.com>
Date: Mon, 17 Aug 2020 14:30:49 +0800

> This patch is to do 3 things for ipv6_dev_find():
> 
>   As David A. noticed,
> 
>   - rt6_lookup() is not really needed. Different from __ip_dev_find(),
>     ipv6_dev_find() doesn't have a compatibility problem, so remove it.
> 
>   As Hideaki suggested,
> 
>   - "valid" (non-tentative) check for the address is also needed.
>     ipv6_chk_addr() calls ipv6_chk_addr_and_flags(), which will
>     traverse the address hash list, but it's heavy to be called
>     inside ipv6_dev_find(). This patch is to reuse the code of
>     ipv6_chk_addr_and_flags() for ipv6_dev_find().
> 
>   - dev parameter is passed into ipv6_dev_find(), as link-local
>     addresses from user space has sin6_scope_id set and the dev
>     lookup needs it.
> 
> Fixes: 81f6cb31222d ("ipv6: add ipv6_dev_find()")
> Suggested-by: YOSHIFUJI Hideaki <hideaki.yoshifuji@miraclelinux.com>
> Reported-by: David Ahern <dsahern@gmail.com>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>

Applied, thank you.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
