Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F233726AEB5
	for <lists+tipc-discussion@lfdr.de>; Tue, 15 Sep 2020 22:33:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kIHeC-0001BS-Kb; Tue, 15 Sep 2020 20:33:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1kIHeB-0001BF-IV
 for tipc-discussion@lists.sourceforge.net; Tue, 15 Sep 2020 20:33:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TVXprceGNH5QZEwv4MFB8UpRkbufgdCi+pZyNAMVzf8=; b=iOw6IqSFXjBIxu3LbTi+8vNOdV
 aJh9UJcHaM20r7Rveok6eELb1qLuFQxtHufILnKhL44oRhU0OgaU06e0SY7xFjgSd990rj07fBLh8
 Jvr1usXpL1+xYmNtERLdNk5RiDrCVtvX2Rkn+YwHLLk3YvHG5Z8Junx50PA9CuLklYSo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TVXprceGNH5QZEwv4MFB8UpRkbufgdCi+pZyNAMVzf8=; b=gI3UseQ4E7xSScvLglQR6vxrVu
 OSp6issgms5If1PRvkSNC2r0Dmt5Uw86faaquCAw/8W2m77ao0XFFX/i1w80Ybl2RS3vFFFpIBXeq
 6xGdl1OLusAau4/pcWKaZ+P5J+VZ07jWDkCYkrbEzS0RRf9Bh9z9L5kts+XCPr5K1tgw=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kIHe8-00AQYu-0p
 for tipc-discussion@lists.sourceforge.net; Tue, 15 Sep 2020 20:33:51 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 54CF613684421;
 Tue, 15 Sep 2020 13:16:49 -0700 (PDT)
Date: Tue, 15 Sep 2020 13:33:35 -0700 (PDT)
Message-Id: <20200915.133335.360296077767627215.davem@davemloft.net>
To: luwei32@huawei.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200915023955.331008-1-luwei32@huawei.com>
References: <20200915023955.331008-1-luwei32@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Tue, 15 Sep 2020 13:16:49 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kIHe8-00AQYu-0p
Subject: Re: [tipc-discussion] [PATCH] net: tipc: kerneldoc fixes
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
Cc: netdev@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Lu Wei <luwei32@huawei.com>
Date: Tue, 15 Sep 2020 10:39:55 +0800

> Fix parameter description of tipc_link_bc_create()
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Fixes: 16ad3f4022bb ("tipc: introduce variable window congestion control")
> Signed-off-by: Lu Wei <luwei32@huawei.com>

Applied, thanks.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
