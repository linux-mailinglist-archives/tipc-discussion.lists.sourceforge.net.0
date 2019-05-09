Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA9818E02
	for <lists+tipc-discussion@lfdr.de>; Thu,  9 May 2019 18:27:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hOltX-0003VL-AH; Thu, 09 May 2019 16:27:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hOltV-0003VC-Nq
 for tipc-discussion@lists.sourceforge.net; Thu, 09 May 2019 16:27:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DX7TCodom9wMyYibdTBUq3X4cLIsETf5UI8Uaq+dfWY=; b=VyJtVvhnCiqlY7oFphYo4bu+uf
 n7AGyA6pO5erKsu6pwLaFKjYVGDz7p3mUDCO9yjW4WRBLglU73F2E4weDqxF+pHAfQXMgnR/EEIQk
 eBUHVMgf/HEdU00ag60pQqNvshzWQlnjGMmpgh0I+k5ul4K1QmFHsHw75+7V+GAxUpdI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DX7TCodom9wMyYibdTBUq3X4cLIsETf5UI8Uaq+dfWY=; b=UtdpV2oeNyCRfLAzDgFIKw3Yjq
 OwK0crJ98vMQvWVIbB+60GJHeX9E5SlZM6F5cRJ/2m4dxkkqIm78lkOIMkFdoh8JMgA47sTtKPY+9
 4zfZEMOKvjuBkJxprqG0mH7KwetIsiI9v7zDAQDmscwd5bTCl+LvKCROmfrvlMEctYv4=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hOltR-00EbNx-PI
 for tipc-discussion@lists.sourceforge.net; Thu, 09 May 2019 16:27:41 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 5D0F214CF93CC;
 Thu,  9 May 2019 09:27:30 -0700 (PDT)
Date: Thu, 09 May 2019 09:27:29 -0700 (PDT)
Message-Id: <20190509.092729.490057205840616989.davem@davemloft.net>
To: parthasarathy.bhuvaragan@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190509051342.6187-1-parthasarathy.bhuvaragan@gmail.com>
References: <20190509051342.6187-1-parthasarathy.bhuvaragan@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 09 May 2019 09:27:30 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.se]
X-Headers-End: 1hOltR-00EbNx-PI
Subject: Re: [tipc-discussion] [PATCH net v1] tipc: fix hanging clients
 using poll with EPOLLOUT flag
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
Cc: netdev@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 jon.maloy@ericsson.se
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Parthasarathy Bhuvaragan <parthasarathy.bhuvaragan@gmail.com>
Date: Thu,  9 May 2019 07:13:42 +0200

> commit 517d7c79bdb398 ("tipc: fix hanging poll() for stream sockets")
> introduced a regression for clients using non-blocking sockets.
> After the commit, we send EPOLLOUT event to the client even in
> TIPC_CONNECTING state. This causes the subsequent send() to fail
> with ENOTCONN, as the socket is still not in TIPC_ESTABLISHED state.
> 
> In this commit, we:
> - improve the fix for hanging poll() by replacing sk_data_ready()
>   with sk_state_change() to wake up all clients.
> - revert the faulty updates introduced by commit 517d7c79bdb398
>   ("tipc: fix hanging poll() for stream sockets").
> 
> Fixes: 517d7c79bdb398 ("tipc: fix hanging poll() for stream sockets")
> Signed-off-by: Parthasarathy Bhuvaragan <parthasarathy.bhuvaragan@gmail.com>
> Acked-by: Jon Maloy <jon.maloy@ericsson.se>

Applied and queued up for -stable.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
