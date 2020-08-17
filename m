Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D592478F9
	for <lists+tipc-discussion@lfdr.de>; Mon, 17 Aug 2020 23:39:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k7mr7-0001y4-1z; Mon, 17 Aug 2020 21:39:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1k7mr5-0001xx-Ol
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Aug 2020 21:39:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2M+/uY6wqIYlre7SJAdbV/xfQDp0Kub4VhlICnuBdOM=; b=OanXdjW9pfz5zcrDyUkQYaoB/I
 BtzGfSj+T6U2HDVJ//S4KrbgygMZWNr1FuDm01nuWg9T4Va8RJECeDxG0WkZPAfHUkX2XKSwy7+YY
 S2v8ZT1OZKrhQ6QMKBday0aqs4uYhuOOsAIszpNT5nQhFVLyPMYL9cORt+OXfW+mgVwA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2M+/uY6wqIYlre7SJAdbV/xfQDp0Kub4VhlICnuBdOM=; b=kiYDD6azVui1OTf3JGjsIi7H7E
 J5c5qgeNP24WcJiWy+68Tsg/0hCWaG8iGXr6jbgOgxLf+/C9OKNTDkYw5fhVOk8A5sjwRdqFS6hhO
 ctodVpQ8VOwIAJ/qSDtahnE4ET4OT7tKyxxnN5an+Cvxo/NELsld+ck+/4dOLWcjFzLs=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k7mr4-00Afx3-Hh
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Aug 2020 21:39:47 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 94BEE15D497DA;
 Mon, 17 Aug 2020 14:22:54 -0700 (PDT)
Date: Mon, 17 Aug 2020 14:39:39 -0700 (PDT)
Message-Id: <20200817.143939.248108433650303983.davem@davemloft.net>
To: xiyou.wangcong@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <CAM_iQpUEjZzW-e=h30KZVvg02ZZMRHZn9JExxgn6E=XyWsjzNQ@mail.gmail.com>
References: <CAM_iQpUQtof+dQseFjS6fxucUZe5tkhUW5EvK+XtZE=cRRq4-A@mail.gmail.com>
 <6d7aa56a-5324-87c9-4150-b73be7e3c0a6@infradead.org>
 <CAM_iQpUEjZzW-e=h30KZVvg02ZZMRHZn9JExxgn6E=XyWsjzNQ@mail.gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 17 Aug 2020 14:22:54 -0700 (PDT)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k7mr4-00Afx3-Hh
Subject: Re: [tipc-discussion] [PATCH net] tipc: not enable tipc when ipv6
 works as a module
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
Cc: netdev@vger.kernel.org, rdunlap@infradead.org,
 tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Cong Wang <xiyou.wangcong@gmail.com>
Date: Mon, 17 Aug 2020 13:59:46 -0700

> Is this a new Kconfig feature? ipv6_stub was introduced for
> VXLAN, at that time I don't remember we have such kind of
> Kconfig rules, otherwise it would not be needed.

The ipv6_stub exists in order to allow the troublesome
"ipv6=m && feature_using_ipv6=y" combination.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
