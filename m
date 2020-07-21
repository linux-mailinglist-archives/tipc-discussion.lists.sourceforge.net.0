Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D5A22766E
	for <lists+tipc-discussion@lfdr.de>; Tue, 21 Jul 2020 05:13:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jxiig-00083k-0h; Tue, 21 Jul 2020 03:13:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1jxiie-00083d-Je
 for tipc-discussion@lists.sourceforge.net; Tue, 21 Jul 2020 03:13:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PPi3D9itr+PrCSF6WUGfiQiJqsShzVmCE27RqkTzFOA=; b=gX82QjnY7Pgaq4AafRZyo2MEHh
 TaK4uewTrLEOgQZlixb9XSOvdhRwL4V7wGF2s3ii0VjhDCYgOzLJxUxpnmbgkK1U6obMV3KgrzlPA
 9twZPcah83I4bUkUcCa0KdnYozxHKUPawUT5urHZ3fpzGr7M74onnok/VaGAMqDBMYx8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PPi3D9itr+PrCSF6WUGfiQiJqsShzVmCE27RqkTzFOA=; b=K/HqEcKpO0/MuGTy2prhi9GXq3
 rm+8b0kpBxKrjo+aglMfuif9yuQ9OtxIyX+9lx/Fuz5hG5idAnVKgD9qNRvC5aDVj9Guqhk+ohMZp
 mbvwq8EYjXFSND7u86E33jsUGDoAeUYneQ57YXFii6cebZh2f7j70nwAmR58p8foqbX0=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jxiib-00BXrb-Nl
 for tipc-discussion@lists.sourceforge.net; Tue, 21 Jul 2020 03:13:28 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 84EBB1260D090;
 Mon, 20 Jul 2020 19:56:34 -0700 (PDT)
Date: Mon, 20 Jul 2020 20:12:26 -0700 (PDT)
Message-Id: <20200720.201226.912664403829372463.davem@davemloft.net>
To: tung.q.nguyen@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200721015705.2333-1-tung.q.nguyen@dektech.com.au>
References: <20200721015705.2333-1-tung.q.nguyen@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 20 Jul 2020 19:56:34 -0700 (PDT)
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jxiib-00BXrb-Nl
Subject: Re: [tipc-discussion] [net v1 1/1] tipc: allow to build NACK
 message in link timeout function
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

From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
Date: Tue, 21 Jul 2020 08:57:05 +0700

> Commit 02288248b051 ("tipc: eliminate gap indicator from ACK messages")
> eliminated sending of the 'gap' indicator in regular ACK messages and
> only allowed to build NACK message with enabled probe/probe_reply.
> However, necessary correction for building NACK message was missed
> in tipc_link_timeout() function. This leads to significant delay and
> link reset (due to retransmission failure) in lossy environment.
> 
> This commit fixes it by setting the 'probe' flag to 'true' when
> the receive deferred queue is not empty. As a result, NACK message
> will be built to send back to another peer.
> 
> Fixes: commit 02288248b051 ("tipc: eliminate gap indicator from ACK messages")

"commit" doesn't belong here, I removed it when I applied your patch.

> Acked-by: Jon Maloy <jmaloy@redhat.com>
> Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>

Applied and queued up for -stable, thanks.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
