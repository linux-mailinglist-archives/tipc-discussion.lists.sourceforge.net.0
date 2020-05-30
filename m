Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A1D1E8C6A
	for <lists+tipc-discussion@lfdr.de>; Sat, 30 May 2020 02:00:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jeovA-0000eS-Cr; Sat, 30 May 2020 00:00:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1jeov8-0000eF-OA
 for tipc-discussion@lists.sourceforge.net; Sat, 30 May 2020 00:00:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GOk0WIhD1lk4eOAGh7EBrtc5m/cQcl9Nb+gFnYRLd+Q=; b=b6fqa16W0uyXW2jO43uBGKQzZH
 xRy28asgjmoqB/DeR/6IIz4JD6yTYYWS5P//7xpmB5T+ag69gNq7K7WkZZUZOiLE9L2FKUsruOtIW
 z9njQKEdDl62WXd3UPZ09mAKmee47QYCdn8GtPjLGRJAvObC93qDvKkk8MkDHVGn6LRo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GOk0WIhD1lk4eOAGh7EBrtc5m/cQcl9Nb+gFnYRLd+Q=; b=mkSZs6e09KN2ThO5iMPqdWz6Tq
 9Et6LW5EIfcr6+ZlQL4FeFHdrBUgsZKijWjOL/m3SDE22od4hlkEUEHDQSuS6QUbKE50NaSHMkDJP
 b4InJP29nRaESlQ6MWKe0Rvz0Gj1XC/l9ycntAINobLAeFTtXe8lKAzUEKUS+YTYTCac=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jeov6-00D3Fr-Nm
 for tipc-discussion@lists.sourceforge.net; Sat, 30 May 2020 00:00:14 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 329431273D978;
 Fri, 29 May 2020 17:00:06 -0700 (PDT)
Date: Fri, 29 May 2020 17:00:05 -0700 (PDT)
Message-Id: <20200529.170005.1952701912928856345.davem@davemloft.net>
To: yuehaibing@huawei.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200528074359.116680-1-yuehaibing@huawei.com>
References: <20200528074359.116680-1-yuehaibing@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 29 May 2020 17:00:06 -0700 (PDT)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jeov6-00D3Fr-Nm
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: remove set but not
 used variable 'prev'
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: YueHaibing <yuehaibing@huawei.com>
Date: Thu, 28 May 2020 07:43:59 +0000

> Fixes gcc '-Wunused-but-set-variable' warning:
> 
> net/tipc/msg.c: In function 'tipc_msg_append':
> net/tipc/msg.c:215:24: warning:
>  variable 'prev' set but not used [-Wunused-but-set-variable]
> 
> commit 0a3e060f340d ("tipc: add test for Nagle algorithm effectiveness")
> left behind this, remove it.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
