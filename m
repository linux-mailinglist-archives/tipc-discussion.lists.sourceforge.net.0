Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1381E3236
	for <lists+tipc-discussion@lfdr.de>; Wed, 27 May 2020 00:17:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jdhst-0003NT-CL; Tue, 26 May 2020 22:17:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1jdhsr-0003NM-OH
 for tipc-discussion@lists.sourceforge.net; Tue, 26 May 2020 22:17:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mca9V3WfjdGbrfr2oECsxnGbtK476wmGZrBEMmOvcb8=; b=id6FncAouX0Dln200qmWLMm/Aj
 2ECJjgSl8NVg7KtLizfXrRYxwS73GdBkIHJtRw5KMLvttMBiWylgBW0nyK9Y3iCXGWd7XuVPMixL2
 +gAOgsnzDoAALs6qZ2w5D8p2yYPYG5zHlaCQuTXaMFBAv7+kIutQWsjMOokCWkWneuu0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Mca9V3WfjdGbrfr2oECsxnGbtK476wmGZrBEMmOvcb8=; b=FBgJ0t54usNdBVzMdBhX2csaHd
 yuQYeJAwZLFU8BLLUACXqtEkIw+XBGgOCQLslxe1V2dbiAP3yZ6WQSFihuhHHR9uRo5MunUlTtD4i
 FVKYY0igHB7NZvLcrUzGYhyiEFjM1snP5R+gGE7XClmX5gmYH9WTHo492XolVf61wb5o=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jdhso-00H76g-Nk
 for tipc-discussion@lists.sourceforge.net; Tue, 26 May 2020 22:17:17 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4E2B3120ED4BE;
 Tue, 26 May 2020 15:17:08 -0700 (PDT)
Date: Tue, 26 May 2020 15:17:07 -0700 (PDT)
Message-Id: <20200526.151707.1906193590139471783.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200526093838.17421-1-tuong.t.lien@dektech.com.au>
References: <20200526093838.17421-1-tuong.t.lien@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 26 May 2020 15:17:08 -0700 (PDT)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jdhso-00H76g-Nk
Subject: Re: [tipc-discussion] [net-next 0/5] tipc: add some improvements
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
Date: Tue, 26 May 2020 16:38:33 +0700

> This series adds some improvements to TIPC.
> 
> The first patch improves the TIPC broadcast's performance with the 'Gap
> ACK blocks' mechanism similar to unicast before, while the others give
> support on tracing & statistics for broadcast links, and an alternative
> to carry broadcast retransmissions via unicast which might be useful in
> some cases.
> 
> Besides, the Nagle algorithm can now automatically 'adjust' itself
> depending on the specific network condition a stream connection runs by
> the last patch.

Series applied, thanks.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
