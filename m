Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B452E9447
	for <lists+tipc-discussion@lfdr.de>; Wed, 30 Oct 2019 01:56:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iPcHf-0002xR-RJ; Wed, 30 Oct 2019 00:56:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1iPcHe-0002xG-1J
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Oct 2019 00:56:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1lrRCrbJfxexenv/nqHdkld/YW4SlzZXt/NiULKwkXg=; b=CHv/uiOC9zWR/g9jrlzc3/anjk
 l0Mw/z8jqEp5Rmurp5qoJJxUXyCkLOoEqzDVTMIdIuWctiFk+YLbu1LclCwIbT5Zoue8OFjx5Hixj
 iuu11k8Nvcz0lj4hke3Pi9wE+Rxdny3oLPFLz51bmeF/bfTAVQmWRFpqA1X7pz9Pc984=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1lrRCrbJfxexenv/nqHdkld/YW4SlzZXt/NiULKwkXg=; b=lUYZwecJszKyTZGhl+RYeav4th
 NXVMCmOAuMphRZ9kUSK8PT6pS/vmGTgH4r1zt3sPoBNT/cqGN7A3OZczN6FA0zAwXtmdNTqF1IeDS
 FzMzgxGcgQnqgrOtH9jDUe7N56RiizRsvnLip+zaK1I8O+jNbP91+Fw1it74XcRuWgnU=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iPcHc-009ycg-0E
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Oct 2019 00:56:21 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 2F202140CF89D;
 Tue, 29 Oct 2019 17:56:09 -0700 (PDT)
Date: Tue, 29 Oct 2019 17:56:08 -0700 (PDT)
Message-Id: <20191029.175608.1379858155054625910.davem@davemloft.net>
To: hoang.h.le@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191029005121.18680-1-hoang.h.le@dektech.com.au>
References: <20191029005121.18680-1-hoang.h.le@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 29 Oct 2019 17:56:09 -0700 (PDT)
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
X-Headers-End: 1iPcHc-009ycg-0E
Subject: Re: [tipc-discussion] [net-next v2] tipc: improve throughput
 between nodes in netns
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
Cc: eric.dumazet@gmail.com, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Hoang Le <hoang.h.le@dektech.com.au>
Date: Tue, 29 Oct 2019 07:51:21 +0700

> Currently, TIPC transports intra-node user data messages directly
> socket to socket, hence shortcutting all the lower layers of the
> communication stack. This gives TIPC very good intra node performance,
> both regarding throughput and latency.
> 
> We now introduce a similar mechanism for TIPC data traffic across
> network namespaces located in the same kernel. On the send path, the
> call chain is as always accompanied by the sending node's network name
> space pointer. However, once we have reliably established that the
> receiving node is represented by a namespace on the same host, we just
> replace the namespace pointer with the receiving node/namespace's
> ditto, and follow the regular socket receive patch though the receiving
> node. This technique gives us a throughput similar to the node internal
> throughput, several times larger than if we let the traffic go though
> the full network stacks. As a comparison, max throughput for 64k
> messages is four times larger than TCP throughput for the same type of
> traffic.
> 
> To meet any security concerns, the following should be noted.
 ...
> Regarding traceability, we should notice that since commit 6c9081a3915d
> ("tipc: add loopback device tracking") it is possible to follow the node
> internal packet flow by just activating tcpdump on the loopback
> interface. This will be true even for this mechanism; by activating
> tcpdump on the involved nodes' loopback interfaces their inter-name
> space messaging can easily be tracked.
> 
> v2:
> - update 'net' pointer when node left/rejoined
> v3:
> - grab read/write lock when using node ref obj
> v4:
> - clone traffics between netns to loopback
> 
> Suggested-by: Jon Maloy <jon.maloy@ericsson.com>
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>

Applied to net-next.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
