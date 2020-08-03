Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3375723B0DA
	for <lists+tipc-discussion@lfdr.de>; Tue,  4 Aug 2020 01:22:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k2jmd-0001sE-FB; Mon, 03 Aug 2020 23:22:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1k2jmb-0001s6-V3
 for tipc-discussion@lists.sourceforge.net; Mon, 03 Aug 2020 23:22:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WPyRHPy5zkr15ctnRk4MTKhrldmzjJelPkyLBs/FRYE=; b=H8C1hME+1/nO1DDoLZeWLz8dHw
 OWcjrJ967RxBeyYDRY4NaeLQA428JWskE9q2woCPlLyxQDT5qqspFQYunHASdx5KsAsdttYwod3Hp
 oteqrzHRf1HzuGszkeshoEBOnd1H+PVFmt0lDeA4kj2paa4oem70wq7L5y9rexXw5KR0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WPyRHPy5zkr15ctnRk4MTKhrldmzjJelPkyLBs/FRYE=; b=lXlMFzg4hQKKFUvosV5/v5pidy
 /aBZwfv/RhNoEEaDkIh8fvKEO48HjPn0OWi9m4V4zP4Buhp3Cd8VYygTn4E6Wkq5SXjwqqGsRVdYJ
 qKNDX5ZTb1xxugn0R5mZ9XoXJiuvWIAMeR0kGWneuO0ncqCwBKyAfG25olvzIhdyJfmY=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k2jma-00B8Mp-FG
 for tipc-discussion@lists.sourceforge.net; Mon, 03 Aug 2020 23:22:17 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 5E2591277CEBD;
 Mon,  3 Aug 2020 16:05:18 -0700 (PDT)
Date: Mon, 03 Aug 2020 16:22:03 -0700 (PDT)
Message-Id: <20200803.162203.547758721051828253.davem@davemloft.net>
To: huangguobin4@huawei.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200803020055.26822-1-huangguobin4@huawei.com>
References: <20200803020055.26822-1-huangguobin4@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 03 Aug 2020 16:05:18 -0700 (PDT)
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k2jma-00B8Mp-FG
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: Use
 is_broadcast_ether_addr() instead of memcmp()
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Huang Guobin <huangguobin4@huawei.com>
Date: Sun, 2 Aug 2020 22:00:55 -0400

> Using is_broadcast_ether_addr() instead of directly use
> memcmp() to determine if the ethernet address is broadcast
> address.
> 
> spatch with a semantic match is used to found this problem.
> (http://coccinelle.lip6.fr/)
> 
> Signed-off-by: Huang Guobin <huangguobin4@huawei.com>

Applied, thank you.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
