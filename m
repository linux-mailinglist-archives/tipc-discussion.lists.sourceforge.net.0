Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D1450E7C
	for <lists+tipc-discussion@lfdr.de>; Mon, 24 Jun 2019 16:35:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hfQ45-0000Nr-Fp; Mon, 24 Jun 2019 14:35:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hfQ44-0000Nk-GB
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 14:35:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6Ctr8oj4iQTwvv/cOFkA/L2CFb8gPGauafX6vRNHDoE=; b=J9nDJdSXlW8jsK+DSc9Wvvn9/g
 ENMGwRfro7BZEoJLy9dsN8TwLNXeLUv/cT7KhyBOeoMwQgVfOYPKDB2XdofZNZXthjBmgdsShLilu
 5z6PJ0GKQgi1Wz7nHd9UBYydIwIAS5UfU7bth0wmfabE4Xumh0VXoGWBoL809WSEcRzM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6Ctr8oj4iQTwvv/cOFkA/L2CFb8gPGauafX6vRNHDoE=; b=fg5Fp7vVkkvJLIRED1i1+4PlZ8
 sTCwkTdSPVeQHWlAngFd/iPsssPz2xAsMGf0pljYlVOydF3CL4vAihZujU1Lmr+JyY3fmSuncstLX
 19sDZ09IVZ1/lD2+2veaoD4MXP6Vx4n9ohOqLAW4oLZZ8qvK2JwELpEtF3ZPcTx7y+to=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hfQ46-00Blh0-S8
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 14:35:30 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 3608B150420B3;
 Mon, 24 Jun 2019 07:35:18 -0700 (PDT)
Date: Mon, 24 Jun 2019 07:35:17 -0700 (PDT)
Message-Id: <20190624.073517.1612706351643151777.davem@davemloft.net>
To: lucien.xin@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <a4f39065f0b1cb13da2159339c08d78cb61f88d9.1561363362.git.lucien.xin@gmail.com>
References: <a4f39065f0b1cb13da2159339c08d78cb61f88d9.1561363362.git.lucien.xin@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 24 Jun 2019 07:35:18 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hfQ46-00Blh0-S8
Subject: Re: [tipc-discussion] [PATCH net] tipc: remove the unnecessary
 msg->req check from tipc_nl_compat_bearer_set
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

From: Xin Long <lucien.xin@gmail.com>
Date: Mon, 24 Jun 2019 16:02:42 +0800

> tipc_nl_compat_bearer_set() is only called by tipc_nl_compat_link_set()
> which already does the check for msg->req check, so remove it from
> tipc_nl_compat_bearer_set(), and do the same in tipc_nl_compat_media_set().
> 
> Signed-off-by: Xin Long <lucien.xin@gmail.com>

Is this really appropriate as a fix for 'net'?  Seems more like net-next material
to me.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
