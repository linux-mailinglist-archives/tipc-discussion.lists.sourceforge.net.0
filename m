Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7562CF26CA
	for <lists+tipc-discussion@lfdr.de>; Thu,  7 Nov 2019 06:16:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iSa9o-0001gN-Gk; Thu, 07 Nov 2019 05:16:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1iSa9m-0001gG-IZ
 for tipc-discussion@lists.sourceforge.net; Thu, 07 Nov 2019 05:16:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cieyI2agExkRfu6CourIUndKv/qPiHABzZQui+vScgI=; b=DGj0HnrhVLQSySXmGdPFBocU/g
 g7d3x39BltMANYsbcGHNmb8rPHsvvsD6slCUeN5jywJ7snSsrk3U7T0+ronJjR1dGu9DNEzQmKzlH
 kWCS0GKG83GkEVQNtmRbT00ZhcG4B7H62IqLaKTLCqCi0wn6p0rp+WuT4yYXwr0TIZyA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cieyI2agExkRfu6CourIUndKv/qPiHABzZQui+vScgI=; b=RZ2ml2ekDRAX9EHecVhqrQ//mi
 dZXf5eFvrhqSLLrqr+dF1+EkwdJC1+I4StiTiSrFUNMGorLbUcTvVNwyQHg55QhmJUOLfZqQVF927
 EPylI9nIw9QVnUPxYiKB2sU+nyzE+nJwu3zcY3xk0b+yD4e+5rIJXX/IROvMGGqjzM48=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iSa9l-00399n-02
 for tipc-discussion@lists.sourceforge.net; Thu, 07 Nov 2019 05:16:30 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 9B38915108908;
 Wed,  6 Nov 2019 21:16:17 -0800 (PST)
Date: Wed, 06 Nov 2019 21:16:17 -0800 (PST)
Message-Id: <20191106.211617.1179395285730859401.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191106111217.23178-1-tuong.t.lien@dektech.com.au>
References: <20191106111217.23178-1-tuong.t.lien@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 06 Nov 2019 21:16:17 -0800 (PST)
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iSa9l-00399n-02
Subject: Re: [tipc-discussion] [net-next] tipc: eliminate the dummy packet
 in link synching
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
Date: Wed,  6 Nov 2019 18:12:17 +0700

> When preparing tunnel packets for the link failover or synchronization,
> as for the safe algorithm, we added a dummy packet on the pair link but
> never sent it out. In the case of failover, the pair link will be reset
> anyway. But for link synching, it will always result in retransmission
> of the dummy packet after that.
> We have also observed that such the retransmission at the early stage
> when a new node comes in a large cluster will take some time and hard
> to be done, leading to the repeated retransmit failures and the link is
> reset.
> 
> Since in commit 4929a932be33 ("tipc: optimize link synching mechanism")
> we have already built a dummy 'TUNNEL_PROTOCOL' message on the new link
> for the synchronization, there's no need for the dummy on the pair one,
> this commit will skip it when the new mechanism takes in place. In case
> nothing exists in the pair link's transmq, the link synching will just
> start and stop shortly on the peer side.
> 
> The patch is backward compatible.
> 
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>
> Tested-by: Hoang Le <hoang.h.le@dektech.com.au>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

Applied, thanks Tuong.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
