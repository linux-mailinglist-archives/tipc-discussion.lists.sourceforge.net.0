Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E7C2478E9
	for <lists+tipc-discussion@lfdr.de>; Mon, 17 Aug 2020 23:35:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k7mmQ-0003AI-7q; Mon, 17 Aug 2020 21:34:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1k7mmO-0003A8-Qt
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Aug 2020 21:34:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2857/61NQcqrQIDPsjaisyOBoDpo/XmWBK+TVG+1Rp0=; b=bnfYrQd29uyQ0cciIxZGa5NW9h
 i00n4GE1auKjjxkiN8wMYr3O2CBDfUjwNN4P7wMr7UeuYYpWPfL1tM1MkKEPv2UulZgGXpvNF0F8l
 Dxgk1qSOuiq4er3IgtCxWsx6f/k9bloB1R03iTFjQvyLBkECxd6wg04lAQnqpe4idqjE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2857/61NQcqrQIDPsjaisyOBoDpo/XmWBK+TVG+1Rp0=; b=jWkpkFmDrzUUrMDUtSkDxHGaHS
 6ksrFhNDewDdNsreGdAe2t5YQIdloLm80wpKH9htd/mDm/3PZTNjbDmBCL8fhWP2K9pQ69yqy3Ydo
 SliodxIc75JVQsgYBaqQa5p/MdFzxHjfuB0e7WDJ9Lba6XrYV6QK4u7jtvNOyow72PtE=;
Received: from [23.128.96.9] (helo=shards.monkeyblade.net)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k7mmL-00Eb2P-A8
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Aug 2020 21:34:56 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 81EAD15D4582A;
 Mon, 17 Aug 2020 14:17:56 -0700 (PDT)
Date: Mon, 17 Aug 2020 14:34:38 -0700 (PDT)
Message-Id: <20200817.143438.857390576001965310.davem@davemloft.net>
To: xiyou.wangcong@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <CAM_iQpVkDg3WKik_j98gdvVirkQdaTQ2zzg8GVzBeij6i+aNnQ@mail.gmail.com>
References: <CAM_iQpWQ6um=-oYK4_sgY3=3PsV1GEgCfGMYXANJ-spYRcz2XQ@mail.gmail.com>
 <f46edd0e-f44c-e600-2026-2d2ca960a94b@infradead.org>
 <CAM_iQpVkDg3WKik_j98gdvVirkQdaTQ2zzg8GVzBeij6i+aNnQ@mail.gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 17 Aug 2020 14:17:56 -0700 (PDT)
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1k7mmL-00Eb2P-A8
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
Date: Mon, 17 Aug 2020 11:55:55 -0700

> On Mon, Aug 17, 2020 at 11:49 AM Randy Dunlap <rdunlap@infradead.org> wrote:
>>
>> It just restricts how TIPC can be built, so that
>> TIPC=y and IPV6=m cannot happen together, which causes
>> a build error.
> 
> It also disallows TIPC=m and IPV6=m, right?

That combination is allowed.

The whole "X || X=n" construct means X must be off or equal to the
value of the Kconfig entry this dependency is for.

Thus you'll see "depends IPV6 || IPV6=n" everywhere.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
