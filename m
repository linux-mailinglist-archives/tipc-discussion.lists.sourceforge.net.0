Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1158F3EBB
	for <lists+tipc-discussion@lfdr.de>; Fri,  8 Nov 2019 05:09:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iSvaF-0002tw-Mx; Fri, 08 Nov 2019 04:09:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1iSvaD-0002tc-Q0
 for tipc-discussion@lists.sourceforge.net; Fri, 08 Nov 2019 04:09:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=43mh4Lp5l0i+0ZWpv1bn6RecXctjl+Cwv4RxMKapAs8=; b=eRuibQUy0C4ldf+uq998P9MGBI
 cniJX9Ze7JBBPmwopQbRzIdB0dqCQM+XJzZfr7i+3zWjjOWOmJbXGAeJRNFwZUNIYK6KBwHOoUzac
 q+DTdJzSjZ/u6Mux70uVHHUnt/vnDp3l+3mxlC4G+lIfZiX5Jy/qc63zuoa+LMwiukSc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=43mh4Lp5l0i+0ZWpv1bn6RecXctjl+Cwv4RxMKapAs8=; b=YBL9s4BtIQnzokjbfWAPJWks7z
 WNBZMMAwjJd+e0WJDDu7zkk3Om984Q5VgV0jlkFVGSe5pw0ZVvOt8bqFihw3ma3PWTg6yLu44YEZs
 5W9t4YrR5GrcChGWi2HmHNFxFHf4huNOjfqa5Unp1/mBab94iazN8Gl/giPf7I5IiSvI=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iSvaC-004TDN-Le
 for tipc-discussion@lists.sourceforge.net; Fri, 08 Nov 2019 04:09:13 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 6A38D14F4FDD8;
 Thu,  7 Nov 2019 20:09:05 -0800 (PST)
Date: Thu, 07 Nov 2019 20:09:05 -0800 (PST)
Message-Id: <20191107.200905.1686450576065616237.davem@davemloft.net>
To: hoang.h.le@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191108030237.6619-1-hoang.h.le@dektech.com.au>
References: <20191108030237.6619-1-hoang.h.le@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 07 Nov 2019 20:09:05 -0800 (PST)
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iSvaC-004TDN-Le
Subject: Re: [tipc-discussion] [net-next] tipc: eliminate checking netns if
 node established
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

From: Hoang Le <hoang.h.le@dektech.com.au>
Date: Fri,  8 Nov 2019 10:02:37 +0700

> Currently, we scan over all network namespaces at each received
> discovery message in order to check if the sending peer might be
> present in a host local namespaces.
> 
> This is unnecessary since we can assume that a peer will not change its
> location during an established session.
> 
> We now improve the condition for this testing so that we don't perform
> any redundant scans.
> 
> Fixes: f73b12812a3d ("tipc: improve throughput between nodes in netns")
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>

Applied, thank you.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
