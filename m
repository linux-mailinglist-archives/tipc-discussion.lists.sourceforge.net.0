Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F2F128753
	for <lists+tipc-discussion@lfdr.de>; Sat, 21 Dec 2019 06:19:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iiXAh-0003qQ-5n; Sat, 21 Dec 2019 05:19:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1iiXAf-0003q9-98
 for tipc-discussion@lists.sourceforge.net; Sat, 21 Dec 2019 05:19:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vW4dFIWb1Ao1YNCGFd3nJxQZy00v7fb13tnjF2M++JI=; b=W5iQLLRZkLfUPortPpFIq6ASse
 a9s8BPpFrnUCrDAvCk5CcGNJFIzPT9IrHZIAuOnmra8iYexIxAqUo9SMk8Ukxoz55SItBBkR+76R8
 lb47zCLEr4AH2m0GW7jgApiQzu9v1fFTU11+zbc54zl4Er7VbenNdeFFI5DSnos5tvR4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vW4dFIWb1Ao1YNCGFd3nJxQZy00v7fb13tnjF2M++JI=; b=XAGYWAokw8fHnpkqOg718pADEM
 GzPLI3AorbjrBhZWNK/8Bfr45gMTQomkUsA/UBcO4Qnj4JFqKj6i5KTcOx7lr+zC9Arn2TB74qCRs
 z+/kH+UkcQ9kc2I7mx2KIPQYGE6+/Yu2uzTacXGnCh+wt5Vy0zYJezQRYfG0/46s2D5g=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iiXAe-00BluA-1e
 for tipc-discussion@lists.sourceforge.net; Sat, 21 Dec 2019 05:19:21 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 6F8D7153CA10D;
 Fri, 20 Dec 2019 21:19:05 -0800 (PST)
Date: Fri, 20 Dec 2019 21:19:05 -0800 (PST)
Message-Id: <20191220.211905.1068223395536470966.davem@davemloft.net>
To: john.rutherford@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191219050357.22583-1-john.rutherford@dektech.com.au>
References: <20191219050357.22583-1-john.rutherford@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 20 Dec 2019 21:19:05 -0800 (PST)
X-Spam-Score: -0.4 (/)
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
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iiXAe-00BluA-1e
Subject: Re: [tipc-discussion] [net-next] tipc: make legacy address flag
 readable over netlink
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

From: john.rutherford@dektech.com.au
Date: Thu, 19 Dec 2019 16:03:57 +1100

> From: John Rutherford <john.rutherford@dektech.com.au>
> 
> To enable iproute2/tipc to generate backwards compatible
> printouts and validate command parameters for nodes using a
> <z.c.n> node address, it needs to be able to read the legacy
> address flag from the kernel.  The legacy address flag records
> the way in which the node identity was originally specified.
> 
> The legacy address flag is requested by the netlink message
> TIPC_NL_ADDR_LEGACY_GET.  If the flag is set the attribute
> TIPC_NLA_NET_ADDR_LEGACY is set in the return message.
> 
> Signed-off-by: John Rutherford <john.rutherford@dektech.com.au>
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
