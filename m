Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B0F5D802
	for <lists+tipc-discussion@lfdr.de>; Wed,  3 Jul 2019 00:13:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hiR1n-0001nj-I5; Tue, 02 Jul 2019 22:13:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hiR1k-0001nM-SJ
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Jul 2019 22:13:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AH9ZaBmqLkfLrAarAg3zfjwH3oVMC6snnHG0s7Vcsog=; b=c5gw5mEdYs1Y/8ToBwBcVNgxgz
 aJn/jZYaTmyB0pLIL8IID8Xr82yQ5Z3YC0sM1BS0Imb/YwyUdYzhxHAiY558uIvwxRiDc0IB5F5Sr
 B1zmvGNvBVjWGg7dRw7JzvQW6XbBvFKkeDbsy+MHm+gSW1MukB+HCTL9IvAqxbA0E7h8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AH9ZaBmqLkfLrAarAg3zfjwH3oVMC6snnHG0s7Vcsog=; b=QMhr2vZIpt/YB4qpkiDj8N5Cn9
 9ZjGqidY8pJMiqnPSOsCYmQd6wplkFg+ltpuQuVf1GA2QxtzbTvtvM/5o/K7Ki8LaZwhFE8UMJ6r+
 gpI2xameysgDyWPtzLwBUQ/94zfmAZYGziwzW9blCh01PoFX20icpxhXM/Nz6pFtBDmI=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hiR1q-005xqE-Tm
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Jul 2019 22:13:36 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4489013CEE056;
 Tue,  2 Jul 2019 15:13:29 -0700 (PDT)
Date: Tue, 02 Jul 2019 15:13:28 -0700 (PDT)
Message-Id: <20190702.151328.1681208493198386546.davem@davemloft.net>
To: lucien.xin@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <d59889f395b2c224131046c832fe1a8056209107.1562000239.git.lucien.xin@gmail.com>
References: <d59889f395b2c224131046c832fe1a8056209107.1562000239.git.lucien.xin@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 02 Jul 2019 15:13:29 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hiR1q-005xqE-Tm
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: remove ub->ubsock
 checks
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
Date: Tue,  2 Jul 2019 00:57:19 +0800

> Both tipc_udp_enable and tipc_udp_disable are called under rtnl_lock,
> ub->ubsock could never be NULL in tipc_udp_disable and cleanup_bearer,
> so remove the check.
> 
> Also remove the one in tipc_udp_enable by adding "free" label.
> 
> Signed-off-by: Xin Long <lucien.xin@gmail.com>

Looks good, applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
