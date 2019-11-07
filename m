Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E38F2460
	for <lists+tipc-discussion@lfdr.de>; Thu,  7 Nov 2019 02:38:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iSWki-00028q-LV; Thu, 07 Nov 2019 01:38:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1iSWkh-00028h-DV
 for tipc-discussion@lists.sourceforge.net; Thu, 07 Nov 2019 01:38:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i8qmZEW9qmQ5o2/3RAqDHFW6X9jWQQlWvbISMBnC970=; b=Mj8pHGBy4fGePhf2PkGbPYj4i1
 8DM5JWxunCG9AshFLDdNgo1BeDiw4jniGsfD8GL8MYJ3Yz2axXQSEkovyd4RBUK3xBJVBb1wW4w6r
 SL/lylSIRtLFInkbnjwUJuuMh1dV3J6kBZHzVK2jk11jZAHiUv+otTzKlJRxCODc5LtU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i8qmZEW9qmQ5o2/3RAqDHFW6X9jWQQlWvbISMBnC970=; b=W67qL5JI0BuV8yBP9JNOF2Sibr
 kYwWSYifEUbXL/YU1I2busYRF16cpo6heNagm0ykyqi7za5GxNdB6dkkP+D7AzFatItXyk6rVIYs9
 pnH8xhxLYIFMLkaszUfOkM7duLKjEbuMRgfqdDFSoioJAL8qBnUbursyI37YTafguxz0=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iSWke-003y0F-QR
 for tipc-discussion@lists.sourceforge.net; Thu, 07 Nov 2019 01:38:23 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 2F2CE150301C1;
 Wed,  6 Nov 2019 17:38:05 -0800 (PST)
Date: Wed, 06 Nov 2019 17:38:04 -0800 (PST)
Message-Id: <20191106.173804.1947552656782797433.davem@davemloft.net>
To: hoang.h.le@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191106062610.12039-2-hoang.h.le@dektech.com.au>
References: <20191106062610.12039-1-hoang.h.le@dektech.com.au>
 <20191106062610.12039-2-hoang.h.le@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 06 Nov 2019 17:38:05 -0800 (PST)
X-Spam-Score: -0.3 (/)
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
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iSWke-003y0F-QR
Subject: Re: [tipc-discussion] [net-next 2/2] tipc: reduce sensitive to
 retransmit failures
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
Cc: netdev@vger.kernel.org, tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Hoang Le <hoang.h.le@dektech.com.au>
Date: Wed,  6 Nov 2019 13:26:10 +0700

> With huge cluster (e.g >200nodes), the amount of that flow:
> gap -> retransmit packet -> acked will take time in case of STATE_MSG
> dropped/delayed because a lot of traffic. This lead to 1.5 sec tolerance
> value criteria made link easy failure around 2nd, 3rd of failed
> retransmission attempts.
> 
> Instead of re-introduced criteria of 99 faled retransmissions to fix the
> issue, we increase failure detection timer to ten times tolerance value.
> 
> Fixes: 77cf8edbc0e7 ("tipc: simplify stale link failure criteria")
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
