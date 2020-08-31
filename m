Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B11E12581FD
	for <lists+tipc-discussion@lfdr.de>; Mon, 31 Aug 2020 21:43:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kCphz-0001tz-1L; Mon, 31 Aug 2020 19:43:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1kCphx-0001tS-M7
 for tipc-discussion@lists.sourceforge.net; Mon, 31 Aug 2020 19:43:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3usSSdpVqLOqK9FStOMcQsgGBbDihN97rklUUkeqCIQ=; b=BUYfL1ia3LQFZMyhfmj4dBe4MI
 5vEHi4vlzhg3aFFRtfAZQ74sNHlu3C364km/CTLNO+7BasgJI3tFxiiqapWuReXWq5ry9mMTDqIY0
 gHcQUXsuqfyD+uMcRLIqj3a9xJ25YaJbbEWMaR/dQgLncMlqx05aIWVL6l1mTqXLpZ5I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3usSSdpVqLOqK9FStOMcQsgGBbDihN97rklUUkeqCIQ=; b=HBZ59ImnzTu4T52VeloECRBalY
 /8A2oREQEhGEUvGW419r43RJCOs/tHyrFpF6zmZrGiFBXxIie8LcEBzAWkENkNUOSdE4RLLifq6fz
 ASVvcilULDW9g9vY/ubXqtCLMhqzrS1vBsiGwY0GmxqFTkMMWzCajWtsuAwfpEz6kny0=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kCphv-006t0X-Ug
 for tipc-discussion@lists.sourceforge.net; Mon, 31 Aug 2020 19:43:13 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A88BD128967FE;
 Mon, 31 Aug 2020 12:26:12 -0700 (PDT)
Date: Mon, 31 Aug 2020 12:42:58 -0700 (PDT)
Message-Id: <20200831.124258.1937130879053600381.davem@davemloft.net>
To: yuehaibing@huawei.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200829115214.17912-1-yuehaibing@huawei.com>
References: <20200829115214.17912-1-yuehaibing@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 31 Aug 2020 12:26:13 -0700 (PDT)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1kCphv-006t0X-Ug
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: Remove unused macro
 TIPC_NACK_INTV
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

From: YueHaibing <yuehaibing@huawei.com>
Date: Sat, 29 Aug 2020 19:52:14 +0800

> There is no caller in tree any more.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
