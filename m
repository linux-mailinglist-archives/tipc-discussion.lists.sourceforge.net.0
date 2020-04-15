Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C3F1AB45A
	for <lists+tipc-discussion@lfdr.de>; Thu, 16 Apr 2020 01:41:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jOrel-0008UO-GP; Wed, 15 Apr 2020 23:41:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1jOrek-0008UH-GX
 for tipc-discussion@lists.sourceforge.net; Wed, 15 Apr 2020 23:41:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+AC2KSoOyNNuQ2PXa+3KYavCNwHNhnyHLLIQwsveIsk=; b=dVUBKGzSXFietXKlgLFO4NDM2+
 2muoeTq/0fwg3UGkQc9LHSJIYHzNwpKYCLt2XRMPthbr2PvieCgUr5D3J1R+wTByv7UBnBHVnC20u
 1hkZ3jG44Ggw4yxwUIaHVntcX0h+hpClIXI1nyvHe/ygC15pFYfItnrri/W0RGTd8U7g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+AC2KSoOyNNuQ2PXa+3KYavCNwHNhnyHLLIQwsveIsk=; b=GpWbyZtbK73bLsrPrJEXDiHwc5
 zIWj35cmUkOKfUbPaviO8VJElLsRrJjkWmRw+pSAjtMwjq0mPTK29DqTZwUKWqfjJTuh2m3svjlEO
 Mm1x4NNwj/tm2v0ODDEgaZ0ejjdD8F+WWoKwYjlB6vsO86rqUKq8v7AsvAoevVAd0TdY=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jOreh-00HFPa-2V
 for tipc-discussion@lists.sourceforge.net; Wed, 15 Apr 2020 23:41:22 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 830A1120ED569;
 Wed, 15 Apr 2020 16:24:05 -0700 (PDT)
Date: Wed, 15 Apr 2020 16:24:04 -0700 (PDT)
Message-Id: <20200415.162404.1740698602850159370.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200415113449.7289-1-tuong.t.lien@dektech.com.au>
References: <20200415113449.7289-1-tuong.t.lien@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 15 Apr 2020 16:24:05 -0700 (PDT)
X-Spam-Score: -0.4 (/)
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
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jOreh-00HFPa-2V
Subject: Re: [tipc-discussion] [net] tipc: fix incorrect increasing of link
 window
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
Date: Wed, 15 Apr 2020 18:34:49 +0700

> In commit 16ad3f4022bb ("tipc: introduce variable window congestion
> control"), we allow link window to change with the congestion avoidance
> algorithm. However, there is a bug that during the slow-start if packet
> retransmission occurs, the link will enter the fast-recovery phase, set
> its window to the 'ssthresh' which is never less than 300, so the link
> window suddenly increases to that limit instead of decreasing.
> 
> Consequently, two issues have been observed:
> 
> - For broadcast-link: it can leave a gap between the link queues that a
> new packet will be inserted and sent before the previous ones, i.e. not
> in-order.
> 
> - For unicast: the algorithm does not work as expected, the link window
> jumps to the slow-start threshold whereas packet retransmission occurs.
> 
> This commit fixes the issues by avoiding such the link window increase,
> but still decreasing if the 'ssthresh' is lowered.
> 
> Fixes: 16ad3f4022bb ("tipc: introduce variable window congestion control")
> Acked-by: Jon Maloy <jmaloy@redhat.com>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

Applied, thanks.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
