Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8791378F
	for <lists+tipc-discussion@lfdr.de>; Sat,  4 May 2019 07:20:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hMn64-0003XA-Cb; Sat, 04 May 2019 05:20:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hMn62-0003X2-Ql
 for tipc-discussion@lists.sourceforge.net; Sat, 04 May 2019 05:20:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VPgP5hngdlD034//h2CH0htsUGW3nqFNqgyhjrLjHhs=; b=UXjdqSB0MFT4K09gsKzrIlCjtK
 Hn6xU7yR5m48cOUtU6TBac4MRaD8dzJ4f2vIGB5d0czW9id7o3mWx13tn1v4GJBjBCB55+xQ87JSs
 eNpuHekQLIj3CiCinAd9l2jgiKD1HuYiFcahQAsiJMUx+r7i6MRZlP9MStG/FVMcZXoQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VPgP5hngdlD034//h2CH0htsUGW3nqFNqgyhjrLjHhs=; b=jsgYiqX9JOLERS+Ms/hmGJsuvf
 fduy1Znsrpey+r/JlskIuOVjcUdeRcZAy7Jy7gjTM/riazxbLBKmrhldPvJSaDCuN94lGfBd8C5ZU
 fQEZ2oR1xVF/7FooX1P6N2rzdeDURjtlNK2vqugENL9TdqzadcH7pKQA/rYlC6gOWolk=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hMn60-004Xud-MA
 for tipc-discussion@lists.sourceforge.net; Sat, 04 May 2019 05:20:26 +0000
Received: from localhost (unknown [75.104.87.19])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 5711B14D9FAC7;
 Fri,  3 May 2019 22:20:09 -0700 (PDT)
Date: Sat, 04 May 2019 01:20:06 -0400 (EDT)
Message-Id: <20190504.012006.508656003426228400.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190502102323.16548-1-tuong.t.lien@dektech.com.au>
References: <20190502102323.16548-1-tuong.t.lien@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 03 May 2019 22:20:15 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
X-Headers-End: 1hMn60-004Xud-MA
Subject: Re: [tipc-discussion] [net-next] tipc: fix missing Name entries due
 to half-failover
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
Cc: tipc-discussion@lists.sourceforge.net, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Tuong Lien <tuong.t.lien@dektech.com.au>
Date: Thu,  2 May 2019 17:23:23 +0700

> TIPC link can temporarily fall into "half-establish" that only one of
> the link endpoints is ESTABLISHED and starts to send traffic, PROTOCOL
> messages, whereas the other link endpoint is not up (e.g. immediately
> when the endpoint receives ACTIVATE_MSG, the network interface goes
> down...).
> 
> This is a normal situation and will be settled because the link
> endpoint will be eventually brought down after the link tolerance time.
> 
> However, the situation will become worse when the second link is
> established before the first link endpoint goes down,
> For example:
> 
>    1. Both links <1A-2A>, <1B-2B> down
>    2. Link endpoint 2A up, but 1A still down (e.g. due to network
>       disturbance, wrong session, etc.)
>    3. Link <1B-2B> up
>    4. Link endpoint 2A down (e.g. due to link tolerance timeout)
>    5. Node B starts failover onto link <1B-2B>
> 
>    ==> Node A does never start link failover.
> 
> When the "half-failover" situation happens, two consequences have been
> observed:
> 
> a) Peer link/node gets stuck in FAILINGOVER state;
> b) Traffic or user messages that peer node is trying to failover onto
> the second link can be partially or completely dropped by this node.
> 
> The consequence a) was actually solved by commit c140eb166d68 ("tipc:
> fix failover problem"), but that commit didn't cover the b). It's due
> to the fact that the tunnel link endpoint has never been prepared for a
> failover, so the 'l->drop_point' (and the other data...) is not set
> correctly. When a TUNNEL_MSG from peer node arrives on the link,
> depending on the inner message's seqno and the current 'l->drop_point'
> value, the message can be dropped (- treated as a duplicate message) or
> processed.
> At this early stage, the traffic messages from peer are likely to be
> NAME_DISTRIBUTORs, this means some name table entries will be missed on
> the node forever!
> 
> The commit resolves the issue by starting the FAILOVER process on this
> node as well. Another benefit from this solution is that we ensure the
> link will not be re-established until the failover ends.
> 
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

Applied, thank you.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
