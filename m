Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 053BE20201A
	for <lists+tipc-discussion@lfdr.de>; Sat, 20 Jun 2020 05:15:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jmTyx-00032X-As; Sat, 20 Jun 2020 03:15:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1jmTyv-00032P-Fp
 for tipc-discussion@lists.sourceforge.net; Sat, 20 Jun 2020 03:15:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=etnLxZ4WLuRjF+sHN9mXOXUeFq1hNDzNxnkuTGfS4TU=; b=RQhMuzcxs8gWYDregj77eKA65m
 7vxGuQ9FPiHSNf9KBZkXeJqMYFHM4FsNUvKSwTU/H4/hDp/izWBOYS/tP7ynAUz4ngnIHF90wFpuB
 6zQkFACsNU9YKkefC88TNIrYB/4fK8/NdEhLpmRT0MSJCYV1jsa6U5kqrfvfRBokvxhg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=etnLxZ4WLuRjF+sHN9mXOXUeFq1hNDzNxnkuTGfS4TU=; b=c/9jwFsxst9l/+OO/VMAkY+INA
 UyvrF4b2yCpP4m2QO8KsotCg59NbxLWwZbd/zPMoG18yfZ/FBGNswo8cAIg9IiRqgpEvEqn9J9rRJ
 2mY2mJ8t1f/Ri6rmv21vS52W+Nh/FvpdH7woyrdrxRYz9pxHjQDw7t0gwvzXwszVT8CI=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jmTyt-00AuA3-Ji
 for tipc-discussion@lists.sourceforge.net; Sat, 20 Jun 2020 03:15:49 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 143D3127853BD;
 Fri, 19 Jun 2020 20:15:40 -0700 (PDT)
Date: Fri, 19 Jun 2020 20:15:40 -0700 (PDT)
Message-Id: <20200619.201540.1717306202639350811.davem@davemloft.net>
To: gustavoars@kernel.org
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200618133459.GA8169@embeddedor>
References: <20200618133459.GA8169@embeddedor>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 19 Jun 2020 20:15:41 -0700 (PDT)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jmTyt-00AuA3-Ji
Subject: Re: [tipc-discussion] [PATCH][next] tipc: Use struct_size() helper
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
Cc: gustavo@embeddedor.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Date: Thu, 18 Jun 2020 08:35:00 -0500

> Make use of the struct_size() helper instead of an open-coded version
> in order to avoid any potential type mistakes.
> 
> This code was detected with the help of Coccinelle and, audited and
> fixed manually.
> 
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Applied, thank you.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
