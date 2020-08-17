Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B762478F1
	for <lists+tipc-discussion@lfdr.de>; Mon, 17 Aug 2020 23:37:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k7mpA-0001sz-Mp; Mon, 17 Aug 2020 21:37:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1k7mp8-0001sr-8C
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Aug 2020 21:37:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J8P0p3x1adrg0noG4MtUoI6tM/OHqx4DOuSglrYbUzs=; b=MxDkTBXp6tjE2zIiTgQdkFoyIq
 F3OFkBNqd73qUIUaO6mRsxgD1KMwtTadf4nQ7XRF57RxnhdG0/wpOvS0yQ8Zbn8iyIQsfydwsunfp
 QGIUSOffsRRq9BL6dvC6bh0taaxgHy5tsjdwi8Gu1ZAC6SgERlm4joX1pR0GWDa+z1E0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=J8P0p3x1adrg0noG4MtUoI6tM/OHqx4DOuSglrYbUzs=; b=DVVMYzeCF0OqELK7Dc0sNFY3z/
 9fqwQKioCzPxu+ex4B5lIld2WpGjjGqMJ0ytedgBD5/D7Pb362R84YiJggvBEny4YSWKuSR0Lid7W
 KRnGrh/DaKGmXBgUyFYVhy7bfYSx6KwNM4pfoXETJpoNfshAgwdlY3mMwBOvk1ZcVXxY=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k7mp6-00AfrG-4W
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Aug 2020 21:37:46 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B19EF15D497CF;
 Mon, 17 Aug 2020 14:20:45 -0700 (PDT)
Date: Mon, 17 Aug 2020 14:37:31 -0700 (PDT)
Message-Id: <20200817.143731.2031150170446785853.davem@davemloft.net>
To: xiyou.wangcong@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <CAM_iQpUQtof+dQseFjS6fxucUZe5tkhUW5EvK+XtZE=cRRq4-A@mail.gmail.com>
References: <CAM_iQpWOTLKHsJYDsCM3Pd1fsqPxqj8cSP=nL63Dh0esiJ2QfA@mail.gmail.com>
 <98214acb-5e9f-0477-bc97-1f3b2c690f14@infradead.org>
 <CAM_iQpUQtof+dQseFjS6fxucUZe5tkhUW5EvK+XtZE=cRRq4-A@mail.gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 17 Aug 2020 14:20:46 -0700 (PDT)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k7mp6-00AfrG-4W
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
Date: Mon, 17 Aug 2020 13:29:40 -0700

> On Mon, Aug 17, 2020 at 12:55 PM Randy Dunlap <rdunlap@infradead.org> wrote:
>>
>> TIPC=m and IPV6=m builds just fine.
>>
>> Having tipc autoload ipv6 is a different problem. (IMO)
>>
>>
>> This Kconfig entry:
>>  menuconfig TIPC
>>         tristate "The TIPC Protocol"
>>         depends on INET
>> +       depends on IPV6 || IPV6=n
>>
>> says:
>> If IPV6=n, TIPC can be y/m/n.
>> If IPV6=y/m, TIPC is limited to whatever IPV6 is set to.
> 
> Hmm, nowadays we _do_ have IPV6=y on popular distros.
> So this means TIPC would have to be builtin after this patch??

Note the word "limited", ipv6=y allows y and m, ipv6=m (more limited)
allows only m.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
