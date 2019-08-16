Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA0D90B69
	for <lists+tipc-discussion@lfdr.de>; Sat, 17 Aug 2019 01:28:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hyldW-0004a8-U6; Fri, 16 Aug 2019 23:27:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hyldV-0004Zf-Ef
 for tipc-discussion@lists.sourceforge.net; Fri, 16 Aug 2019 23:27:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tzYxGv+U/pN9A7z8nCvXB7Fk42xLDfo2TKZMXwsp/00=; b=do05kH8F3jw9noeKa6fQUuKjMo
 0ppe7+g/jQMGJlMzCJfi2BIN4zAxNs8bWXq3IFTlqFoxWunrY3yh1cNai2zrVJWIx55gS/g6TnYD9
 /iKdSf/+oGZ59RCCM+FInC5zXSyH9l65N2CKzd3JzIzDM7uwamYtHITm0YToVrBJVkf8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tzYxGv+U/pN9A7z8nCvXB7Fk42xLDfo2TKZMXwsp/00=; b=NdYNDVXOTUCz01L6xHoThwYC/E
 ecPI7IpdMP98hef2g+4bog/ksZD6xnGspU0MZEUvLpxVD9ke0USpqy7d2OByEb27XKhhSCINQ9viM
 jx7ZDuWZaszMTudr/NU+InuluAAnrDaCV45VnofZnuQZY50S+1ponWgaUnK1KW5cbSgA=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hyldQ-006KoH-0q
 for tipc-discussion@lists.sourceforge.net; Fri, 16 Aug 2019 23:27:57 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 15473141B37F4;
 Fri, 16 Aug 2019 16:27:43 -0700 (PDT)
Date: Fri, 16 Aug 2019 16:27:37 -0700 (PDT)
Message-Id: <20190816.162737.128286385440292449.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190815032408.7287-1-tuong.t.lien@dektech.com.au>
References: <20190815032408.7287-1-tuong.t.lien@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 16 Aug 2019 16:27:43 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hyldQ-006KoH-0q
Subject: Re: [tipc-discussion] [net] tipc: fix false detection of retransmit
 failures
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
Date: Thu, 15 Aug 2019 10:24:08 +0700

> This commit eliminates the use of the link 'stale_limit' & 'prev_from'
> (besides the already removed - 'stale_cnt') variables in the detection
> of repeated retransmit failures as there is no proper way to initialize
> them to avoid a false detection, i.e. it is not really a retransmission
> failure but due to a garbage values in the variables.
> 
> Instead, a jiffies variable will be added to individual skbs (like the
> way we restrict the skb retransmissions) in order to mark the first skb
> retransmit time. Later on, at the next retransmissions, the timestamp
> will be checked to see if the skb in the link transmq is "too stale",
> that is, the link tolerance time has passed, so that a link reset will
> be ordered. Note, just checking on the first skb in the queue is fine
> enough since it must be the oldest one.
> A counter is also added to keep track the actual skb retransmissions'
> number for later checking when the failure happens.
> 
> The downside of this approach is that the skb->cb[] buffer is about to
> be exhausted, however it is always able to allocate another memory area
> and keep a reference to it when needed.
> 
> Fixes: 77cf8edbc0e7 ("tipc: simplify stale link failure criteria")
> Reported-by: Hoang Le <hoang.h.le@dektech.com.au>
> Acked-by: Ying Xue <ying.xue@windriver.com>
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

Applied, thank you.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
