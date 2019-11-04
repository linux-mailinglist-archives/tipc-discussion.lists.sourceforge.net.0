Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC03ED6EB
	for <lists+tipc-discussion@lfdr.de>; Mon,  4 Nov 2019 02:27:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iRR9q-0007v8-8U; Mon, 04 Nov 2019 01:27:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1iRR9o-0007uu-LS
 for tipc-discussion@lists.sourceforge.net; Mon, 04 Nov 2019 01:27:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5rwsQEfi8dPs+ofKkFzWtcK3XMcUUL3ONJLhZ2hceqw=; b=O4p5lrLnrQhm6VSUAgdq57HvNk
 NZ7QJiFCIN3q6AzwB5JBB5iKbTU8Gan0ZSYlzgw2wSYz//NOaQHIojL/Hs/rtuGGpanxn4Z4vcjxD
 6i9blaZu9iVruWka2QTWQYfmnc5fsb8ihPv5/9/vdMRUayZN520yoNt7QsArOCKJ5ieU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5rwsQEfi8dPs+ofKkFzWtcK3XMcUUL3ONJLhZ2hceqw=; b=Fd8iQYfdn5s4SxgKie6vm+Bhqq
 7pVVkwdUnttMwFOu/2MwNuypxZ12gggxm4dN6VTfHn6eYdQIUUr7RhaZsNYlOiNY0poS9bxQ26Uji
 KlHHxbUXDnxkuv1iJfTs4eMnEmCrgfNPCxyMUG8mKp41oB8XDOoJeZvTTHI6eI/GIVfk=;
Received: from [23.128.96.9] (helo=shards.monkeyblade.net)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iRR9l-00GWkX-ST
 for tipc-discussion@lists.sourceforge.net; Mon, 04 Nov 2019 01:27:48 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 2819E150306B5;
 Sun,  3 Nov 2019 17:27:30 -0800 (PST)
Date: Sun, 03 Nov 2019 17:27:29 -0800 (PST)
Message-Id: <20191103.172729.1947675467703746055.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191101025857.27895-1-tuong.t.lien@dektech.com.au>
References: <20191101025857.27895-1-tuong.t.lien@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 03 Nov 2019 17:27:30 -0800 (PST)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.9 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iRR9l-00GWkX-ST
Subject: Re: [tipc-discussion] [net-next] tipc: improve message bundling
 algorithm
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
Date: Fri,  1 Nov 2019 09:58:57 +0700

> As mentioned in commit e95584a889e1 ("tipc: fix unlimited bundling of
> small messages"), the current message bundling algorithm is inefficient
> that can generate bundles of only one payload message, that causes
> unnecessary overheads for both the sender and receiver.
> 
> This commit re-designs the 'tipc_msg_make_bundle()' function (now named
> as 'tipc_msg_try_bundle()'), so that when a message comes at the first
> place, we will just check & keep a reference to it if the message is
> suitable for bundling. The message buffer will be put into the link
> backlog queue and processed as normal. Later on, when another one comes
> we will make a bundle with the first message if possible and so on...
> This way, a bundle if really needed will always consist of at least two
> payload messages. Otherwise, we let the first buffer go its way without
> any need of bundling, so reduce the overheads to zero.
> 
> Moreover, since now we have both the messages in hand, we can even
> optimize the 'tipc_msg_bundle()' function, make bundle of a very large
> (size ~ MSS) and small messages which is not with the current algorithm
> e.g. [1400-byte message] + [10-byte message] (MTU = 1500).
> 
> Acked-by: Ying Xue <ying.xue@windreiver.com>
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
