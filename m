Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7F8355FDE
	for <lists+tipc-discussion@lfdr.de>; Wed,  7 Apr 2021 02:05:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lTvgq-0000Yx-E3; Wed, 07 Apr 2021 00:05:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1lTvgp-0000Yi-4P
 for tipc-discussion@lists.sourceforge.net; Wed, 07 Apr 2021 00:04:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=imJKifaTSJfePMaZ4tBwPMR6BE44xY07uYkx9iovKWM=; b=VxmouOLKoi1HAT03mlqx/spmhP
 Qr5+Ij2KrvY67bEGSU5sxUDp1tsbrbCcYcYc2/MXxOo+R1aldV6Y99QgxeJ0pUxOA9stERoKQchuQ
 XwK2mNaVV8XDzZGU/JppLPLSdiewNrxXSxqeHZCmFWb0Tyua8hWSIGo5GP1ZrmLcnkF4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=imJKifaTSJfePMaZ4tBwPMR6BE44xY07uYkx9iovKWM=; b=mK1hhysEJlmrbs5Gqfv7OWDbUa
 C7W+TTWxOQ+A6zbLIl97pWJtR3k3EQI6wmwV/F+BYWu2xOKsFMi/58l9py8JlnGc0fVudmHZdhRZB
 LG6ZCM5Xp/SWBuXCYixR3PB21LKWORvxwn4M46M0mn9GoffPf0LzwRQLG8kN9kmbKFpo=;
Received: from shards.monkeyblade.net ([23.128.96.9] helo=mail.monkeyblade.net)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lTvgk-0001ra-GE
 for tipc-discussion@lists.sourceforge.net; Wed, 07 Apr 2021 00:04:59 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 by mail.monkeyblade.net (Postfix) with ESMTPSA id 7E1244D2493AD;
 Tue,  6 Apr 2021 16:45:59 -0700 (PDT)
Date: Tue, 06 Apr 2021 16:45:59 -0700 (PDT)
Message-Id: <20210406.164559.1676626074998403447.davem@davemloft.net>
To: zhengyongjun3@huawei.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20210406151909.298732-1-zhengyongjun3@huawei.com>
References: <20210406151909.298732-1-zhengyongjun3@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail.monkeyblade.net [0.0.0.0]); Tue, 06 Apr 2021 16:45:59 -0700 (PDT)
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1lTvgk-0001ra-GE
Subject: Re: [tipc-discussion] [PATCH net-next] net: tipc: Fix spelling
 errors in net/tipc module
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, hulkci@huawei.com,
 tipc-discussion@lists.sourceforge.net, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Zheng Yongjun <zhengyongjun3@huawei.com>
Date: Tue, 6 Apr 2021 23:19:09 +0800

> These patches fix a series of spelling errors in net/tipc module.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>

This does not apply to net-next, please respin.

Thanks.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
