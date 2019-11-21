Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAB6105CF6
	for <lists+tipc-discussion@lfdr.de>; Fri, 22 Nov 2019 00:03:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iXvTo-0000Gr-Sv; Thu, 21 Nov 2019 23:03:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1iXvTn-0000Gj-CW
 for tipc-discussion@lists.sourceforge.net; Thu, 21 Nov 2019 23:03:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zx1OmUnD8Krby421fvOjocZxHQNJFvD0K0qbyD4QHWk=; b=ZvrLU2/lgZ7X9NWrh0Taz8+W1x
 UTsrj8qLT6UuZXZXlqVnimkUn4QVOH3QQ0KXb6Mm+oxTty9Vu1OFufRbdXqKFJe4m67Lrrt2ZtrDl
 Gp/NZFEk0QNMh+fzy9Dg8vYAXZBaXCsLRpnZS0i8GGbiEZYt+eg+HlwXXYTY4JLOP/ic=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zx1OmUnD8Krby421fvOjocZxHQNJFvD0K0qbyD4QHWk=; b=h+xhtb37NK1omi1Z3o/j6KwPHv
 fXz8RCqqVfu7b5XFrsFw8+ckSd5CXg5RBPX/QfW/hl6NQ3XKKniyCjSI2vFfjwdUxySLVlQLqA90y
 kIudh4Q2an30aTinvJ/lZ6aWHT9j7fw6z4YzUoF4teG6jvzXh10BC8NAqVVrFQUJCcJk=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iXvTl-00HDpO-Nh
 for tipc-discussion@lists.sourceforge.net; Thu, 21 Nov 2019 23:03:15 +0000
Received: from localhost (c-73-35-209-67.hsd1.wa.comcast.net [73.35.209.67])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id CDC37150ABF36;
 Thu, 21 Nov 2019 15:03:04 -0800 (PST)
Date: Thu, 21 Nov 2019 15:03:04 -0800 (PST)
Message-Id: <20191121.150304.1123396062175478961.davem@davemloft.net>
To: hoang.h.le@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191121030109.4754-1-hoang.h.le@dektech.com.au>
References: <20191121030109.4754-1-hoang.h.le@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 21 Nov 2019 15:03:05 -0800 (PST)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iXvTl-00HDpO-Nh
Subject: Re: [tipc-discussion] [net-next] tipc: update replicast capability
 for broadcast send link
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
Date: Thu, 21 Nov 2019 10:01:09 +0700

> When setting up a cluster with non-replicast/replicast capability
> supported. This capability will be disabled for broadcast send link
> in order to be backwards compatible.
> 
> However, when these non-support nodes left and be removed out the cluster.
> We don't update this capability on broadcast send link. Then, some of
> features that based on this capability will also disabling as unexpected.
> 
> In this commit, we make sure the broadcast send link capabilities will
> be re-calculated as soon as a node removed/rejoined a cluster.
> 
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>

Applied, thank you.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
