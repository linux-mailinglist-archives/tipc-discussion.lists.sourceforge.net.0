Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E19021F6E35
	for <lists+tipc-discussion@lfdr.de>; Thu, 11 Jun 2020 21:48:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jjTBy-0006fm-KZ; Thu, 11 Jun 2020 19:48:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1jjTBx-0006fe-7h
 for tipc-discussion@lists.sourceforge.net; Thu, 11 Jun 2020 19:48:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=96j773CdpiMY0Rv5GuIcOdUdGR/wk/SzqEY9XgVKEcs=; b=XAAi3b1VJgpFYV5JZmId447Qdy
 BnzIwGP1RMVVfEalNHQm0gp1BeEOCcohoZQloEs2cpaYOfEiLcP/MjjFna9Yq1Uwg2apwJudRpd6a
 L3aKVcdUS2diXSr0n615lnXXd6ZuqUl1YgIleXUw4CgN0oW//FOl6+h0O94wmchRai84=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=96j773CdpiMY0Rv5GuIcOdUdGR/wk/SzqEY9XgVKEcs=; b=Aj+dbhohE5iq20V3JgjtkexgXc
 HHH8E5zoQO298spzqz/W0m8wZ3TWM1BNlf9HvCv4hXENuuGjHIYIB5n24fg3Id/NxAt9Pa8aTg+08
 4uMyjQwNuIjUBY2Wq7Vjaz4BKcyiqyUwV8vb7CwnEESGFR5CAEiW+pzS3gtJ4wNBvE7k=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jjTBv-00FobE-Vv
 for tipc-discussion@lists.sourceforge.net; Thu, 11 Jun 2020 19:48:49 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 532501286690A;
 Thu, 11 Jun 2020 12:48:35 -0700 (PDT)
Date: Thu, 11 Jun 2020 12:48:34 -0700 (PDT)
Message-Id: <20200611.124834.181904714491590620.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200611100808.24244-1-tuong.t.lien@dektech.com.au>
References: <20200611100808.24244-1-tuong.t.lien@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 11 Jun 2020 12:48:35 -0700 (PDT)
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jjTBv-00FobE-Vv
Subject: Re: [tipc-discussion] [net] tipc: fix NULL pointer dereference in
 tipc_disc_rcv()
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
Date: Thu, 11 Jun 2020 17:08:08 +0700

> When a bearer is enabled, we create a 'tipc_discoverer' object to store
> the bearer related data along with a timer and a preformatted discovery
> message buffer for later probing... However, this is only carried after
> the bearer was set 'up', that left a race condition resulting in kernel
> panic.
> 
> It occurs when a discovery message from a peer node is received and
> processed in bottom half (since the bearer is 'up' already) just before
> the discoverer object is created but is now accessed in order to update
> the preformatted buffer (with a new trial address, ...) so leads to the
> NULL pointer dereference.
> 
> We solve the problem by simply moving the bearer 'up' setting to later,
> so make sure everything is ready prior to any message receiving.
> 
> Acked-by: Jon Maloy <jmaloy@redhat.com>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

Applied, thanks.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
