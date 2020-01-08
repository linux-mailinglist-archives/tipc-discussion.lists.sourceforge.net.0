Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B84CC135030
	for <lists+tipc-discussion@lfdr.de>; Thu,  9 Jan 2020 00:58:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ipLDE-0008Qq-Aj; Wed, 08 Jan 2020 23:58:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1ipLDC-0008Qc-R9
 for tipc-discussion@lists.sourceforge.net; Wed, 08 Jan 2020 23:58:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NXLhhDFLk8Sxaj1M3v3MoAacDPK48jFVk50wP7d09g0=; b=G7/XhXB6iQnqRZLvUYJHOqI66+
 PUPEyGuMuPNg70vCdDCXrM9RdhNLBOZC8fBALv4Cstq2qulnkzewzbcg6E+KqoryuAPs07xhd/qv5
 n6YlKcyT/pSFotVZvfg6ZL5vU4iYyKMcT0bomiApwCKFjI4aTKmAsA99Kj1roiHdIhpc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NXLhhDFLk8Sxaj1M3v3MoAacDPK48jFVk50wP7d09g0=; b=mdhm3jDN85j869MyVDbSxJz43p
 1CP/8jfV5kn0JMlio54L7Nju3iZ94MJhLryLLLqvijMwr0JP3dcK+ZNszr8nYmXCFzDJpdphBgPHd
 BsLOnUh4FnqYw8KFZFzbmvO/r3B9BpghqBYLWV4vRoQhVNfG1S7kNsnvByI/tx/W6ZVI=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ipLDB-00DzNk-02
 for tipc-discussion@lists.sourceforge.net; Wed, 08 Jan 2020 23:58:06 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id EC3E91511CAA1;
 Wed,  8 Jan 2020 15:57:55 -0800 (PST)
Date: Wed, 08 Jan 2020 15:57:55 -0800 (PST)
Message-Id: <20200108.155755.1067276795351478319.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200108021815.24713-1-tuong.t.lien@dektech.com.au>
References: <20200108021815.24713-1-tuong.t.lien@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 08 Jan 2020 15:57:56 -0800 (PST)
X-Spam-Score: -0.3 (/)
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
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ipLDB-00DzNk-02
Subject: Re: [tipc-discussion] [net] tipc: fix link overflow issue at socket
 shutdown
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
Cc: jmaloy@redhat.com, tipc-discussion@lists.sourceforge.net,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Tuong Lien <tuong.t.lien@dektech.com.au>
Date: Wed,  8 Jan 2020 09:18:15 +0700

> When a socket is suddenly shutdown or released, it will reject all the
> unreceived messages in its receive queue. This applies to a connected
> socket too, whereas there is only one 'FIN' message required to be sent
> back to its peer in this case.
> 
> In case there are many messages in the queue and/or some connections
> with such messages are shutdown at the same time, the link layer will
> easily get overflowed at the 'TIPC_SYSTEM_IMPORTANCE' backlog level
> because of the message rejections. As a result, the link will be taken
> down. Moreover, immediately when the link is re-established, the socket
> layer can continue to reject the messages and the same issue happens...
> 
> The commit refactors the '__tipc_shutdown()' function to only send one
> 'FIN' in the situation mentioned above. For the connectionless case, it
> is unavoidable but usually there is no rejections for such socket
> messages because they are 'dest-droppable' by default.
> 
> In addition, the new code makes the other socket states clear
> (e.g.'TIPC_LISTEN') and treats as a separate case to avoid misbehaving.
> 
> Acked-by: Ying Xue <ying.xue@windriver.com>
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
