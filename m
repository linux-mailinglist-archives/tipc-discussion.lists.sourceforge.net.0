Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C89687B525
	for <lists+tipc-discussion@lfdr.de>; Tue, 30 Jul 2019 23:40:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hsZrK-0006dQ-Bs; Tue, 30 Jul 2019 21:40:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hsZrJ-0006dI-3g
 for tipc-discussion@lists.sourceforge.net; Tue, 30 Jul 2019 21:40:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Csk25YE6AD5QNnn4Ss9oiYjwdEoqnTR+agm2PlDrKUA=; b=PH4jadiYWtnJN6+8a3YqVeu5pp
 5JQ2m6UvhS2sKF/f3et7/lh1I26058WLWFe9LvNWQDIBt8ziDRAM1HuKJSCiBCxVufY+ep1EX7Osy
 w0VHnMWhsklIG9dOaYAZom7qBL2NMMynJWNoXPUD/QWpw+TeapAXBlBVupGOBlu49jl0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Csk25YE6AD5QNnn4Ss9oiYjwdEoqnTR+agm2PlDrKUA=; b=Qb1CSnCYu/WkPMVIww2VO57odL
 +1+egWx9Tlca4mw/LbiaGaqrAbdwA9r44wJmIbpFotUZ4FvYeTxOK/ZUWPpKR4qzSP9I+fi1+isji
 CH+evGWqVEm5pk7mVnrs8VNBk0+RfZNv2B3tUsCa0D1sx8g7sSFdFl4Mn5KWUnfpCLLQ=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hsZrF-004iuE-DL
 for tipc-discussion@lists.sourceforge.net; Tue, 30 Jul 2019 21:40:37 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 9A5DD14E340BE;
 Tue, 30 Jul 2019 14:40:26 -0700 (PDT)
Date: Tue, 30 Jul 2019 14:40:26 -0700 (PDT)
Message-Id: <20190730.144026.1606872258602139673.davem@davemloft.net>
To: jon.maloy@ericsson.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <1564510750-19531-1-git-send-email-jon.maloy@ericsson.com>
References: <1564510750-19531-1-git-send-email-jon.maloy@ericsson.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 30 Jul 2019 14:40:26 -0700 (PDT)
X-Spam-Score: 0.0 (/)
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
X-Headers-End: 1hsZrF-004iuE-DL
Subject: Re: [tipc-discussion] [net 1/1] tipc: fix unitilized skb list crash
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
Cc: netdev@vger.kernel.org, lxin@redhat.com,
 tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Jon Maloy <jon.maloy@ericsson.com>
Date: Tue, 30 Jul 2019 20:19:10 +0200

> Our test suite somtimes provokes the following crash:
> 
> Description of problem:
 ...
> The reason is that the skb list tipc_socket::mc_method.deferredq only
> is initialized for connectionless sockets, while nothing stops arriving
> multicast messages from being filtered by connection oriented sockets,
> with subsequent access to the said list.
> 
> We fix this by initializing the list unconditionally at socket creation.
> This eliminates the crash, while the message still is dropped further
> down in tipc_sk_filter_rcv() as it should be.
> 
> Reported-by: Li Shuang <shuali@redhat.com>
> Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>

Applied and queued up for -stable, thank you.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
